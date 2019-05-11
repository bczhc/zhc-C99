#include <pthread.h>
/*
#include <stdio.h>
#include <process.h>
#include <string.h>

int main(int argc, char *argv[]) {
    char Path[100];
    if ((int) argv[0][0] == '.' || strstr(argv[0], ":")) {
        strcpy(Path, argv[0]);
    } else {
        strcpy(Path, ".\\");
        strcat(Path, argv[0]);
    }
    for (int i = strlen(Path) - 1; i >= 0; --i) {
        if ((int) (Path[i]) == '\\') {
            Path[i] = '\0';
            break;
        }
    }
    strcat(Path, "\\");
    char c[7000];
    strcpy(c, "echo off & pushd \"");
    strcat(c, Path);
    strcat(c, "\" & ");
    strcat(c, "set APPDATA=.\\. & call \""
              ".\\\\java\\jre8\\\\bin\\\\"
              "java\" -Dminecraft.client"
              ".jar=.\\.minecraft\\vers"
              "ions\\1.7.10-Forge10.13.4"
              ".1614-1.7.10\\1.7.10-Forge1"
              "0.13.4.1614-1.7.10.jar -X"
              "X:+UnlockExperimentalVMOptio"
              "ns -XX:+UseG1GC -XX:G1New"
              "SizePercent=20 -XX:G1Reserv"
              "ePercent=20 -XX:MaxGCPaus"
              "eMillis=50 -XX:G1HeapRegionSi"
              "ze=16M -XX:-UseAdaptiveSi"
              "zePolicy -XX:-OmitStackTrac"
              "eInFastThrow -Xmn128m -Xm"
              "x4096m -Dfml.ignoreInvalidMin"
              "ecraftCertificates=true -"
              "Dfml.ignorePatchDiscrepanci"
              "es=true -XX:HeapDumpPath="
              "MojangTricksIntelDriversForP"
              "erformance_javaw.exe_mine"
              "craft.exe.heapdump \"-Djava"
              ".library.path=.\\\\.\\\\."
              "minecraft\\\\versions\\\\1.7"
              ".10-Forge10.13.4.1614-1.7"
              ".10\\\\1.7.10-Forge10.13.4."
              "1614-1.7.10-natives\" -Dm"
              "inecraft.launcher.brand=HMCL"
              " -Dminecraft.launcher.ver"
              "sion=3.1.77 -cp \".\\\\.\\\\"
              ".minecraft\\\\libraries\\"
              "\\net\\\\minecraftforge\\\\"
              "forge\\\\1.7.10-10.13.4.1"
              "614-1.7.10\\\\forge-1.7.10-"
              "10.13.4.1614-1.7.10.jar;."
              "\\\\.\\\\.minecraft\\\\libra"
              "ries\\\\net\\\\minecraft\\"
              "\\launchwrapper\\\\1.12\\\\"
              "launchwrapper-1.12.jar;.\\"
              "\\.\\\\.minecraft\\\\libr"
              "aries\\\\org\\\\ow2\\\\as"
              "m\\\\asm-all\\\\5.0.3\\\\as"
              "m-all-5.0.3.jar;.\\\\.\\\\"
              ".minecraft\\\\libraries\\"
              "\\com\\\\typesafe\\\\akka"
              "\\\\akka-actor_2.11\\\\2.3."
              "3\\\\akka-actor_2.11-2.3."
              "3.jar;.\\\\.\\\\.minecraft"
              "\\\\libraries\\\\com\\\\t"
              "ypesafe\\\\config\\\\1.2.1\\"
              "\\config-1.2.1.jar;.\\\\."
              "\\\\.minecraft\\\\librar"
              "ies\\\\org\\\\scala-lang\\"
              "\\scala-actors-migration_2"
              ".11\\\\1.1.0\\\\scala-act"
              "ors-migration_2.11-1.1.0."
              "jar;.\\\\.\\\\.minecraft\\"
              "\\libraries\\\\org\\\\scal"
              "a-lang\\\\scala-compiler\\"
              "\\2.11.1\\\\scala-compile"
              "r-2.11.1.jar;.\\\\.\\\\.m"
              "inecraft\\\\libraries\\\\or"
              "g\\\\scala-lang\\\\plugin"
              "s\\\\scala-continuations-l"
              "ibrary_2.11\\\\1.0.2\\\\s"
              "cala-continuations-library_"
              "2.11-1.0.2.jar;.\\\\.\\\\"
              ".minecraft\\\\libraries\\\\"
              "org\\\\scala-lang\\\\plug"
              "ins\\\\scala-continuations-"
              "plugin_2.11.1\\\\1.0.2\\\\"
              "scala-continuations-plugin"
              "_2.11.1-1.0.2.jar;.\\\\.\\"
              "\\.minecraft\\\\libraries\\"
              "\\org\\\\scala-lang\\\\sc"
              "ala-library\\\\2.11.1\\\\"
              "scala-library-2.11.1.jar;"
              ".\\\\.\\\\.minecraft\\\\lib"
              "raries\\\\org\\\\scala-la"
              "ng\\\\scala-parser-combina"
              "tors_2.11\\\\1.0.1\\\\sca"
              "la-parser-combinators_2.11-"
              "1.0.1.jar;.\\\\.\\\\.mine"
              "craft\\\\libraries\\\\org\\"
              "\\scala-lang\\\\scala-ref"
              "lect\\\\2.11.1\\\\scala-ref"
              "lect-2.11.1.jar;.\\\\.\\\\"
              ".minecraft\\\\libraries\\"
              "\\org\\\\scala-lang\\\\sc"
              "ala-swing_2.11\\\\1.0.1\\\\"
              "scala-swing_2.11-1.0.1.ja"
              "r;.\\\\.\\\\.minecraft\\\\l"
              "ibraries\\\\org\\\\scala-"
              "lang\\\\scala-xml_2.11\\\\1"
              ".0.2\\\\scala-xml_2.11-1."
              "0.2.jar;.\\\\.\\\\.minecra"
              "ft\\\\libraries\\\\lzma\\"
              "\\lzma\\\\0.0.1\\\\lzma-0.0"
              ".1.jar;.\\\\.\\\\.minecra"
              "ft\\\\libraries\\\\net\\\\"
              "sf\\\\jopt-simple\\\\jopt"
              "-simple\\\\4.5\\\\jopt-simp"
              "le-4.5.jar;.\\\\.\\\\.min"
              "ecraft\\\\libraries\\\\com"
              "\\\\google\\\\guava\\\\gu"
              "ava\\\\17.0\\\\guava-17.0.j"
              "ar;.\\\\.\\\\.minecraft\\"
              "\\libraries\\\\org\\\\apa"
              "che\\\\commons\\\\commons"
              "-lang3\\\\3.3.2\\\\commons-"
              "lang3-3.3.2.jar;.\\\\.\\\\"
              ".minecraft\\\\libraries\\"
              "\\com\\\\mojang\\\\realms"
              "\\\\1.2.4\\\\realms-1.2.4.j"
              "ar;.\\\\.\\\\.minecraft\\"
              "\\libraries\\\\org\\\\apac"
              "he\\\\commons\\\\commons-"
              "compress\\\\1.8.1\\\\common"
              "s-compress-1.8.1.jar;.\\\\"
              ".\\\\.minecraft\\\\librari"
              "es\\\\org\\\\apache\\\\ht"
              "tpcomponents\\\\httpclient\\"
              "\\4.3.3\\\\httpclient-4.3"
              ".3.jar;.\\\\.\\\\.minecraf"
              "t\\\\libraries\\\\commons"
              "-logging\\\\commons-logging"
              "\\\\1.1.3\\\\commons-logg"
              "ing-1.1.3.jar;.\\\\.\\\\.mi"
              "necraft\\\\libraries\\\\o"
              "rg\\\\apache\\\\httpcompone"
              "nts\\\\httpcore\\\\4.3.2\\"
              "\\httpcore-4.3.2.jar;.\\\\"
              ".\\\\.minecraft\\\\librar"
              "ies\\\\java3d\\\\vecmath\\\\"
              "1.3.1\\\\vecmath-1.3.1.ja"
              "r;.\\\\.\\\\.minecraft\\\\"
              "libraries\\\\net\\\\sf\\\\"
              "trove4j\\\\trove4j\\\\3.0."
              "3\\\\trove4j-3.0.3.jar;.\\"
              "\\.\\\\.minecraft\\\\libra"
              "ries\\\\com\\\\ibm\\\\icu"
              "\\\\icu4j-core-mojang\\\\51"
              ".2\\\\icu4j-core-mojang-5"
              "1.2.jar;.\\\\.\\\\.minecraf"
              "t\\\\libraries\\\\net\\\\"
              "sf\\\\jopt-simple\\\\jopt-s"
              "imple\\\\4.5\\\\jopt-simp"
              "le-4.5.jar;.\\\\.\\\\.minec"
              "raft\\\\libraries\\\\com\\"
              "\\paulscode\\\\codecjorbis"
              "\\\\20101023\\\\codecjorb"
              "is-20101023.jar;.\\\\.\\\\."
              "minecraft\\\\libraries\\\\"
              "com\\\\paulscode\\\\codecw"
              "av\\\\20101023\\\\codecwa"
              "v-20101023.jar;.\\\\.\\\\."
              "minecraft\\\\libraries\\\\"
              "com\\\\paulscode\\\\librar"
              "yjavasound\\\\20101123\\\\"
              "libraryjavasound-20101123"
              ".jar;.\\\\.\\\\.minecraft"
              "\\\\libraries\\\\com\\\\pau"
              "lscode\\\\librarylwjglope"
              "nal\\\\20100824\\\\library"
              "lwjglopenal-20100824.jar;"
              ".\\\\.\\\\.minecraft\\\\lib"
              "raries\\\\com\\\\paulscod"
              "e\\\\soundsystem\\\\201201"
              "07\\\\soundsystem-2012010"
              "7.jar;.\\\\.\\\\.minecraft\\"
              "\\libraries\\\\io\\\\nett"
              "y\\\\netty-all\\\\4.0.10."
              "Final\\\\netty-all-4.0.10"
              ".Final.jar;.\\\\.\\\\.minec"
              "raft\\\\libraries\\\\com\\"
              "\\google\\\\guava\\\\guav"
              "a\\\\15.0\\\\guava-15.0.j"
              "ar;.\\\\.\\\\.minecraft\\\\"
              "libraries\\\\org\\\\apach"
              "e\\\\commons\\\\commons-la"
              "ng3\\\\3.1\\\\commons-lan"
              "g3-3.1.jar;.\\\\.\\\\.minec"
              "raft\\\\libraries\\\\comm"
              "ons-io\\\\commons-io\\\\2.4"
              "\\\\commons-io-2.4.jar;.\\"
              "\\.\\\\.minecraft\\\\libra"
              "ries\\\\commons-codec\\\\"
              "commons-codec\\\\1.9\\\\com"
              "mons-codec-1.9.jar;.\\\\."
              "\\\\.minecraft\\\\libraries"
              "\\\\net\\\\java\\\\jinput"
              "\\\\jinput\\\\2.0.5\\\\jinp"
              "ut-2.0.5.jar;.\\\\.\\\\.m"
              "inecraft\\\\libraries\\\\ne"
              "t\\\\java\\\\jutils\\\\ju"
              "tils\\\\1.0.0\\\\jutils-1.0"
              ".0.jar;.\\\\.\\\\.minecra"
              "ft\\\\libraries\\\\com\\\\g"
              "oogle\\\\code\\\\gson\\\\"
              "gson\\\\2.2.4\\\\gson-2.2.4"
              ".jar;.\\\\.\\\\.minecraft"
              "\\\\libraries\\\\com\\\\moj"
              "ang\\\\authlib\\\\1.5.13\\"
              "\\authlib-1.5.13.jar;.\\\\"
              ".\\\\.minecraft\\\\librar"
              "ies\\\\org\\\\apache\\\\log"
              "ging\\\\log4j\\\\log4j-ap"
              "i\\\\2.0-beta9\\\\log4j-api"
              "-2.0-beta9.jar;.\\\\.\\\\"
              ".minecraft\\\\libraries\\\\"
              "org\\\\apache\\\\logging\\"
              "\\log4j\\\\log4j-core\\\\2"
              ".0-beta9\\\\log4j-core-2."
              "0-beta9.jar;.\\\\.\\\\.mine"
              "craft\\\\libraries\\\\org"
              "\\\\lwjgl\\\\lwjgl\\\\lwjgl"
              "\\\\2.9.1\\\\lwjgl-2.9.1."
              "jar;.\\\\.\\\\.minecraft\\\\"
              "libraries\\\\org\\\\lwjgl"
              "\\\\lwjgl\\\\lwjgl_util\\\\"
              "2.9.1\\\\lwjgl_util-2.9.1"
              ".jar;.\\\\.\\\\.minecraft\\"
              "\\libraries\\\\tv\\\\twit"
              "ch\\\\twitch\\\\5.16\\\\twi"
              "tch-5.16.jar;.\\\\.\\\\.m"
              "inecraft\\\\versions\\\\1.7"
              ".10-Forge10.13.4.1614-1.7"
              ".10\\\\1.7.10-Forge10.13.4."
              "1614-1.7.10.jar\" net.min"
              "ecraft.launchwrapper.Launch"
              " --username bczhc --versi"
              "on \"HMCL 3.1.77\" --gameDi"
              "r \".\\\\.\\\\.minecraft\\"
              "\\versions\\\\1.7.10-Forge"
              "10.13.4.1614-1.7.10\" --a"
              "ssetsDir \".\\\\.\\\\.minecr"
              "aft\\\\assets\" --assetIn"
              "dex 1.7.10 --uuid 6e1fb17e1"
              "ab14edaaf1d56119f263bbb -"
              "-accessToken 78140b2d241246"
              "17b2a2e93a75bca1a2 --user"
              "Properties {\"registrationC"
              "ountry\":[\"US\"]} --user"
              "Type mojang --tweakClass cp"
              "w.mods.fml.common.launche"
              "r.FMLTweaker --height 480 -"
              "-width 854");
    printf("%s\n", c);
    system(c);
    return 0;
}*/





#include "zhc.h"

/*
void s(char **P) {
    P = (char **) malloc((size_t) (sizeof(char *) * 3));

//    return P;
}

void f(int *i) {
    *i = 2;
}

void f2(char **Dest) {
    *Dest = (char *) malloc(5);
    strcpy(*Dest, "abc0");

}

int main(int argc, char *argv[]) {
    */
/*char a[] = "ab,cde,f,g";
    void ***r = split(a, ",");*//*

    char *r = NULL;
    Scanf(&r);
    printf("%s", r);
    */
/*int a = 3;
    printf("%i\n", a);
    f(&a);
    printf("%i\n", a);*//*

*/
/*    char *r = NULL;
    printf("%s\n", r);
    f2(&r);
    printf("%s\n", r);*//*

    return 0;
}*/


#include <pthread.h>
#include <synchapi.h>

int main() {

    return 0;
}
