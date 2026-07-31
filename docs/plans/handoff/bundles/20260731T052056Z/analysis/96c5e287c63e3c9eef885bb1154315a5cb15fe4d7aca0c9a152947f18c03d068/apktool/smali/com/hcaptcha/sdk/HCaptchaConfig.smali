.class public Lcom/hcaptcha/sdk/HCaptchaConfig;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private apiEndpoint:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private assethost:Ljava/lang/String;

.field private customTheme:Ljava/lang/String;

.field private diagnosticLog:Ljava/lang/Boolean;

.field private disableHardwareAcceleration:Ljava/lang/Boolean;

.field private endpoint:Ljava/lang/String;

.field private hideDialog:Ljava/lang/Boolean;

.field private host:Ljava/lang/String;

.field private imghost:Ljava/lang/String;

.field private jsSrc:Ljava/lang/String;

.field private loading:Ljava/lang/Boolean;

.field private locale:Ljava/lang/String;

.field private orientation:Lcom/hcaptcha/sdk/HCaptchaOrientation;

.field private reportapi:Ljava/lang/String;

.field private resetOnTimeout:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private retryPredicate:Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation
.end field

.field private rqdata:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sentry:Ljava/lang/Boolean;

.field private siteKey:Ljava/lang/String;

.field private size:Lcom/hcaptcha/sdk/HCaptchaSize;

.field private theme:Lcom/hcaptcha/sdk/HCaptchaTheme;

.field private tokenExpiration:J


# direct methods
.method private static $default$apiEndpoint()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://js.hcaptcha.com/1/api.js"

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$customTheme()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method private static $default$diagnosticLog()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$disableHardwareAcceleration()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$hideDialog()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$host()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method private static $default$jsSrc()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://js.hcaptcha.com/1/api.js"

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$loading()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$locale()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static $default$orientation()Lcom/hcaptcha/sdk/HCaptchaOrientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaOrientation;->PORTRAIT:Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$resetOnTimeout()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$retryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;
    .locals 1

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaConfig$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static $default$sentry()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$size()Lcom/hcaptcha/sdk/HCaptchaSize;
    .locals 1

    .line 1
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaSize;->INVISIBLE:Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$theme()Lcom/hcaptcha/sdk/HCaptchaTheme;
    .locals 1

    .line 1
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaTheme;->LIGHT:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 2
    .line 3
    return-object v0
.end method

