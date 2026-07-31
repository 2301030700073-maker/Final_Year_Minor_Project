.class public final synthetic Lcom/hcaptcha/sdk/HCaptchaDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/hcaptcha/sdk/HCaptchaDialogFragment;

.field public final synthetic f$1:Lcom/hcaptcha/sdk/HCaptchaConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/hcaptcha/sdk/HCaptchaDialogFragment;Lcom/hcaptcha/sdk/HCaptchaConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/hcaptcha/sdk/HCaptchaDialogFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment$$ExternalSyntheticLambda1;->f$1:Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/hcaptcha/sdk/HCaptchaDialogFragment;

    .line 11
    .line 12
    iget-boolean p2, p1, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->readyForInteraction:Z

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaDialogFragment$$ExternalSyntheticLambda1;->f$1:Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getLoading()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p1, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->webViewHelper:Lcoil3/ImageLoader$Builder;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    new-instance p1, Lcom/hcaptcha/sdk/HCaptchaException;

    .line 36
    .line 37
    sget-object p2, Lcom/hcaptcha/sdk/HCaptchaError;->CHALLENGE_CLOSED:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 38
    .line 39
    const/4 p3, 0x0

    .line 40
    invoke-direct {p1, p2, p3}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRetryPredicate()Lcom/hcaptcha/sdk/IHCaptchaRetryPredicate;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/hcaptcha/sdk/HCaptchaConfig$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->$r8$lambda$G1CA-Kw-lWwIW6y9x0rXF896dWY(Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaException;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    :goto_0
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :cond_1
    const/4 p0, 0x0

    .line 65
    return p0
.end method
