.class public Lorg/apache/commons/lang3/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final AWT_TOOLKIT:Ljava/lang/String;

.field public static final FILE_ENCODING:Ljava/lang/String;

.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final IS_JAVA_1_1:Z

.field public static final IS_JAVA_1_2:Z

.field public static final IS_JAVA_1_3:Z

.field public static final IS_JAVA_1_4:Z

.field public static final IS_JAVA_1_5:Z

.field public static final IS_JAVA_1_6:Z

.field public static final IS_JAVA_1_7:Z

.field public static final IS_OS_AIX:Z

.field public static final IS_OS_HP_UX:Z

.field public static final IS_OS_IRIX:Z

.field public static final IS_OS_LINUX:Z

.field public static final IS_OS_MAC:Z

.field public static final IS_OS_MAC_OSX:Z

.field public static final IS_OS_OS2:Z

.field public static final IS_OS_SOLARIS:Z

.field public static final IS_OS_SUN_OS:Z

.field public static final IS_OS_UNIX:Z

.field public static final IS_OS_WINDOWS:Z

.field public static final IS_OS_WINDOWS_2000:Z

.field public static final IS_OS_WINDOWS_7:Z

.field public static final IS_OS_WINDOWS_95:Z

.field public static final IS_OS_WINDOWS_98:Z

.field public static final IS_OS_WINDOWS_ME:Z

.field public static final IS_OS_WINDOWS_NT:Z

.field public static final IS_OS_WINDOWS_VISTA:Z

.field public static final IS_OS_WINDOWS_XP:Z

.field public static final JAVA_AWT_FONTS:Ljava/lang/String;

.field public static final JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

.field public static final JAVA_AWT_HEADLESS:Ljava/lang/String;

.field public static final JAVA_AWT_PRINTERJOB:Ljava/lang/String;

.field public static final JAVA_CLASS_PATH:Ljava/lang/String;

.field public static final JAVA_CLASS_VERSION:Ljava/lang/String;

.field public static final JAVA_COMPILER:Ljava/lang/String;

.field public static final JAVA_ENDORSED_DIRS:Ljava/lang/String;

.field public static final JAVA_EXT_DIRS:Ljava/lang/String;

.field public static final JAVA_HOME:Ljava/lang/String;

.field private static final JAVA_HOME_KEY:Ljava/lang/String; = "java.home"

.field public static final JAVA_IO_TMPDIR:Ljava/lang/String;

.field private static final JAVA_IO_TMPDIR_KEY:Ljava/lang/String; = "java.io.tmpdir"

.field public static final JAVA_LIBRARY_PATH:Ljava/lang/String;

.field public static final JAVA_RUNTIME_NAME:Ljava/lang/String;

.field public static final JAVA_RUNTIME_VERSION:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

.field private static final JAVA_SPECIFICATION_VERSION_AS_ENUM:Lorg/apache/commons/lang3/JavaVersion;

.field public static final JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

.field public static final JAVA_VENDOR:Ljava/lang/String;

.field public static final JAVA_VENDOR_URL:Ljava/lang/String;

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JAVA_VM_INFO:Ljava/lang/String;

.field public static final JAVA_VM_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_VM_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_VERSION:Ljava/lang/String;

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final OS_ARCH:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field private static final OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final OS_VERSION:Ljava/lang/String;

.field public static final PATH_SEPARATOR:Ljava/lang/String;

.field public static final USER_COUNTRY:Ljava/lang/String;

.field public static final USER_DIR:Ljava/lang/String;

.field private static final USER_DIR_KEY:Ljava/lang/String; = "user.dir"

.field public static final USER_HOME:Ljava/lang/String;

.field private static final USER_HOME_KEY:Ljava/lang/String; = "user.home"

.field public static final USER_LANGUAGE:Ljava/lang/String;

.field public static final USER_NAME:Ljava/lang/String;

