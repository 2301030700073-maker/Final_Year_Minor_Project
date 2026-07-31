.class public final Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;,
        Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AVIIF_KEYFRAME:I = 0x10

.field public static final FOURCC_AVI_:I = 0x20495641

.field public static final FOURCC_JUNK:I = 0x4b4e554a

.field public static final FOURCC_LIST:I = 0x5453494c

.field public static final FOURCC_RIFF:I = 0x46464952

.field public static final FOURCC_auds:I = 0x73647561

.field public static final FOURCC_avih:I = 0x68697661

.field public static final FOURCC_hdrl:I = 0x6c726468

.field public static final FOURCC_idx1:I = 0x31786469

.field public static final FOURCC_movi:I = 0x69766f6d

.field public static final FOURCC_strf:I = 0x66727473

.field public static final FOURCC_strh:I = 0x68727473

.field public static final FOURCC_strl:I = 0x6c727473

.field public static final FOURCC_strn:I = 0x6e727473

.field public static final FOURCC_txts:I = 0x73747874

.field public static final FOURCC_vids:I = 0x73646976

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_FINDING_IDX1_HEADER:I = 0x4

.field private static final STATE_FINDING_MOVI_HEADER:I = 0x3

.field private static final STATE_READING_HDRL_BODY:I = 0x2

.field private static final STATE_READING_HDRL_HEADER:I = 0x1

.field private static final STATE_READING_IDX1_BODY:I = 0x5

.field private static final STATE_READING_SAMPLES:I = 0x6

.field private static final STATE_SKIPPING_TO_HDRL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AviExtractor"


# instance fields
.field private aviHeader:Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

.field private final chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

.field private chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

.field private currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private hdrlSize:I

.field private idx1BodySize:I

.field private moviEnd:J

.field private moviStart:J

