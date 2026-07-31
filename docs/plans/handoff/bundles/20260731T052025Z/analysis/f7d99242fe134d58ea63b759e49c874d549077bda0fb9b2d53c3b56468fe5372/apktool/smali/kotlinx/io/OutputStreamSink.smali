.class public final Lkotlinx/io/OutputStreamSink;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/io/RawSink;


# instance fields
.field public final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/io/OutputStreamSink;->out:Ljava/io/OutputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/io/OutputStreamSink;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/io/OutputStreamSink;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RawSink("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lkotlinx/io/OutputStreamSink;->out:Ljava/io/OutputStream;

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

.method public final write(Lkotlinx/io/Buffer;J)V
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-wide v1, v0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 4
    .line 5
    move-wide/from16 v3, p2

    .line 6
    .line 7
    invoke-static {v1, v2, v3, v4}, Lkotlinx/io/_UtilKt;->checkOffsetAndCount(JJ)V

    .line 8
    .line 9
    .line 10
    :goto_0
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    cmp-long v5, v3, v1

    .line 13
    .line 14
    if-lez v5, :cond_8

    .line 15
    .line 16
    iget-wide v5, v0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 17
    .line 18
    cmp-long v5, v5, v1

    .line 19
    .line 20
    if-eqz v5, :cond_7

    .line 21
    .line 22
    iget-object v5, v0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v6, v5, Lkotlinx/io/Segment;->data:[B

    .line 28
    .line 29
    iget v7, v5, Lkotlinx/io/Segment;->pos:I

    .line 30
    .line 31
    iget v8, v5, Lkotlinx/io/Segment;->limit:I

    .line 32
    .line 33
    sub-int/2addr v8, v7

    .line 34
    int-to-long v8, v8

    .line 35
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    long-to-int v8, v8

    .line 40
    iget-object v10, p0, Lkotlinx/io/OutputStreamSink;->out:Ljava/io/OutputStream;

    .line 41
    .line 42
    invoke-virtual {v10, v6, v7, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    if-eqz v8, :cond_6

    .line 46
    .line 47
    if-ltz v8, :cond_5

    .line 48
    .line 49
    iget v6, v5, Lkotlinx/io/Segment;->limit:I

    .line 50
    .line 51
    iget v5, v5, Lkotlinx/io/Segment;->pos:I

    .line 52
    .line 53
    sub-int/2addr v6, v5

    .line 54
    if-gt v8, v6, :cond_4

    .line 55
    .line 56
    int-to-long v5, v8

    .line 57
    cmp-long v7, v5, v1

    .line 58
    .line 59
    if-ltz v7, :cond_3

    .line 60
    .line 61
    move-wide v10, v5

    .line 62
    :goto_1
    cmp-long v7, v10, v1

    .line 63
    .line 64
    if-lez v7, :cond_6

    .line 65
    .line 66
    iget-object v7, v0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 67
    .line 68
    if-eqz v7, :cond_2

    .line 69
    .line 70
    iget v12, v7, Lkotlinx/io/Segment;->limit:I

    .line 71
    .line 72
    iget v13, v7, Lkotlinx/io/Segment;->pos:I

    .line 73
    .line 74
    sub-int/2addr v12, v13

    .line 75
    int-to-long v12, v12

    .line 76
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v12

    .line 80
    long-to-int v12, v12

    .line 81
    iget-wide v13, v0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 82
    .line 83
    int-to-long v1, v12

    .line 84
    sub-long/2addr v13, v1

    .line 85
    iput-wide v13, v0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 86
    .line 87
    sub-long/2addr v10, v1

    .line 88
    iget v1, v7, Lkotlinx/io/Segment;->pos:I

    .line 89
    .line 90
    add-int/2addr v1, v12

    .line 91
    iput v1, v7, Lkotlinx/io/Segment;->pos:I

    .line 92
    .line 93
    iget v2, v7, Lkotlinx/io/Segment;->limit:I

    .line 94
    .line 95
    if-ne v1, v2, :cond_1

    .line 96
    .line 97
    iget-object v1, v0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget-object v2, v1, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 103
    .line 104
    iput-object v2, v0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    if-nez v2, :cond_0

    .line 108
    .line 109
    iput-object v7, v0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_0
    iput-object v7, v2, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 113
    .line 114
    :goto_2
    iput-object v7, v1, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 115
    .line 116
    invoke-static {v1}, Lkotlinx/io/SegmentPool;->recycle(Lkotlinx/io/Segment;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    const-wide/16 v1, 0x0

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v2, "Buffer exhausted before skipping "

    .line 127
    .line 128
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v2, " bytes."

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_3
    const-string v0, "byteCount ("

    .line 148
    .line 149
    const-string v1, ") < 0"

    .line 150
    .line 151
    invoke-static {v0, v5, v6, v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;JLjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_4
    const-string v0, "Returned too many bytes"

    .line 156
    .line 157
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_5
    const-string v0, "Returned negative read bytes count"

    .line 162
    .line 163
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_6
    int-to-long v1, v8

    .line 168
    sub-long/2addr v3, v1

    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_7
    const-string v0, "Buffer is empty"

    .line 172
    .line 173
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_8
    return-void
.end method
