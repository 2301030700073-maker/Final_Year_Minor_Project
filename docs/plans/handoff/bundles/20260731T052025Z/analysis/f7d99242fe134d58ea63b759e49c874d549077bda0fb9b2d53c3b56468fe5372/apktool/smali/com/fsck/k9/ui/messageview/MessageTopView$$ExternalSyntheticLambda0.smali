.class public final synthetic Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/messageview/MessageTopView;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/messageview/MessageTopView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

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
    .locals 3

    .line 1
    iget p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/messageview/MessageTopView;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->containerView:Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    instance-of v2, p1, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    check-cast p1, Lcom/fsck/k9/ui/messageview/MessageContainerView;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->showPictures()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->extraHeaderContainer:Landroid/view/View;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->showPicturesButtonClicked:Z

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    const-string p0, "extraHeaderContainer"

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_2
    const-string p0, "containerView"

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->restartMessageCryptoProcessing()V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void

    .line 62
    :pswitch_1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageTopView;->messageCryptoPresenter:Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;

    .line 63
    .line 64
    if-eqz p0, :cond_5

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->reloadOnResumeWithoutRecreateFlag:Z

    .line 67
    .line 68
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageCryptoPresenter;->messageCryptoMvpView:Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    sget p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsActivity;->$r8$clinit:I

    .line 74
    .line 75
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment$messageCryptoMvpView$1;->this$0:Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 82
    .line 83
    if-eqz p0, :cond_4

    .line 84
    .line 85
    iget-object p0, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    const-string v0, "openpgp"

    .line 91
    .line 92
    invoke-static {p1, p0, v0}, Lcom/bumptech/glide/load/Option$1;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    const-string p0, "account"

    .line 97
    .line 98
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1

    .line 102
    :cond_5
    :goto_0
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