.field private pendingReposition:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private seekMapHasBeenOutput:Z

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$1;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 20
    .line 21
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DummyExtractorOutput;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DummyExtractorOutput;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 32
    .line 33
    const-wide/16 v0, -0x1

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviEnd:J

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->hdrlSize:I

    .line 41
    .line 42
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    .line 48
    .line 49
    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;)[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 2
    .line 3
    return-object p0
.end method

.method private static alignInputToEvenPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private getChunkReader(I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->handlesChunkId(I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method private parseHdrlBody(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 6

    .line 1
    const v0, 0x6c726468

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/ListChunk;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getType()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v1, v0, :cond_4

    .line 14
    .line 15
    const-class v0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviHeader:Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    .line 26
    .line 27
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->totalFrames:I

    .line 28
    .line 29
    int-to-long v1, v1

    .line 30
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->frameDurationUs:I

    .line 31
    .line 32
    int-to-long v3, v0

    .line 33
    mul-long/2addr v1, v3

    .line 34
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    .line 35
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x0

    .line 48
    move v2, v1

    .line 49
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    .line 60
    .line 61
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/avi/AviChunk;->getType()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const v5, 0x6c727473

    .line 66
    .line 67
    .line 68
    if-ne v4, v5, :cond_0

    .line 69
    .line 70
    check-cast v3, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;

    .line 71
    .line 72
    add-int/lit8 v4, v2, 0x1

    .line 73
    .line 74
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->processStreamList(Lcom/google/android/exoplayer2/extractor/avi/ListChunk;I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_1
    move v2, v4

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    new-array p1, v1, [Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, [Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 96
    .line 97
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    const-string p0, "AviHeader not found"

    .line 102
    .line 103
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    throw p0

    .line 108
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v0, "Unexpected header list type "

    .line 111
    .line 112
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getType()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    throw p0
.end method

.method private parseIdx1Body(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->peekSeekOffset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x10

    .line 10
    .line 11
    if-lt v2, v3, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    int-to-long v5, v5

    .line 26
    add-long/2addr v5, v0

    .line 27
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getChunkReader(I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    and-int/2addr v4, v3

    .line 38
    if-ne v4, v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->appendKeyFrameToIndex(J)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->incrementIndexChunkCount()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 48
    .line 49
    array-length v0, p1

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_1
    if-ge v1, v0, :cond_3

    .line 52
    .line 53
    aget-object v2, p1, v1

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->compactIndex()V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 65
    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;

    .line 67
    .line 68
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    .line 69
    .line 70
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$AviSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;J)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private peekSeekOffset(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    int-to-long v4, v1

    .line 26
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    .line 27
    .line 28
    cmp-long p0, v4, v6

    .line 29
    .line 30
    if-lez p0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-wide/16 v1, 0x8

    .line 34
    .line 35
    add-long/2addr v1, v6

    .line 36
    move-wide v2, v1

    .line 37
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 38
    .line 39
    .line 40
    return-wide v2
.end method

.method private processStreamList(Lcom/google/android/exoplayer2/extractor/avi/ListChunk;I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;
    .locals 11

    .line 1
    const-class v0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;

    .line 8
    .line 9
    const-class v1, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;

    .line 16
    .line 17
    const-string v2, "AviExtractor"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string p0, "Missing Stream Header"

    .line 23
    .line 24
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_0
    if-nez v1, :cond_1

    .line 29
    .line 30
    const-string p0, "Missing Stream Format"

    .line 31
    .line 32
    invoke-static {v2, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v3

    .line 36
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->getDurationUs()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->format:Lcom/google/android/exoplayer2/Format;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 47
    .line 48
    .line 49
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->suggestedBufferSize:I

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 54
    .line 55
    .line 56
    :cond_2
    const-class v4, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object p1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    const/4 p1, 0x1

    .line 78
    if-eq v6, p1, :cond_5

    .line 79
    .line 80
    const/4 p1, 0x2

    .line 81
    if-ne v6, p1, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    return-object v3

    .line 85
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 86
    .line 87
    invoke-interface {p1, p2, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {v10, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 96
    .line 97
    .line 98
    new-instance v4, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 99
    .line 100
    iget v9, v0, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->length:I

    .line 101
    .line 102
    move v5, p2

    .line 103
    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;-><init>(IIJILcom/google/android/exoplayer2/extractor/TrackOutput;)V

    .line 104
    .line 105
    .line 106
    iput-wide v7, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    .line 107
    .line 108
    return-object v4
.end method

.method private readMoviChunks(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 7

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviEnd:J

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->onChunkData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_6

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->alignInputToEvenPosition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/16 v2, 0xc

    .line 38
    .line 39
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 54
    .line 55
    const/16 v4, 0x8

    .line 56
    .line 57
    const v5, 0x5453494c

    .line 58
    .line 59
    .line 60
    if-ne v0, v5, :cond_3

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const v0, 0x69766f6d

    .line 72
    .line 73
    .line 74
    if-ne p0, v0, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move v2, v4

    .line 78
    :goto_0
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 82
    .line 83
    .line 84
    return v1

    .line 85
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const v3, 0x4b4e554a    # 1.352225E7f

    .line 90
    .line 91
    .line 92
    if-ne v0, v3, :cond_4

    .line 93
    .line 94
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    int-to-long v5, v2

    .line 99
    add-long/2addr v3, v5

    .line 100
    const-wide/16 v5, 0x8

    .line 101
    .line 102
    add-long/2addr v3, v5

    .line 103
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 104
    .line 105
    return v1

    .line 106
    :cond_4
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 110
    .line 111
    .line 112
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->getChunkReader(I)Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 119
    .line 120
    .line 121
    move-result-wide v3

    .line 122
    int-to-long v5, v2

    .line 123
    add-long/2addr v3, v5

    .line 124
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 125
    .line 126
    return v1

    .line 127
    :cond_5
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->onChunkStart(I)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 131
    .line 132
    :cond_6
    :goto_1
    return v1
.end method

.method private resolvePendingReposition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 14
    .line 15
    cmp-long v6, v4, v0

    .line 16
    .line 17
    if-ltz v6, :cond_1

    .line 18
    .line 19
    const-wide/32 v6, 0x40000

    .line 20
    .line 21
    .line 22
    add-long/2addr v6, v0

    .line 23
    cmp-long v6, v4, v6

    .line 24
    .line 25
    if-lez v6, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sub-long/2addr v4, v0

    .line 29
    long-to-int p2, v4

    .line 30
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    iput-wide v4, p2, Lcom/google/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 39
    :goto_2
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 40
    .line 41
    return p1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 9
    .line 10
    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 12

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->resolvePendingReposition(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x4

    .line 13
    const/4 v3, 0x6

    .line 14
    const/16 v4, 0xc

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    packed-switch p2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m()V

    .line 21
    .line 22
    .line 23
    return v5

    .line 24
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->readMoviChunks(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :pswitch_1
    new-instance p2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 30
    .line 31
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->idx1BodySize:I

    .line 32
    .line 33
    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->idx1BodySize:I

    .line 41
    .line 42
    invoke-interface {p1, v0, v5, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->parseIdx1Body(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 46
    .line 47
    .line 48
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 49
    .line 50
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    .line 51
    .line 52
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 53
    .line 54
    return v5

    .line 55
    :pswitch_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const/16 v0, 0x8

    .line 62
    .line 63
    invoke-interface {p1, p2, v5, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 67
    .line 68
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const v1, 0x31786469

    .line 84
    .line 85
    .line 86
    if-ne p2, v1, :cond_1

    .line 87
    .line 88
    const/4 p1, 0x5

    .line 89
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 90
    .line 91
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->idx1BodySize:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 95
    .line 96
    .line 97
    move-result-wide p1

    .line 98
    int-to-long v0, v0

    .line 99
    add-long/2addr p1, v0

    .line 100
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 101
    .line 102
    :goto_0
    return v5

    .line 103
    :pswitch_3
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    .line 104
    .line 105
    const-wide/16 v8, -0x1

    .line 106
    .line 107
    cmp-long p2, v6, v8

    .line 108
    .line 109
    if-eqz p2, :cond_2

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 112
    .line 113
    .line 114
    move-result-wide v6

    .line 115
    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    .line 116
    .line 117
    cmp-long p2, v6, v8

    .line 118
    .line 119
    if-eqz p2, :cond_2

    .line 120
    .line 121
    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 122
    .line 123
    return v5

    .line 124
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-interface {p1, p2, v5, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 131
    .line 132
    .line 133
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 137
    .line 138
    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 139
    .line 140
    .line 141
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 144
    .line 145
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 155
    .line 156
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    .line 157
    .line 158
    const v6, 0x46464952

    .line 159
    .line 160
    .line 161
    if-ne v1, v6, :cond_3

    .line 162
    .line 163
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 164
    .line 165
    .line 166
    return v5

    .line 167
    :cond_3
    const v4, 0x5453494c

    .line 168
    .line 169
    .line 170
    const-wide/16 v6, 0x8

    .line 171
    .line 172
    if-ne v1, v4, :cond_7

    .line 173
    .line 174
    const v1, 0x69766f6d

    .line 175
    .line 176
    .line 177
    if-eq p2, v1, :cond_4

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 181
    .line 182
    .line 183
    move-result-wide v8

    .line 184
    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviStart:J

    .line 185
    .line 186
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 187
    .line 188
    iget p2, p2, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    .line 189
    .line 190
    int-to-long v10, p2

    .line 191
    add-long/2addr v8, v10

    .line 192
    add-long/2addr v8, v6

    .line 193
    iput-wide v8, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviEnd:J

    .line 194
    .line 195
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    .line 196
    .line 197
    if-nez p2, :cond_6

    .line 198
    .line 199
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->aviHeader:Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    .line 200
    .line 201
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    check-cast p2, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->hasIndex()Z

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    if-eqz p2, :cond_5

    .line 212
    .line 213
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 214
    .line 215
    iget-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->moviEnd:J

    .line 216
    .line 217
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 218
    .line 219
    return v5

    .line 220
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 221
    .line 222
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    .line 223
    .line 224
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->durationUs:J

    .line 225
    .line 226
    invoke-direct {v1, v6, v7}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 227
    .line 228
    .line 229
    invoke-interface {p2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 230
    .line 231
    .line 232
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    .line 233
    .line 234
    :cond_6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 235
    .line 236
    .line 237
    move-result-wide p1

    .line 238
    const-wide/16 v0, 0xc

    .line 239
    .line 240
    add-long/2addr p1, v0

    .line 241
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 242
    .line 243
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 244
    .line 245
    return v5

    .line 246
    :cond_7
    :goto_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 247
    .line 248
    .line 249
    move-result-wide p1

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 251
    .line 252
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    .line 253
    .line 254
    int-to-long v0, v0

    .line 255
    add-long/2addr p1, v0

    .line 256
    add-long/2addr p1, v6

    .line 257
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 258
    .line 259
    return v5

    .line 260
    :pswitch_4
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->hdrlSize:I

    .line 261
    .line 262
    sub-int/2addr p2, v2

    .line 263
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 264
    .line 265
    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-interface {p1, v1, v5, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 273
    .line 274
    .line 275
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->parseHdrlBody(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 276
    .line 277
    .line 278
    const/4 p1, 0x3

    .line 279
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 280
    .line 281
    return v5

    .line 282
    :pswitch_5
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 283
    .line 284
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-interface {p1, p2, v5, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 289
    .line 290
    .line 291
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 292
    .line 293
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 297
    .line 298
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 299
    .line 300
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateWithListHeaderFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 301
    .line 302
    .line 303
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 304
    .line 305
    iget p2, p1, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    .line 306
    .line 307
    const v0, 0x6c726468

    .line 308
    .line 309
    .line 310
    if-ne p2, v0, :cond_8

    .line 311
    .line 312
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    .line 313
    .line 314
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->hdrlSize:I

    .line 315
    .line 316
    const/4 p1, 0x2

    .line 317
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 318
    .line 319
    return v5

    .line 320
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    const-string p2, "hdrl expected, found: "

    .line 323
    .line 324
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 328
    .line 329
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    .line 330
    .line 331
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p0

    .line 338
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    throw p0

    .line 343
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    .line 344
    .line 345
    .line 346
    move-result p2

    .line 347
    if-eqz p2, :cond_9

    .line 348
    .line 349
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 350
    .line 351
    .line 352
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 353
    .line 354
    return v5

    .line 355
    :cond_9
    const-string p0, "AVI Header List not found"

    .line 356
    .line 357
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    throw p0

    .line 362
    nop

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 1
    const-wide/16 p3, -0x1

    .line 2
    .line 3
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->pendingReposition:J

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 7
    .line 8
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 9
    .line 10
    array-length p4, p3

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    if-ge v1, p4, :cond_0

    .line 14
    .line 15
    aget-object v2, p3, v1

    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;->seekToPosition(J)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-wide/16 p3, 0x0

    .line 24
    .line 25
    cmp-long p1, p1, p3

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplayer2/extractor/avi/ChunkReader;

    .line 30
    .line 31
    array-length p1, p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const/4 p1, 0x3

    .line 38
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    const/4 p1, 0x6

    .line 42
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->state:I

    .line 43
    .line 44
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xc

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const v0, 0x46464952

    .line 25
    .line 26
    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 31
    .line 32
    const/4 v0, 0x4

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    const p1, 0x20495641

    .line 43
    .line 44
    .line 45
    if-ne p0, p1, :cond_1

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_1
    return v2
.end method
