.class public final Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final fingerprintSha1:Lokio/ByteString;

.field public final fingerprintSha256:Lokio/ByteString;

.field public final fingerprintSha512:Lokio/ByteString;

.field public final issuer:Ljava/lang/String;

.field public final notValidAfter:Ljava/lang/String;

.field public final notValidBefore:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final subjectAlternativeNames:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subjectAlternativeNames:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidBefore:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidAfter:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subject:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->issuer:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha1:Lokio/ByteString;

    .line 15
    .line 16
    iput-object p7, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha256:Lokio/ByteString;

    .line 17
    .line 18
    iput-object p8, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha512:Lokio/ByteString;

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
    instance-of v0, p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;

    .line 10
    .line 11
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subjectAlternativeNames:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v1, p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subjectAlternativeNames:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidBefore:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v1, p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidBefore:Ljava/lang/String;

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
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidAfter:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v1, p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidAfter:Ljava/lang/String;

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
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subject:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v1, p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subject:Ljava/lang/String;

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
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->issuer:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->issuer:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha1:Lokio/ByteString;

    .line 67
    .line 68
    iget-object v1, p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha1:Lokio/ByteString;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha256:Lokio/ByteString;

    .line 78
    .line 79
    iget-object v1, p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha256:Lokio/ByteString;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_8

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_8
    iget-object p0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha512:Lokio/ByteString;

    .line 89
    .line 90
    iget-object p1, p1, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha512:Lokio/ByteString;

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_9

    .line 97
    .line 98
    :goto_0
    const/4 p0, 0x0

    .line 99
    return p0

    .line 100
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 101
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subjectAlternativeNames:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidBefore:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidAfter:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subject:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v2, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->issuer:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha1:Lokio/ByteString;

    .line 35
    .line 36
    invoke-virtual {v2}, Lokio/ByteString;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v0

    .line 41
    mul-int/2addr v2, v1

    .line 42
    iget-object v0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha256:Lokio/ByteString;

    .line 43
    .line 44
    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    add-int/2addr v0, v2

    .line 49
    mul-int/2addr v0, v1

    .line 50
    iget-object p0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha512:Lokio/ByteString;

    .line 51
    .line 52
    invoke-virtual {p0}, Lokio/ByteString;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    add-int/2addr p0, v0

    .line 57
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ServerCertificateProperties(subjectAlternativeNames="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subjectAlternativeNames:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", notValidBefore="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidBefore:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", notValidAfter="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", subject="

    .line 29
    .line 30
    const-string v2, ", issuer="

    .line 31
    .line 32
    iget-object v3, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->notValidAfter:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->subject:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->issuer:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", fingerprintSha1="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha1:Lokio/ByteString;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", fingerprintSha256="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha256:Lokio/ByteString;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", fingerprintSha512="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;->fingerprintSha512:Lokio/ByteString;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
