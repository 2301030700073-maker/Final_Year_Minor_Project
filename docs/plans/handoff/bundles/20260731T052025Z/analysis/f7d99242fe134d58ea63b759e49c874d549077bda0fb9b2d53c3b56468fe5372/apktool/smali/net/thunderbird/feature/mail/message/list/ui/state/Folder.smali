.class public final Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final type:Lnet/thunderbird/feature/mail/folder/api/FolderType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/thunderbird/feature/mail/message/list/ui/state/Account;Ljava/lang/String;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->id:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->name:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;

    .line 11
    .line 12
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->id:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->id:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 24
    .line 25
    iget-object v2, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->name:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->name:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 46
    .line 47
    iget-object p1, p1, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 48
    .line 49
    if-eq p0, p1, :cond_5

    .line 50
    .line 51
    :goto_0
    const/4 p0, 0x0

    .line 52
    return p0

    .line 53
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->id:Ljava/lang/String;

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
    iget-object v2, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 11
    .line 12
    invoke-virtual {v2}, Lnet/thunderbird/feature/mail/message/list/ui/state/Account;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-object v0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2, v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    add-int/2addr p0, v0

    .line 31
    mul-int/lit16 p0, p0, 0x745f

    .line 32
    .line 33
    add-int/lit16 p0, p0, 0x4d5

    .line 34
    .line 35
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Folder(id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->id:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", account="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->account:Lnet/thunderbird/feature/mail/message/list/ui/state/Account;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", name="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->name:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", type="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lnet/thunderbird/feature/mail/message/list/ui/state/Folder;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ", parent=null, root=null, canExpunge=false)"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
