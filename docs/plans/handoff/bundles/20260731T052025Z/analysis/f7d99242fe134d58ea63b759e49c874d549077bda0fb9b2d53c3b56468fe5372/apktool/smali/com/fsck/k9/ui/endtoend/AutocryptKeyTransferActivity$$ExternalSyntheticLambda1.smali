.class public final synthetic Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->$r8$clinit:I

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->presenter$delegate:Lkotlin/Lazy;

    .line 12
    .line 13
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->showTransferCodePi:Landroid/app/PendingIntent;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lorg/openintents/openpgp/util/OpenPgpIntentStarter;->buildOptionsBundle()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    move-object p0, v0

    .line 49
    const/4 p1, 0x0

    .line 50
    new-array p1, p1, [Ljava/lang/Object;

    .line 51
    .line 52
    const-string v0, "Error starting PendingIntent"

    .line 53
    .line 54
    invoke-static {p0, v0, p1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string p0, "showTransferCodePi"

    .line 59
    .line 60
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :pswitch_0
    sget p1, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->$r8$clinit:I

    .line 65
    .line 66
    iget-object p0, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->presenter$delegate:Lkotlin/Lazy;

    .line 67
    .line 68
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->view:Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->sceneGeneratingAndSending()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferPresenter;->presenterScope:Lkotlinx/coroutines/CoroutineScope;

    .line 80
    .line 81
    new-instance v1, Landroidx/lifecycle/BlockRunner$cancel$1;

    .line 82
    .line 83
    const/16 v2, 0x11

    .line 84
    .line 85
    invoke-direct {v1, p0, v0, v2}, Landroidx/lifecycle/BlockRunner$cancel$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x3

    .line 89
    invoke-static {p1, v0, v0, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
