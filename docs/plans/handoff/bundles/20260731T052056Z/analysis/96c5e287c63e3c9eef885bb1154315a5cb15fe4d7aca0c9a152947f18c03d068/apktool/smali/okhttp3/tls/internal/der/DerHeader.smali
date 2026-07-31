.class public final Lokhttp3/tls/internal/der/DerHeader;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final constructed:Z

.field public final length:J

.field public final tag:J

.field public final tagClass:I


# direct methods
.method public constructor <init>(IJZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 5
    .line 6
    iput-wide p2, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    .line 9
    .line 10
    iput-wide p5, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lokhttp3/tls/internal/der/DerHeader;

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
    check-cast p1, Lokhttp3/tls/internal/der/DerHeader;

    .line 12
    .line 13
    iget v1, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 14
    .line 15
    iget v3, p1, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 21
    .line 22
    iget-wide v5, p1, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-boolean v1, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    .line 30
    .line 31
    iget-boolean v3, p1, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    .line 32
    .line 33
    if-eq v1, v3, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    iget-wide v3, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    .line 37
    .line 38
    iget-wide p0, p1, Lokhttp3/tls/internal/der/DerHeader;->length:J

    .line 39
    .line 40
    cmp-long p0, v3, p0

    .line 41
    .line 42
    if-eqz p0, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-wide v1, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 6
    .line 7
    long-to-int v1, v1

    .line 8
    add-int/2addr v0, v1

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-boolean v1, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    .line 12
    .line 13
    xor-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    .line 19
    .line 20
    long-to-int p0, v1

    .line 21
    add-int/2addr v0, p0

    .line 22
    return v0
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
    iget v1, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x2f

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
