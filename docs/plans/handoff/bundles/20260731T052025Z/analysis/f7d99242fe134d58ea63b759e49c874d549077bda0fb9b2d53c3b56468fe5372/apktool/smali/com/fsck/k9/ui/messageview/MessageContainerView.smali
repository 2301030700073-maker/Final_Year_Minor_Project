.class public final Lcom/fsck/k9/ui/messageview/MessageContainerView;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lorg/koin/core/component/KoinComponent;


# static fields
.field public static final supportedDownloadUriSchemes:Ljava/util/Set;


# instance fields
.field public attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

.field public final attachmentViewInfoMapper$delegate:Lkotlin/Lazy;

.field public final attachmentViewMap:Ljava/util/LinkedHashMap;

.field public final attachments:Ljava/util/LinkedHashMap;

.field public attachmentsContainer:Landroid/view/ViewGroup;

.field public final clipboardManager$delegate:Lkotlin/Lazy;

.field public currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

.field public currentHtmlText:Ljava/lang/String;

.field public final displayHtml$delegate:Lkotlin/Lazy;

.field public final featureThemeProvider$delegate:Lkotlin/Lazy;

.field public hasHiddenExternalImages:Z

.field public isShowingPictures:Z

.field public final linkTextHandler$delegate:Lkotlin/Lazy;

.field public messageContentView:Lcom/fsck/k9/view/MessageWebView;

.field public unsignedText:Lcom/google/android/material/textview/MaterialTextView;

.field public unsignedTextContainer:Landroid/view/View;

.field public unsignedTextDivider:Landroid/view/View;

.field public final webViewConfigProvider$delegate:Lkotlin/Lazy;


