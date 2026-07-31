.class public final Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public messagesToDelete:Ljava/util/ArrayList;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public final preferences$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/fsck/k9/ui/base/ThemeType;->DIALOG:Lcom/fsck/k9/ui/base/ThemeType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>(Lcom/fsck/k9/ui/base/ThemeType;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity$special$$inlined$inject$default$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;I)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->preferences$delegate:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance v0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity$special$$inlined$inject$default$1;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->messagingController$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final doPositiveClick(I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->messagesToDelete:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "messagesToDelete"

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-string v3, "account"

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->messagingController$delegate:Lkotlin/Lazy;

    .line 27
    .line 28
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/fsck/k9/controller/MessagingController;

    .line 33
    .line 34
    iget-object v5, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    iget-object v3, v4, Lcom/fsck/k9/controller/MessagingController;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 39
    .line 40
    invoke-virtual {v3, v5, v2}, Lcom/fsck/k9/notification/NotificationController;->removeNewMailNotification(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lapp/k9mail/legacy/message/controller/MessageReference;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v2, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->messagesToDelete:Ljava/util/ArrayList;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    new-instance v0, Landroid/content/Intent;

    .line 62
    .line 63
    const-class v1, Lcom/fsck/k9/notification/NotificationActionService;

    .line 64
    .line 65
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .line 67
    .line 68
    const-string v1, "ACTION_DELETE"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    const-string v1, "accountUuid"

    .line 74
    .line 75
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const-string p1, "messageReferences"

    .line 79
    .line 80
    invoke-static {v2}, Landroidx/work/Data$Companion;->toMessageReferenceStringList(Ljava/util/List;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0

    .line 98
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "accountUuid"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "messageReferences"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroidx/work/Data$Companion;->toMessageReferenceList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->preferences$delegate:Lkotlin/Lazy;

    .line 37
    .line 38
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iput-object v0, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/fsck/k9/ui/notification/DeleteConfirmationActivity;->messagesToDelete:Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez p1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const/4 v2, 0x1

    .line 69
    new-array v3, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    aput-object v1, v3, v4

    .line 73
    .line 74
    const v1, 0x7f100004

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const v0, 0x7f120298

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const v1, 0x7f120296

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const v3, 0x7f120295

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v2, v0, p1, v1, v3}, Lcom/fsck/k9/fragment/ConfirmationDialogFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/fragment/ConfirmationDialogFragment;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const-string v0, "dialog"

    .line 114
    .line 115
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_0
    return-void

    .line 119
    :cond_1
    const-string p0, "accountUuid couldn\'t be resolved to an account"

    .line 120
    .line 121
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    const-string p0, "messageReferences can\'t be empty"

    .line 126
    .line 127
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_3
    const-string p0, "accountUuid can\'t be null"

    .line 132
    .line 133
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method
