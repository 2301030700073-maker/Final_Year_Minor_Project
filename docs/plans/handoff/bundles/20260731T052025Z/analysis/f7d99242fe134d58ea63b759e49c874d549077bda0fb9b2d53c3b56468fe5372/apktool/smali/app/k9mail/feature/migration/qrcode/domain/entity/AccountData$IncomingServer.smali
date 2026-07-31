.class public final Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authenticationType:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

.field public final connectionSecurity:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

.field public final hostname:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:I

.field public final protocol:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;Ljava/lang/String;ILapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->protocol:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->hostname:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->port:I

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->connectionSecurity:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->authenticationType:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 13
    .line 14
    iput-object p6, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->username:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->password:Ljava/lang/String;

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
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->protocol:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

    .line 12
    .line 13
    iget-object v1, p1, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->protocol:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_2
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->hostname:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p1, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->hostname:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->port:I

    .line 30
    .line 31
    iget v1, p1, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->port:I

    .line 32
    .line 33
    if-ne v0, v1, :cond_8

    .line 34
    .line 35
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->connectionSecurity:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 36
    .line 37
    iget-object v1, p1, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->connectionSecurity:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 38
    .line 39
    if-eq v0, v1, :cond_4

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->authenticationType:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 43
    .line 44
    iget-object v1, p1, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->authenticationType:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 45
    .line 46
    if-eq v0, v1, :cond_5

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_5
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->username:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v1, p1, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->username:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_6

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_6
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->password:Ljava/lang/String;

    .line 61
    .line 62
    iget-object p1, p1, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->password:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_7

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_7
    :goto_0
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_8
    :goto_1
    const/4 p0, 0x0

    .line 74
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->protocol:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

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
    iget-object v2, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->hostname:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->port:I

    .line 17
    .line 18
    add-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget-object v2, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->connectionSecurity:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-int/2addr v2, v0

    .line 27
    mul-int/2addr v2, v1

    .line 28
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->authenticationType:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    add-int/2addr v0, v2

    .line 35
    mul-int/2addr v0, v1

    .line 36
    iget-object v2, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->username:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->password:Ljava/lang/String;

    .line 43
    .line 44
    if-nez p0, :cond_0

    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    :goto_0
    add-int/2addr v0, p0

    .line 53
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/thunderbird/core/common/net/Hostname;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->port:I

    .line 8
    .line 9
    invoke-static {v1}, Lnet/thunderbird/core/common/net/Port;->toString-impl(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "IncomingServer(protocol="

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->protocol:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServerProtocol;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", hostname="

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", port="

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ", connectionSecurity="

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->connectionSecurity:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$ConnectionSecurity;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", authenticationType="

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->authenticationType:Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$AuthenticationType;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, ", username="

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->username:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ", password="

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ")"

    .line 77
    .line 78
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/domain/entity/AccountData$IncomingServer;->password:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v2, p0, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0
.end method
