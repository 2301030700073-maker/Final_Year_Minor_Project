.class public final Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final archiveSpecialFolderOptions:Ljava/util/ArrayList;

.field public final draftsSpecialFolderOptions:Ljava/util/ArrayList;

.field public final sentSpecialFolderOptions:Ljava/util/ArrayList;

.field public final spamSpecialFolderOptions:Ljava/util/ArrayList;

.field public final trashSpecialFolderOptions:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->archiveSpecialFolderOptions:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->draftsSpecialFolderOptions:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->sentSpecialFolderOptions:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->spamSpecialFolderOptions:Ljava/util/ArrayList;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->trashSpecialFolderOptions:Ljava/util/ArrayList;

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
    instance-of v0, p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->archiveSpecialFolderOptions:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->archiveSpecialFolderOptions:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->draftsSpecialFolderOptions:Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->draftsSpecialFolderOptions:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->sentSpecialFolderOptions:Ljava/util/ArrayList;

    .line 34
    .line 35
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->sentSpecialFolderOptions:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->spamSpecialFolderOptions:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget-object v1, p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->spamSpecialFolderOptions:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->trashSpecialFolderOptions:Ljava/util/ArrayList;

    .line 56
    .line 57
    iget-object p1, p1, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->trashSpecialFolderOptions:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_6

    .line 64
    .line 65
    :goto_0
    const/4 p0, 0x0

    .line 66
    return p0

    .line 67
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 68
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->archiveSpecialFolderOptions:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->draftsSpecialFolderOptions:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/ArrayList;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->sentSpecialFolderOptions:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/ArrayList;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->spamSpecialFolderOptions:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/ArrayList;II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->trashSpecialFolderOptions:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    add-int/2addr p0, v0

    .line 35
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SpecialFolderOptions(archiveSpecialFolderOptions="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->archiveSpecialFolderOptions:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", draftsSpecialFolderOptions="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->draftsSpecialFolderOptions:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", sentSpecialFolderOptions="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->sentSpecialFolderOptions:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", spamSpecialFolderOptions="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->spamSpecialFolderOptions:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", trashSpecialFolderOptions="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOptions;->trashSpecialFolderOptions:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
