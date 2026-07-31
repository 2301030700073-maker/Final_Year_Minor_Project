.class public final Landroidx/biometric/FingerprintDialogFragment$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/biometric/BiometricViewModel;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/biometric/FingerprintDialogFragment$2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/biometric/FingerprintDialogFragment$2;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/DialogFragment;I)V
    .locals 0

    .line 15
    iput p2, p0, Landroidx/biometric/FingerprintDialogFragment$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/biometric/FingerprintDialogFragment$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/biometric/FingerprintDialogFragment$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Landroidx/biometric/FingerprintDialogFragment$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/fsck/k9/activity/compose/PgpSignOnlyDialog;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 26
    .line 27
    .line 28
    sget-object p2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->NO_CHOICE:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/activity/compose/PgpInlineDialog;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->isForceTextMessageFormat:Z

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-void

    .line 61
    :pswitch_1
    check-cast p0, Lcom/fsck/k9/activity/compose/PgpEnabledErrorDialog;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    sget-object p2, Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;->CHOICE_DISABLED:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCryptoMode:Lcom/fsck/k9/activity/compose/RecipientPresenter$CryptoMode;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->asyncUpdateCryptoStatus()V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-void

    .line 88
    :pswitch_2
    check-cast p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;

    .line 89
    .line 90
    iput p2, p0, Landroidx/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 91
    .line 92
    const/4 p2, -0x1

    .line 93
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_3
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    check-cast p0, Landroidx/biometric/BiometricViewModel;

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonPressPending(Z)V

    .line 115
    .line 116
    .line 117
    :cond_3
    return-void

    .line 118
    :pswitch_4
    check-cast p0, Landroidx/biometric/FingerprintDialogFragment;

    .line 119
    .line 120
    iget-object p0, p0, Landroidx/biometric/FingerprintDialogFragment;->mViewModel:Landroidx/biometric/BiometricViewModel;

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Landroidx/biometric/BiometricViewModel;->setNegativeButtonPressPending(Z)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
