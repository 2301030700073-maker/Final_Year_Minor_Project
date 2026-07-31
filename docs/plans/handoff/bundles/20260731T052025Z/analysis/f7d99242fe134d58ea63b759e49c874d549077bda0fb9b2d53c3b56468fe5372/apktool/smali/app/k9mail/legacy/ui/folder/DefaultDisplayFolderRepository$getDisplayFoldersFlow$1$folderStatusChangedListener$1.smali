.class public final Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;
.super Lapp/k9mail/legacy/message/controller/SimpleMessagingListener;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic $includeHiddenFolders:Z

.field public final synthetic $outboxFolderId:J

.field public final synthetic this$0:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;


# direct methods
.method public constructor <init>(JLapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lkotlinx/coroutines/channels/ProducerScope;Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    iput-object p4, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->this$0:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 9
    .line 10
    iput-wide p1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->$outboxFolderId:J

    .line 11
    .line 12
    iput-boolean p6, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->$includeHiddenFolders:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final folderStatusChanged(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->$account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 7
    .line 8
    iget-object v1, v0, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-wide v1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->$outboxFolderId:J

    .line 17
    .line 18
    iget-boolean p1, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->$includeHiddenFolders:Z

    .line 19
    .line 20
    iget-object v3, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->this$0:Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;

    .line 21
    .line 22
    invoke-static {v3, v0, v1, v2, p1}, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;->access$getDisplayFolders(Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository;Lnet/thunderbird/core/android/account/LegacyAccountDto;JZ)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lapp/k9mail/legacy/ui/folder/DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 27
    .line 28
    invoke-static {p1, p0}, Lokhttp3/Handshake$Companion;->trySendBlocking(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
