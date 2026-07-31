.class public final synthetic Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda3;->f$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose$$ExternalSyntheticLambda3;->f$0:Lcom/fsck/k9/activity/MessageCompose;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose;->cameraCaptureHandler:Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const v1, 0x7f09030a

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string p1, "android.permission.CAMERA"

    .line 19
    .line 20
    invoke-static {p0, p1}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lapp/k9mail/core/android/common/camera/CameraCaptureHandler;->openCamera(Landroid/app/Activity;)V

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/16 v0, 0x64

    .line 35
    .line 36
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    const v0, 0x7f090084

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    if-ne p1, v0, :cond_5

    .line 45
    .line 46
    iget-object p1, p0, Lcom/fsck/k9/activity/MessageCompose;->attachmentPresenter:Lcom/fsck/k9/activity/compose/AttachmentPresenter;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/fsck/k9/activity/MessageCompose;->recipientPresenter:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->currentCachedCryptoStatus:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;

    .line 54
    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    return v2

    .line 58
    :cond_2
    iget-object v0, v0, Lcom/fsck/k9/activity/compose/ComposeCryptoStatus;->attachErrorStateOrNull:Lcom/fsck/k9/activity/compose/ComposeCryptoStatus$AttachErrorState;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    sget-object p1, Lcom/fsck/k9/activity/compose/RecipientPresenter$WhenMappings;->$EnumSwitchMapping$2:[I

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    aget p1, p1, v0

    .line 69
    .line 70
    if-ne p1, v2, :cond_3

    .line 71
    .line 72
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter;->recipientMvpView:Lcom/fsck/k9/activity/compose/RecipientMvpView;

    .line 73
    .line 74
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientMvpView;->activity:Lcom/fsck/k9/activity/MessageCompose;

    .line 75
    .line 76
    const p1, 0x7f1202c6

    .line 77
    .line 78
    .line 79
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 84
    .line 85
    .line 86
    return v2

    .line 87
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :cond_4
    iget-object p0, p1, Lcom/fsck/k9/activity/compose/AttachmentPresenter;->attachmentMvpView:Lcom/beetstra/jutf7/Base64Util;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance p1, Landroid/content/Intent;

    .line 97
    .line 98
    const-string v0, "android.intent.action.GET_CONTENT"

    .line 99
    .line 100
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    .line 104
    .line 105
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    const-string v0, "android.intent.category.OPENABLE"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    const-string v0, "*/*"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Lcom/fsck/k9/activity/MessageCompose;

    .line 121
    .line 122
    iput-boolean v2, p0, Lcom/fsck/k9/activity/MessageCompose;->isInSubActivity:Z

    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/16 v0, 0x401

    .line 130
    .line 131
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    .line 133
    .line 134
    return v2

    .line 135
    :cond_5
    return v1
.end method
