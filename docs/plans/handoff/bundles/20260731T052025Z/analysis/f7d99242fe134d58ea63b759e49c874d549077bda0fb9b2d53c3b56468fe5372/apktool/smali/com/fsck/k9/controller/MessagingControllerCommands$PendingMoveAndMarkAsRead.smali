.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final destFolderId:J

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


# direct methods
.method private constructor <init>(JJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
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
    iput-wide p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;->srcFolderId:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;->destFolderId:J

    .line 7
    .line 8
    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;->newUidMap:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method

.method public static create(JJLjava/util/Map;)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lkotlin/math/MathKt;->requireValidUids(Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;

    .line 5
    .line 6
    move-wide v1, p0

    .line 7
    move-wide v3, p2

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;-><init>(JJLjava/util/Map;)V

    .line 10
    .line 11
    .line 12
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
    iget-wide v2, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;->srcFolderId:J

    .line 5
    .line 6
    iget-wide v4, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;->destFolderId:J

    .line 7
    .line 8
    iget-object v8, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingMoveAndMarkAsRead;->newUidMap:Ljava/util/Map;

    .line 9
    .line 10
    new-instance v6, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v6, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    sget-object v7, Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;->MOVE_AND_MARK_AS_READ:Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;

    .line 20
    .line 21
    move-object v0, p1

    .line 22
    move-object v1, p2

    .line 23
    invoke-virtual/range {v0 .. v8}, Lcom/fsck/k9/controller/MessagingController;->processPendingMoveOrCopy(Lnet/thunderbird/core/android/account/LegacyAccountDto;JJLjava/util/List;Lcom/fsck/k9/controller/MessagingController$MoveOrCopyFlavor;Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "move_and_mark_as_read"

    .line 2
    .line 3
    return-object p0
.end method
