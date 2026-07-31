.class public final Lorg/minidns/record/DNSKEY;
.super Lorg/minidns/record/Data;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public final algorithmByte:B

.field public final flags:S

.field public final key:[B

.field public transient keyTag:Ljava/lang/Integer;

.field public final protocol:B


# direct methods
.method public constructor <init>(SBB[B)V
    .locals 1

    .line 1
    invoke-static {p3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-short p1, p0, Lorg/minidns/record/DNSKEY;->flags:S

    .line 9
    .line 10
    iput-byte p2, p0, Lorg/minidns/record/DNSKEY;->protocol:B

    .line 11
    .line 12
    iput-byte p3, p0, Lorg/minidns/record/DNSKEY;->algorithmByte:B

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    iput-object v0, p0, Lorg/minidns/record/DNSKEY;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 22
    .line 23
    iput-object p4, p0, Lorg/minidns/record/DNSKEY;->key:[B

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getKeyAsDataInputStream()Ljava/io/DataInputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/DataInputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/minidns/record/DNSKEY;->key:[B

    .line 6
    .line 7
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final getKeyTag()I
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->keyTag:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/minidns/record/Data;->setBytes()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/minidns/record/Data;->bytes:[B

    .line 9
    .line 10
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [B

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    array-length v4, v0

    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    and-int/lit8 v4, v3, 0x1

    .line 23
    .line 24
    const-wide/16 v5, 0xff

    .line 25
    .line 26
    if-lez v4, :cond_0

    .line 27
    .line 28
    aget-byte v4, v0, v3

    .line 29
    .line 30
    int-to-long v7, v4

    .line 31
    and-long/2addr v5, v7

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    aget-byte v4, v0, v3

    .line 34
    .line 35
    int-to-long v7, v4

    .line 36
    and-long/2addr v5, v7

    .line 37
    const/16 v4, 0x8

    .line 38
    .line 39
    shl-long/2addr v5, v4

    .line 40
    :goto_1
    add-long/2addr v1, v5

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 v0, 0x10

    .line 45
    .line 46
    shr-long v3, v1, v0

    .line 47
    .line 48
    const-wide/32 v5, 0xffff

    .line 49
    .line 50
    .line 51
    and-long/2addr v3, v5

    .line 52
    add-long/2addr v1, v3

    .line 53
    and-long/2addr v1, v5

    .line 54
    long-to-int v0, v1

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lorg/minidns/record/DNSKEY;->keyTag:Ljava/lang/Integer;

    .line 60
    .line 61
    :cond_2
    iget-object p0, p0, Lorg/minidns/record/DNSKEY;->keyTag:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0
.end method

.method public final serialize(Ljava/io/DataOutputStream;)V
    .locals 1

    .line 1
    iget-short v0, p0, Lorg/minidns/record/DNSKEY;->flags:S

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 4
    .line 5
    .line 6
    iget-byte v0, p0, Lorg/minidns/record/DNSKEY;->protocol:B

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 9
    .line 10
    .line 11
    iget-byte v0, p0, Lorg/minidns/record/DNSKEY;->algorithmByte:B

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lorg/minidns/record/DNSKEY;->key:[B

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-short v1, p0, Lorg/minidns/record/DNSKEY;->flags:S

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-byte v2, p0, Lorg/minidns/record/DNSKEY;->protocol:B

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/minidns/record/DNSKEY;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lorg/minidns/record/DNSKEY;->key:[B

    .line 33
    .line 34
    invoke-static {p0}, Lorg/minidns/util/Base64;->encodeToString([B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
