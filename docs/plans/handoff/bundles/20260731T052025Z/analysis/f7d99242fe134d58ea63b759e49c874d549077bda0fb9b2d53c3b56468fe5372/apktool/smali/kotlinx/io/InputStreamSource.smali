.class public final Lkotlinx/io/InputStreamSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final input:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/io/InputStreamSource;->input:Ljava/io/InputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/io/InputStreamSource;->input:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final readAtMostTo(Lkotlinx/io/Buffer;)J
    .locals 9

    .line 1
    const-string v0, "Invalid number of bytes written: "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/io/Buffer;->writableSegment()Lkotlinx/io/Segment;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v3, v2, Lkotlinx/io/Segment;->data:[B

    .line 9
    .line 10
    iget v4, v2, Lkotlinx/io/Segment;->limit:I

    .line 11
    .line 12
    array-length v5, v3

    .line 13
    sub-int/2addr v5, v4

    .line 14
    int-to-long v5, v5

    .line 15
    const-wide/16 v7, 0x2000

    .line 16
    .line 17
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v5

    .line 21
    long-to-int v5, v5

    .line 22
    iget-object p0, p0, Lkotlinx/io/InputStreamSource;->input:Ljava/io/InputStream;

    .line 23
    .line 24
    invoke-virtual {p0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    int-to-long v4, p0

    .line 29
    const-wide/16 v6, -0x1

    .line 30
    .line 31
    cmp-long p0, v4, v6

    .line 32
    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    move p0, v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    long-to-int p0, v4

    .line 38
    :goto_0
    const/4 v6, 0x1

    .line 39
    if-ne p0, v6, :cond_1

    .line 40
    .line 41
    iget v0, v2, Lkotlinx/io/Segment;->limit:I

    .line 42
    .line 43
    add-int/2addr v0, p0

    .line 44
    iput v0, v2, Lkotlinx/io/Segment;->limit:I

    .line 45
    .line 46
    iget-wide v2, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 47
    .line 48
    int-to-long v6, p0

    .line 49
    add-long/2addr v2, v6

    .line 50
    iput-wide v2, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 51
    .line 52
    return-wide v4

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    if-ltz p0, :cond_5

    .line 56
    .line 57
    array-length v6, v3

    .line 58
    iget v7, v2, Lkotlinx/io/Segment;->limit:I

    .line 59
    .line 60
    sub-int/2addr v6, v7

    .line 61
    if-gt p0, v6, :cond_5

    .line 62
    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    add-int/2addr v7, p0

    .line 66
    iput v7, v2, Lkotlinx/io/Segment;->limit:I

    .line 67
    .line 68
    iget-wide v2, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 69
    .line 70
    int-to-long v6, p0

    .line 71
    add-long/2addr v2, v6

    .line 72
    iput-wide v2, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 73
    .line 74
    return-wide v4

    .line 75
    :cond_2
    iget p0, v2, Lkotlinx/io/Segment;->pos:I

    .line 76
    .line 77
    sub-int/2addr v7, p0

    .line 78
    if-nez v7, :cond_4

    .line 79
    .line 80
    iget-object p0, p1, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 86
    .line 87
    iput-object v0, p1, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    iput-object v2, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iput-object v2, v0, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 96
    .line 97
    :goto_1
    iput-object v2, p0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 98
    .line 99
    invoke-static {p0}, Lkotlinx/io/SegmentPool;->recycle(Lkotlinx/io/Segment;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-wide v4

    .line 103
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p0, ". Should be in 0.."

    .line 112
    .line 113
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    array-length p0, v3

    .line 117
    iget v0, v2, Lkotlinx/io/Segment;->limit:I

    .line 118
    .line 119
    sub-int/2addr p0, v0

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-eqz p1, :cond_7

    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    const-string v0, "getsockname failed"

    .line 150
    .line 151
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    :cond_6
    if-eqz v1, :cond_7

    .line 156
    .line 157
    new-instance p1, Ljava/io/IOException;

    .line 158
    .line 159
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_7
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RawSource("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lkotlinx/io/InputStreamSource;->input:Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p0, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
