.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final flag:Lnet/thunderbird/core/common/mail/Flag;

.field public final folderId:J

.field public final newState:Z

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
.method private constructor <init>(JZLnet/thunderbird/core/common/mail/Flag;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lnet/thunderbird/core/common/mail/Flag;",
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
    iput-wide p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->folderId:J

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->newState:Z

    .line 7
    .line 8
    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->flag:Lnet/thunderbird/core/common/mail/Flag;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->uids:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method

.method public static create(JZLnet/thunderbird/core/common/mail/Flag;Ljava/util/List;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lnet/thunderbird/core/common/mail/Flag;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Required value was null."

    .line 3
    .line 4
    if-eqz p3, :cond_2

    .line 5
    .line 6
    if-eqz p4, :cond_1

    .line 7
    .line 8
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Lkotlin/math/MathKt;->requireNotLocalUid(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;

    .line 29
    .line 30
    move-wide v3, p0

    .line 31
    move v5, p2

    .line 32
    move-object v6, p3

    .line 33
    move-object v7, p4

    .line 34
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;-><init>(JZLnet/thunderbird/core/common/mail/Flag;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_1
    invoke-static {v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    invoke-static {v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method


# virtual methods
.method public execute(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->folderId:J

    .line 6
    .line 7
    invoke-virtual {p1, p2, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->getFolderServerId(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->uids:Ljava/util/List;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->flag:Lnet/thunderbird/core/common/mail/Flag;

    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingSetFlag;->newState:Z

    .line 16
    .line 17
    invoke-interface {v0, p1, p2, v1, p0}, Lcom/fsck/k9/backend/api/Backend;->setFlag(Ljava/lang/String;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "set_flag"

    .line 2
    .line 3
    return-object p0
.end method
