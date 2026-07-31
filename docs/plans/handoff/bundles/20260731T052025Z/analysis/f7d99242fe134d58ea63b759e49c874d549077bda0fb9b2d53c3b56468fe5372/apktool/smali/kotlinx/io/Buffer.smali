.class public final Lkotlinx/io/Buffer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lkotlinx/io/RawSink;


# instance fields
.field public head:Lkotlinx/io/Segment;

.field public sizeMut:J

.field public tail:Lkotlinx/io/Segment;


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const-string p0, "Buffer(size=0)"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-wide/16 v2, 0x40

    .line 13
    .line 14
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    long-to-int v0, v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    mul-int/lit8 v4, v0, 0x2

    .line 22
    .line 23
    iget-wide v5, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 24
    .line 25
    cmp-long v5, v5, v2

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    if-lez v5, :cond_1

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v5, v6

    .line 33
    :goto_0
    add-int/2addr v4, v5

    .line 34
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 38
    .line 39
    move v5, v6

    .line 40
    :goto_1
    if-eqz v4, :cond_3

    .line 41
    .line 42
    move v7, v6

    .line 43
    :goto_2
    if-ge v5, v0, :cond_2

    .line 44
    .line 45
    iget v8, v4, Lkotlinx/io/Segment;->limit:I

    .line 46
    .line 47
    iget v9, v4, Lkotlinx/io/Segment;->pos:I

    .line 48
    .line 49
    sub-int/2addr v8, v9

    .line 50
    if-ge v7, v8, :cond_2

    .line 51
    .line 52
    add-int/lit8 v8, v7, 0x1

    .line 53
    .line 54
    iget-object v10, v4, Lkotlinx/io/Segment;->data:[B

    .line 55
    .line 56
    add-int/2addr v9, v7

    .line 57
    aget-byte v7, v10, v9

    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    shr-int/lit8 v9, v7, 0x4

    .line 62
    .line 63
    and-int/lit8 v9, v9, 0xf

    .line 64
    .line 65
    sget-object v10, Lkotlinx/io/_UtilKt;->HEX_DIGIT_CHARS:[C

    .line 66
    .line 67
    aget-char v9, v10, v9

    .line 68
    .line 69
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    and-int/lit8 v7, v7, 0xf

    .line 73
    .line 74
    aget-char v7, v10, v7

    .line 75
    .line 76
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move v7, v8

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    iget-object v4, v4, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    iget-wide v4, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 85
    .line 86
    cmp-long v0, v4, v2

    .line 87
    .line 88
    if-lez v0, :cond_4

    .line 89
    .line 90
    const/16 v0, 0x2026

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v2, "Buffer(size="

    .line 98
    .line 99
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-wide v2, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 103
    .line 104
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p0, " hex="

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const/16 p0, 0x29

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0
.end method

.method public final synthetic writableSegment()Lkotlinx/io/Segment;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlinx/io/SegmentPool;->take()Lkotlinx/io/Segment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 10
    .line 11
    iput-object v0, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget v1, v0, Lkotlinx/io/Segment;->limit:I

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    const/16 v2, 0x2000

    .line 19
    .line 20
    if-gt v1, v2, :cond_2

    .line 21
    .line 22
    iget-boolean v1, v0, Lkotlinx/io/Segment;->owner:Z

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-object v0

    .line 28
    :cond_2
    :goto_0
    invoke-static {}, Lkotlinx/io/SegmentPool;->take()Lkotlinx/io/Segment;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lkotlinx/io/Segment;->push$kotlinx_io_core(Lkotlinx/io/Segment;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 36
    .line 37
    return-object v1
.end method

.method public final write(Lkotlinx/io/Buffer;J)V
    .locals 8

    .line 1
    if-eq p1, p0, :cond_10

    .line 2
    .line 3
    iget-wide v0, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 4
    .line 5
    invoke-static {v0, v1, p2, p3}, Lkotlinx/io/_UtilKt;->checkOffsetAndCount(JJ)V

    .line 6
    .line 7
    .line 8
    :goto_0
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v0, p2, v0

    .line 11
    .line 12
    if-lez v0, :cond_f

    .line 13
    .line 14
    iget-object v0, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget v1, v0, Lkotlinx/io/Segment;->limit:I

    .line 20
    .line 21
    iget v0, v0, Lkotlinx/io/Segment;->pos:I

    .line 22
    .line 23
    sub-int/2addr v1, v0

    .line 24
    int-to-long v0, v1

    .line 25
    cmp-long v0, p2, v0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-gez v0, :cond_6

    .line 29
    .line 30
    iget-object v0, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-boolean v2, v0, Lkotlinx/io/Segment;->owner:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget v2, v0, Lkotlinx/io/Segment;->limit:I

    .line 39
    .line 40
    int-to-long v2, v2

    .line 41
    add-long/2addr v2, p2

    .line 42
    iget-object v4, v0, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/RefCountingCopyTracker;

    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    iget v4, v4, Lkotlinx/io/RefCountingCopyTracker;->copyCount:I

    .line 47
    .line 48
    if-lez v4, :cond_0

    .line 49
    .line 50
    move v4, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget v4, v0, Lkotlinx/io/Segment;->pos:I

    .line 53
    .line 54
    :goto_1
    int-to-long v4, v4

    .line 55
    sub-long/2addr v2, v4

    .line 56
    const-wide/16 v4, 0x2000

    .line 57
    .line 58
    cmp-long v2, v2, v4

    .line 59
    .line 60
    if-gtz v2, :cond_1

    .line 61
    .line 62
    iget-object v1, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    long-to-int v2, p2

    .line 68
    invoke-virtual {v1, v0, v2}, Lkotlinx/io/Segment;->writeTo$kotlinx_io_core(Lkotlinx/io/Segment;I)V

    .line 69
    .line 70
    .line 71
    iget-wide v0, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 72
    .line 73
    sub-long/2addr v0, p2

    .line 74
    iput-wide v0, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 75
    .line 76
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 77
    .line 78
    add-long/2addr v0, p2

    .line 79
    iput-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    iget-object v0, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    long-to-int v2, p2

    .line 88
    if-lez v2, :cond_5

    .line 89
    .line 90
    iget v3, v0, Lkotlinx/io/Segment;->limit:I

    .line 91
    .line 92
    iget v4, v0, Lkotlinx/io/Segment;->pos:I

    .line 93
    .line 94
    sub-int/2addr v3, v4

    .line 95
    if-gt v2, v3, :cond_5

    .line 96
    .line 97
    const/16 v3, 0x400

    .line 98
    .line 99
    if-lt v2, v3, :cond_3

    .line 100
    .line 101
    iget-object v3, v0, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/RefCountingCopyTracker;

    .line 102
    .line 103
    if-nez v3, :cond_2

    .line 104
    .line 105
    sget-object v3, Lkotlinx/io/SegmentPool;->LOCK:Lkotlinx/io/Segment;

    .line 106
    .line 107
    new-instance v3, Lkotlinx/io/RefCountingCopyTracker;

    .line 108
    .line 109
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v3, v0, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/RefCountingCopyTracker;

    .line 113
    .line 114
    :cond_2
    iget-object v4, v0, Lkotlinx/io/Segment;->data:[B

    .line 115
    .line 116
    iget v5, v0, Lkotlinx/io/Segment;->pos:I

    .line 117
    .line 118
    iget v6, v0, Lkotlinx/io/Segment;->limit:I

    .line 119
    .line 120
    sget-object v7, Lkotlinx/io/RefCountingCopyTracker;->fieldUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 121
    .line 122
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    new-instance v7, Lkotlinx/io/Segment;

    .line 126
    .line 127
    invoke-direct {v7, v4, v5, v6, v3}, Lkotlinx/io/Segment;-><init>([BIILkotlinx/io/RefCountingCopyTracker;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-static {}, Lkotlinx/io/SegmentPool;->take()Lkotlinx/io/Segment;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    iget-object v3, v0, Lkotlinx/io/Segment;->data:[B

    .line 136
    .line 137
    iget-object v4, v7, Lkotlinx/io/Segment;->data:[B

    .line 138
    .line 139
    iget v5, v0, Lkotlinx/io/Segment;->pos:I

    .line 140
    .line 141
    add-int v6, v5, v2

    .line 142
    .line 143
    invoke-static {v1, v5, v6, v3, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->copyInto(III[B[B)V

    .line 144
    .line 145
    .line 146
    :goto_2
    iget v3, v7, Lkotlinx/io/Segment;->pos:I

    .line 147
    .line 148
    add-int/2addr v3, v2

    .line 149
    iput v3, v7, Lkotlinx/io/Segment;->limit:I

    .line 150
    .line 151
    iget v3, v0, Lkotlinx/io/Segment;->pos:I

    .line 152
    .line 153
    add-int/2addr v3, v2

    .line 154
    iput v3, v0, Lkotlinx/io/Segment;->pos:I

    .line 155
    .line 156
    iget-object v2, v0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 157
    .line 158
    if-eqz v2, :cond_4

    .line 159
    .line 160
    invoke-virtual {v2, v7}, Lkotlinx/io/Segment;->push$kotlinx_io_core(Lkotlinx/io/Segment;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    iput-object v0, v7, Lkotlinx/io/Segment;->next:Lkotlinx/io/Segment;

    .line 165
    .line 166
    iput-object v7, v0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 167
    .line 168
    :goto_3
    iput-object v7, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_5
    const-string p0, "byteCount out of range"

    .line 172
    .line 173
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_6
    :goto_4
    iget-object v0, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    iget v2, v0, Lkotlinx/io/Segment;->limit:I

    .line 183
    .line 184
    iget v3, v0, Lkotlinx/io/Segment;->pos:I

    .line 185
    .line 186
    sub-int/2addr v2, v3

    .line 187
    int-to-long v2, v2

    .line 188
    invoke-virtual {v0}, Lkotlinx/io/Segment;->pop$kotlinx_io_core()Lkotlinx/io/Segment;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    iput-object v4, p1, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 193
    .line 194
    if-nez v4, :cond_7

    .line 195
    .line 196
    const/4 v4, 0x0

    .line 197
    iput-object v4, p1, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 198
    .line 199
    :cond_7
    iget-object v4, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 200
    .line 201
    if-nez v4, :cond_8

    .line 202
    .line 203
    iput-object v0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 204
    .line 205
    iput-object v0, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_8
    iget-object v4, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 209
    .line 210
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, v0}, Lkotlinx/io/Segment;->push$kotlinx_io_core(Lkotlinx/io/Segment;)V

    .line 214
    .line 215
    .line 216
    iget-object v4, v0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 217
    .line 218
    if-eqz v4, :cond_e

    .line 219
    .line 220
    iget-boolean v5, v4, Lkotlinx/io/Segment;->owner:Z

    .line 221
    .line 222
    if-nez v5, :cond_9

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_9
    iget v5, v0, Lkotlinx/io/Segment;->limit:I

    .line 226
    .line 227
    iget v6, v0, Lkotlinx/io/Segment;->pos:I

    .line 228
    .line 229
    sub-int/2addr v5, v6

    .line 230
    iget v6, v4, Lkotlinx/io/Segment;->limit:I

    .line 231
    .line 232
    rsub-int v6, v6, 0x2000

    .line 233
    .line 234
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    iget-object v4, v4, Lkotlinx/io/Segment;->copyTracker:Lkotlinx/io/RefCountingCopyTracker;

    .line 238
    .line 239
    if-eqz v4, :cond_a

    .line 240
    .line 241
    iget v4, v4, Lkotlinx/io/RefCountingCopyTracker;->copyCount:I

    .line 242
    .line 243
    if-lez v4, :cond_a

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_a
    iget-object v1, v0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    iget v1, v1, Lkotlinx/io/Segment;->pos:I

    .line 252
    .line 253
    :goto_5
    add-int/2addr v6, v1

    .line 254
    if-le v5, v6, :cond_b

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_b
    iget-object v1, v0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1, v5}, Lkotlinx/io/Segment;->writeTo$kotlinx_io_core(Lkotlinx/io/Segment;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0}, Lkotlinx/io/Segment;->pop$kotlinx_io_core()Lkotlinx/io/Segment;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    if-nez v4, :cond_d

    .line 270
    .line 271
    invoke-static {v0}, Lkotlinx/io/SegmentPool;->recycle(Lkotlinx/io/Segment;)V

    .line 272
    .line 273
    .line 274
    move-object v0, v1

    .line 275
    :goto_6
    iput-object v0, p0, Lkotlinx/io/Buffer;->tail:Lkotlinx/io/Segment;

    .line 276
    .line 277
    iget-object v1, v0, Lkotlinx/io/Segment;->prev:Lkotlinx/io/Segment;

    .line 278
    .line 279
    if-nez v1, :cond_c

    .line 280
    .line 281
    iput-object v0, p0, Lkotlinx/io/Buffer;->head:Lkotlinx/io/Segment;

    .line 282
    .line 283
    :cond_c
    :goto_7
    iget-wide v0, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 284
    .line 285
    sub-long/2addr v0, v2

    .line 286
    iput-wide v0, p1, Lkotlinx/io/Buffer;->sizeMut:J

    .line 287
    .line 288
    iget-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 289
    .line 290
    add-long/2addr v0, v2

    .line 291
    iput-wide v0, p0, Lkotlinx/io/Buffer;->sizeMut:J

    .line 292
    .line 293
    sub-long/2addr p2, v2

    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_d
    const-string p0, "Check failed."

    .line 297
    .line 298
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    :cond_e
    const-string p0, "cannot compact"

    .line 303
    .line 304
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    :cond_f
    return-void

    .line 308
    :cond_10
    const-string p0, "source == this"

    .line 309
    .line 310
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    return-void
.end method
