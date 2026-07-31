.class public final Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha$Companion;


# instance fields
.field public final assetHost:Ljava/lang/String;

.field public final baseURL:Ljava/lang/String;

.field public final endpoint:Ljava/lang/String;

.field public final imgHost:Ljava/lang/String;

.field public final jsSrc:Ljava/lang/String;

.field public final reportApi:Ljava/lang/String;

.field public final sentry:Z

.field public final siteKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->Companion:Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "https://meta.wikimedia.org"

    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->baseURL:Ljava/lang/String;

    .line 82
    const-string v0, "https://assets-hcaptcha.wikimedia.org/1/api.js"

    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->jsSrc:Ljava/lang/String;

    .line 83
    const-string v0, "https://hcaptcha.wikimedia.org"

    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->endpoint:Ljava/lang/String;

    .line 84
    const-string v0, "https://assets-hcaptcha.wikimedia.org"

    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->assetHost:Ljava/lang/String;

    .line 85
    const-string v0, "https://imgs-hcaptcha.wikimedia.org"

    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->imgHost:Ljava/lang/String;

    .line 86
    const-string v0, "https://report-hcaptcha.wikimedia.org"

    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->reportApi:Ljava/lang/String;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->sentry:Z

    .line 88
    const-string v0, "e11698d6-51ca-4980-875c-72309c6678cc"

    iput-object v0, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->siteKey:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->baseURL:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-object p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->baseURL:Ljava/lang/String;

    .line 14
    .line 15
    :goto_0
    and-int/lit8 p2, p1, 0x2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    iput-object v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->jsSrc:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iput-object p3, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->jsSrc:Ljava/lang/String;

    .line 23
    .line 24
    :goto_1
    and-int/lit8 p2, p1, 0x4

    .line 25
    .line 26
    if-nez p2, :cond_2

    .line 27
    .line 28
    iput-object v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->endpoint:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iput-object p4, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->endpoint:Ljava/lang/String;

    .line 32
    .line 33
    :goto_2
    and-int/lit8 p2, p1, 0x8

    .line 34
    .line 35
    if-nez p2, :cond_3

    .line 36
    .line 37
    iput-object v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->assetHost:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    iput-object p5, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->assetHost:Ljava/lang/String;

    .line 41
    .line 42
    :goto_3
    and-int/lit8 p2, p1, 0x10

    .line 43
    .line 44
    if-nez p2, :cond_4

    .line 45
    .line 46
    iput-object v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->imgHost:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_4

    .line 49
    :cond_4
    iput-object p6, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->imgHost:Ljava/lang/String;

    .line 50
    .line 51
    :goto_4
    and-int/lit8 p2, p1, 0x20

    .line 52
    .line 53
    if-nez p2, :cond_5

    .line 54
    .line 55
    iput-object v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->reportApi:Ljava/lang/String;

    .line 56
    .line 57
    goto :goto_5

    .line 58
    :cond_5
    iput-object p7, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->reportApi:Ljava/lang/String;

    .line 59
    .line 60
    :goto_5
    and-int/lit8 p2, p1, 0x40

    .line 61
    .line 62
    if-nez p2, :cond_6

    .line 63
    .line 64
    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->sentry:Z

    .line 66
    .line 67
    goto :goto_6

    .line 68
    :cond_6
    iput-boolean p8, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->sentry:Z

    .line 69
    .line 70
    :goto_6
    and-int/lit16 p1, p1, 0x80

    .line 71
    .line 72
    if-nez p1, :cond_7

    .line 73
    .line 74
    iput-object v1, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->siteKey:Ljava/lang/String;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_7
    iput-object p9, p0, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigHCaptcha;->siteKey:Ljava/lang/String;

    .line 78
    .line 79
    return-void
.end method
