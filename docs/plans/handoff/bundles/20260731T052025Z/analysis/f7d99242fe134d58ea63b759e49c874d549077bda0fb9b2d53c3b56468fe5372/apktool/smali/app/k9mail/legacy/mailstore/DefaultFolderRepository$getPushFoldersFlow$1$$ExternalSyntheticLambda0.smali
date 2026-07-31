.class public final synthetic Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/legacy/mailstore/FolderSettingsChangedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic f$1:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

.field public final synthetic f$2:Lnet/thunderbird/feature/account/AccountId;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lnet/thunderbird/feature/account/AccountId;I)V
    .locals 0

    .line 1
    iput p4, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;->f$1:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 6
    .line 7
    iput-object p3, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/feature/account/AccountId;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFolderSettingsChanged()V
    .locals 3

    .line 1
    iget v0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/feature/account/AccountId;

    .line 4
    .line 5
    iget-object v2, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;->f$1:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 6
    .line 7
    iget-object p0, p0, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ProducerScope;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, v2, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/fsck/k9/storage/messages/K9MessageStore;->hasPushEnabledFolder()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, p0}, Lokhttp3/Handshake$Companion;->trySendBlocking(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    invoke-virtual {v2, v1}, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->getPushFolders(Lnet/thunderbird/feature/account/AccountId;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p0}, Lokhttp3/Handshake$Companion;->trySendBlocking(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
