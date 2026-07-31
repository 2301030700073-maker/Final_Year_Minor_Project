.class public final Lcom/fsck/k9/mailstore/K9BackendFolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final folderId:J

.field public final messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

.field public final saveMessageDataCreator:Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

.field public final visibleLimit:I


# direct methods
.method public constructor <init>(Lapp/k9mail/legacy/mailstore/ListenableMessageStore;Lcom/fsck/k9/mailstore/SaveMessageDataCreator;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessageDataCreator:Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 10
    .line 11
    new-instance p2, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    invoke-direct {p2, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    filled-new-array {p3}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object p1, p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 39
    .line 40
    new-instance v2, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 41
    .line 42
    const-string v3, "server_id = ?"

    .line 43
    .line 44
    invoke-direct {v2, v3, v1, p2, v0}, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p1, p2, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/fsck/k9/mailstore/K9BackendFolder$Init;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iget-wide p2, p1, Lcom/fsck/k9/mailstore/K9BackendFolder$Init;->folderId:J

    .line 57
    .line 58
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    iput-wide p2, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 62
    .line 63
    iget p1, p1, Lcom/fsck/k9/mailstore/K9BackendFolder$Init;->visibleLimit:I

    .line 64
    .line 65
    iput p1, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->visibleLimit:I

    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    const-string p0, "Couldn\'t find folder "

    .line 69
    .line 70
    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/4 p0, 0x0

    .line 78
    throw p0
.end method


# virtual methods
.method public final clearAllMessages()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 2
    .line 3
    iget-object v1, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 16
    .line 17
    new-instance v2, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/16 v3, 0xa

    .line 20
    .line 21
    iget-wide v4, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 22
    .line 23
    invoke-direct {v2, v3, v4, v5}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    invoke-virtual {v1, p0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast p0, Ljava/util/Set;

    .line 35
    .line 36
    check-cast p0, Ljava/util/Collection;

    .line 37
    .line 38
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 39
    .line 40
    invoke-virtual {v0, v4, v5, p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->destroyMessages(JLjava/util/Collection;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessageDataCreator:Lcom/fsck/k9/mailstore/SaveMessageDataCreator;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, p1, p2, v1}, Lcom/fsck/k9/mailstore/SaveMessageDataCreator;->createSaveMessageData(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/SaveMessageData;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v7, p1, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 27
    .line 28
    iget-object p1, p1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 29
    .line 30
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object p2, p1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p2, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 36
    .line 37
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v4, p2, Lcom/fsck/k9/storage/messages/K9MessageStore;->saveMessageOperations:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p2, v4, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 46
    .line 47
    new-instance v2, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;

    .line 48
    .line 49
    iget-wide v5, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 50
    .line 51
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;-><init>(Lapp/k9mail/legacy/mailstore/SaveMessageData;Lcom/fsck/k9/storage/messages/CopyMessageOperations;JLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x1

    .line 55
    invoke-virtual {p2, p0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    check-cast p0, Ljava/lang/Number;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    const-string p0, "Message requires a server ID to be set"

    .line 72
    .line 73
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final setFolderExtraNumber(JLjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 2
    .line 3
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->keyValueStoreOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 15
    .line 16
    new-instance v1, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    iget-wide v2, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 19
    .line 20
    move-wide v5, p1

    .line 21
    move-object v4, p3

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda3;-><init>(JLjava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    invoke-virtual {v0, p0, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final setMoreMessages(Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    move v0, v1

    .line 20
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 21
    .line 22
    iget-object p1, p1, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcoil3/size/ViewSizeResolver$-CC;->getDatabaseName(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v0, v1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 38
    .line 39
    new-instance v2, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    iget-wide v3, p0, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 43
    .line 44
    const-string v6, "more_messages"

    .line 45
    .line 46
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    invoke-virtual {v0, p0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 54
    .line 55
    .line 56
    return-void
.end method
