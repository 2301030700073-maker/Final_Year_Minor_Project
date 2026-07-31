.class public final Lcom/fsck/k9/storage/messages/K9MessageStore;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final checkFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

.field public final copyMessageOperations:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

.field public final createFolderOperations:Lcom/google/zxing/BinaryBitmap;

.field public final databaseOperations:Lcom/google/zxing/BinaryBitmap;

.field public final deleteFolderOperations:Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

.field public final deleteMessageOperations:Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

.field public final flagMessageOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

.field public final keyValueStoreOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

.field public final moveMessageOperations:Lorg/slf4j/event/EventRecodingLogger;

.field public final retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

.field public final retrieveMessageListOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

.field public final retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

.field public final saveMessageOperations:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

.field public final updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

.field public final updateMessageOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/fsck/k9/mailstore/LocalStore$1;Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 11
    .line 12
    const/16 v0, 0xb

    .line 13
    .line 14
    invoke-direct {v2, v0, p2, p4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lokio/Path$Companion;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 23
    .line 24
    move-object v1, p1

    .line 25
    move-object v5, p5

    .line 26
    move-object v6, p6

    .line 27
    move-object v4, v3

    .line 28
    move-object v3, p3

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/google/zxing/BinaryBitmap;Lcom/fsck/k9/message/extractors/BasicPartInfoExtractor;Lokio/Path$Companion;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 30
    .line 31
    .line 32
    move-object v3, v4

    .line 33
    move-object v4, v5

    .line 34
    move-object v5, v6

    .line 35
    iput-object v0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->saveMessageOperations:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 36
    .line 37
    new-instance v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 38
    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/storage/messages/CopyMessageOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/google/zxing/BinaryBitmap;Lokio/Path$Companion;Lnet/thunderbird/feature/account/AccountId;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->copyMessageOperations:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 43
    .line 44
    new-instance p1, Lorg/slf4j/event/EventRecodingLogger;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p1, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v3, p1, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 58
    .line 59
    iput-object v4, p1, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->moveMessageOperations:Lorg/slf4j/event/EventRecodingLogger;

    .line 62
    .line 63
    new-instance p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 64
    .line 65
    const/4 p3, 0x1

    .line 66
    invoke-direct {p1, v1, p3}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;I)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->flagMessageOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 70
    .line 71
    new-instance p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 72
    .line 73
    const/4 p4, 0x6

    .line 74
    invoke-direct {p1, v1, p4}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;I)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateMessageOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 78
    .line 79
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    .line 80
    .line 81
    invoke-direct {p1, v1, v5}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 85
    .line 86
    new-instance p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 87
    .line 88
    const/4 p4, 0x4

    .line 89
    invoke-direct {p1, v1, p4}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;I)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageListOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 93
    .line 94
    new-instance p1, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

    .line 95
    .line 96
    invoke-direct {p1, v1, v2, p3}, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/google/zxing/BinaryBitmap;I)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->deleteMessageOperations:Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

    .line 100
    .line 101
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    .line 102
    .line 103
    invoke-direct {p1, v1, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lnet/thunderbird/feature/account/AccountId;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->createFolderOperations:Lcom/google/zxing/BinaryBitmap;

    .line 107
    .line 108
    new-instance p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 109
    .line 110
    const/4 p3, 0x3

    .line 111
    invoke-direct {p1, v1, p3}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;I)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 115
    .line 116
    new-instance p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 117
    .line 118
    const/4 p3, 0x0

    .line 119
    invoke-direct {p1, v1, p3}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;I)V

    .line 120
    .line 121
    .line 122
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->checkFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 123
    .line 124
    new-instance p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 125
    .line 126
    const/4 p4, 0x5

    .line 127
    invoke-direct {p1, v1, p4}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;I)V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->updateFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 131
    .line 132
    new-instance p1, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

    .line 133
    .line 134
    invoke-direct {p1, v1, v2, p3}, Lcom/fsck/k9/storage/messages/DeleteFolderOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/google/zxing/BinaryBitmap;I)V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->deleteFolderOperations:Lcom/fsck/k9/storage/messages/DeleteFolderOperations;

    .line 138
    .line 139
    new-instance p1, Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 140
    .line 141
    const/4 p3, 0x2

    .line 142
    invoke-direct {p1, v1, p3}, Lcom/fsck/k9/storage/messages/CheckFolderOperations;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;I)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->keyValueStoreOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 146
    .line 147
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    .line 148
    .line 149
    invoke-direct {p1, v1, p2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/fsck/k9/mailstore/LockableDatabase;Lcom/fsck/k9/mailstore/LocalStore$1;)V

    .line 150
    .line 151
    .line 152
    iput-object p1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->databaseOperations:Lcom/google/zxing/BinaryBitmap;

    .line 153
    .line 154
    return-void
.end method


