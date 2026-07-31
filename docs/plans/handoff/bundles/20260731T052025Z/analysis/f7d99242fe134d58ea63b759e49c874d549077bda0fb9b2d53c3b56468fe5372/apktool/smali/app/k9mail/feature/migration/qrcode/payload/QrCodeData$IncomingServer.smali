.class public final Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final authenticationType:I

.field public final connectionSecurity:I

.field public final hostname:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:I

.field public final protocol:I

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->protocol:I

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->hostname:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->port:I

    .line 9
    .line 10
    iput p4, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->connectionSecurity:I

    .line 11
    .line 12
    iput p5, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->authenticationType:I

    .line 13
    .line 14
    iput-object p6, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->username:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->accountName:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->password:Ljava/lang/String;

    .line 19
    .line 20
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
    instance-of v0, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;

    .line 10
    .line 11
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->protocol:I

    .line 12
    .line 13
    iget v1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->protocol:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->hostname:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->hostname:Ljava/lang/String;

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
    goto :goto_0

    .line 29
    :cond_3
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->port:I

    .line 30
    .line 31
    iget v1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->port:I

    .line 32
    .line 33
    if-eq v0, v1, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->connectionSecurity:I

    .line 37
    .line 38
    iget v1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->connectionSecurity:I

    .line 39
    .line 40
    if-eq v0, v1, :cond_5

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_5
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->authenticationType:I

    .line 44
    .line 45
    iget v1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->authenticationType:I

    .line 46
    .line 47
    if-eq v0, v1, :cond_6

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_6
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->username:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->username:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_7

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_7
    iget-object v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->accountName:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->accountName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_8

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_8
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->password:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p1, p1, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->password:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_9

    .line 81
    .line 82
    :goto_0
    const/4 p0, 0x0

    .line 83
    return p0

    .line 84
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 85
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->protocol:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->hostname:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v2, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->port:I

    .line 13
    .line 14
    add-int/2addr v0, v2

    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget v2, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->connectionSecurity:I

    .line 17
    .line 18
    add-int/2addr v0, v2

    .line 19
    mul-int/2addr v0, v1

    .line 20
    iget v2, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->authenticationType:I

    .line 21
    .line 22
    add-int/2addr v0, v2

    .line 23
    mul-int/2addr v0, v1

    .line 24
    iget-object v2, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->username:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x0

    .line 31
    iget-object v3, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->accountName:Ljava/lang/String;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    move v3, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    :goto_0
    add-int/2addr v0, v3

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->password:Ljava/lang/String;

    .line 44
    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    :goto_1
    add-int/2addr v0, v2

    .line 53
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IncomingServer(protocol="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->protocol:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", hostname="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->hostname:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", port="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", connectionSecurity="

    .line 29
    .line 30
    const-string v2, ", authenticationType="

    .line 31
    .line 32
    iget v3, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->port:I

    .line 33
    .line 34
    iget v4, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->connectionSecurity:I

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->authenticationType:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", username="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->username:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", accountName="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->accountName:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", password="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lapp/k9mail/feature/migration/qrcode/payload/QrCodeData$IncomingServer;->password:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p0, ")"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0
.end method
