//Bibliotecas
#include <ESP8266WiFi.h>
#include <ESP8266mDNS.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>
#include <ArduinoOTA.h>
#include <WebSocketsClient.h>
#include <DNSServer.h>
#include <WiFiUdp.h>
#include <PubSubClient.h>
#include "FirebaseESP8266.h"
// ------------------------------------------------------------------------
//Define a pinagem do ESP8266
#define D1    16  //D0
#define S1    14  //D5
#define PIN_AP 12 //D6
#define FIREBASE_HOST " "
#define FIREBASE_AUTH " "
WiFiClient espClient;
PubSubClient client(espClient);
FirebaseData firebaseData;
//------------------------------------------------------------------------
// Configuração do MQTT
const char* mqttServer = " ";                         // O endereço do seu servidor MQTT;
const int   mqttPort = ;                                             // A porta MQTT;
const char* mqttUser = " ";                                        // O nome de usuario MQTT;
const char* mqttPassword = " ";                                // A senha MQTT;
//------------------------------------------------------------------------
// Declaração das Funções
void mqtt_callback(char* topic, byte* payload, unsigned int length);
void controle1();
void estado_lamp1();
void data_func();
//------------------------------------------------------------------------
//Definição de variáveis
boolean flag3, flag4, flag5;
int sensorVal;
int seg = 0, mini = 0;
float consumo = 0, hora = 0, custo = 0, RS = 0;
char msgMQTT[10], msgconsumoMQTT[10], msgCustoMQTT[10], msgRS[10];
//------------------------------------------------------------------------
//Setup
void setup() {
  flag3 = 1;
  flag4 = 0;
  flag5 = 1;
  pinMode(S1, INPUT_PULLUP);
  pinMode(D1, OUTPUT);
  pinMode(2, OUTPUT);
  digitalWrite(D1, LOW);
  digitalWrite(2, HIGH);
  Serial.begin(115200);
  Serial.println("Booting");
  WiFiManager wifiManager;
  //wifiManager.resetSettings();                                  //utilizando esse comando, as configurações são apagadas da memória
  wifiManager.setConfigPortalTimeout(180);
  wifiManager.autoConnect("HomeOshV3", "12345678");
  while (WiFi.waitForConnectResult() != WL_CONNECTED) {
    digitalWrite(2, LOW);
    Serial.println("Falha na conexão! Reiniciando ...");
    delay(5000);
    ESP.restart();
  }
  //Inicialização OTA
  ArduinoOTA.onStart([]() {
    String type;
    if (ArduinoOTA.getCommand() == U_FLASH) {
      type = "sketch";
    } else { // U_FS
      type = "filesystem";
    }
    Serial.println("Iniciar atualização " + type);
  });
  ArduinoOTA.onEnd([]() {
    Serial.println("\nEnd");
  });
  ArduinoOTA.onProgress([](unsigned int progress, unsigned int total) {
    Serial.printf("Progress: %u%%\r", (progress / (total / 100)));
  });
  ArduinoOTA.onError([](ota_error_t error) {
    Serial.printf("Error[%u]: ", error);
    if (error == OTA_AUTH_ERROR) {
      Serial.println("Falha na autenticação");
    } else if (error == OTA_BEGIN_ERROR) {
      Serial.println("Falha no início");
    } else if (error == OTA_CONNECT_ERROR) {
      Serial.println("Falha na conexão");
    } else if (error == OTA_RECEIVE_ERROR) {
      Serial.println("Falha no recebimento");
    } else if (error == OTA_END_ERROR) {
      Serial.println("Fim com falha");
    }
  });
  ArduinoOTA.begin();
  Serial.print("Pronto:  ");
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());
  //Inicialização MQTT
  client.setServer(mqttServer, mqttPort);
  client.setCallback(callback);
  while (!client.connected()) {
    Serial.println("Conectando ao MQTT...");
    if (client.connect("ESP8266Client", mqttUser, mqttPassword )) {
      Serial.println("connectado ao MQTT");
    } else {
      Serial.print("Falhou com o estado ");
      Serial.print(client.state());
      client.publish("Esp", "Erro");
      delay(2000);
    }
  }
  Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);
  Firebase.reconnectWiFi(true);
  client.publish("ESP", "iniciado");
  // client.publish("Esp", "iniciado");
  client.subscribe("ESP");
}
//------------------------------------------------------------------------
void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("A mensagem chegou no tópico: ");
  Serial.println(topic);
  Serial.print("Messagem:");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
    String msg;
    //obtem a string do payload recebido
    for (int i = 0; i < length; i++)    {
      char c = (char)payload[i];
      msg += c;
    }
    if (msg.equals("B1"))    {
      flag3 = 0;                                                          // Disponibiliza acesso a função de controle;
    }
    if (msg.equals("RST")) {
      ESP.restart();
    }
  }
  Serial.println();
  Serial.println("------------------------------------------------------");
}
//------------------------------------------------------------------------
void controle1() {                                                       // VOID de controle da lampada;
  if (flag3 == 0)                                                        // VOID DE CONTROLE DA LAMPADAS; SÓ ACESSA SE FOR ACIONADA PELO BROKER
  {
    if (flag4 == 1) {
      digitalWrite(D1, LOW);                                             // O STATUS DA LAMP. PARA O SISTEMA DE CONTROLE
      client.publish("ESP1", "Lamp. Desligado");
      flag4 = 0;                                                         // QUEM CONTROLA SEU STATUS É O PROPRIO SISTEMA;
      flag3 = 1;                                                         // COMUNICAÇÃO COM BROKER
    } else if (flag4 == 0) {
      digitalWrite(D1, HIGH);                                            // O STATUS DA LAMP. PARA O SISTEMA DE CONTROLE
      client.publish("ESP1", "Lamp. Ligado");
      flag4 = 1;                                                         // NÃO IMPORTA, E SIM SEUS SINAl HIGH/LOW;
      flag3 = 1;
    }
  }
}
//------------------------------------------------------------------------
void estado_lamp1() {                                                    // MONITORA O SISTEMA, INFORMANDO AO USUARIO SEU STATUS;
  if ((flag5 == 0) && (sensorVal)) {
    Serial.println("Status: Lamp. Ligado");
    client.publish("ESP2", "Lamp. Ligado");
    client.publish("ESP1", "Lamp. Ligado");
    Firebase.pushInt(firebaseData, "LAMP", 1);
    Serial.println("-----------------------");
    flag5 = 1;
  }
  if ((flag5 == 1) && (sensorVal == LOW)) {
    Serial.println("Status: Lamp. Desligado");
    client.publish("ESP2", "Lamp. Desligado");
    client.publish("ESP1", "Lamp. Desligado");
    Firebase.pushInt(firebaseData, "LAMP", 0);
    Serial.println("-----------------------");
    flag5 = 0;
  }
}

