.class public final Lcoil3/gif/internal/FrameDelayRewritingSource;
.super Lokio/ForwardingSource;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/gif/internal/FrameDelayRewritingSource$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcoil3/gif/internal/FrameDelayRewritingSource$Companion;

.field private static final DEFAULT_FRAME_DELAY:I = 0xa

.field private static final FRAME_DELAY_START_MARKER:Lokio/ByteString;

.field private static final FRAME_DELAY_START_MARKER_SIZE_BYTES:I = 0x4

.field private static final MINIMUM_FRAME_DELAY:I = 0x2


# instance fields
.field private final buffer:Lokio/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/gif/internal/FrameDelayRewritingSource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil3/gif/internal/FrameDelayRewritingSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/gif/internal/FrameDelayRewritingSource;->Companion:Lcoil3/gif/internal/FrameDelayRewritingSource$Companion;

    .line 8
    .line 9
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 10
    .line 11
    const-string v0, "0021F904"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/jcraft/jzlib/Adler32;->decodeHex(Ljava/lang/String;)Lokio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcoil3/gif/internal/FrameDelayRewritingSource;->FRAME_DELAY_START_MARKER:Lokio/ByteString;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lokio/Source;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lokio/Buffer;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 10
    .line 11
    return-void
.end method

.method private final indexOf(Lokio/ByteString;)J
    .locals 10

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    move-wide v2, v0

    .line 4
    :cond_0
    iget-object v4, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    invoke-virtual {p1, v5}, Lokio/ByteString;->internalGet$okio(I)B

    .line 8
    .line 9
    .line 10
    move-result v5

    .line 11
    const-wide/16 v6, 0x1

    .line 12
    .line 13
    add-long/2addr v6, v2

    .line 14
    const-wide v8, 0x7fffffffffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-virtual/range {v4 .. v9}, Lokio/Buffer;->indexOf(BJJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    cmp-long v4, v2, v0

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lokio/ByteString;->getSize$okio()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    int-to-long v4, v4

    .line 32
    invoke-direct {p0, v4, v5}, Lcoil3/gif/internal/FrameDelayRewritingSource;->request(J)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    iget-object v4, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 39
    .line 40
    invoke-virtual {v4, v2, v3, p1}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    :cond_1
    return-wide v2
.end method

.method private final request(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 2
    .line 3
    iget-wide v1, v0, Lokio/Buffer;->size:J

    .line 4
    .line 5
    cmp-long v3, v1, p1

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    if-ltz v3, :cond_0

    .line 9
    .line 10
    return v4

    .line 11
    :cond_0
    sub-long/2addr p1, v1

    .line 12
    invoke-super {p0, v0, p1, p2}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    cmp-long p0, v0, p1

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    return v4

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method private final write(Lokio/Buffer;J)J
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    const-wide/16 p2, 0x0

    .line 8
    .line 9
    cmp-long v0, p0, p2

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    return-wide p2

    .line 14
    :cond_0
    return-wide p0
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 10

    .line 1
    invoke-direct {p0, p2, p3}, Lcoil3/gif/internal/FrameDelayRewritingSource;->request(J)Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 5
    .line 6
    iget-wide v0, v0, Lokio/Buffer;->size:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    const-wide/16 v4, -0x1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    cmp-long p0, p2, v2

    .line 17
    .line 18
    if-nez p0, :cond_5

    .line 19
    .line 20
    return-wide v2

    .line 21
    :cond_0
    move-wide v0, v2

    .line 22
    :cond_1
    :goto_0
    sget-object v6, Lcoil3/gif/internal/FrameDelayRewritingSource;->FRAME_DELAY_START_MARKER:Lokio/ByteString;

    .line 23
    .line 24
    invoke-direct {p0, v6}, Lcoil3/gif/internal/FrameDelayRewritingSource;->indexOf(Lokio/ByteString;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    cmp-long v8, v6, v4

    .line 29
    .line 30
    if-eqz v8, :cond_3

    .line 31
    .line 32
    const-wide/16 v8, 0x4

    .line 33
    .line 34
    add-long/2addr v6, v8

    .line 35
    invoke-direct {p0, p1, v6, v7}, Lcoil3/gif/internal/FrameDelayRewritingSource;->write(Lokio/Buffer;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    add-long/2addr v0, v6

    .line 40
    const-wide/16 v6, 0x5

    .line 41
    .line 42
    invoke-direct {p0, v6, v7}, Lcoil3/gif/internal/FrameDelayRewritingSource;->request(J)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    iget-object v6, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 49
    .line 50
    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->getByte(J)B

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v6, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 58
    .line 59
    const-wide/16 v7, 0x2

    .line 60
    .line 61
    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->getByte(J)B

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    and-int/lit16 v6, v6, 0xff

    .line 66
    .line 67
    shl-int/lit8 v6, v6, 0x8

    .line 68
    .line 69
    iget-object v7, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 70
    .line 71
    const-wide/16 v8, 0x1

    .line 72
    .line 73
    invoke-virtual {v7, v8, v9}, Lokio/Buffer;->getByte(J)B

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    and-int/lit16 v7, v7, 0xff

    .line 78
    .line 79
    or-int/2addr v6, v7

    .line 80
    const/4 v7, 0x2

    .line 81
    if-ge v6, v7, :cond_1

    .line 82
    .line 83
    iget-object v6, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 84
    .line 85
    invoke-virtual {v6, v2, v3}, Lokio/Buffer;->getByte(J)B

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    invoke-virtual {p1, v6}, Lokio/Buffer;->writeByte(I)V

    .line 90
    .line 91
    .line 92
    const/16 v6, 0xa

    .line 93
    .line 94
    invoke-virtual {p1, v6}, Lokio/Buffer;->writeByte(I)V

    .line 95
    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-virtual {p1, v6}, Lokio/Buffer;->writeByte(I)V

    .line 99
    .line 100
    .line 101
    iget-object v6, p0, Lcoil3/gif/internal/FrameDelayRewritingSource;->buffer:Lokio/Buffer;

    .line 102
    .line 103
    const-wide/16 v7, 0x3

    .line 104
    .line 105
    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    cmp-long v6, v0, p2

    .line 110
    .line 111
    if-gez v6, :cond_4

    .line 112
    .line 113
    sub-long/2addr p2, v0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcoil3/gif/internal/FrameDelayRewritingSource;->write(Lokio/Buffer;J)J

    .line 115
    .line 116
    .line 117
    move-result-wide p0

    .line 118
    add-long/2addr v0, p0

    .line 119
    :cond_4
    cmp-long p0, v0, v2

    .line 120
    .line 121
    if-nez p0, :cond_6

    .line 122
    .line 123
    :cond_5
    return-wide v4

    .line 124
    :cond_6
    return-wide v0
.end method
