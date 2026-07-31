.class public final synthetic Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/hcaptcha/sdk/tasks/OnOpenListener;


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
    iput-object p1, p0, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda2;->f$0:Lokio/internal/DefaultSocket;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOpen()V
    .locals 1

    .line 1
    const-string v0, "hCaptcha opened"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda2;->f$0:Lokio/internal/DefaultSocket;

    .line 7
    .line 8
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lorg/wikipedia/captcha/HCaptchaHelper$Callback;

    .line 11
    .line 12
    invoke-interface {p0}, Lorg/wikipedia/captcha/HCaptchaHelper$Callback;->onShow()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
