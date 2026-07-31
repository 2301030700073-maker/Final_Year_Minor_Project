.class public final synthetic Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/hcaptcha/sdk/tasks/OnSuccessListener;


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
    iput-object p1, p0, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda0;->f$0:Lokio/internal/DefaultSocket;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/captcha/HCaptchaHelper$$ExternalSyntheticLambda0;->f$0:Lokio/internal/DefaultSocket;

    .line 4
    .line 5
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/wikipedia/captcha/HCaptchaHelper$Callback;

    .line 8
    .line 9
    iget-object p1, p1, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, p1}, Lorg/wikipedia/captcha/HCaptchaHelper$Callback;->onSuccess(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
