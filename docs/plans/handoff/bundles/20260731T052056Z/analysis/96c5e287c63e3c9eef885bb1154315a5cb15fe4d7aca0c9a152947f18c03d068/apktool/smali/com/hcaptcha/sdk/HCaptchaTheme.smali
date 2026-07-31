.class public final enum Lcom/hcaptcha/sdk/HCaptchaTheme;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hcaptcha/sdk/HCaptchaTheme;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hcaptcha/sdk/HCaptchaTheme;

.field public static final enum CONTRAST:Lcom/hcaptcha/sdk/HCaptchaTheme;

.field public static final enum DARK:Lcom/hcaptcha/sdk/HCaptchaTheme;

.field public static final enum LIGHT:Lcom/hcaptcha/sdk/HCaptchaTheme;


# instance fields
.field private final theme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 2
    .line 3
    const-string v1, "dark"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "DARK"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/hcaptcha/sdk/HCaptchaTheme;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/hcaptcha/sdk/HCaptchaTheme;->DARK:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 12
    .line 13
    new-instance v1, Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 14
    .line 15
    const-string v3, "light"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "LIGHT"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lcom/hcaptcha/sdk/HCaptchaTheme;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/hcaptcha/sdk/HCaptchaTheme;->LIGHT:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 24
    .line 25
    new-instance v3, Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 26
    .line 27
    const-string v5, "contrast"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "CONTRAST"

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v5}, Lcom/hcaptcha/sdk/HCaptchaTheme;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/hcaptcha/sdk/HCaptchaTheme;->CONTRAST:Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    new-array v5, v5, [Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 39
    .line 40
    aput-object v0, v5, v2

    .line 41
    .line 42
    aput-object v1, v5, v4

    .line 43
    .line 44
    aput-object v3, v5, v6

    .line 45
    .line 46
    sput-object v5, Lcom/hcaptcha/sdk/HCaptchaTheme;->$VALUES:[Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/hcaptcha/sdk/HCaptchaTheme;->theme:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptchaTheme;
    .locals 1

    .line 1
    const-class v0, Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hcaptcha/sdk/HCaptchaTheme;
    .locals 1

    .line 1
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaTheme;->$VALUES:[Lcom/hcaptcha/sdk/HCaptchaTheme;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hcaptcha/sdk/HCaptchaTheme;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hcaptcha/sdk/HCaptchaTheme;

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
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaTheme;->theme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