# virtual methods
.method public final areAllIncludedInUnifiedInbox(Ljava/util/Collection;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->checkFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 7
    .line 8
    new-instance v0, Lcom/fsck/k9/storage/messages/CheckFolderOperations$$ExternalSyntheticLambda1;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, p1}, Lcom/fsck/k9/storage/messages/CheckFolderOperations$$ExternalSyntheticLambda1;-><init>(ILjava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast p0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final copyMessages(Ljava/util/ArrayList;J)Ljava/util/Map;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v3, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->copyMessageOperations:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 37
    .line 38
    iget-object v9, v3, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 39
    .line 40
    new-instance v2, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    move-wide v6, p2

    .line 44
    invoke-direct/range {v2 .. v8}, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;JJI)V

    .line 45
    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    invoke-virtual {v9, p2, v2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast p2, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 58
    .line 59
    .line 60
    move-result-wide p2

    .line 61
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    new-instance p3, Lkotlin/Pair;

    .line 66
    .line 67
    invoke-direct {p3, v1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-wide p2, v6

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0
.end method

.method public final getFolder(JLapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 15
    .line 16
    new-instance p2, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    const-string v1, "id = ?"

    .line 20
    .line 21
    invoke-direct {p2, v1, p1, p3, v0}, Landroidx/camera/view/PreviewView$1$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public final getFolderExtraNumber(JLjava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->keyValueStoreOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 7
    .line 8
    new-instance v0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {v0, p1, p2, p3}, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Long;

    .line 19
    .line 20
    return-object p0
.end method

.method public final getFolderId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 10
    .line 11
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    const/16 v1, 0x1b

    .line 14
    .line 15
    invoke-direct {v0, v1, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/Long;

    .line 24
    .line 25
    return-object p0
.end method

.method public final getFolderServerId(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 4
    .line 5
    new-instance v0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    invoke-direct {v0, v1, p1, p2}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    .line 18
    return-object p0
.end method

.method public final getFolders(Lapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 7
    .line 8
    new-instance v0, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    const/16 v1, 0xd

    .line 11
    .line 12
    const-string v2, "local_only = 0"

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    check-cast p0, Ljava/util/List;

    .line 26
    .line 27
    return-object p0
.end method

.method public final getMessageServerId(J)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 6
    .line 7
    new-instance v0, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/16 v1, 0xb

    .line 10
    .line 11
    invoke-direct {v0, v1, p1, p2}, Lcom/fsck/k9/mailstore/OutboxStateRepository$$ExternalSyntheticLambda0;-><init>(IJ)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public final hasPushEnabledFolder()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->checkFolderOperations:Lcom/fsck/k9/storage/messages/CheckFolderOperations;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/storage/messages/CheckFolderOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 4
    .line 5
    new-instance v0, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast p0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method public final moveMessage(JJ)J
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->moveMessageOperations:Lorg/slf4j/event/EventRecodingLogger;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v0, "Moving message [ID: "

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, "] to folder [ID: "

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, "]"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const/4 v0, 0x0

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {p0, v0}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, v1, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 42
    .line 43
    new-instance v0, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    move-wide v2, p1

    .line 47
    move-wide v4, p3

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/storage/messages/CopyMessageOperations$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;JJI)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    check-cast p0, Ljava/lang/Number;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    return-wide p0
.end method

.method public final moveMessages(Ljava/util/ArrayList;J)Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/fsck/k9/storage/messages/K9MessageStore;->moveMessage(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lkotlin/Pair;

    .line 45
    .line 46
    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public final saveLocalMessage(JLapp/k9mail/legacy/mailstore/SaveMessageData;Ljava/lang/Long;)J
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/fsck/k9/storage/messages/K9MessageStore;->saveMessageOperations:Lcom/fsck/k9/storage/messages/CopyMessageOperations;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, v1, Lcom/fsck/k9/storage/messages/CopyMessageOperations;->lockableDatabase:Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 7
    .line 8
    const/4 v7, 0x1

    .line 9
    if-nez p4, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "K9LOCAL:"

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    new-instance v0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;

    .line 30
    .line 31
    move-wide v3, p1

    .line 32
    move-object v2, v1

    .line 33
    move-object v1, p3

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda3;-><init>(Lapp/k9mail/legacy/mailstore/SaveMessageData;Lcom/fsck/k9/storage/messages/CopyMessageOperations;JLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v7, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast p0, Ljava/lang/Number;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    return-wide p0

    .line 51
    :cond_0
    move-wide v2, p1

    .line 52
    move-object p1, v1

    .line 53
    move-object v1, p3

    .line 54
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    new-instance v0, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;

    .line 59
    .line 60
    move-object v6, v1

    .line 61
    move-object v1, p1

    .line 62
    invoke-direct/range {v0 .. v6}, Lcom/fsck/k9/storage/messages/SaveMessageOperations$$ExternalSyntheticLambda1;-><init>(Lcom/fsck/k9/storage/messages/CopyMessageOperations;JJLapp/k9mail/legacy/mailstore/SaveMessageData;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v7, v0}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    check-cast p0, Ljava/lang/Number;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 75
    .line 76
    .line 77
    move-result-wide p0

    .line 78
    return-wide p0
.end method
