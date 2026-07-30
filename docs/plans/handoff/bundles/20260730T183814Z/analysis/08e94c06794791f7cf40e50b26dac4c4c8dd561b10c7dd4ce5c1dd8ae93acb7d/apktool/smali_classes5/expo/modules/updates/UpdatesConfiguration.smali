.class public final Lexpo/modules/updates/UpdatesConfiguration;
.super Ljava/lang/Object;
.source "UpdatesConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;,
        Lexpo/modules/updates/UpdatesConfiguration$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdatesConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdatesConfiguration.kt\nexpo/modules/updates/UpdatesConfiguration\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 UpdatesConfiguration.kt\nexpo/modules/updates/UpdatesConfigurationKt\n*L\n1#1,288:1\n1#2:289\n255#3,8:290\n242#3,9:298\n255#3,8:307\n242#3,9:315\n255#3,8:324\n242#3,9:332\n255#3,8:341\n242#3,9:349\n255#3,8:358\n242#3,9:366\n255#3,8:375\n242#3,9:383\n255#3,8:392\n242#3,9:400\n255#3,8:409\n242#3,9:417\n*S KotlinDebug\n*F\n+ 1 UpdatesConfiguration.kt\nexpo/modules/updates/UpdatesConfiguration\n*L\n79#1:290,8\n79#1:298,9\n84#1:307,8\n84#1:315,9\n85#1:324,8\n91#1:332,9\n104#1:341,8\n104#1:349,9\n105#1:358,8\n105#1:366,9\n108#1:375,8\n110#1:383,9\n111#1:392,8\n113#1:400,9\n114#1:409,8\n114#1:417,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008\u0086\u0008\u0018\u0000 J2\u00020\u0001:\u0002IJB\u008d\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u0012\u0006\u0010\u0012\u001a\u00020\u000c\u0012\u0006\u0010\u0013\u001a\u00020\u000c\u0012\u0006\u0010\u0014\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0015\u0010\u0016B)\u0008\u0016\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\u0015\u0010\u001aB;\u0008\u0010\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0014\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u000c\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u0015\u0010\u001dJ\u0006\u00106\u001a\u00020\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0005H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u0008H\u00c6\u0003J\t\u0010;\u001a\u00020\nH\u00c6\u0003J\t\u0010<\u001a\u00020\u000cH\u00c6\u0003J\u0015\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000eH\u00c6\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0017\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000eH\u00c6\u0003J\t\u0010@\u001a\u00020\u000cH\u00c6\u0003J\t\u0010A\u001a\u00020\u000cH\u00c2\u0003J\t\u0010B\u001a\u00020\u000cH\u00c6\u0003J\t\u0010C\u001a\u00020\u000cH\u00c6\u0003J\u00a9\u0001\u0010D\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0014\u0008\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000cH\u00c6\u0001J\u0013\u0010E\u001a\u00020\u000c2\u0008\u0010F\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010G\u001a\u00020\u0008H\u00d6\u0001J\t\u0010H\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u001d\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001fR\u001f\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010*R\u0011\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010(R\u000e\u0010\u0012\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010(R\u0011\u0010\u0014\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010(R\u001d\u00100\u001a\u0004\u0018\u0001018FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00082\u00103\u00a8\u0006K"
    }
    d2 = {
        "Lexpo/modules/updates/UpdatesConfiguration;",
        "",
        "scopeKey",
        "",
        "updateUrl",
        "Landroid/net/Uri;",
        "runtimeVersionRaw",
        "launchWaitMs",
        "",
        "checkOnLaunch",
        "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
        "hasEmbeddedUpdate",
        "",
        "requestHeaders",
        "",
        "codeSigningCertificate",
        "codeSigningMetadata",
        "codeSigningIncludeManifestResponseCertificateChain",
        "codeSigningAllowUnsignedManifests",
        "enableExpoUpdatesProtocolV0CompatibilityMode",
        "disableAntiBrickingMeasures",
        "<init>",
        "(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;ZLjava/util/Map;Ljava/lang/String;Ljava/util/Map;ZZZZ)V",
        "context",
        "Landroid/content/Context;",
        "overrideMap",
        "(Landroid/content/Context;Ljava/util/Map;)V",
        "configOverride",
        "Lexpo/modules/updates/UpdatesConfigurationOverride;",
        "(Landroid/content/Context;Ljava/util/Map;ZLexpo/modules/updates/UpdatesConfigurationOverride;)V",
        "getScopeKey",
        "()Ljava/lang/String;",
        "getUpdateUrl",
        "()Landroid/net/Uri;",
        "getRuntimeVersionRaw",
        "getLaunchWaitMs",
        "()I",
        "getCheckOnLaunch",
        "()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
        "getHasEmbeddedUpdate",
        "()Z",
        "getRequestHeaders",
        "()Ljava/util/Map;",
        "getCodeSigningCertificate",
        "getCodeSigningMetadata",
        "getCodeSigningIncludeManifestResponseCertificateChain",
        "getEnableExpoUpdatesProtocolV0CompatibilityMode",
        "getDisableAntiBrickingMeasures",
        "codeSigningConfiguration",
        "Lexpo/modules/updates/codesigning/CodeSigningConfiguration;",
        "getCodeSigningConfiguration",
        "()Lexpo/modules/updates/codesigning/CodeSigningConfiguration;",
        "codeSigningConfiguration$delegate",
        "Lkotlin/Lazy;",
        "getRuntimeVersion",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "CheckAutomaticallyConfiguration",
        "Companion",
        "expo-updates_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lexpo/modules/updates/UpdatesConfiguration$Companion;

.field private static final FINGERPRINT_FILE_NAME:Ljava/lang/String; = "fingerprint"

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATES_CONFIGURATION_CHECK_ON_LAUNCH_KEY:Ljava/lang/String; = "checkOnLaunch"

.field public static final UPDATES_CONFIGURATION_CODE_SIGNING_ALLOW_UNSIGNED_MANIFESTS:Ljava/lang/String; = "codeSigningAllowUnsignedManifests"

.field public static final UPDATES_CONFIGURATION_CODE_SIGNING_CERTIFICATE:Ljava/lang/String; = "codeSigningCertificate"

.field public static final UPDATES_CONFIGURATION_CODE_SIGNING_INCLUDE_MANIFEST_RESPONSE_CERTIFICATE_CHAIN:Ljava/lang/String; = "codeSigningIncludeManifestResponseCertificateChain"

.field public static final UPDATES_CONFIGURATION_CODE_SIGNING_METADATA:Ljava/lang/String; = "codeSigningMetadata"

.field public static final UPDATES_CONFIGURATION_DISABLE_ANTI_BRICKING_MEASURES:Ljava/lang/String; = "disableAntiBrickingMeasures"

.field public static final UPDATES_CONFIGURATION_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field public static final UPDATES_CONFIGURATION_ENABLE_EXPO_UPDATES_PROTOCOL_V0_COMPATIBILITY_MODE:Ljava/lang/String; = "enableExpoUpdatesProtocolCompatibilityMode"

.field public static final UPDATES_CONFIGURATION_HAS_EMBEDDED_UPDATE_KEY:Ljava/lang/String; = "hasEmbeddedUpdate"

.field private static final UPDATES_CONFIGURATION_LAUNCH_WAIT_MS_DEFAULT_VALUE:I = 0x0

.field public static final UPDATES_CONFIGURATION_LAUNCH_WAIT_MS_KEY:Ljava/lang/String; = "launchWaitMs"

.field public static final UPDATES_CONFIGURATION_REQUEST_HEADERS_KEY:Ljava/lang/String; = "requestHeaders"

.field public static final UPDATES_CONFIGURATION_RUNTIME_VERSION_KEY:Ljava/lang/String; = "runtimeVersion"

.field public static final UPDATES_CONFIGURATION_RUNTIME_VERSION_READ_FINGERPRINT_FILE_SENTINEL:Ljava/lang/String; = "file:fingerprint"

.field public static final UPDATES_CONFIGURATION_SCOPE_KEY_KEY:Ljava/lang/String; = "scopeKey"

.field public static final UPDATES_CONFIGURATION_UPDATE_URL_KEY:Ljava/lang/String; = "updateUrl"


# instance fields
.field private final checkOnLaunch:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

.field private final codeSigningAllowUnsignedManifests:Z

.field private final codeSigningCertificate:Ljava/lang/String;

.field private final codeSigningConfiguration$delegate:Lkotlin/Lazy;

.field private final codeSigningIncludeManifestResponseCertificateChain:Z

.field private final codeSigningMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final disableAntiBrickingMeasures:Z

.field private final enableExpoUpdatesProtocolV0CompatibilityMode:Z

.field private final hasEmbeddedUpdate:Z

.field private final launchWaitMs:I

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final runtimeVersionRaw:Ljava/lang/String;

.field private final scopeKey:Ljava/lang/String;

.field private final updateUrl:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$fWeXF6MXhOEWUoQOGguegoPsMOk(Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/codesigning/CodeSigningConfiguration;
    .locals 0

    invoke-static {p0}, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningConfiguration_delegate$lambda$5(Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/codesigning/CodeSigningConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/updates/UpdatesConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/updates/UpdatesConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/updates/UpdatesConfiguration;->Companion:Lexpo/modules/updates/UpdatesConfiguration$Companion;

    .line 133
    const-string v0, "UpdatesConfiguration"

    sput-object v0, Lexpo/modules/updates/UpdatesConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 68
    sget-object v0, Lexpo/modules/updates/UpdatesConfiguration;->Companion:Lexpo/modules/updates/UpdatesConfiguration$Companion;

    invoke-static {v0, p1, p2}, Lexpo/modules/updates/UpdatesConfiguration$Companion;->access$getDisableAntiBrickingMeasures(Lexpo/modules/updates/UpdatesConfiguration$Companion;Landroid/content/Context;Ljava/util/Map;)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 69
    sget-object v1, Lexpo/modules/updates/UpdatesConfigurationOverride;->Companion:Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;

    invoke-virtual {v1, p1}, Lexpo/modules/updates/UpdatesConfigurationOverride$Companion;->load$expo_updates_release(Landroid/content/Context;)Lexpo/modules/updates/UpdatesConfigurationOverride;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lexpo/modules/updates/UpdatesConfiguration;-><init>(Landroid/content/Context;Ljava/util/Map;ZLexpo/modules/updates/UpdatesConfigurationOverride;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;ZLexpo/modules/updates/UpdatesConfigurationOverride;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z",
            "Lexpo/modules/updates/UpdatesConfigurationOverride;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 79
    const-string v4, "UpdatesConfiguration failed to initialize: bad value of type "

    const/16 v5, 0x80

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 290
    const-string v7, "scopeKey"

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v7, v6

    goto :goto_0

    .line 293
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 294
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 79
    :goto_0
    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_8

    goto :goto_1

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provided for key scopeKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz v0, :cond_7

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 299
    const-string v8, "expo.modules.updates.EXPO_SCOPE_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    .line 300
    :cond_3
    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 303
    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 304
    :cond_4
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    .line 305
    :cond_5
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    .line 306
    :cond_6
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    :cond_7
    :goto_2
    move-object v7, v6

    .line 80
    :cond_8
    :goto_3
    sget-object v8, Lexpo/modules/updates/UpdatesConfiguration;->Companion:Lexpo/modules/updates/UpdatesConfiguration$Companion;

    invoke-static {v8, v0, v1, v2, v3}, Lexpo/modules/updates/UpdatesConfiguration$Companion;->access$getUpdateUrl(Lexpo/modules/updates/UpdatesConfiguration$Companion;Landroid/content/Context;Ljava/util/Map;ZLexpo/modules/updates/UpdatesConfigurationOverride;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-static {v7, v9}, Lexpo/modules/updates/UpdatesConfigurationKt;->access$maybeGetDefaultScopeKey(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 82
    invoke-static {v8, v0, v1, v2, v3}, Lexpo/modules/updates/UpdatesConfiguration$Companion;->access$getUpdateUrl(Lexpo/modules/updates/UpdatesConfiguration$Companion;Landroid/content/Context;Ljava/util/Map;ZLexpo/modules/updates/UpdatesConfigurationOverride;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    invoke-static {v8, v0, v1}, Lexpo/modules/updates/UpdatesConfiguration$Companion;->access$getRuntimeVersion(Lexpo/modules/updates/UpdatesConfiguration$Companion;Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    const/4 v7, 0x0

    if-eqz v1, :cond_b

    .line 307
    const-string v8, "launchWaitMs"

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    move-object v8, v6

    goto :goto_4

    .line 310
    :cond_9
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 311
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_a

    .line 84
    :goto_4
    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_b

    goto/16 :goto_7

    .line 314
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provided for key launchWaitMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_b
    if-eqz v0, :cond_10

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 316
    const-string v9, "expo.modules.updates.EXPO_UPDATES_LAUNCH_WAIT_MS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_5

    .line 317
    :cond_c
    const-class v10, Ljava/lang/Integer;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 320
    const-class v14, Ljava/lang/String;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_6

    .line 321
    :cond_d
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_6

    .line 322
    :cond_e
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6

    .line 323
    :cond_f
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_6

    :cond_10
    :goto_5
    move-object v8, v6

    :goto_6
    if-eqz v8, :cond_11

    .line 84
    :goto_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v14, v8

    goto :goto_8

    :cond_11
    move v14, v7

    :goto_8
    if-eqz v1, :cond_14

    .line 324
    const-string v8, "checkOnLaunch"

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    move-object v8, v6

    goto :goto_9

    .line 327
    :cond_12
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 328
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_13

    .line 85
    :goto_9
    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_14

    .line 87
    :try_start_0
    invoke-static {v8}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->valueOf(Ljava/lang/String;)Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_1b

    goto :goto_a

    .line 89
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdatesConfiguration failed to initialize: invalid value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provided for checkOnLaunch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 331
    :cond_13
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provided for key checkOnLaunch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_14
    :goto_a
    if-eqz v0, :cond_19

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 333
    const-string v9, "expo.modules.updates.EXPO_UPDATES_CHECK_ON_LAUNCH"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_15

    move-object v8, v6

    goto :goto_b

    .line 334
    :cond_15
    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    .line 337
    const-class v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    .line 338
    :cond_16
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_b

    .line 339
    :cond_17
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_b

    .line 340
    :cond_18
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :goto_b
    if-nez v8, :cond_1a

    .line 91
    :cond_19
    const-string v8, "ALWAYS"

    .line 93
    :cond_1a
    :try_start_1
    invoke-static {v8}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->valueOf(Ljava/lang/String;)Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    .line 96
    :catch_1
    sget-object v9, Lexpo/modules/updates/UpdatesConfiguration;->TAG:Ljava/lang/String;

    .line 97
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v15, "Invalid value "

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " for expo.modules.updates.EXPO_UPDATES_CHECK_ON_LAUNCH in AndroidManifest; defaulting to ALWAYS"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 95
    invoke-static {v9, v8}, Lio/sentry/android/core/SentryLogcatAdapter;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v8, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->ALWAYS:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    :cond_1b
    :goto_c
    move-object v15, v8

    .line 102
    sget-object v8, Lexpo/modules/updates/UpdatesConfiguration;->Companion:Lexpo/modules/updates/UpdatesConfiguration$Companion;

    invoke-static {v8, v0, v1, v2, v3}, Lexpo/modules/updates/UpdatesConfiguration$Companion;->access$getHasEmbeddedUpdate(Lexpo/modules/updates/UpdatesConfiguration$Companion;Landroid/content/Context;Ljava/util/Map;ZLexpo/modules/updates/UpdatesConfigurationOverride;)Z

    move-result v16

    .line 103
    invoke-static {v8, v0, v1, v2, v3}, Lexpo/modules/updates/UpdatesConfiguration$Companion;->access$getRequestHeaders(Lexpo/modules/updates/UpdatesConfiguration$Companion;Landroid/content/Context;Ljava/util/Map;ZLexpo/modules/updates/UpdatesConfigurationOverride;)Ljava/util/Map;

    move-result-object v17

    if-eqz v1, :cond_1f

    .line 341
    const-string v2, "codeSigningCertificate"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object v2, v6

    goto :goto_d

    .line 344
    :cond_1c
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 345
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1e

    .line 104
    :goto_d
    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1d

    goto :goto_f

    :cond_1d
    :goto_e
    move-object/from16 v18, v2

    goto/16 :goto_11

    .line 348
    :cond_1e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provided for key codeSigningCertificate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1f
    :goto_f
    if-eqz v0, :cond_24

    .line 349
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 350
    const-string v3, "expo.modules.updates.CODE_SIGNING_CERTIFICATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    goto :goto_10

    .line 351
    :cond_20
    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 354
    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 355
    :cond_21
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_e

    .line 356
    :cond_22
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_e

    .line 357
    :cond_23
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_e

    :cond_24
    :goto_10
    move-object/from16 v18, v6

    :goto_11
    if-eqz v1, :cond_27

    .line 358
    const-string v2, "codeSigningMetadata"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    move-object v2, v6

    goto :goto_12

    .line 361
    :cond_25
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 362
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_26

    .line 105
    :goto_12
    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_2e

    goto :goto_13

    .line 365
    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provided for key codeSigningMetadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_27
    :goto_13
    if-eqz v0, :cond_2c

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 367
    const-string v3, "expo.modules.updates.CODE_SIGNING_METADATA"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_28

    move-object v2, v6

    goto :goto_14

    .line 368
    :cond_28
    const-class v9, Ljava/lang/String;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 371
    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    .line 372
    :cond_29
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_14

    .line 373
    :cond_2a
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_14

    .line 374
    :cond_2b
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_14
    if-nez v2, :cond_2d

    .line 105
    :cond_2c
    const-string v2, "{}"

    .line 106
    :cond_2d
    sget-object v3, Lexpo/modules/updates/UpdatesUtils;->INSTANCE:Lexpo/modules/updates/UpdatesUtils;

    invoke-virtual {v3, v2}, Lexpo/modules/updates/UpdatesUtils;->getMapFromJSONString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    :cond_2e
    move-object/from16 v19, v2

    if-eqz v1, :cond_31

    .line 375
    const-string v2, "codeSigningIncludeManifestResponseCertificateChain"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    move-object v2, v6

    goto :goto_15

    .line 378
    :cond_2f
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 379
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_30

    .line 108
    :goto_15
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_31

    goto/16 :goto_18

    .line 382
    :cond_30
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provided for key codeSigningIncludeManifestResponseCertificateChain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_31
    if-eqz v0, :cond_36

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 384
    const-string v3, "expo.modules.updates.CODE_SIGNING_INCLUDE_MANIFEST_RESPONSE_CERTIFICATE_CHAIN"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_32

    goto :goto_16

    .line 385
    :cond_32
    const-class v9, Ljava/lang/Boolean;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 388
    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_17

    .line 389
    :cond_33
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_17

    .line 390
    :cond_34
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_17

    .line 391
    :cond_35
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_17

    :cond_36
    :goto_16
    move-object v2, v6

    :goto_17
    if-eqz v2, :cond_37

    .line 108
    :goto_18
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v20, v2

    goto :goto_19

    :cond_37
    move/from16 v20, v7

    :goto_19
    if-eqz v1, :cond_3a

    .line 392
    const-string v2, "codeSigningAllowUnsignedManifests"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    move-object v2, v6

    goto :goto_1a

    .line 395
    :cond_38
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 396
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_39

    .line 111
    :goto_1a
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3a

    goto/16 :goto_1d

    .line 399
    :cond_39
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provided for key codeSigningAllowUnsignedManifests"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3a
    if-eqz v0, :cond_3f

    .line 400
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 401
    const-string v3, "expo.modules.updates.CODE_SIGNING_ALLOW_UNSIGNED_MANIFESTS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3b

    goto :goto_1b

    .line 402
    :cond_3b
    const-class v9, Ljava/lang/Boolean;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    .line 405
    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1c

    .line 406
    :cond_3c
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1c

    .line 407
    :cond_3d
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1c

    .line 408
    :cond_3e
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1c

    :cond_3f
    :goto_1b
    move-object v2, v6

    :goto_1c
    if-eqz v2, :cond_40

    .line 111
    :goto_1d
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v21, v2

    goto :goto_1e

    :cond_40
    move/from16 v21, v7

    :goto_1e
    if-eqz v1, :cond_43

    .line 409
    const-string v2, "enableExpoUpdatesProtocolCompatibilityMode"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    move-object v2, v6

    goto :goto_1f

    .line 412
    :cond_41
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 413
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_42

    .line 114
    :goto_1f
    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_22

    .line 416
    :cond_42
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " provided for key enableExpoUpdatesProtocolCompatibilityMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_43
    if-eqz v0, :cond_48

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 418
    const-string v3, "expo.modules.updates.ENABLE_EXPO_UPDATES_PROTOCOL_V0_COMPATIBILITY_MODE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_21

    .line 419
    :cond_44
    const-class v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 422
    const-class v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_20

    .line 423
    :cond_45
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_20

    .line 424
    :cond_46
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_20

    .line 425
    :cond_47
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :goto_20
    move-object v6, v2

    :cond_48
    :goto_21
    if-eqz v6, :cond_49

    .line 114
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_22
    move/from16 v22, v2

    goto :goto_23

    :cond_49
    move/from16 v22, v7

    .line 115
    :goto_23
    invoke-static {v8, v0, v1}, Lexpo/modules/updates/UpdatesConfiguration$Companion;->access$getDisableAntiBrickingMeasures(Lexpo/modules/updates/UpdatesConfiguration$Companion;Landroid/content/Context;Ljava/util/Map;)Z

    move-result v23

    move-object/from16 v10, p0

    .line 77
    invoke-direct/range {v10 .. v23}, Lexpo/modules/updates/UpdatesConfiguration;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;ZLjava/util/Map;Ljava/lang/String;Ljava/util/Map;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;ZLjava/util/Map;Ljava/lang/String;Ljava/util/Map;ZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "I",
            "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ)V"
        }
    .end annotation

    const-string v0, "scopeKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkOnLaunch"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestHeaders"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lexpo/modules/updates/UpdatesConfiguration;->scopeKey:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lexpo/modules/updates/UpdatesConfiguration;->updateUrl:Landroid/net/Uri;

    .line 31
    iput-object p3, p0, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    .line 32
    iput p4, p0, Lexpo/modules/updates/UpdatesConfiguration;->launchWaitMs:I

    .line 33
    iput-object p5, p0, Lexpo/modules/updates/UpdatesConfiguration;->checkOnLaunch:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    .line 34
    iput-boolean p6, p0, Lexpo/modules/updates/UpdatesConfiguration;->hasEmbeddedUpdate:Z

    .line 35
    iput-object p7, p0, Lexpo/modules/updates/UpdatesConfiguration;->requestHeaders:Ljava/util/Map;

    .line 36
    iput-object p8, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningCertificate:Ljava/lang/String;

    .line 37
    iput-object p9, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningMetadata:Ljava/util/Map;

    .line 38
    iput-boolean p10, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningIncludeManifestResponseCertificateChain:Z

    .line 39
    iput-boolean p11, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningAllowUnsignedManifests:Z

    .line 40
    iput-boolean p12, p0, Lexpo/modules/updates/UpdatesConfiguration;->enableExpoUpdatesProtocolV0CompatibilityMode:Z

    .line 41
    iput-boolean p13, p0, Lexpo/modules/updates/UpdatesConfiguration;->disableAntiBrickingMeasures:Z

    .line 118
    new-instance p1, Lexpo/modules/updates/UpdatesConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lexpo/modules/updates/UpdatesConfiguration$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/updates/UpdatesConfiguration;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningConfiguration$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final codeSigningConfiguration_delegate$lambda$5(Lexpo/modules/updates/UpdatesConfiguration;)Lexpo/modules/updates/codesigning/CodeSigningConfiguration;
    .locals 4

    .line 119
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningCertificate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    new-instance v1, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;

    iget-object v2, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningMetadata:Ljava/util/Map;

    iget-boolean v3, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningIncludeManifestResponseCertificateChain:Z

    iget-boolean p0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningAllowUnsignedManifests:Z

    invoke-direct {v1, v0, v2, v3, p0}, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;-><init>(Ljava/lang/String;Ljava/util/Map;ZZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private final component11()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningAllowUnsignedManifests:Z

    return v0
.end method

.method public static synthetic copy$default(Lexpo/modules/updates/UpdatesConfiguration;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;ZLjava/util/Map;Ljava/lang/String;Ljava/util/Map;ZZZZILjava/lang/Object;)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lexpo/modules/updates/UpdatesConfiguration;->scopeKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lexpo/modules/updates/UpdatesConfiguration;->updateUrl:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lexpo/modules/updates/UpdatesConfiguration;->launchWaitMs:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lexpo/modules/updates/UpdatesConfiguration;->checkOnLaunch:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lexpo/modules/updates/UpdatesConfiguration;->hasEmbeddedUpdate:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lexpo/modules/updates/UpdatesConfiguration;->requestHeaders:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningCertificate:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningMetadata:Ljava/util/Map;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningIncludeManifestResponseCertificateChain:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningAllowUnsignedManifests:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lexpo/modules/updates/UpdatesConfiguration;->enableExpoUpdatesProtocolV0CompatibilityMode:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lexpo/modules/updates/UpdatesConfiguration;->disableAntiBrickingMeasures:Z

    goto :goto_c

    :cond_c
    move/from16 v1, p13

    :goto_c
    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lexpo/modules/updates/UpdatesConfiguration;->copy(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;ZLjava/util/Map;Ljava/lang/String;Ljava/util/Map;ZZZZ)Lexpo/modules/updates/UpdatesConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->scopeKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningIncludeManifestResponseCertificateChain:Z

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->enableExpoUpdatesProtocolV0CompatibilityMode:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->disableAntiBrickingMeasures:Z

    return v0
.end method

.method public final component2()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->updateUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->launchWaitMs:I

    return v0
.end method

.method public final component5()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->checkOnLaunch:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->hasEmbeddedUpdate:Z

    return v0
.end method

.method public final component7()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningCertificate:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;ZLjava/util/Map;Ljava/lang/String;Ljava/util/Map;ZZZZ)Lexpo/modules/updates/UpdatesConfiguration;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "I",
            "Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ)",
            "Lexpo/modules/updates/UpdatesConfiguration;"
        }
    .end annotation

    const-string v0, "scopeKey"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateUrl"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkOnLaunch"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestHeaders"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/updates/UpdatesConfiguration;

    move-object v1, v0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lexpo/modules/updates/UpdatesConfiguration;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ILexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;ZLjava/util/Map;Ljava/lang/String;Ljava/util/Map;ZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/updates/UpdatesConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/updates/UpdatesConfiguration;

    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->scopeKey:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->scopeKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->updateUrl:Landroid/net/Uri;

    iget-object v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->updateUrl:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->launchWaitMs:I

    iget v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->launchWaitMs:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->checkOnLaunch:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    iget-object v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->checkOnLaunch:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->hasEmbeddedUpdate:Z

    iget-boolean v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->hasEmbeddedUpdate:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->requestHeaders:Ljava/util/Map;

    iget-object v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->requestHeaders:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningCertificate:Ljava/lang/String;

    iget-object v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningCertificate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningMetadata:Ljava/util/Map;

    iget-object v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningMetadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningIncludeManifestResponseCertificateChain:Z

    iget-boolean v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningIncludeManifestResponseCertificateChain:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningAllowUnsignedManifests:Z

    iget-boolean v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningAllowUnsignedManifests:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->enableExpoUpdatesProtocolV0CompatibilityMode:Z

    iget-boolean v3, p1, Lexpo/modules/updates/UpdatesConfiguration;->enableExpoUpdatesProtocolV0CompatibilityMode:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->disableAntiBrickingMeasures:Z

    iget-boolean p1, p1, Lexpo/modules/updates/UpdatesConfiguration;->disableAntiBrickingMeasures:Z

    if-eq v1, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getCheckOnLaunch()Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->checkOnLaunch:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    return-object v0
.end method

.method public final getCodeSigningCertificate()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningCertificate:Ljava/lang/String;

    return-object v0
.end method

.method public final getCodeSigningConfiguration()Lexpo/modules/updates/codesigning/CodeSigningConfiguration;
    .locals 1

    .line 118
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningConfiguration$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/updates/codesigning/CodeSigningConfiguration;

    return-object v0
.end method

.method public final getCodeSigningIncludeManifestResponseCertificateChain()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningIncludeManifestResponseCertificateChain:Z

    return v0
.end method

.method public final getCodeSigningMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getDisableAntiBrickingMeasures()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->disableAntiBrickingMeasures:Z

    return v0
.end method

.method public final getEnableExpoUpdatesProtocolV0CompatibilityMode()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->enableExpoUpdatesProtocolV0CompatibilityMode:Z

    return v0
.end method

.method public final getHasEmbeddedUpdate()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->hasEmbeddedUpdate:Z

    return v0
.end method

.method public final getLaunchWaitMs()I
    .locals 1

    .line 32
    iget v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->launchWaitMs:I

    return v0
.end method

.method public final getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public final getRuntimeVersion()Ljava/lang/String;
    .locals 2

    .line 125
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No runtime version provided in configuration"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRuntimeVersionRaw()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    return-object v0
.end method

.method public final getScopeKey()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->scopeKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateUrl()Landroid/net/Uri;
    .locals 1

    .line 30
    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->updateUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->scopeKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->updateUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->launchWaitMs:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->checkOnLaunch:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    invoke-virtual {v1}, Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->hasEmbeddedUpdate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->requestHeaders:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningCertificate:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningMetadata:Ljava/util/Map;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningIncludeManifestResponseCertificateChain:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningAllowUnsignedManifests:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->enableExpoUpdatesProtocolV0CompatibilityMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->disableAntiBrickingMeasures:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lexpo/modules/updates/UpdatesConfiguration;->scopeKey:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/updates/UpdatesConfiguration;->updateUrl:Landroid/net/Uri;

    iget-object v2, p0, Lexpo/modules/updates/UpdatesConfiguration;->runtimeVersionRaw:Ljava/lang/String;

    iget v3, p0, Lexpo/modules/updates/UpdatesConfiguration;->launchWaitMs:I

    iget-object v4, p0, Lexpo/modules/updates/UpdatesConfiguration;->checkOnLaunch:Lexpo/modules/updates/UpdatesConfiguration$CheckAutomaticallyConfiguration;

    iget-boolean v5, p0, Lexpo/modules/updates/UpdatesConfiguration;->hasEmbeddedUpdate:Z

    iget-object v6, p0, Lexpo/modules/updates/UpdatesConfiguration;->requestHeaders:Ljava/util/Map;

    iget-object v7, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningCertificate:Ljava/lang/String;

    iget-object v8, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningMetadata:Ljava/util/Map;

    iget-boolean v9, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningIncludeManifestResponseCertificateChain:Z

    iget-boolean v10, p0, Lexpo/modules/updates/UpdatesConfiguration;->codeSigningAllowUnsignedManifests:Z

    iget-boolean v11, p0, Lexpo/modules/updates/UpdatesConfiguration;->enableExpoUpdatesProtocolV0CompatibilityMode:Z

    iget-boolean v12, p0, Lexpo/modules/updates/UpdatesConfiguration;->disableAntiBrickingMeasures:Z

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "UpdatesConfiguration(scopeKey="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", updateUrl="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", runtimeVersionRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", launchWaitMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkOnLaunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasEmbeddedUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codeSigningCertificate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codeSigningMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codeSigningIncludeManifestResponseCertificateChain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codeSigningAllowUnsignedManifests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableExpoUpdatesProtocolV0CompatibilityMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disableAntiBrickingMeasures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
