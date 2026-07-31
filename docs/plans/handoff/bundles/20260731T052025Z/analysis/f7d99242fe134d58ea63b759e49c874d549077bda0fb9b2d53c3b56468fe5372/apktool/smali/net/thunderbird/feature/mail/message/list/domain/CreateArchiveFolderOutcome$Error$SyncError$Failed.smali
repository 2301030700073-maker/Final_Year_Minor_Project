.class public final Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error;


# instance fields
.field public final message:Ljava/lang/String;

.field public final serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->serverId:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->message:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;

    .line 10
    .line 11
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->serverId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->serverId:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->message:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->message:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_3

    .line 31
    .line 32
    :goto_0
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->serverId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->message:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->serverId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/thunderbird/feature/mail/folder/api/FolderServerId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", message="

    .line 8
    .line 9
    const-string v2, ", exception=null)"

    .line 10
    .line 11
    const-string v3, "Failed(serverId="

    .line 12
    .line 13
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/domain/CreateArchiveFolderOutcome$Error$SyncError$Failed;->message:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, v0, v1, p0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
