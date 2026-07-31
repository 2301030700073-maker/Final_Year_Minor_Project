.class public final Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSink;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

.field private final scratch:[B

.field private final secretKey:[B

.field private final wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;


# direct methods
.method public constructor <init>([BLcom/google/android/exoplayer2/upstream/DataSink;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;-><init>([BLcom/google/android/exoplayer2/upstream/DataSink;[B)V

    return-void
.end method

.method public constructor <init>([BLcom/google/android/exoplayer2/upstream/DataSink;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->secretKey:[B

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    .line 5
    .line 6
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSink;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/DataSink;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->secretKey:[B

    .line 9
    .line 10
    iget-object v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uriPositionOffset:J

    .line 13
    .line 14
    iget-wide v7, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 15
    .line 16
    add-long/2addr v5, v7

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;-><init>(I[BLjava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 22
    .line 23
    return-void
.end method

.method public write([BII)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->updateInPlace([BII)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    .line 17
    .line 18
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/DataSink;->write([BII)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    move v1, v0

    .line 24
    :goto_0
    if-ge v1, p3, :cond_1

    .line 25
    .line 26
    sub-int v2, p3, v1

    .line 27
    .line 28
    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    .line 29
    .line 30
    array-length v3, v3

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->cipher:Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    move-object v4, v2

    .line 42
    check-cast v4, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;

    .line 43
    .line 44
    add-int v6, p2, v1

    .line 45
    .line 46
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    move-object v5, p1

    .line 50
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplayer2/upstream/crypto/AesFlushingCipher;->update([BII[BI)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->wrappedDataSink:Lcom/google/android/exoplayer2/upstream/DataSink;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/crypto/AesCipherDataSink;->scratch:[B

    .line 56
    .line 57
    invoke-interface {p1, v2, v0, v7}, Lcom/google/android/exoplayer2/upstream/DataSink;->write([BII)V

    .line 58
    .line 59
    .line 60
    add-int/2addr v1, v7

    .line 61
    move-object p1, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method