# direct methods
.method public static $r8$lambda$O6l_Y-ERSvLdjg5Ywm1l-azpxi0(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/view/MenuItem;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p2, v0, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p2, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p2, v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v0, 0x7f12066f

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getClipboardManager()Lcom/fsck/k9/helper/ClipboardManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, p2, p0}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance p2, Lcom/fsck/k9/mail/Address;

    .line 41
    .line 42
    const/4 v0, 0x6

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {p2, v0, p0, v1}, Lcom/fsck/k9/mail/Address;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance p0, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v0, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    .line 50
    .line 51
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/high16 v0, 0x10000000

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    const-string v0, "mailto"

    .line 60
    .line 61
    iget-object v2, p2, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string v0, "com.android.contacts.action.CREATE_DESCRIPTION"

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    iget-object p2, p2, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    const-string v0, "name"

    .line 84
    .line 85
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->startActivityIfAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    const-string p2, "mailto:"

    .line 100
    .line 101
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-instance p2, Landroid/content/Intent;

    .line 110
    .line 111
    const-string v0, "android.intent.action.VIEW"

    .line 112
    .line 113
    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {p0, p2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->startActivityIfAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static $r8$lambda$Z2Lxl3FQmIf3l5Ej_RhT5oEspik(Lcom/fsck/k9/ui/messageview/MessageContainerView;ZLcom/fsck/k9/mailstore/AttachmentViewInfo;Landroid/net/Uri;Landroid/view/MenuItem;)V
    .locals 2

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 5
    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq p4, v1, :cond_4

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-eq p4, v1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x7

    .line 19
    if-eq p4, p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const p2, 0x7f120673

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getClipboardManager()Lcom/fsck/k9/helper/ClipboardManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    if-eqz p1, :cond_2

    .line 52
    .line 53
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 54
    .line 55
    invoke-virtual {v0, p2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onSaveAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    new-instance p1, Landroid/app/DownloadManager$Request;

    .line 60
    .line 61
    invoke-direct {p1, p3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 62
    .line 63
    .line 64
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    const/16 p4, 0x1d

    .line 67
    .line 68
    if-lt p2, p4, :cond_3

    .line 69
    .line 70
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    sget-object p3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, p3, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 77
    .line 78
    .line 79
    :cond_3
    const/4 p2, 0x1

    .line 80
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string p2, "download"

    .line 88
    .line 89
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    check-cast p0, Landroid/app/DownloadManager;

    .line 97
    .line 98
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    if-eqz p1, :cond_5

    .line 103
    .line 104
    check-cast v0, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->onViewAttachment(Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    new-instance p1, Landroid/content/Intent;

    .line 111
    .line 112
    const-string p2, "android.intent.action.VIEW"

    .line 113
    .line 114
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {p0, p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->startActivityIfAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_6
    const-string p0, "Required value was null."

    .line 129
    .line 130
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public static $r8$lambda$aE33UeGbmjjx-fQ-llH8019chtw(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/webkit/WebView;Landroid/view/MenuItem;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p3, v0, :cond_6

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p3, v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p3, v0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x4

    .line 18
    if-eq p3, p0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getLinkTextHandler()Lcom/fsck/k9/ui/messageview/LinkTextHandler;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    const p3, 0x7f120679

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getClipboardManager()Lcom/fsck/k9/helper/ClipboardManager;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, p2, p0}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance p2, Landroid/content/Intent;

    .line 66
    .line 67
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string p3, "android.intent.action.SEND"

    .line 71
    .line 72
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const-string v0, "androidx.core.app.EXTRA_CALLING_PACKAGE"

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    const-string v0, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    const/high16 v0, 0x80000

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    move-object v0, p1

    .line 100
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    instance-of v1, v0, Landroid/app/Activity;

    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    check-cast v0, Landroid/app/Activity;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    check-cast v0, Landroid/content/ContextWrapper;

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    goto :goto_0

    .line 119
    :cond_4
    move-object v0, v2

    .line 120
    :goto_1
    if-eqz v0, :cond_5

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v1, "androidx.core.app.EXTRA_CALLING_ACTIVITY"

    .line 127
    .line 128
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    const-string v1, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"

    .line 132
    .line 133
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    :cond_5
    const-string v0, "text/plain"

    .line 137
    .line 138
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    const-string v0, "android.intent.extra.TEXT"

    .line 142
    .line 143
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    const-string p0, "android.intent.extra.STREAM"

    .line 150
    .line 151
    invoke-virtual {p2, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    and-int/lit8 p0, p0, -0x2

    .line 162
    .line 163
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    invoke-static {p2, v2, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_6
    new-instance p2, Landroid/content/Intent;

    .line 175
    .line 176
    const-string p3, "android.intent.action.VIEW"

    .line 177
    .line 178
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-direct {p2, p3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {p0, p2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->startActivityIfAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public static $r8$lambda$mMqPJ8nJo_am53VjX14GTEYAr_w(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p2, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p2, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p2, v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v0, 0x7f120680

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getClipboardManager()Lcom/fsck/k9/helper/ClipboardManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, p2, p0}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    new-instance p2, Landroid/content/Intent;

    .line 41
    .line 42
    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    .line 43
    .line 44
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/high16 v0, 0x10000000

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    const-string/jumbo v0, "vnd.android.cursor.item/contact"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    const-string v0, "phone"

    .line 59
    .line 60
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->startActivityIfAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    const-string p2, "tel:"

    .line 79
    .line 80
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    new-instance p2, Landroid/content/Intent;

    .line 89
    .line 90
    const-string v0, "android.intent.action.VIEW"

    .line 91
    .line 92
    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {p0, p2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->startActivityIfAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public static $r8$lambda$nxUTfgxbH73fr8z4zbj7qNQ-lic(ILandroidx/compose/runtime/Composer;Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/ui/messageview/MessageContainerView;Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;)V
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x3

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    and-int/2addr p0, v2

    .line 11
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    invoke-virtual {p1, p0, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-direct {p3}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getFeatureThemeProvider()Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    invoke-direct {v0, p4, p2, p3}, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;-><init>(Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/ui/messageview/MessageContainerView;)V

    .line 26
    .line 27
    .line 28
    const p2, -0x5aa5c54

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v0, p1}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/4 p3, 0x6

    .line 36
    check-cast p0, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 37
    .line 38
    invoke-virtual {p0, p2, p1, p3}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public static $r8$lambda$pdJ3dw3PcgmWZaGeEPct20tLjQQ(ILandroidx/compose/runtime/Composer;Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/ui/messageview/MessageContainerView;Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;)V
    .locals 23

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    and-int/lit8 v3, p0, 0x3

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eq v3, v4, :cond_0

    .line 13
    .line 14
    move v3, v6

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v5

    .line 17
    :goto_0
    and-int/lit8 v4, p0, 0x1

    .line 18
    .line 19
    move-object/from16 v11, p1

    .line 20
    .line 21
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    invoke-virtual {v11, v4, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_f

    .line 28
    .line 29
    iget-object v3, v2, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 30
    .line 31
    invoke-static {v3, v11}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    if-ne v7, v13, :cond_2

    .line 48
    .line 49
    :cond_1
    new-instance v7, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;

    .line 50
    .line 51
    const/16 v4, 0xc

    .line 52
    .line 53
    invoke-direct {v7, v2, v4}, Lapp/k9mail/feature/account/oauth/ui/AccountOAuthViewKt$AccountOAuthView$$inlined$observe$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    or-int/2addr v2, v4

    .line 76
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    const/4 v8, 0x7

    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    if-ne v4, v13, :cond_4

    .line 84
    .line 85
    :cond_3
    new-instance v4, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    invoke-direct {v4, v7, v0, v2, v8}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 95
    .line 96
    invoke-static {v11, v0, v4}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 100
    .line 101
    sget-object v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacingsKt;->LocalThemeSpacings:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 102
    .line 103
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    const/high16 v4, 0x41800000    # 16.0f

    .line 113
    .line 114
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lnet/thunderbird/core/ui/compose/theme2/ThemeSpacings;

    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    new-instance v2, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 128
    .line 129
    new-instance v4, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    invoke-direct {v4, v8}, Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;-><init>(I)V

    .line 132
    .line 133
    .line 134
    const/high16 v7, 0x41000000    # 8.0f

    .line 135
    .line 136
    invoke-direct {v2, v7, v6, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 137
    .line 138
    .line 139
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 140
    .line 141
    invoke-static {v2, v4, v11, v5}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget-wide v7, v11, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 146
    .line 147
    const/16 v4, 0x20

    .line 148
    .line 149
    ushr-long v9, v7, v4

    .line 150
    .line 151
    xor-long/2addr v7, v9

    .line 152
    long-to-int v4, v7

    .line 153
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    invoke-static {v11, v0}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 162
    .line 163
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 167
    .line 168
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 169
    .line 170
    .line 171
    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 172
    .line 173
    if-eqz v9, :cond_5

    .line 174
    .line 175
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 180
    .line 181
    .line 182
    :goto_1
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 183
    .line 184
    invoke-static {v11, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 185
    .line 186
    .line 187
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 188
    .line 189
    invoke-static {v11, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 197
    .line 198
    invoke-static {v11, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 199
    .line 200
    .line 201
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 202
    .line 203
    invoke-static {v11, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 204
    .line 205
    .line 206
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 207
    .line 208
    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 209
    .line 210
    .line 211
    const v0, -0x481ea6f8

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$State;

    .line 222
    .line 223
    iget-object v0, v0, Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$State;->attachments:Lkotlinx/collections/immutable/ImmutableList;

    .line 224
    .line 225
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_e

    .line 234
    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    move-object v7, v2

    .line 240
    check-cast v7, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;

    .line 241
    .line 242
    invoke-interface {v7}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getId-c0-oeyA()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    new-instance v3, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentId;

    .line 247
    .line 248
    invoke-direct {v3, v2}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentId;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const v2, -0x76c42a5f

    .line 252
    .line 253
    .line 254
    invoke-virtual {v11, v2, v3}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getAttachmentViewInfoMapper()Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    or-int/2addr v2, v3

    .line 270
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-nez v2, :cond_6

    .line 275
    .line 276
    if-ne v3, v13, :cond_9

    .line 277
    .line 278
    :cond_6
    invoke-direct {v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getAttachmentViewInfoMapper()Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    check-cast v2, Lcom/fsck/k9/mailstore/DefaultAttachmentViewInfoMapper;

    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    new-instance v14, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 288
    .line 289
    invoke-interface {v7}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getMimeType()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v15

    .line 293
    invoke-interface {v7}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getFilename()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v16

    .line 297
    invoke-interface {v7}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getSize()J

    .line 298
    .line 299
    .line 300
    move-result-wide v17

    .line 301
    invoke-interface {v7}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getId-c0-oeyA()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 306
    .line 307
    .line 308
    move-result-object v19

    .line 309
    instance-of v2, v7, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$InlinedImage;

    .line 310
    .line 311
    if-nez v2, :cond_8

    .line 312
    .line 313
    instance-of v2, v7, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem$InlinedFile;

    .line 314
    .line 315
    if-eqz v2, :cond_7

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_7
    move/from16 v20, v5

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_8
    :goto_3
    move/from16 v20, v6

    .line 322
    .line 323
    :goto_4
    invoke-interface {v7}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getPart()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    move-object/from16 v21, v2

    .line 328
    .line 329
    check-cast v21, Lcom/fsck/k9/mail/Part;

    .line 330
    .line 331
    invoke-interface {v7}, Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;->getDownloaded()Z

    .line 332
    .line 333
    .line 334
    move-result v22

    .line 335
    invoke-direct/range {v14 .. v22}, Lcom/fsck/k9/mailstore/AttachmentViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;ZLcom/fsck/k9/mail/Part;Z)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    move-object v3, v14

    .line 342
    :cond_9
    check-cast v3, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 343
    .line 344
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    or-int/2addr v2, v4

    .line 353
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    if-nez v2, :cond_a

    .line 358
    .line 359
    if-ne v4, v13, :cond_b

    .line 360
    .line 361
    :cond_a
    new-instance v4, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 362
    .line 363
    const/16 v2, 0x1a

    .line 364
    .line 365
    invoke-direct {v4, v2, v1, v3}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_b
    move-object v8, v4

    .line 372
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 373
    .line 374
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    or-int/2addr v2, v4

    .line 383
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    or-int/2addr v2, v4

    .line 388
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    if-nez v2, :cond_c

    .line 393
    .line 394
    if-ne v4, v13, :cond_d

    .line 395
    .line 396
    :cond_c
    new-instance v4, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 397
    .line 398
    const/16 v2, 0xd

    .line 399
    .line 400
    invoke-direct {v4, v7, v1, v3, v2}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    :cond_d
    move-object v9, v4

    .line 407
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 408
    .line 409
    const/4 v10, 0x0

    .line 410
    const/4 v12, 0x0

    .line 411
    invoke-static/range {v7 .. v12}, Lnet/thunderbird/feature/mail/message/reader/api/ui/component/organism/AttachmentCardKt;->AttachmentCard(Lnet/thunderbird/feature/mail/message/reader/api/ui/attachment/AttachmentUiItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_2

    .line 418
    .line 419
    :cond_e
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 423
    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 427
    .line 428
    .line 429
    :goto_5
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "http"

    .line 2
    .line 3
    const-string v1, "https"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->supportedDownloadUriSchemes:Ljava/util/Set;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lorg/koin/core/qualifier/StringQualifier;

    .line 8
    .line 9
    const-string p2, "MessageView"

    .line 10
    .line 11
    invoke-direct {p1, p2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 15
    .line 16
    const/16 v0, 0x14

    .line 17
    .line 18
    invoke-direct {p2, v0, p0, p1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->displayHtml$delegate:Lkotlin/Lazy;

    .line 28
    .line 29
    new-instance p2, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->webViewConfigProvider$delegate:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance p2, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;I)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->clipboardManager$delegate:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance p2, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;I)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->linkTextHandler$delegate:Lkotlin/Lazy;

    .line 64
    .line 65
    new-instance p2, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iput-object p2, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->featureThemeProvider$delegate:Lkotlin/Lazy;

    .line 76
    .line 77
    new-instance p2, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;

    .line 78
    .line 79
    const/4 v0, 0x4

    .line 80
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView$special$$inlined$inject$default$2;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;I)V

    .line 81
    .line 82
    .line 83
    invoke-static {p1, p2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentViewInfoMapper$delegate:Lkotlin/Lazy;

    .line 88
    .line 89
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentViewMap:Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachments:Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    return-void
.end method

.method private final getAttachmentViewInfoMapper()Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentViewInfoMapper$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/mail/message/reader/api/domain/mapper/AttachmentViewInfoMapper;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getClipboardManager()Lcom/fsck/k9/helper/ClipboardManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->clipboardManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/helper/ClipboardManager;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getDisplayHtml()Lcom/fsck/k9/message/html/DisplayHtml;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->displayHtml$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/message/html/DisplayHtml;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getFeatureThemeProvider()Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->featureThemeProvider$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getLinkTextHandler()Lcom/fsck/k9/ui/messageview/LinkTextHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->linkTextHandler$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/messageview/LinkTextHandler;

    .line 8
    .line 9
    return-object p0
.end method

.method private final getWebViewConfigProvider()Lcom/fsck/k9/view/WebViewConfigProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->webViewConfigProvider$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/view/WebViewConfigProvider;

    .line 8
    .line 9
    return-object p0
.end method

.method private final setLoadPictures(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->messageContentView:Lcom/fsck/k9/view/MessageWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    xor-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const/4 v1, 0x0

    .line 17
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v2, "Failed to unblock network loads. Missing INTERNET permission?"

    .line 20
    .line 21
    invoke-static {v0, v2, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->isShowingPictures:Z

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p0, "messageContentView"

    .line 28
    .line 29
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method

.method public static startActivityIfAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    const p1, 0x7f1202c4

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final createImageMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto/16 :goto_4

    .line 4
    .line 5
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "cid"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    move-object v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 28
    .line 29
    if-eqz v1, :cond_9

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v1, v1, Lcom/fsck/k9/mailstore/AttachmentResolver;->contentIdToAttachmentUriMap:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/net/Uri;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachments:Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 50
    .line 51
    :goto_0
    const/4 v3, 0x0

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    const/4 v4, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v4, v3

    .line 57
    :goto_1
    new-instance v5, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;

    .line 58
    .line 59
    invoke-direct {v5, p0, v4, v1, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;ZLcom/fsck/k9/mailstore/AttachmentViewInfo;Landroid/net/Uri;)V

    .line 60
    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    const p2, 0x7f120677

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 72
    .line 73
    .line 74
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    const v1, 0x7f120678

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const/4 v1, 0x5

    .line 86
    invoke-interface {p1, v3, v1, v1, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 91
    .line 92
    .line 93
    if-nez v4, :cond_5

    .line 94
    .line 95
    sget-object p2, Lcom/fsck/k9/ui/messageview/MessageContainerView;->supportedDownloadUriSchemes:Ljava/util/Set;

    .line 96
    .line 97
    check-cast p2, Ljava/lang/Iterable;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_7

    .line 119
    .line 120
    :cond_5
    if-eqz v4, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    const v0, 0x7f120676

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    const v0, 0x7f120675

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    :goto_3
    const/4 v0, 0x6

    .line 146
    invoke-interface {p1, v3, v0, v0, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-interface {p2, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 151
    .line 152
    .line 153
    :cond_7
    if-nez v4, :cond_8

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    const p2, 0x7f120674

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const/4 p2, 0x7

    .line 167
    invoke-interface {p1, v3, p2, p2, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-interface {p0, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_4
    return-void

    .line 175
    :cond_9
    const-string p0, "Required value was null."

    .line 176
    .line 177
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public final createLinkMenu(Landroid/view/ContextMenu;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    invoke-direct {v0, p3, p0, p2}, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;Landroid/webkit/WebView;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 10
    .line 11
    .line 12
    const-string p2, "file:"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p3, p2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const p3, 0x7f12067e

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 p3, 0x1

    .line 33
    invoke-interface {p1, v1, p3, p3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const p3, 0x7f12067b

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/4 p3, 0x2

    .line 52
    invoke-interface {p1, v1, p3, p3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const p3, 0x7f12067a

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const/4 p3, 0x3

    .line 71
    invoke-interface {p1, v1, p3, p3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 76
    .line 77
    .line 78
    if-eqz p4, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const p2, 0x7f12067d

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const/4 p2, 0x4

    .line 92
    invoke-interface {p1, v1, p2, p2, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    return-void
.end method

.method public final displayMessageViewContainer(Lcom/fsck/k9/mailstore/MessageViewInfo;ZLandroidx/biometric/BiometricPrompt;ZZLcom/fsck/k9/ui/messageview/AttachmentViewCallback;Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v2, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraText:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object/from16 v3, p6

    .line 14
    .line 15
    iput-object v3, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentCallback:Lcom/fsck/k9/ui/messageview/AttachmentViewCallback;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v0, v3}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->setLoadPictures(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentsContainer:Landroid/view/ViewGroup;

    .line 22
    .line 23
    const-string v5, "attachmentsContainer"

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-eqz v4, :cond_14

    .line 27
    .line 28
    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 29
    .line 30
    .line 31
    iput-object v6, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentHtmlText:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v6, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 34
    .line 35
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->messageContentView:Lcom/fsck/k9/view/MessageWebView;

    .line 36
    .line 37
    const-string v7, "messageContentView"

    .line 38
    .line 39
    if-eqz v4, :cond_13

    .line 40
    .line 41
    const-string v8, ""

    .line 42
    .line 43
    invoke-virtual {v4, v8, v6, v6}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments$1(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextContainer:Landroid/view/View;

    .line 47
    .line 48
    const-string/jumbo v9, "unsignedTextContainer"

    .line 49
    .line 50
    .line 51
    if-eqz v4, :cond_12

    .line 52
    .line 53
    const/16 v10, 0x8

    .line 54
    .line 55
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedText:Lcom/google/android/material/textview/MaterialTextView;

    .line 59
    .line 60
    const-string/jumbo v11, "unsignedText"

    .line 61
    .line 62
    .line 63
    if-eqz v4, :cond_11

    .line 64
    .line 65
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    if-nez p2, :cond_0

    .line 69
    .line 70
    iget-object v4, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->text:Ljava/lang/String;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getDisplayHtml()Lcom/fsck/k9/message/html/DisplayHtml;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    iget-object v8, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->textPlainFormatted:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v8}, Lcom/fsck/k9/message/html/DisplayHtml;->wrapMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    :goto_0
    iget-object v8, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachments:Ljava/util/List;

    .line 87
    .line 88
    iget-object v12, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachments:Ljava/util/LinkedHashMap;

    .line 89
    .line 90
    if-eqz v8, :cond_1

    .line 91
    .line 92
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    if-eqz v13, :cond_1

    .line 101
    .line 102
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    check-cast v13, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 107
    .line 108
    iget-object v14, v13, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    .line 109
    .line 110
    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    iget-object v8, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->extraAttachments:Ljava/util/List;

    .line 115
    .line 116
    if-eqz v8, :cond_2

    .line 117
    .line 118
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-eqz v13, :cond_2

    .line 127
    .line 128
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    check-cast v13, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 133
    .line 134
    iget-object v14, v13, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    .line 135
    .line 136
    invoke-interface {v12, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    iget-object v8, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentsContainer:Landroid/view/ViewGroup;

    .line 141
    .line 142
    if-eqz v8, :cond_10

    .line 143
    .line 144
    new-instance v12, Landroidx/compose/ui/platform/ComposeView;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    const/16 v16, 0x6

    .line 154
    .line 155
    const/16 v17, 0x0

    .line 156
    .line 157
    const/4 v14, 0x0

    .line 158
    const/4 v15, 0x0

    .line 159
    invoke-direct/range {v12 .. v17}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    .line 161
    .line 162
    sget-object v5, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->INSTANCE:Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 163
    .line 164
    invoke-virtual {v12, v5}, Landroidx/compose/ui/platform/AbstractComposeView;->setViewCompositionStrategy(Landroidx/compose/ui/platform/ViewCompositionStrategy;)V

    .line 165
    .line 166
    .line 167
    new-instance v5, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;

    .line 168
    .line 169
    move-object/from16 v13, p7

    .line 170
    .line 171
    invoke-direct {v5, v0, v13, v1}, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/ui/messageview/MessageContainerView;Lnet/thunderbird/feature/mail/message/reader/api/ui/MessageReaderViewContract$ViewModel;Lcom/fsck/k9/mailstore/MessageViewInfo;)V

    .line 172
    .line 173
    .line 174
    new-instance v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 175
    .line 176
    const v14, -0x3971aecc

    .line 177
    .line 178
    .line 179
    const/4 v15, 0x1

    .line 180
    invoke-direct {v13, v14, v5, v15}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v12, v13}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    .line 188
    .line 189
    if-eqz v4, :cond_7

    .line 190
    .line 191
    iget-boolean v5, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->isShowingPictures:Z

    .line 192
    .line 193
    if-nez v5, :cond_7

    .line 194
    .line 195
    if-nez p2, :cond_7

    .line 196
    .line 197
    sget-object v5, Lcom/fsck/k9/helper/Utility;->IMG_PATTERN:Ljava/util/regex/Pattern;

    .line 198
    .line 199
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    :cond_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-eqz v8, :cond_6

    .line 208
    .line 209
    invoke-virtual {v5, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    const-string v12, "http"

    .line 214
    .line 215
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    if-nez v12, :cond_4

    .line 220
    .line 221
    const-string v12, "https"

    .line 222
    .line 223
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_3

    .line 228
    .line 229
    :cond_4
    const-string v5, "External images found"

    .line 230
    .line 231
    new-array v8, v3, [Ljava/lang/Object;

    .line 232
    .line 233
    invoke-static {v5, v8}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    if-eqz p4, :cond_5

    .line 237
    .line 238
    invoke-direct {v0, v15}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->setLoadPictures(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_5
    iput-boolean v15, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->hasHiddenExternalImages:Z

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_6
    const-string v5, "No external images."

    .line 246
    .line 247
    new-array v8, v3, [Ljava/lang/Object;

    .line 248
    .line 249
    invoke-static {v5, v8}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_7
    :goto_3
    if-nez v4, :cond_8

    .line 253
    .line 254
    invoke-direct {v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getDisplayHtml()Lcom/fsck/k9/message/html/DisplayHtml;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    const v8, 0x7f120683

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string v12, "<div style=\"text-align:center; color: grey;\">"

    .line 278
    .line 279
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v5, "</div>"

    .line 286
    .line 287
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v4, v5}, Lcom/fsck/k9/message/html/DisplayHtml;->wrapMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    :cond_8
    iget-object v1, v1, Lcom/fsck/k9/mailstore/MessageViewInfo;->attachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    new-instance v5, Lcom/fsck/k9/ui/messageview/MessageContainerView$displayMessageViewContainer$3;

    .line 304
    .line 305
    move-object/from16 v8, p3

    .line 306
    .line 307
    invoke-direct {v5, v8}, Lcom/fsck/k9/ui/messageview/MessageContainerView$displayMessageViewContainer$3;-><init>(Landroidx/biometric/BiometricPrompt;)V

    .line 308
    .line 309
    .line 310
    iput-object v4, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentHtmlText:Ljava/lang/String;

    .line 311
    .line 312
    iput-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 313
    .line 314
    iget-object v8, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->messageContentView:Lcom/fsck/k9/view/MessageWebView;

    .line 315
    .line 316
    if-eqz v8, :cond_f

    .line 317
    .line 318
    invoke-virtual {v8, v4, v1, v5}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments$1(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 319
    .line 320
    .line 321
    if-eqz v2, :cond_e

    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-nez v1, :cond_9

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_9
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextContainer:Landroid/view/View;

    .line 331
    .line 332
    if-eqz v1, :cond_d

    .line 333
    .line 334
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextDivider:Landroid/view/View;

    .line 338
    .line 339
    if-eqz v1, :cond_c

    .line 340
    .line 341
    if-eqz p5, :cond_a

    .line 342
    .line 343
    move v3, v10

    .line 344
    :cond_a
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    .line 346
    .line 347
    iget-object v0, v0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedText:Lcom/google/android/material/textview/MaterialTextView;

    .line 348
    .line 349
    if-eqz v0, :cond_b

    .line 350
    .line 351
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :cond_b
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw v6

    .line 359
    :cond_c
    const-string/jumbo v0, "unsignedTextDivider"

    .line 360
    .line 361
    .line 362
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw v6

    .line 366
    :cond_d
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v6

    .line 370
    :cond_e
    :goto_4
    return-void

    .line 371
    :cond_f
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw v6

    .line 375
    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw v6

    .line 379
    :cond_11
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    throw v6

    .line 383
    :cond_12
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v6

    .line 387
    :cond_13
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    throw v6

    .line 391
    :cond_14
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw v6
.end method

.method public bridge getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 8
    .line 9
    .line 10
    check-cast p2, Landroid/webkit/WebView;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getType()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x3

    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v0, v4, :cond_6

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    if-eq v0, v5, :cond_4

    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x7

    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    if-eq v0, v1, :cond_0

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    new-instance v1, Landroid/os/Handler;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string/jumbo v1, "url"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, p1, p3}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->createImageMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->createLinkMenu(Landroid/view/ContextMenu;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    const-string p0, "Required value was null."

    .line 88
    .line 89
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->createLinkMenu(Landroid/view/ContextMenu;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->createImageMenu(Landroid/view/ContextMenu;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_4
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    if-nez p2, :cond_5

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    new-instance p3, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;

    .line 117
    .line 118
    invoke-direct {p3, p2, p0, v3}, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;I)V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    const v0, 0x7f120672

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-interface {p1, v3, v2, v3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    const v0, 0x7f120671

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-interface {p1, v3, v4, v2, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const p2, 0x7f120670

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-interface {p1, v3, v1, v4, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-interface {p0, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_6
    invoke-virtual {p3}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    if-nez p2, :cond_7

    .line 184
    .line 185
    :goto_0
    return-void

    .line 186
    :cond_7
    new-instance p3, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;

    .line 187
    .line 188
    invoke-direct {p3, p2, p0, v2}, Lcom/fsck/k9/ui/messageview/MessageContainerView$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lcom/fsck/k9/ui/messageview/MessageContainerView;I)V

    .line 189
    .line 190
    .line 191
    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    const v0, 0x7f12067f

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-interface {p1, v3, v2, v3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    const v0, 0x7f120682

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-interface {p1, v3, v4, v2, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    const p2, 0x7f120681

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-interface {p1, v3, v1, v4, p0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-interface {p0, p3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f090293

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Lcom/fsck/k9/view/MessageWebView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->getWebViewConfigProvider()Lcom/fsck/k9/view/WebViewConfigProvider;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, v2, Lcom/fsck/k9/view/WebViewConfigProvider;->themeManager:Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 33
    .line 34
    invoke-virtual {v3}, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;->getMessageViewTheme()Lnet/thunderbird/core/ui/theme/api/Theme;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/fsck/k9/view/WebViewConfigProvider;->createWebViewConfig(Lnet/thunderbird/core/ui/theme/api/Theme;)Lcom/fsck/k9/view/WebViewConfig;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/fsck/k9/view/MessageWebView;->configure(Lcom/fsck/k9/view/WebViewConfig;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast v0, Lcom/fsck/k9/view/MessageWebView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->messageContentView:Lcom/fsck/k9/view/MessageWebView;

    .line 58
    .line 59
    const v0, 0x7f090090

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    check-cast v0, Landroid/view/ViewGroup;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->attachmentsContainer:Landroid/view/ViewGroup;

    .line 72
    .line 73
    const v0, 0x7f0902b1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextContainer:Landroid/view/View;

    .line 84
    .line 85
    const v0, 0x7f0902b2

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedTextDivider:Landroid/view/View;

    .line 96
    .line 97
    const v0, 0x7f0902b3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->unsignedText:Lcom/google/android/material/textview/MaterialTextView;

    .line 110
    .line 111
    return-void
.end method

.method public final showPictures()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/fsck/k9/ui/messageview/MessageContainerView;->setLoadPictures(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentHtmlText:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->messageContentView:Lcom/fsck/k9/view/MessageWebView;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/MessageContainerView;->currentAttachmentResolver:Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 15
    .line 16
    invoke-virtual {v1, v0, p0, v2}, Lcom/fsck/k9/view/MessageWebView;->displayHtmlContentWithInlineAttachments$1(Ljava/lang/String;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "messageContentView"

    .line 21
    .line 22
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v2

    .line 26
    :cond_1
    const-string p0, "Required value was null."

    .line 27
    .line 28
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
