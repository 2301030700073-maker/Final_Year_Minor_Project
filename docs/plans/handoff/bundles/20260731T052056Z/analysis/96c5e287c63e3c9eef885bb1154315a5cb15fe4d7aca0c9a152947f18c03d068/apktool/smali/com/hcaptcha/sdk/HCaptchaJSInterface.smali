.class public final Lcom/hcaptcha/sdk/HCaptchaJSInterface;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient captchaVerifier:Lcom/hcaptcha/sdk/IHCaptchaVerifier;

.field public final config:Ljava/lang/String;

.field public final transient handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/IHCaptchaVerifier;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->captchaVerifier:Lcom/hcaptcha/sdk/IHCaptchaVerifier;

    .line 7
    .line 8
    :try_start_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-direct {p1, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const-string p1, "JSInterface"

    .line 20
    .line 21
    const-string p2, "Cannot prepare config for passing to WebView. A fallback config will be used"

    .line 22
    .line 23
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    :goto_0
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->config:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->config:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public onError(I)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/hcaptcha/sdk/HCaptchaError;->fromId(I)Lcom/hcaptcha/sdk/HCaptchaError;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    const/16 v1, 0xe

    .line 8
    .line 9
    invoke-direct {v0, v1, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onLoaded()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaJSInterface$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->captchaVerifier:Lcom/hcaptcha/sdk/IHCaptchaVerifier;

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lcom/hcaptcha/sdk/HCaptchaJSInterface$$ExternalSyntheticLambda2;-><init>(Lcom/hcaptcha/sdk/IHCaptchaVerifier;I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onOpen()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaJSInterface$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->captchaVerifier:Lcom/hcaptcha/sdk/IHCaptchaVerifier;

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lcom/hcaptcha/sdk/HCaptchaJSInterface$$ExternalSyntheticLambda2;-><init>(Lcom/hcaptcha/sdk/IHCaptchaVerifier;I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->handler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onPass(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaJSInterface;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
