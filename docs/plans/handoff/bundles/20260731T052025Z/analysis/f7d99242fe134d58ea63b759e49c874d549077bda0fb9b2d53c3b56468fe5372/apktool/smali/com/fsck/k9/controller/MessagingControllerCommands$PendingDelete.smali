.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final folderId:J

.field public final uids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;->folderId:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;->uids:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static create(JLjava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/math/MathKt;->requireNotLocalUid(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1, p2}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;-><init>(JLjava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    const-string p0, "Required value was null."

    .line 30
    .line 31
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method


# virtual methods
.method public execute(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;->folderId:J

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingDelete;->uids:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1, p2, v0, v1}, Lcom/fsck/k9/controller/MessagingController;->getFolderServerId(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v2, v3, p0}, Lcom/fsck/k9/backend/api/Backend;->deleteMessages(Ljava/lang/String;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lcom/fsck/k9/controller/MessagingController;->localStoreProvider:Lcom/fsck/k9/mailstore/LocalStoreProvider;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/fsck/k9/mailstore/LocalStoreProvider;->getInstance(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/mailstore/LocalStore;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 26
    .line 27
    invoke-direct {p2, p1, v0, v1}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/fsck/k9/mailstore/LocalFolder;->open()V

    .line 31
    .line 32
    .line 33
    invoke-static {p2, p0}, Lcom/fsck/k9/controller/MessagingController;->destroyPlaceholderMessages(Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "delete"

    .line 2
    .line 3
    return-object p0
.end method
