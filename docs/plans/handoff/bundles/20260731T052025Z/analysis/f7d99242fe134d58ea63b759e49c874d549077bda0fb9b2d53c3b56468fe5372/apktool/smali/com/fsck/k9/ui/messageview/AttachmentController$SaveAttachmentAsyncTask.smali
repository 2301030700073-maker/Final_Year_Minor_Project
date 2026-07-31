.class public final Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;
.super Landroid/os/AsyncTask;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore$7;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, [Ljava/lang/Void;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    iget-object v2, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->displayName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v2, v3}, Lcom/fsck/k9/provider/AttachmentTempFileProvider;->createTempUriForContentUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Landroidx/navigation/internal/NavContext;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v3, p1}, Landroidx/navigation/internal/NavContext;->getBestViewIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p1, "Error creating temp file for attachment!"

    .line 40
    .line 41
    new-array v0, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {p0, p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    :goto_0
    return-object p0

    .line 48
    :pswitch_0
    check-cast p1, [Landroid/net/Uri;

    .line 49
    .line 50
    :try_start_1
    aget-object p1, p1, v1

    .line 51
    .line 52
    invoke-static {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;->-$$Nest$mwriteAttachment(Lcom/fsck/k9/mailstore/LocalStore$7;Landroid/net/Uri;)V

    .line 53
    .line 54
    .line 55
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception p0

    .line 59
    const-string p1, "Error saving attachment"

    .line 60
    .line 61
    new-array v0, v1, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p0, p1, v0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 67
    .line 68
    :goto_1
    return-object p0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/ui/messageview/AttachmentController$SaveAttachmentAsyncTask;->this$0:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Landroid/content/Intent;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Landroid/content/Context;

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    iget-object v2, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 25
    .line 26
    new-array v3, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v2, v3, v4

    .line 30
    .line 31
    const-string v2, "Could not display attachment of type %s"

    .line 32
    .line 33
    invoke-static {p1, v2, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->mimeType:Ljava/lang/String;

    .line 37
    .line 38
    new-array v0, v1, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p1, v0, v4

    .line 41
    .line 42
    const p1, 0x7f120469

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void

    .line 57
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Landroid/content/Context;

    .line 68
    .line 69
    const p1, 0x7f12046e

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
