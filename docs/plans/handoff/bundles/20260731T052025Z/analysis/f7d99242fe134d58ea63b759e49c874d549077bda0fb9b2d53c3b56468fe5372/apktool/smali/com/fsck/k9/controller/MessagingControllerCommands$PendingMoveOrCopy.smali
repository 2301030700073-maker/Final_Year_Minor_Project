.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final destFolderId:J

.field public final isCopy:Z

.field public final newUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final srcFolderId:J

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
.method private constructor <init>(JJZLjava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->srcFolderId:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->destFolderId:J

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->isCopy:Z

    .line 9
    .line 10
    iput-object p6, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->uids:Ljava/util/List;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->newUidMap:Ljava/util/Map;

    .line 13
    .line 14
    return-void
.end method

.method public static create(JJZLjava/util/Map;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;"
        }
    .end annotation

    .line 1
    invoke-static {p5}, Lkotlin/math/MathKt;->requireValidUids(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;

    .line 5
    .line 6
    const/4 v6, 0x0

    .line 7
    move-wide v1, p0

    .line 8
    move-wide v3, p2

    .line 9
    move v5, p4

    .line 10
    move-object v7, p5

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;-><init>(JJZLjava/util/List;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public execute(Lcom/fsck/k9/controller/MessagingController;Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-wide v2, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->srcFolderId:J

    .line 5
    .line 6
    iget-wide v4, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->destFolderId:J

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->isCopy:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->COPY:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 13
    .line 14
    :goto_0
    move-object v7, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->newUidMap:Ljava/util/Map;

    .line 20
    .line 21
    if-eqz v8, :cond_1

    .line 22
    .line 23
    new-instance p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    :goto_2
    move-object v6, p0

    .line 33
    move-object v0, p1

    .line 34
    move-object v1, p2

    .line 35
    goto :goto_3

    .line 36
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveOrCopy;->uids:Ljava/util/List;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_3
    invoke-virtual/range {v0 .. v8}, Lcom/fsck/k9/controller/MessagingController;->processPendingMoveOrCopy(Lnet/thunderbird/core/android/account/LegacyAccountDto;JJLjava/util/List;Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "move_or_copy"

    .line 2
    .line 3
    return-object p0
.end method