.field public static final USER_TIMEZONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 89
    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->AWT_TOOLKIT:Ljava/lang/String;

    .line 111
    const-string v0, "file.encoding"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->FILE_ENCODING:Ljava/lang/String;

    .line 129
    const-string v0, "file.separator"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->FILE_SEPARATOR:Ljava/lang/String;

    .line 147
    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_AWT_FONTS:Ljava/lang/String;

    .line 165
    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

    .line 186
    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    .line 204
    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_AWT_PRINTERJOB:Ljava/lang/String;

    .line 222
    const-string v0, "java.class.path"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_CLASS_PATH:Ljava/lang/String;

    .line 240
    const-string v0, "java.class.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_CLASS_VERSION:Ljava/lang/String;

    .line 259
    const-string v0, "java.compiler"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_COMPILER:Ljava/lang/String;

    .line 277
    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_ENDORSED_DIRS:Ljava/lang/String;

    .line 295
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_EXT_DIRS:Ljava/lang/String;

    .line 313
    const-string v0, "java.home"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_HOME:Ljava/lang/String;

    .line 331
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_IO_TMPDIR:Ljava/lang/String;

    .line 349
    const-string v0, "java.library.path"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_LIBRARY_PATH:Ljava/lang/String;

    .line 368
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_RUNTIME_NAME:Ljava/lang/String;

    .line 387
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_RUNTIME_VERSION:Ljava/lang/String;

    .line 405
    const-string v0, "java.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_NAME:Ljava/lang/String;

    .line 423
    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 441
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 442
    invoke-static {v0}, Lorg/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VERSION_AS_ENUM:Lorg/apache/commons/lang3/JavaVersion;

    .line 461
    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

    .line 480
    const-string v0, "java.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VENDOR:Ljava/lang/String;

    .line 498
    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VENDOR_URL:Ljava/lang/String;

    .line 516
    const-string v0, "java.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    .line 535
    const-string v0, "java.vm.info"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VM_INFO:Ljava/lang/String;

    .line 553
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VM_NAME:Ljava/lang/String;

    .line 571
    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

    .line 589
    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 607
    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 625
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VM_VENDOR:Ljava/lang/String;

    .line 643
    const-string v0, "java.vm.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_VM_VERSION:Ljava/lang/String;

    .line 661
    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 679
    const-string v0, "os.arch"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_ARCH:Ljava/lang/String;

    .line 697
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_NAME:Ljava/lang/String;

    .line 715
    const-string v0, "os.version"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_VERSION:Ljava/lang/String;

    .line 733
    const-string v0, "path.separator"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->PATH_SEPARATOR:Ljava/lang/String;

    .line 753
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "user.region"

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->USER_COUNTRY:Ljava/lang/String;

    .line 772
    const-string v0, "user.dir"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->USER_DIR:Ljava/lang/String;

    .line 790
    const-string v0, "user.home"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->USER_HOME:Ljava/lang/String;

    .line 809
    const-string v0, "user.language"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->USER_LANGUAGE:Ljava/lang/String;

    .line 827
    const-string v0, "user.name"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->USER_NAME:Ljava/lang/String;

    .line 845
    const-string v0, "user.timezone"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/SystemUtils;->USER_TIMEZONE:Ljava/lang/String;

    .line 860
    const-string v0, "1.1"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_JAVA_1_1:Z

    .line 870
    const-string v0, "1.2"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_JAVA_1_2:Z

    .line 880
    const-string v0, "1.3"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_JAVA_1_3:Z

    .line 890
    const-string v0, "1.4"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_JAVA_1_4:Z

    .line 900
    const-string v0, "1.5"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_JAVA_1_5:Z

    .line 910
    const-string v0, "1.6"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_JAVA_1_6:Z

    .line 922
    const-string v0, "1.7"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_JAVA_1_7:Z

    .line 942
    const-string v0, "AIX"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_AIX:Z

    .line 954
    const-string v1, "HP-UX"

    invoke-static {v1}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_HP_UX:Z

    .line 966
    const-string v2, "Irix"

    invoke-static {v2}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_IRIX:Z

    .line 978
    const-string v3, "Linux"

    invoke-static {v3}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    const-string v3, "LINUX"

    invoke-static {v3}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v5

    :goto_1
    sput-boolean v3, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_LINUX:Z

    .line 990
    const-string v6, "Mac"

    invoke-static {v6}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC:Z

    .line 1002
    const-string v6, "Mac OS X"

    invoke-static {v6}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_MAC_OSX:Z

    .line 1014
    const-string v7, "OS/2"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_OS2:Z

    .line 1026
    const-string v7, "Solaris"

    invoke-static {v7}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_SOLARIS:Z

    .line 1038
    const-string v8, "SunOS"

    invoke-static {v8}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_SUN_OS:Z

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    if-eqz v8, :cond_4

    :cond_3
    move v4, v5

    .line 1050
    :cond_4
    sput-boolean v4, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_UNIX:Z

    .line 1063
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS:Z

    .line 1075
    const-string v1, "5.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_2000:Z

    .line 1087
    const-string v1, "4.0"

    const-string v2, "Windows 9"

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_95:Z

    .line 1100
    const-string v1, "4.1"

    invoke-static {v2, v1}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_98:Z

    .line 1113
    const-string v1, "4.9"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_ME:Z

    .line 1126
    const-string v1, "Windows NT"

    invoke-static {v1}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatchesName(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_NT:Z

    .line 1139
    const-string v1, "5.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_XP:Z

    .line 1152
    const-string v1, "6.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_VISTA:Z

    .line 1164
    const-string v1, "6.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang3/SystemUtils;->IS_OS_WINDOWS_7:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaHome()Ljava/io/File;
    .locals 2

    .line 1178
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getJavaIoTmpDir()Ljava/io/File;
    .locals 2

    .line 1193
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getJavaVersionMatches(Ljava/lang/String;)Z
    .locals 1

    .line 1205
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/SystemUtils;->isJavaVersionMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1216
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_NAME:Ljava/lang/String;

    sget-object v1, Lorg/apache/commons/lang3/SystemUtils;->OS_VERSION:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/lang3/SystemUtils;->isOSMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getOSMatchesName(Ljava/lang/String;)Z
    .locals 1

    .line 1226
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_NAME:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/SystemUtils;->isOSNameMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1244
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1247
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught a SecurityException reading the system property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'; the SystemUtils property value will default to null."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserDir()Ljava/io/File;
    .locals 2

    .line 1265
    new-instance v0, Ljava/io/File;

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserHome()Ljava/io/File;
    .locals 2

    .line 1280
    new-instance v0, Ljava/io/File;

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isJavaAwtHeadless()Z
    .locals 2

    .line 1292
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isJavaVersionAtLeast(Lorg/apache/commons/lang3/JavaVersion;)Z
    .locals 1

    .line 1311
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->JAVA_SPECIFICATION_VERSION_AS_ENUM:Lorg/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/JavaVersion;->atLeast(Lorg/apache/commons/lang3/JavaVersion;)Z

    move-result p0

    return p0
.end method

.method static isJavaVersionMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1330
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isOSMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1349
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method static isOSNameMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1366
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