.method private static $default$tokenExpiration()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x78

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic $r8$lambda$G1CA-Kw-lWwIW6y9x0rXF896dWY(Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaException;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->lambda$$default$retryPredicate$41a513e9$1(Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaException;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hcaptcha/sdk/HCaptchaSize;Lcom/hcaptcha/sdk/HCaptchaOrientation;Lcom/hcaptcha/sdk/HCaptchaTheme;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;JLjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    move-object/from16 v0, p23

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->siteKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->sentry:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->loading:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->hideDialog:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->rqdata:Ljava/lang/String;

    iput-object p6, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->apiEndpoint:Ljava/lang/String;

    iput-object p7, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->jsSrc:Ljava/lang/String;

    iput-object p8, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->endpoint:Ljava/lang/String;

    iput-object p9, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->reportapi:Ljava/lang/String;

    iput-object p10, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->assethost:Ljava/lang/String;

    iput-object p11, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->imghost:Ljava/lang/String;

    iput-object p12, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->locale:Ljava/lang/String;

    iput-object p13, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->size:Lcom/hcaptcha/sdk/HCaptchaSize;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->orientation:Lcom/hcaptcha/sdk/HCaptchaOrientation;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->theme:Lcom/hcaptcha/sdk/HCaptchaTheme;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->host:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->customTheme:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->resetOnTimeout:Ljava/lang/Boolean;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->retryPredicate:Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->tokenExpiration:J

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->diagnosticLog:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->disableHardwareAcceleration:Ljava/lang/Boolean;

    return-void

    :cond_0
    const-string p0, "disableHardwareAcceleration is marked non-null but is null"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "siteKey is marked non-null but is null"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$sentry()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$loading()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$customTheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$1100()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$resetOnTimeout()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$1200()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$retryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$1300()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$tokenExpiration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic access$1400()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$diagnosticLog()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$1500()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$disableHardwareAcceleration()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$hideDialog()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$apiEndpoint()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$jsSrc()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$locale()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$600()Lcom/hcaptcha/sdk/HCaptchaSize;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$size()Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$700()Lcom/hcaptcha/sdk/HCaptchaOrientation;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$orientation()Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$800()Lcom/hcaptcha/sdk/HCaptchaTheme;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$theme()Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$default$host()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static builder()Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static lambda$$default$retryPredicate$41a513e9$1(Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaException;)Z
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->resetOnTimeout:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    iget-object p0, p1, Lcom/hcaptcha/sdk/HCaptchaException;->hCaptchaError:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 13
    .line 14
    sget-object p1, Lcom/hcaptcha/sdk/HCaptchaError;->SESSION_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 15
    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    return v0
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 2
    .line 3
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->canEqual(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTokenExpiration()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTokenExpiration()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSentry()Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSentry()Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    if-eqz v3, :cond_5

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    :goto_0
    return v2

    .line 53
    :cond_5
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    if-eqz v3, :cond_7

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_7

    .line 71
    .line 72
    :goto_1
    return v2

    .line 73
    :cond_7
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHideDialog()Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHideDialog()Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-nez v1, :cond_8

    .line 82
    .line 83
    if-eqz v3, :cond_9

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_9

    .line 91
    .line 92
    :goto_2
    return v2

    .line 93
    :cond_9
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getResetOnTimeout()Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getResetOnTimeout()Ljava/lang/Boolean;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-nez v1, :cond_a

    .line 102
    .line 103
    if-eqz v3, :cond_b

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_b

    .line 111
    .line 112
    :goto_3
    return v2

    .line 113
    :cond_b
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDiagnosticLog()Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDiagnosticLog()Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-nez v1, :cond_c

    .line 122
    .line 123
    if-eqz v3, :cond_d

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_d

    .line 131
    .line 132
    :goto_4
    return v2

    .line 133
    :cond_d
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDisableHardwareAcceleration()Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDisableHardwareAcceleration()Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-nez v1, :cond_e

    .line 142
    .line 143
    if-eqz v3, :cond_f

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :cond_e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-nez v1, :cond_f

    .line 151
    .line 152
    :goto_5
    return v2

    .line 153
    :cond_f
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSiteKey()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSiteKey()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-nez v1, :cond_10

    .line 162
    .line 163
    if-eqz v3, :cond_11

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_10
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_11

    .line 171
    .line 172
    :goto_6
    return v2

    .line 173
    :cond_11
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRqdata()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRqdata()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    if-nez v1, :cond_12

    .line 182
    .line 183
    if-eqz v3, :cond_13

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_12
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_13

    .line 191
    .line 192
    :goto_7
    return v2

    .line 193
    :cond_13
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getApiEndpoint()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getApiEndpoint()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    if-nez v1, :cond_14

    .line 202
    .line 203
    if-eqz v3, :cond_15

    .line 204
    .line 205
    goto :goto_8

    .line 206
    :cond_14
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-nez v1, :cond_15

    .line 211
    .line 212
    :goto_8
    return v2

    .line 213
    :cond_15
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getJsSrc()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getJsSrc()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    if-nez v1, :cond_16

    .line 222
    .line 223
    if-eqz v3, :cond_17

    .line 224
    .line 225
    goto :goto_9

    .line 226
    :cond_16
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_17

    .line 231
    .line 232
    :goto_9
    return v2

    .line 233
    :cond_17
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getEndpoint()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getEndpoint()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    if-nez v1, :cond_18

    .line 242
    .line 243
    if-eqz v3, :cond_19

    .line 244
    .line 245
    goto :goto_a

    .line 246
    :cond_18
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-nez v1, :cond_19

    .line 251
    .line 252
    :goto_a
    return v2

    .line 253
    :cond_19
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getReportapi()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getReportapi()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    if-nez v1, :cond_1a

    .line 262
    .line 263
    if-eqz v3, :cond_1b

    .line 264
    .line 265
    goto :goto_b

    .line 266
    :cond_1a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_1b

    .line 271
    .line 272
    :goto_b
    return v2

    .line 273
    :cond_1b
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getAssethost()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getAssethost()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    if-nez v1, :cond_1c

    .line 282
    .line 283
    if-eqz v3, :cond_1d

    .line 284
    .line 285
    goto :goto_c

    .line 286
    :cond_1c
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-nez v1, :cond_1d

    .line 291
    .line 292
    :goto_c
    return v2

    .line 293
    :cond_1d
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getImghost()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getImghost()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    if-nez v1, :cond_1e

    .line 302
    .line 303
    if-eqz v3, :cond_1f

    .line 304
    .line 305
    goto :goto_d

    .line 306
    :cond_1e
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-nez v1, :cond_1f

    .line 311
    .line 312
    :goto_d
    return v2

    .line 313
    :cond_1f
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLocale()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLocale()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    if-nez v1, :cond_20

    .line 322
    .line 323
    if-eqz v3, :cond_21

    .line 324
    .line 325
    goto :goto_e

    .line 326
    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-nez v1, :cond_21

    .line 331
    .line 332
    :goto_e
    return v2

    .line 333
    :cond_21
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSize()Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSize()Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    if-nez v1, :cond_22

    .line 342
    .line 343
    if-eqz v3, :cond_23

    .line 344
    .line 345
    goto :goto_f

    .line 346
    :cond_22
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-nez v1, :cond_23

    .line 351
    .line 352
    :goto_f
    return v2

    .line 353
    :cond_23
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getOrientation()Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getOrientation()Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    if-nez v1, :cond_24

    .line 362
    .line 363
    if-eqz v3, :cond_25

    .line 364
    .line 365
    goto :goto_10

    .line 366
    :cond_24
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-nez v1, :cond_25

    .line 371
    .line 372
    :goto_10
    return v2

    .line 373
    :cond_25
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTheme()Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTheme()Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    if-nez v1, :cond_26

    .line 382
    .line 383
    if-eqz v3, :cond_27

    .line 384
    .line 385
    goto :goto_11

    .line 386
    :cond_26
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-nez v1, :cond_27

    .line 391
    .line 392
    :goto_11
    return v2

    .line 393
    :cond_27
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHost()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHost()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    if-nez v1, :cond_28

    .line 402
    .line 403
    if-eqz v3, :cond_29

    .line 404
    .line 405
    goto :goto_12

    .line 406
    :cond_28
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-nez v1, :cond_29

    .line 411
    .line 412
    :goto_12
    return v2

    .line 413
    :cond_29
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getCustomTheme()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getCustomTheme()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    if-nez v1, :cond_2a

    .line 422
    .line 423
    if-eqz v3, :cond_2b

    .line 424
    .line 425
    goto :goto_13

    .line 426
    :cond_2a
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    if-nez v1, :cond_2b

    .line 431
    .line 432
    :goto_13
    return v2

    .line 433
    :cond_2b
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRetryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRetryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 438
    .line 439
    .line 440
    move-result-object p1

    .line 441
    if-nez p0, :cond_2c

    .line 442
    .line 443
    if-eqz p1, :cond_2d

    .line 444
    .line 445
    goto :goto_14

    .line 446
    :cond_2c
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result p0

    .line 450
    if-nez p0, :cond_2d

    .line 451
    .line 452
    :goto_14
    return v2

    .line 453
    :cond_2d
    return v0
.end method

.method public getApiEndpoint()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->jsSrc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAssethost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->assethost:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->host:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, "https://"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public getCustomTheme()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->customTheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDiagnosticLog()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->diagnosticLog:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDisableHardwareAcceleration()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->disableHardwareAcceleration:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->endpoint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHideDialog()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->hideDialog:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getImghost()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->imghost:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getJsSrc()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->jsSrc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLoading()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->loading:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->locale:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOrientation()Lcom/hcaptcha/sdk/HCaptchaOrientation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->orientation:Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 2
    .line 3
    return-object p0
.end method

.method public getReportapi()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->reportapi:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getResetOnTimeout()Ljava/lang/Boolean;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->resetOnTimeout:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRetryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->retryPredicate:Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRqdata()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->rqdata:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSentry()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->sentry:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSiteKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->siteKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSize()Lcom/hcaptcha/sdk/HCaptchaSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->size:Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTheme()Lcom/hcaptcha/sdk/HCaptchaTheme;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->theme:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTokenExpiration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->tokenExpiration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTokenExpiration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    ushr-long v2, v0, v2

    .line 8
    .line 9
    xor-long/2addr v0, v2

    .line 10
    long-to-int v0, v0

    .line 11
    add-int/lit8 v0, v0, 0x3b

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSentry()Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    mul-int/lit8 v0, v0, 0x3b

    .line 18
    .line 19
    const/16 v2, 0x2b

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    mul-int/lit8 v0, v0, 0x3b

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    move v1, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :goto_1
    add-int/2addr v0, v1

    .line 45
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHideDialog()Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    mul-int/lit8 v0, v0, 0x3b

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    move v1, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_2
    add-int/2addr v0, v1

    .line 60
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getResetOnTimeout()Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    mul-int/lit8 v0, v0, 0x3b

    .line 65
    .line 66
    if-nez v1, :cond_3

    .line 67
    .line 68
    move v1, v2

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    :goto_3
    add-int/2addr v0, v1

    .line 75
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDiagnosticLog()Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    mul-int/lit8 v0, v0, 0x3b

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    move v1, v2

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    :goto_4
    add-int/2addr v0, v1

    .line 90
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDisableHardwareAcceleration()Ljava/lang/Boolean;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    mul-int/lit8 v0, v0, 0x3b

    .line 95
    .line 96
    if-nez v1, :cond_5

    .line 97
    .line 98
    move v1, v2

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    :goto_5
    add-int/2addr v0, v1

    .line 105
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSiteKey()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    mul-int/lit8 v0, v0, 0x3b

    .line 110
    .line 111
    if-nez v1, :cond_6

    .line 112
    .line 113
    move v1, v2

    .line 114
    goto :goto_6

    .line 115
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    :goto_6
    add-int/2addr v0, v1

    .line 120
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRqdata()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    mul-int/lit8 v0, v0, 0x3b

    .line 125
    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    move v1, v2

    .line 129
    goto :goto_7

    .line 130
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    :goto_7
    add-int/2addr v0, v1

    .line 135
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getApiEndpoint()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    mul-int/lit8 v0, v0, 0x3b

    .line 140
    .line 141
    if-nez v1, :cond_8

    .line 142
    .line 143
    move v1, v2

    .line 144
    goto :goto_8

    .line 145
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    :goto_8
    add-int/2addr v0, v1

    .line 150
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getJsSrc()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    mul-int/lit8 v0, v0, 0x3b

    .line 155
    .line 156
    if-nez v1, :cond_9

    .line 157
    .line 158
    move v1, v2

    .line 159
    goto :goto_9

    .line 160
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    :goto_9
    add-int/2addr v0, v1

    .line 165
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getEndpoint()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    mul-int/lit8 v0, v0, 0x3b

    .line 170
    .line 171
    if-nez v1, :cond_a

    .line 172
    .line 173
    move v1, v2

    .line 174
    goto :goto_a

    .line 175
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    :goto_a
    add-int/2addr v0, v1

    .line 180
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getReportapi()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    mul-int/lit8 v0, v0, 0x3b

    .line 185
    .line 186
    if-nez v1, :cond_b

    .line 187
    .line 188
    move v1, v2

    .line 189
    goto :goto_b

    .line 190
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    :goto_b
    add-int/2addr v0, v1

    .line 195
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getAssethost()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    mul-int/lit8 v0, v0, 0x3b

    .line 200
    .line 201
    if-nez v1, :cond_c

    .line 202
    .line 203
    move v1, v2

    .line 204
    goto :goto_c

    .line 205
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    :goto_c
    add-int/2addr v0, v1

    .line 210
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getImghost()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    mul-int/lit8 v0, v0, 0x3b

    .line 215
    .line 216
    if-nez v1, :cond_d

    .line 217
    .line 218
    move v1, v2

    .line 219
    goto :goto_d

    .line 220
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    :goto_d
    add-int/2addr v0, v1

    .line 225
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLocale()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    mul-int/lit8 v0, v0, 0x3b

    .line 230
    .line 231
    if-nez v1, :cond_e

    .line 232
    .line 233
    move v1, v2

    .line 234
    goto :goto_e

    .line 235
    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    :goto_e
    add-int/2addr v0, v1

    .line 240
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSize()Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    mul-int/lit8 v0, v0, 0x3b

    .line 245
    .line 246
    if-nez v1, :cond_f

    .line 247
    .line 248
    move v1, v2

    .line 249
    goto :goto_f

    .line 250
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    :goto_f
    add-int/2addr v0, v1

    .line 255
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getOrientation()Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    mul-int/lit8 v0, v0, 0x3b

    .line 260
    .line 261
    if-nez v1, :cond_10

    .line 262
    .line 263
    move v1, v2

    .line 264
    goto :goto_10

    .line 265
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    :goto_10
    add-int/2addr v0, v1

    .line 270
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTheme()Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    mul-int/lit8 v0, v0, 0x3b

    .line 275
    .line 276
    if-nez v1, :cond_11

    .line 277
    .line 278
    move v1, v2

    .line 279
    goto :goto_11

    .line 280
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    :goto_11
    add-int/2addr v0, v1

    .line 285
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHost()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    mul-int/lit8 v0, v0, 0x3b

    .line 290
    .line 291
    if-nez v1, :cond_12

    .line 292
    .line 293
    move v1, v2

    .line 294
    goto :goto_12

    .line 295
    :cond_12
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    :goto_12
    add-int/2addr v0, v1

    .line 300
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getCustomTheme()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    mul-int/lit8 v0, v0, 0x3b

    .line 305
    .line 306
    if-nez v1, :cond_13

    .line 307
    .line 308
    move v1, v2

    .line 309
    goto :goto_13

    .line 310
    :cond_13
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    :goto_13
    add-int/2addr v0, v1

    .line 315
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRetryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    mul-int/lit8 v0, v0, 0x3b

    .line 320
    .line 321
    if-nez p0, :cond_14

    .line 322
    .line 323
    goto :goto_14

    .line 324
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    :goto_14
    add-int/2addr v0, v2

    .line 329
    return v0
.end method

.method public setApiEndpoint(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->apiEndpoint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAssethost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->assethost:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCustomTheme(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->customTheme:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDiagnosticLog(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->diagnosticLog:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setDisableHardwareAcceleration(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->disableHardwareAcceleration:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "disableHardwareAcceleration is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->endpoint:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setHideDialog(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->hideDialog:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setImghost(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->imghost:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJsSrc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->jsSrc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setLoading(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->loading:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->locale:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(Lcom/hcaptcha/sdk/HCaptchaOrientation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->orientation:Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 2
    .line 3
    return-void
.end method

.method public setReportapi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->reportapi:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResetOnTimeout(Ljava/lang/Boolean;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->resetOnTimeout:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setRetryPredicate(Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->retryPredicate:Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 2
    .line 3
    return-void
.end method

.method public setRqdata(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->rqdata:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSentry(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->sentry:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setSiteKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->siteKey:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p0, "siteKey is marked non-null but is null"

    .line 7
    .line 8
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setSize(Lcom/hcaptcha/sdk/HCaptchaSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->size:Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 2
    .line 3
    return-void
.end method

.method public setTheme(Lcom/hcaptcha/sdk/HCaptchaTheme;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->theme:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 2
    .line 3
    return-void
.end method

.method public setTokenExpiration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->tokenExpiration:J

    .line 2
    .line 3
    return-void
.end method

.method public toBuilder()Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;
    .locals 5

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->siteKey:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iput-object v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->siteKey:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->sentry:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->sentry$value:Ljava/lang/Boolean;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->sentry$set:Z

    .line 19
    .line 20
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->loading:Ljava/lang/Boolean;

    .line 21
    .line 22
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->loading$value:Ljava/lang/Boolean;

    .line 23
    .line 24
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->loading$set:Z

    .line 25
    .line 26
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->hideDialog:Ljava/lang/Boolean;

    .line 27
    .line 28
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->hideDialog$value:Ljava/lang/Boolean;

    .line 29
    .line 30
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->hideDialog$set:Z

    .line 31
    .line 32
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->rqdata:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->rqdata:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->jsSrc:Ljava/lang/String;

    .line 37
    .line 38
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->jsSrc$value:Ljava/lang/String;

    .line 39
    .line 40
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->jsSrc$set:Z

    .line 41
    .line 42
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->endpoint:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->endpoint:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->reportapi:Ljava/lang/String;

    .line 47
    .line 48
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->reportapi:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->assethost:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->assethost:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->imghost:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->imghost:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->locale:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->locale$value:Ljava/lang/String;

    .line 61
    .line 62
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->locale$set:Z

    .line 63
    .line 64
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->size:Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 65
    .line 66
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->size$value:Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 67
    .line 68
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->size$set:Z

    .line 69
    .line 70
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->orientation:Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 71
    .line 72
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->orientation$value:Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 73
    .line 74
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->orientation$set:Z

    .line 75
    .line 76
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->theme:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 77
    .line 78
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->theme$value:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 79
    .line 80
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->theme$set:Z

    .line 81
    .line 82
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->host:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->host(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->customTheme:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->customTheme$value:Ljava/lang/String;

    .line 90
    .line 91
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->customTheme$set:Z

    .line 92
    .line 93
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->resetOnTimeout:Ljava/lang/Boolean;

    .line 94
    .line 95
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->resetOnTimeout$value:Ljava/lang/Boolean;

    .line 96
    .line 97
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->resetOnTimeout$set:Z

    .line 98
    .line 99
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->retryPredicate:Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 100
    .line 101
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->retryPredicate$value:Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 102
    .line 103
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->retryPredicate$set:Z

    .line 104
    .line 105
    iget-wide v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->tokenExpiration:J

    .line 106
    .line 107
    iput-wide v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->tokenExpiration$value:J

    .line 108
    .line 109
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->tokenExpiration$set:Z

    .line 110
    .line 111
    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->diagnosticLog:Ljava/lang/Boolean;

    .line 112
    .line 113
    iput-object v3, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->diagnosticLog$value:Ljava/lang/Boolean;

    .line 114
    .line 115
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->diagnosticLog$set:Z

    .line 116
    .line 117
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaConfig;->disableHardwareAcceleration:Ljava/lang/Boolean;

    .line 118
    .line 119
    if-eqz p0, :cond_0

    .line 120
    .line 121
    iput-object p0, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->disableHardwareAcceleration$value:Ljava/lang/Boolean;

    .line 122
    .line 123
    iput-boolean v1, v0, Lcom/hcaptcha/sdk/HCaptchaConfig$HCaptchaConfigBuilder;->disableHardwareAcceleration$set:Z

    .line 124
    .line 125
    return-object v0

    .line 126
    :cond_0
    const-string p0, "disableHardwareAcceleration is marked non-null but is null"

    .line 127
    .line 128
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object v2

    .line 132
    :cond_1
    const-string p0, "siteKey is marked non-null but is null"

    .line 133
    .line 134
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HCaptchaConfig(siteKey="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSiteKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", sentry="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSentry()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", loading="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ", hideDialog="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHideDialog()Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", rqdata="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRqdata()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", apiEndpoint="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getApiEndpoint()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ", jsSrc="

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getJsSrc()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", endpoint="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getEndpoint()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, ", reportapi="

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getReportapi()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", assethost="

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getAssethost()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", imghost="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getImghost()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, ", locale="

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLocale()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, ", size="

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSize()Lcom/hcaptcha/sdk/HCaptchaSize;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, ", orientation="

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getOrientation()Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v1, ", theme="

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTheme()Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ", host="

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHost()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v1, ", customTheme="

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getCustomTheme()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v1, ", resetOnTimeout="

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getResetOnTimeout()Ljava/lang/Boolean;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v1, ", retryPredicate="

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRetryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string v1, ", tokenExpiration="

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTokenExpiration()J

    .line 237
    .line 238
    .line 239
    move-result-wide v1

    .line 240
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v1, ", diagnosticLog="

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDiagnosticLog()Ljava/lang/Boolean;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v1, ", disableHardwareAcceleration="

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDisableHardwareAcceleration()Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string p0, ")"

    .line 268
    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    return-object p0
.end method
