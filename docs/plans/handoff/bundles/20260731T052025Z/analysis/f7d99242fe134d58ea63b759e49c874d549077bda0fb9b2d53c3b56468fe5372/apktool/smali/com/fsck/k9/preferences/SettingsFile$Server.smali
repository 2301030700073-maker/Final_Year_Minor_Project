.class public final Lcom/fsck/k9/preferences/SettingsFile$Server;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authenticationType:Ljava/lang/String;

.field public final clientCertificateAlias:Ljava/lang/String;

.field public final connectionSecurity:Ljava/lang/String;

.field public final extras:Ljava/util/Map;

.field public final host:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:Ljava/lang/String;

.field public final type:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->type:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->host:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->port:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->connectionSecurity:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->authenticationType:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->username:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->password:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->clientCertificateAlias:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->extras:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/fsck/k9/preferences/SettingsFile$Server;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->type:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;->type:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->host:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;->host:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->port:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;->port:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->connectionSecurity:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;->connectionSecurity:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->authenticationType:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;->authenticationType:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->username:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;->username:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->password:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;->password:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->clientCertificateAlias:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;->clientCertificateAlias:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->extras:Ljava/util/Map;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/fsck/k9/preferences/SettingsFile$Server;->extras:Ljava/util/Map;

    .line 104
    .line 105
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-nez p0, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->type:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->host:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->port:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v1, v2

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->connectionSecurity:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v0

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v1, v2

    .line 51
    mul-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->authenticationType:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v0

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v1, v2

    .line 64
    mul-int/lit8 v1, v1, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->username:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v0

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v1, v2

    .line 77
    mul-int/lit8 v1, v1, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->password:Ljava/lang/String;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v0

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v1, v2

    .line 90
    mul-int/lit8 v1, v1, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->clientCertificateAlias:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    move v2, v0

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v1, v2

    .line 103
    mul-int/lit8 v1, v1, 0x1f

    .line 104
    .line 105
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->extras:Ljava/util/Map;

    .line 106
    .line 107
    if-nez p0, :cond_8

    .line 108
    .line 109
    goto :goto_8

    .line 110
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    :goto_8
    add-int/2addr v1, v0

    .line 115
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", host="

    .line 2
    .line 3
    const-string v1, ", port="

    .line 4
    .line 5
    const-string v2, "Server(type="

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->type:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->host:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ", connectionSecurity="

    .line 16
    .line 17
    const-string v2, ", authenticationType="

    .line 18
    .line 19
    iget-object v3, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->port:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->connectionSecurity:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, ", username="

    .line 27
    .line 28
    const-string v2, ", password="

    .line 29
    .line 30
    iget-object v3, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->authenticationType:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->username:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, ", clientCertificateAlias="

    .line 38
    .line 39
    const-string v2, ", extras="

    .line 40
    .line 41
    iget-object v3, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->password:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->clientCertificateAlias:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/fsck/k9/preferences/SettingsFile$Server;->extras:Ljava/util/Map;

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
