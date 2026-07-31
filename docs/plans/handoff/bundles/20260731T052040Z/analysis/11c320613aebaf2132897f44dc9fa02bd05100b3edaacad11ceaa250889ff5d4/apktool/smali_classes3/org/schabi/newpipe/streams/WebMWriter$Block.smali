.class public final Lorg/schabi/newpipe/streams/WebMWriter$Block;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public absoluteTimecode:J

.field public data:Ljava/io/InputStream;

.field public dataSize:I

.field public flags:B

.field public trackNumber:I


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->trackNumber:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-byte v1, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->flags:B

    .line 8
    .line 9
    const/16 v2, 0x80

    .line 10
    .line 11
    and-int/2addr v1, v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    move v1, v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v3

    .line 19
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-wide v5, p0, Lorg/schabi/newpipe/streams/WebMWriter$Block;->absoluteTimecode:J

    .line 24
    .line 25
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/4 v2, 0x3

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v0, v2, v3

    .line 33
    .line 34
    aput-object v1, v2, v4

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    aput-object p0, v2, v0

    .line 38
    .line 39
    const-string p0, "trackNumber=%s  isKeyFrame=%S  absoluteTimecode=%s"

    .line 40
    .line 41
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method
