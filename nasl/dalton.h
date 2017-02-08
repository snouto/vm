//
// Created by root on 07/09/16.
//

#ifndef OPENVAS_LIBRARIES_DALTON_H
#define OPENVAS_LIBRARIES_DALTON_H
#define DALTON_MAX_ARRAY_SIZE 999
#define SCRIPT_SUCCESS 1
#define SCRIPT_FAILURE 0
typedef struct DaltonStringContainer
{
    char *Contents;

}DaltonStringContainer;

typedef enum DaltonMessageType {

    SECURITY=0 , LOG=2,ERROR = 3

}DaltonMessageType;

typedef struct DaltonDictContainer
{
    char *Name;
    char *Type;
    char *Value;

}DaltonDictContainer;

typedef struct DaltonNameValuePair
{
    char *Name;
    char *Value;

}DaltonNameValuePair;

typedef struct DaltonSecurityMessage{

    char *Data;
    char *Port;
    char *Proto;
    char *Protocol;
    char *Message;
    int Type;

}DaltonSecurityMessage;

typedef struct DaltonScriptInfo {

    char * ScriptName;
    char * ScriptVersion;
    int    ScriptTimeout;
    char * ScriptDescription;
    char * ScriptCopyright;
    char * ScriptSummary;
    int    ScriptCategory;
    char * ScriptFamily;
    char *ScriptId;
    char *ScriptOid;
    DaltonStringContainer *ScriptCveIds[DALTON_MAX_ARRAY_SIZE];
    DaltonStringContainer *ScriptBugTraqIds[DALTON_MAX_ARRAY_SIZE];
    DaltonStringContainer *ScriptDependencies[DALTON_MAX_ARRAY_SIZE];
    DaltonStringContainer *ScriptRequireKeys[DALTON_MAX_ARRAY_SIZE];
    DaltonStringContainer *ScriptMandatoryKeys[DALTON_MAX_ARRAY_SIZE];
    DaltonStringContainer *ScriptRequirePorts[DALTON_MAX_ARRAY_SIZE];
    DaltonStringContainer *ScriptRequireUDPPorts[DALTON_MAX_ARRAY_SIZE];
    DaltonStringContainer *ScriptExcludeKeys[DALTON_MAX_ARRAY_SIZE];
    DaltonDictContainer *ScriptAddPreferences[DALTON_MAX_ARRAY_SIZE];
    DaltonNameValuePair *ScriptXRefs[DALTON_MAX_ARRAY_SIZE];
    DaltonNameValuePair *ScriptTags[DALTON_MAX_ARRAY_SIZE];
    DaltonStringContainer *ScriptMessages[DALTON_MAX_ARRAY_SIZE];
    int Success;

}DaltonScriptInfo;



extern int xrefCount;
extern int tagsCount;
extern int redis_db;
extern int addPreferencesCount;
extern int SecurityMessagesCount;
extern void initializeDaltonInfo(const DaltonScriptInfo *info);

#endif //OPENVAS_LIBRARIES_DALTON_H
