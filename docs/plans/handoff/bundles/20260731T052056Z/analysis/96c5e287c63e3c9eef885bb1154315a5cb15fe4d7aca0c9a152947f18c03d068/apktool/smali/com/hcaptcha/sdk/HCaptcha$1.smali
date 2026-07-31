.class public final Lcom/hcaptcha/sdk/HCaptcha$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final synthetic this$0:Lcom/hcaptcha/sdk/HCaptcha;

.field public final synthetic val$inputConfig:Lcom/hcaptcha/sdk/HCaptchaConfig;


# direct methods
.method public constructor <init>(Lcom/hcaptcha/sdk/HCaptcha;Lcom/hcaptcha/sdk/HCaptchaConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha$1;->this$0:Lcom/hcaptcha/sdk/HCaptcha;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptcha$1;->val$inputConfig:Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha$1;->this$0:Lcom/hcaptcha/sdk/HCaptcha;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha;->hCaptchaException:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptcha;->tryCb()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onOpen()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha$1;->this$0:Lcom/hcaptcha/sdk/HCaptcha;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->onOpenListeners:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/hcaptcha/sdk/tasks/OnOpenListener;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/hcaptcha/sdk/tasks/OnOpenListener;->onOpen()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha$1;->val$inputConfig:Lcom/hcaptcha/sdk/HCaptchaConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getTokenExpiration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha$1;->this$0:Lcom/hcaptcha/sdk/HCaptcha;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/hcaptcha/sdk/HCaptcha;->handler:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v3, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-direct {v3, v4, p0}, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/Symbol;-><init>(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->result:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptcha;->tryCb()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    return-void
.end method
