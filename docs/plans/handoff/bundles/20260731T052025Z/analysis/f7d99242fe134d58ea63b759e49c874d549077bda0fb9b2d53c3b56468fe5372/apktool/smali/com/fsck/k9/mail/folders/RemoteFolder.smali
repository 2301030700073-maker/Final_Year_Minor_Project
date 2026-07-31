.class public final Lcom/fsck/k9/mail/folders/RemoteFolder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final serverId:Ljava/lang/String;

.field public final type:Lcom/fsck/k9/mail/FolderType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->serverId:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->displayName:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 12
    .line 13
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
    instance-of v0, p1, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/mail/folders/RemoteFolder;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->serverId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/mail/folders/RemoteFolder;->serverId:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->displayName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/fsck/k9/mail/folders/RemoteFolder;->displayName:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-object p0, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 36
    .line 37
    if-eq p0, p1, :cond_4

    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->serverId:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->displayName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, v0

    .line 23
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->serverId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/thunderbird/feature/mail/folder/api/FolderServerId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ", displayName="

    .line 8
    .line 9
    const-string v2, ", type="

    .line 10
    .line 11
    const-string v3, "RemoteFolder(serverId="

    .line 12
    .line 13
    iget-object v4, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->displayName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, v0, v1, v4, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object p0, p0, Lcom/fsck/k9/mail/folders/RemoteFolder;->type:Lcom/fsck/k9/mail/FolderType;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, ")"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
