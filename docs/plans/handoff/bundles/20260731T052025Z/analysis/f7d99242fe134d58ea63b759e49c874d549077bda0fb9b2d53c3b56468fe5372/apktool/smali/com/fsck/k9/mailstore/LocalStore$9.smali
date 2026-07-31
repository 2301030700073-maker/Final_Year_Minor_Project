.class public final Lcom/fsck/k9/mailstore/LocalStore$9;
.super Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field public final synthetic val$partId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$9;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$9;->val$partId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final writeTo(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$9;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$9;->val$partId:Ljava/lang/String;

    .line 4
    .line 5
    :try_start_0
    iget-object p0, v1, Lcom/fsck/k9/mailstore/LocalStore;->database:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 6
    .line 7
    new-instance v0, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 8
    .line 9
    const/16 v5, 0x19

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v3, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZI)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;
    :try_end_0
    .catch Lnet/thunderbird/core/common/exception/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    move-object p0, v0

    .line 23
    new-instance p1, Ljava/io/IOException;

    .line 24
    .line 25
    const-string v0, "Got a MessagingException while writing attachment data!"

    .line 26
    .line 27
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method
