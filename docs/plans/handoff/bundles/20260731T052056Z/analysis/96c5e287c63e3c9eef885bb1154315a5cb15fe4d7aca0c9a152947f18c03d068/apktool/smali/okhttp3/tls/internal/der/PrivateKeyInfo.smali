.class public final Lokhttp3/tls/internal/der/PrivateKeyInfo;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final algorithmIdentifier:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

.field public final privateKey:Lokio/ByteString;

.field public final version:J


# direct methods
.method public constructor <init>(JLokhttp3/tls/internal/der/AlgorithmIdentifier;Lokio/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->version:J

    .line 5
    .line 6
    iput-object p3, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->algorithmIdentifier:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 7
    .line 8
    iput-object p4, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->privateKey:Lokio/ByteString;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lokhttp3/tls/internal/der/PrivateKeyInfo;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lokhttp3/tls/internal/der/PrivateKeyInfo;

    .line 10
    .line 11
    iget-wide v0, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->version:J

    .line 12
    .line 13
    iget-wide v2, p1, Lokhttp3/tls/internal/der/PrivateKeyInfo;->version:J

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->algorithmIdentifier:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 21
    .line 22
    iget-object v1, p1, Lokhttp3/tls/internal/der/PrivateKeyInfo;->algorithmIdentifier:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_3

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    iget-object p0, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->privateKey:Lokio/ByteString;

    .line 32
    .line 33
    iget-object p1, p1, Lokhttp3/tls/internal/der/PrivateKeyInfo;->privateKey:Lokio/ByteString;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_4

    .line 40
    .line 41
    :goto_0
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->version:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->algorithmIdentifier:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 7
    .line 8
    invoke-virtual {v1}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v1, v0

    .line 13
    mul-int/lit8 v1, v1, 0x1f

    .line 14
    .line 15
    iget-object p0, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->privateKey:Lokio/ByteString;

    .line 16
    .line 17
    invoke-virtual {p0}, Lokio/ByteString;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/2addr p0, v1

    .line 22
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PrivateKeyInfo(version="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->version:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", algorithmIdentifier="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->algorithmIdentifier:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", privateKey="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->privateKey:Lokio/ByteString;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
