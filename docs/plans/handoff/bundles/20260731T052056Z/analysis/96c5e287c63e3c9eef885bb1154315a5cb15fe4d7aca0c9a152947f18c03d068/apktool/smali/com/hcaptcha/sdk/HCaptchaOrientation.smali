.class public final enum Lcom/hcaptcha/sdk/HCaptchaOrientation;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hcaptcha/sdk/HCaptchaOrientation;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hcaptcha/sdk/HCaptchaOrientation;

.field public static final enum LANDSCAPE:Lcom/hcaptcha/sdk/HCaptchaOrientation;

.field public static final enum PORTRAIT:Lcom/hcaptcha/sdk/HCaptchaOrientation;


# instance fields
.field private final orientation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 2
    .line 3
    const-string v1, "portrait"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "PORTRAIT"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/hcaptcha/sdk/HCaptchaOrientation;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/hcaptcha/sdk/HCaptchaOrientation;->PORTRAIT:Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 12
    .line 13
    new-instance v1, Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 14
    .line 15
    const-string v3, "landscape"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "LANDSCAPE"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lcom/hcaptcha/sdk/HCaptchaOrientation;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/hcaptcha/sdk/HCaptchaOrientation;->LANDSCAPE:Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 27
    .line 28
    aput-object v0, v3, v2

    .line 29
    .line 30
    aput-object v1, v3, v4

    .line 31
    .line 32
    sput-object v3, Lcom/hcaptcha/sdk/HCaptchaOrientation;->$VALUES:[Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/hcaptcha/sdk/HCaptchaOrientation;->orientation:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptchaOrientation;
    .locals 1

    .line 1
    const-class v0, Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hcaptcha/sdk/HCaptchaOrientation;
    .locals 1

    .line 1
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaOrientation;->$VALUES:[Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hcaptcha/sdk/HCaptchaOrientation;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hcaptcha/sdk/HCaptchaOrientation;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaOrientation;->orientation:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
