.class public final Lcom/fsck/k9/preferences/SettingsFile$Account;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final folders:Ljava/util/List;

.field public final identities:Ljava/util/List;

.field public final incoming:Lcom/fsck/k9/preferences/SettingsFile$Server;

.field public final name:Ljava/lang/String;

.field public final outgoing:Lcom/fsck/k9/preferences/SettingsFile$Server;

.field public final settings:Ljava/util/Map;

.field public final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/preferences/SettingsFile$Server;Lcom/fsck/k9/preferences/SettingsFile$Server;Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->incoming:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->outgoing:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->settings:Ljava/util/Map;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->identities:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->folders:Ljava/util/List;

    .line 17
    .line 18
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
    instance-of v0, p1, Lcom/fsck/k9/preferences/SettingsFile$Account;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lcom/fsck/k9/preferences/SettingsFile$Account;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->incoming:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/fsck/k9/preferences/SettingsFile$Account;->incoming:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->outgoing:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 45
    .line 46
    iget-object v1, p1, Lcom/fsck/k9/preferences/SettingsFile$Account;->outgoing:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->settings:Ljava/util/Map;

    .line 56
    .line 57
    iget-object v1, p1, Lcom/fsck/k9/preferences/SettingsFile$Account;->settings:Ljava/util/Map;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_6

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->identities:Ljava/util/List;

    .line 67
    .line 68
    iget-object v1, p1, Lcom/fsck/k9/preferences/SettingsFile$Account;->identities:Ljava/util/List;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_7
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->folders:Ljava/util/List;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/fsck/k9/preferences/SettingsFile$Account;->folders:Ljava/util/List;

    .line 80
    .line 81
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_8

    .line 86
    .line 87
    :goto_0
    const/4 p0, 0x0

    .line 88
    return p0

    .line 89
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 90
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    move v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    :goto_0
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->incoming:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    move v2, v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/SettingsFile$Server;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->outgoing:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 37
    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    move v2, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/SettingsFile$Server;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_2
    add-int/2addr v0, v2

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->settings:Ljava/util/Map;

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    move v2, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_3
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->identities:Ljava/util/List;

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    move v2, v1

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    :goto_4
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->folders:Ljava/util/List;

    .line 76
    .line 77
    if-nez p0, :cond_5

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    :goto_5
    add-int/2addr v0, v1

    .line 85
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", name="

    .line 2
    .line 3
    const-string v1, ", incoming="

    .line 4
    .line 5
    const-string v2, "Account(uuid="

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->uuid:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->incoming:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", outgoing="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->outgoing:Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", settings="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->settings:Ljava/util/Map;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", identities="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->identities:Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", folders="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Account;->folders:Ljava/util/List;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p0, ")"

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0
.end method