void data_func() {
  static unsigned long ult_tempo = 0;
  int tempo = millis();
  if (tempo - ult_tempo >= 1000) {
    ult_tempo = tempo;
    seg++;
  }
  consumo = 7 * seg;
  consumo = consumo / 3600;
  consumo = consumo / 1000;
  custo = RS / 60;
  custo = custo * consumo;

  dtostrf(seg, 5, 0, msgMQTT);
  client.publish("TEMP", msgMQTT);
  Firebase.pushFloat(firebaseData, "TEMP", seg);

  dtostrf(consumo, 5, 6, msgconsumoMQTT);
  client.publish("CONS", msgconsumoMQTT);
  Firebase.pushFloat(firebaseData, "Consumo", consumo, 3 );

  /*dtostrf(custo, 5, 3, msgCustoMQTT);
  client.publish("CUSTO", msgCustoMQTT);
  Firebase.pushFloat(firebaseData, "Custo", custo, 3 );*/

  Serial.print("seg; ");
  Serial.println(seg);
  Serial.print("msgMQTT; ");
  Serial.println(msgMQTT);
}


//------------------------------------------------------------------------
void loop() {
  if (sensorVal == HIGH) {
    data_func();
  }
  WiFiManager wifiManager;
  sensorVal = digitalRead(S1);                                            // LEITURA DE UMA ENTRADA DIGITAL;
  controle1();                                                            // CHAMA A FUNÇÃO DE CONTROLE DO SISTEMA;
  estado_lamp1();                                                         // CHAMA A FUNÇÃO DE MONITORAMENTO DO SISTEMA;
  if ( digitalRead(PIN_AP) == HIGH ) {                                    // FUNÇÃO DE RESET WI-FI;
    Serial.println("resetar"); //tenta abrir o portal
    wifiManager.resetSettings();                                  //utilizando esse comando, as configurações são apagadas da memória
    ESP.restart();
    if (!wifiManager.startConfigPortal("HomeOshV3", "12345678") ) {
      Serial.println("Falha ao conectar");
      delay(2000);
      ESP.restart();
      delay(1000);
    }
    Serial.println("Conectou ESP_wemos!!!");
  }
  ArduinoOTA.handle();                                                    // STARTA O OTA
  client.loop();                                                          // LOOP DO MQTT
}
