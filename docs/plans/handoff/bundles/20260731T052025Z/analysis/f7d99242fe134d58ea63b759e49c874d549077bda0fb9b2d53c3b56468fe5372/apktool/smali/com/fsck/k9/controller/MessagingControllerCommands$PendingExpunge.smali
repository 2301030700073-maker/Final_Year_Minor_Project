.class public Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;
.super Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final folderId:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;->folderId:J

    .line 5
    .line 6
    return-void
.end method

.method public static create(J)Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;
    .locals 1

    .line 1
    new-instance v0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;-><init>(J)V

    .line 4
    .line 5
    .line 6
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
    iget-wide v1, p0, Lcom/fsck/k9/controller/MessagingControllerCommands$PendingExpunge;->folderId:J

    .line 6
    .line 7
    invoke-virtual {p1, p2, v1, v2}, Lcom/fsck/k9/controller/MessagingController;->getFolderServerId(Lnet/thunderbird/core/android/account/LegacyAccountDto;J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {v0, p0}, Lcom/fsck/k9/backend/api/Backend;->expunge(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getCommandName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "expunge"

    .line 2
    .line 3
    return-object p0
.end method
