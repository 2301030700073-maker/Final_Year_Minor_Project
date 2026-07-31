.class public final Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public bEntries:[B

.field public bFirstSampleFlags:I

.field public bFlags:I

.field public chunkDuration:I

.field public chunkSize:I

.field public dataOffset:I

.field public entriesRowSize:I

.field public entryCount:I


# virtual methods
.method public final getAbsoluteEntry(ILorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->getEntry(I)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 6
    .line 7
    const/16 v2, 0x100

    .line 8
    .line 9
    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 16
    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    invoke-static {v1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleFlags:I

    .line 26
    .line 27
    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    .line 28
    .line 29
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 30
    .line 31
    const/16 v3, 0x200

    .line 32
    .line 33
    invoke-static {v1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 40
    .line 41
    const/16 v3, 0x10

    .line 42
    .line 43
    invoke-static {v1, v3}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    .line 50
    .line 51
    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 52
    .line 53
    :cond_1
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 54
    .line 55
    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    iget v1, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 62
    .line 63
    const/16 v2, 0x8

    .line 64
    .line 65
    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget p2, p2, Lorg/schabi/newpipe/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    .line 72
    .line 73
    iput p2, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    .line 74
    .line 75
    :cond_2
    if-nez p1, :cond_3

    .line 76
    .line 77
    iget p1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 78
    .line 79
    const/4 p2, 0x4

    .line 80
    invoke-static {p1, p2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget p0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFirstSampleFlags:I

    .line 87
    .line 88
    iput p0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    .line 89
    .line 90
    :cond_3
    return-object v0
.end method

.method public final getEntry(I)Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bEntries:[B

    .line 2
    .line 3
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->entriesRowSize:I

    .line 4
    .line 5
    mul-int/2addr p1, v1

    .line 6
    invoke-static {v0, p1, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 16
    .line 17
    const/16 v2, 0x100

    .line 18
    .line 19
    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    .line 30
    .line 31
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 32
    .line 33
    const/16 v2, 0x200

    .line 34
    .line 35
    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    .line 46
    .line 47
    :cond_1
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 48
    .line 49
    const/16 v2, 0x400

    .line 50
    .line 51
    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    .line 62
    .line 63
    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 64
    .line 65
    const/16 v2, 0x800

    .line 66
    .line 67
    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    .line 78
    .line 79
    :cond_3
    iget p0, p0, Lorg/schabi/newpipe/streams/Mp4DashReader$Trun;->bFlags:I

    .line 80
    .line 81
    invoke-static {p0, v2}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    iput-boolean p0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->hasCompositionTimeOffset:Z

    .line 86
    .line 87
    iget p0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->sampleFlags:I

    .line 88
    .line 89
    const/high16 p1, 0x10000

    .line 90
    .line 91
    invoke-static {p0, p1}, Lorg/schabi/newpipe/streams/Mp4DashReader;->hasFlag(II)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    xor-int/lit8 p0, p0, 0x1

    .line 96
    .line 97
    iput-boolean p0, v0, Lorg/schabi/newpipe/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    .line 98
    .line 99
    return-object v0
.end method
