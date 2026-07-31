.class public final synthetic Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/hcaptcha/sdk/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lokio/internal/DefaultSocket;


# direct methods
.method public synthetic constructor <init>(Lokio/internal/DefaultSocket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda1;->f$0:Lokio/internal/DefaultSocket;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaException;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/hcaptcha/sdk/HCaptchaException;->hCaptchaError:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/hcaptcha/sdk/HCaptchaError;->getErrorId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "hCaptcha failed: "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " ("

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ")"

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda1;->f$0:Lokio/internal/DefaultSocket;

    .line 42
    .line 43
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lorg/wikipedia/captcha/HCaptchaHelper$Callback;

    .line 46
    .line 47
    invoke-interface {p0, p1}, Lorg/wikipedia/captcha/HCaptchaHelper$Callback;->onError(Lcom/hcaptcha/sdk/HCaptchaException;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
