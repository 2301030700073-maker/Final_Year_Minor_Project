.class public final Lapp/k9mail/legacy/mailstore/ListenableMessageStore;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final folderSettingsListener:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 5
    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->folderSettingsListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final changeFolder(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 19
    .line 20
    new-instance v0, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final clearNewMessageState()V
    .locals 3

    .line 1
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateMessageOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 10
    .line 11
    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 12
    .line 13
    const/16 v2, 0xc

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final compact()V
    .locals 6

    .line 1
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->databaseOperations:Lcom/google/zxing/BinaryBitmap;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/LocalStore$1;->getAttachmentDirectory()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 20
    .line 21
    new-instance v2, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/16 v3, 0xa

    .line 24
    .line 25
    invoke-direct {v2, v3, v0, p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast v2, Ljava/lang/Number;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x1

    .line 47
    new-array v5, v4, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v2, v5, v0

    .line 50
    .line 51
    const-string v2, "Before compaction size = %d"

    .line 52
    .line 53
    invoke-static {v2, v5}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 57
    .line 58
    const/16 v5, 0x9

    .line 59
    .line 60
    invoke-direct {v2, v5}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/fsck/k9/mailstore/LocalStore$1;->getAttachmentDirectory()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v5, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    invoke-direct {v5, v3, v2, p0}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0, v5}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    check-cast p0, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-array v1, v4, [Ljava/lang/Object;

    .line 97
    .line 98
    aput-object p0, v1, v0

    .line 99
    .line 100
    const-string p0, "After compaction size = %d"

    .line 101
    .line 102
    invoke-static {p0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final getAllMessagesAndEffectiveDates(J)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 14
    .line 15
    new-instance v0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    invoke-direct {v0, v1, p1, p2}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast p0, Ljava/util/Map;

    .line 31
    .line 32
    return-object p0
.end method

.method public final getMessageFlags(JLjava/lang/String;)Ljava/util/Set;
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 21
    .line 22
    new-instance v0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;-><init>(IJLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p0, Ljava/util/Set;

    .line 37
    .line 38
    return-object p0
.end method

.method public final getMessageServerIds(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 30
    .line 31
    new-instance v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations$$ExternalSyntheticLambda1;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, v1, p1}, Lcom/fsck/k9/storage/messages/CheckFolderOperations$$ExternalSyntheticLambda1;-><init>(ILjava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast p0, Ljava/util/Map;

    .line 46
    .line 47
    :goto_0
    return-object p0
.end method

.method public final isMessagePresent(JLjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 21
    .line 22
    new-instance v0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;-><init>(IJLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method

.method public final notifyFolderSettingsChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->folderSettingsListener:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lapp/k9mail/legacy/mailstore/FolderSettingsChangedListener;

    .line 21
    .line 22
    invoke-interface {v0}, Lapp/k9mail/legacy/mailstore/FolderSettingsChangedListener;->onFolderSettingsChanged()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final setFlag(Ljava/util/Collection;Lnet/thunderbird/core/common/mail/Flag;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->flagMessageOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_5

    .line 35
    .line 36
    sget-object v1, Lcom/fsck/k9/storage/messages/FlagMessageOperationsKt;->SPECIAL_FLAGS:Ljava/util/Set;

    .line 37
    .line 38
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    sget-object v1, Lcom/fsck/k9/storage/messages/FlagMessageOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    aget v1, v1, v2

    .line 51
    .line 52
    const/4 v2, 0x2

    .line 53
    if-eq v1, v2, :cond_3

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    if-eq v1, v2, :cond_2

    .line 57
    .line 58
    const/4 v2, 0x4

    .line 59
    if-eq v1, v2, :cond_1

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    if-ne v1, v2, :cond_0

    .line 63
    .line 64
    const-string p2, "forwarded"

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const-string p1, "Unsupported flag: "

    .line 68
    .line 69
    invoke-static {p2, p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const-string p2, "answered"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string p2, "flagged"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const-string p2, "read"

    .line 80
    .line 81
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    .line 82
    .line 83
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v1, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 95
    .line 96
    new-instance v0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    const/16 v3, 0xc

    .line 99
    .line 100
    invoke-direct {v0, v3, p1, v1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v2, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    const-string p1, "not implemented"

    .line 108
    .line 109
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    const-string p1, "\'messageIds\' must not be empty"

    .line 114
    .line 115
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final setIncludeInUnifiedInbox(JZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 10
    .line 11
    new-instance v1, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v4, "integrate"

    .line 15
    .line 16
    move-wide v2, p1

    .line 17
    move v5, p3

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;-><init>(JLjava/lang/String;ZI)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->notifyFolderSettingsChanged()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final setLastChecked(JJ)V
    .locals 6

    .line 1
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 10
    .line 11
    new-instance v0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda1;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    move-wide v2, p1

    .line 15
    move-wide v4, p3

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda1;-><init>(IJJ)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setMessageFlag(JLjava/lang/String;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 9

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 18
    .line 19
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->flagMessageOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/fsck/k9/storage/messages/FlagMessageOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 31
    .line 32
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    aget v0, v0, v2

    .line 37
    .line 38
    const/4 v8, 0x1

    .line 39
    if-eq v0, v8, :cond_4

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    if-eq v0, v2, :cond_3

    .line 43
    .line 44
    const/4 v2, 0x3

    .line 45
    if-eq v0, v2, :cond_2

    .line 46
    .line 47
    const/4 v2, 0x4

    .line 48
    if-eq v0, v2, :cond_1

    .line 49
    .line 50
    const/4 v2, 0x5

    .line 51
    if-eq v0, v2, :cond_0

    .line 52
    .line 53
    iget-object v0, v1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 54
    .line 55
    move-object v2, v1

    .line 56
    new-instance v1, Lcom/fsck/k9/storage/messages/FlagMessageOperations$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    move-wide v3, p1

    .line 59
    move-object v5, p3

    .line 60
    move-object v7, p4

    .line 61
    move v6, p5

    .line 62
    invoke-direct/range {v1 .. v7}, Lcom/fsck/k9/storage/messages/FlagMessageOperations$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/storage/messages/CheckFolderOperations;JLjava/lang/String;ZLnet/thunderbird/core/common/mail/Flag;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v8, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-wide v2, p1

    .line 70
    move-object v4, p3

    .line 71
    move v6, p5

    .line 72
    const-string v5, "forwarded"

    .line 73
    .line 74
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->setBoolean(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    move-wide v2, p1

    .line 79
    move-object v4, p3

    .line 80
    move v6, p5

    .line 81
    const-string v5, "answered"

    .line 82
    .line 83
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->setBoolean(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move-wide v2, p1

    .line 88
    move-object v4, p3

    .line 89
    move v6, p5

    .line 90
    const-string v5, "flagged"

    .line 91
    .line 92
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->setBoolean(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    move-wide v2, p1

    .line 97
    move-object v4, p3

    .line 98
    move v6, p5

    .line 99
    const-string v5, "read"

    .line 100
    .line 101
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->setBoolean(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move-wide v2, p1

    .line 106
    move-object v4, p3

    .line 107
    move v6, p5

    .line 108
    const-string v5, "deleted"

    .line 109
    .line 110
    invoke-virtual/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->setBoolean(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .line 112
    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public final setNewMessageState(JLjava/lang/String;Z)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateMessageOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 22
    .line 23
    new-instance v1, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    move-wide v2, p1

    .line 27
    move-object v4, p3

    .line 28
    move v5, p4

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;-><init>(JLjava/lang/String;ZI)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/fsck/k9/mailstore/LocalStore$1;->notifyChange()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final setPushDisabled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 10
    .line 11
    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 12
    .line 13
    const/16 v2, 0xb

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->notifyFolderSettingsChanged()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setStatus(JLjava/lang/String;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 10
    .line 11
    new-instance v0, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const-string v4, "status"

    .line 15
    .line 16
    move-wide v1, p1

    .line 17
    move-object v3, p3

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setVisible(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 10
    .line 11
    new-instance v1, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const-string/jumbo v4, "visible"

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    move-wide v2, p1

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda6;-><init>(JLjava/lang/String;ZI)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->notifyFolderSettingsChanged()V

    .line 27
    .line 28
    .line 29
    return-void
.end method
