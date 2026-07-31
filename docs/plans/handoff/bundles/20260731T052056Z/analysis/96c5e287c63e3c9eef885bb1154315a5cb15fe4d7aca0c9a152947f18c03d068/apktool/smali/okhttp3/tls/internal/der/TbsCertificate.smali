.class public final Lokhttp3/tls/internal/der/TbsCertificate;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final extensions:Ljava/util/List;

.field public final issuer:Ljava/util/List;

.field public final issuerUniqueID:Lokhttp3/tls/internal/der/BitString;

.field public final serialNumber:Ljava/math/BigInteger;

.field public final signature:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

.field public final subject:Ljava/util/List;

.field public final subjectPublicKeyInfo:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

.field public final subjectUniqueID:Lokhttp3/tls/internal/der/BitString;

.field public final validity:Lokhttp3/tls/internal/der/Validity;

.field public final version:J


# direct methods
.method public constructor <init>(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-wide p1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->version:J

    .line 8
    .line 9
    iput-object p3, p0, Lokhttp3/tls/internal/der/TbsCertificate;->serialNumber:Ljava/math/BigInteger;

    .line 10
    .line 11
    iput-object p4, p0, Lokhttp3/tls/internal/der/TbsCertificate;->signature:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 12
    .line 13
    iput-object p5, p0, Lokhttp3/tls/internal/der/TbsCertificate;->issuer:Ljava/util/List;

    .line 14
    .line 15
    iput-object p6, p0, Lokhttp3/tls/internal/der/TbsCertificate;->validity:Lokhttp3/tls/internal/der/Validity;

    .line 16
    .line 17
    iput-object p7, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subject:Ljava/util/List;

    .line 18
    .line 19
    iput-object p8, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectPublicKeyInfo:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 20
    .line 21
    iput-object p9, p0, Lokhttp3/tls/internal/der/TbsCertificate;->issuerUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 22
    .line 23
    iput-object p10, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 24
    .line 25
    iput-object p11, p0, Lokhttp3/tls/internal/der/TbsCertificate;->extensions:Ljava/util/List;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Lokhttp3/tls/internal/der/TbsCertificate;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, Lokhttp3/tls/internal/der/TbsCertificate;

    .line 12
    .line 13
    iget-wide v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->version:J

    .line 14
    .line 15
    iget-wide v2, p1, Lokhttp3/tls/internal/der/TbsCertificate;->version:J

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->serialNumber:Ljava/math/BigInteger;

    .line 23
    .line 24
    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->serialNumber:Ljava/math/BigInteger;

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
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->signature:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 34
    .line 35
    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->signature:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->issuer:Ljava/util/List;

    .line 45
    .line 46
    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->issuer:Ljava/util/List;

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
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->validity:Lokhttp3/tls/internal/der/Validity;

    .line 56
    .line 57
    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->validity:Lokhttp3/tls/internal/der/Validity;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lokhttp3/tls/internal/der/Validity;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subject:Ljava/util/List;

    .line 67
    .line 68
    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->subject:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectPublicKeyInfo:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 78
    .line 79
    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->subjectPublicKeyInfo:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->issuerUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 89
    .line 90
    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->issuerUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 91
    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_9

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_9
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 100
    .line 101
    iget-object v1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->subjectUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 102
    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_a

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_a
    iget-object p0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->extensions:Ljava/util/List;

    .line 111
    .line 112
    iget-object p1, p1, Lokhttp3/tls/internal/der/TbsCertificate;->extensions:Ljava/util/List;

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_b

    .line 119
    .line 120
    :goto_0
    const/4 p0, 0x0

    .line 121
    return p0

    .line 122
    :cond_b
    :goto_1
    const/4 p0, 0x1

    .line 123
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->version:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    const/16 v1, 0x1f

    .line 5
    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->serialNumber:Ljava/math/BigInteger;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v0

    .line 14
    mul-int/2addr v2, v1

    .line 15
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->signature:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 16
    .line 17
    invoke-virtual {v0}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->issuer:Ljava/util/List;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->validity:Lokhttp3/tls/internal/der/Validity;

    .line 30
    .line 31
    invoke-virtual {v2}, Lokhttp3/tls/internal/der/Validity;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v2, v0

    .line 36
    mul-int/2addr v2, v1

    .line 37
    iget-object v0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subject:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {v2, v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/util/List;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v2, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectPublicKeyInfo:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 44
    .line 45
    invoke-virtual {v2}, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/2addr v2, v0

    .line 50
    mul-int/2addr v2, v1

    .line 51
    const/4 v0, 0x0

    .line 52
    iget-object v3, p0, Lokhttp3/tls/internal/der/TbsCertificate;->issuerUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 53
    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    invoke-virtual {v3}, Lokhttp3/tls/internal/der/BitString;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v3, v0

    .line 62
    :goto_0
    add-int/2addr v2, v3

    .line 63
    mul-int/2addr v2, v1

    .line 64
    iget-object v3, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3}, Lokhttp3/tls/internal/der/BitString;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    :cond_1
    add-int/2addr v2, v0

    .line 73
    mul-int/2addr v2, v1

    .line 74
    iget-object p0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->extensions:Ljava/util/List;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    add-int/2addr p0, v2

    .line 81
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TbsCertificate(version="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->version:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", serialNumber="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->serialNumber:Ljava/math/BigInteger;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", signature="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->signature:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", issuer="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->issuer:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", validity="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->validity:Lokhttp3/tls/internal/der/Validity;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", subject="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subject:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", subjectPublicKeyInfo="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectPublicKeyInfo:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", issuerUniqueID="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->issuerUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", subjectUniqueID="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", extensions="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Lokhttp3/tls/internal/der/TbsCertificate;->extensions:Ljava/util/List;

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const/16 p0, 0x29

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method
