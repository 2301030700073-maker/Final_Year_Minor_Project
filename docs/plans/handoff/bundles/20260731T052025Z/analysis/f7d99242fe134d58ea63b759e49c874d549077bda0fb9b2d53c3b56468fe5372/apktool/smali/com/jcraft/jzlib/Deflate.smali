.class public final Lcom/jcraft/jzlib/Deflate;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final config_table:[Lcom/jcraft/jzlib/Deflate$Config;

.field public static final z_errmsg:[Ljava/lang/String;


# instance fields
.field public bi_buf:S

.field public bi_valid:I

.field public bl_count:[S

.field public bl_desc:Lcom/jcraft/jzlib/Tree;

.field public bl_tree:[S

.field public block_start:I

.field public d_buf:I

.field public d_desc:Lcom/jcraft/jzlib/Tree;

.field public data_type:B

.field public depth:[B

.field public dyn_dtree:[S

.field public dyn_ltree:[S

.field public good_match:I

.field public hash_mask:I

.field public hash_shift:I

.field public hash_size:I

.field public head:[S

.field public heap:[I

.field public heap_len:I

.field public heap_max:I

.field public ins_h:I

.field public l_buf:I

.field public l_desc:Lcom/jcraft/jzlib/Tree;

.field public last_eob_len:I

.field public last_flush:I

.field public last_lit:I

.field public level:I

.field public lit_bufsize:I

.field public lookahead:I

.field public match_available:I

.field public match_length:I

.field public match_start:I

.field public matches:I

.field public max_chain_length:I

.field public max_lazy_match:I

.field public nice_match:I

.field public noheader:I

.field public opt_len:I

.field public pending:I

.field public pending_buf:[B

.field public pending_buf_size:I

.field public pending_out:I

.field public prev:[S

.field public prev_length:I

.field public prev_match:I

.field public static_len:I

.field public status:I

.field public strm:Lcom/jcraft/jzlib/ZStream;

.field public strstart:I

.field public w_bits:I

.field public w_mask:I

.field public w_size:I

.field public window:[B

.field public window_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcom/jcraft/jzlib/Deflate$Config;

    .line 4
    .line 5
    sput-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    .line 6
    .line 7
    new-instance v1, Lcom/jcraft/jzlib/Deflate$Config;

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 15
    .line 16
    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    new-instance v3, Lcom/jcraft/jzlib/Deflate$Config;

    .line 20
    .line 21
    const/4 v7, 0x4

    .line 22
    const/4 v8, 0x1

    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x4

    .line 25
    const/16 v6, 0x8

    .line 26
    .line 27
    invoke-direct/range {v3 .. v8}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    aput-object v3, v0, v1

    .line 32
    .line 33
    new-instance v4, Lcom/jcraft/jzlib/Deflate$Config;

    .line 34
    .line 35
    const/16 v8, 0x8

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    const/4 v6, 0x5

    .line 39
    const/16 v7, 0x10

    .line 40
    .line 41
    invoke-direct/range {v4 .. v9}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    aput-object v4, v0, v1

    .line 46
    .line 47
    new-instance v5, Lcom/jcraft/jzlib/Deflate$Config;

    .line 48
    .line 49
    const/16 v9, 0x20

    .line 50
    .line 51
    const/4 v10, 0x1

    .line 52
    const/4 v6, 0x4

    .line 53
    const/4 v7, 0x6

    .line 54
    const/16 v8, 0x20

    .line 55
    .line 56
    invoke-direct/range {v5 .. v10}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x3

    .line 60
    aput-object v5, v0, v1

    .line 61
    .line 62
    new-instance v6, Lcom/jcraft/jzlib/Deflate$Config;

    .line 63
    .line 64
    const/16 v10, 0x10

    .line 65
    .line 66
    const/4 v11, 0x2

    .line 67
    const/4 v7, 0x4

    .line 68
    const/4 v8, 0x4

    .line 69
    const/16 v9, 0x10

    .line 70
    .line 71
    invoke-direct/range {v6 .. v11}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x4

    .line 75
    aput-object v6, v0, v1

    .line 76
    .line 77
    new-instance v7, Lcom/jcraft/jzlib/Deflate$Config;

    .line 78
    .line 79
    const/16 v11, 0x20

    .line 80
    .line 81
    const/4 v12, 0x2

    .line 82
    const/16 v8, 0x8

    .line 83
    .line 84
    const/16 v10, 0x20

    .line 85
    .line 86
    invoke-direct/range {v7 .. v12}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x5

    .line 90
    aput-object v7, v0, v1

    .line 91
    .line 92
    new-instance v8, Lcom/jcraft/jzlib/Deflate$Config;

    .line 93
    .line 94
    const/16 v12, 0x80

    .line 95
    .line 96
    const/4 v13, 0x2

    .line 97
    const/16 v9, 0x8

    .line 98
    .line 99
    const/16 v10, 0x10

    .line 100
    .line 101
    const/16 v11, 0x80

    .line 102
    .line 103
    invoke-direct/range {v8 .. v13}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x6

    .line 107
    aput-object v8, v0, v1

    .line 108
    .line 109
    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    .line 110
    .line 111
    const/16 v6, 0x100

    .line 112
    .line 113
    const/4 v7, 0x2

    .line 114
    const/16 v3, 0x8

    .line 115
    .line 116
    const/16 v4, 0x20

    .line 117
    .line 118
    const/16 v5, 0x80

    .line 119
    .line 120
    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 121
    .line 122
    .line 123
    const/4 v1, 0x7

    .line 124
    aput-object v2, v0, v1

    .line 125
    .line 126
    new-instance v3, Lcom/jcraft/jzlib/Deflate$Config;

    .line 127
    .line 128
    const/16 v7, 0x400

    .line 129
    .line 130
    const/4 v8, 0x2

    .line 131
    const/16 v6, 0x102

    .line 132
    .line 133
    invoke-direct/range {v3 .. v8}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 134
    .line 135
    .line 136
    const/16 v1, 0x8

    .line 137
    .line 138
    aput-object v3, v0, v1

    .line 139
    .line 140
    new-instance v4, Lcom/jcraft/jzlib/Deflate$Config;

    .line 141
    .line 142
    const/16 v8, 0x1000

    .line 143
    .line 144
    const/4 v9, 0x2

    .line 145
    const/16 v5, 0x20

    .line 146
    .line 147
    const/16 v7, 0x102

    .line 148
    .line 149
    invoke-direct/range {v4 .. v9}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    .line 150
    .line 151
    .line 152
    const/16 v1, 0x9

    .line 153
    .line 154
    aput-object v4, v0, v1

    .line 155
    .line 156
    const-string v13, "incompatible version"

    .line 157
    .line 158
    const-string v14, ""

    .line 159
    .line 160
    const-string v5, "need dictionary"

    .line 161
    .line 162
    const-string v6, "stream end"

    .line 163
    .line 164
    const-string v7, ""

    .line 165
    .line 166
    const-string v8, "file error"

    .line 167
    .line 168
    const-string v9, "stream error"

    .line 169
    .line 170
    const-string v10, "data error"

    .line 171
    .line 172
    const-string v11, "insufficient memory"

    .line 173
    .line 174
    const-string v12, "buffer error"

    .line 175
    .line 176
    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sput-object v0, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    .line 181
    .line 182
    return-void
.end method


# virtual methods
.method public final _tr_stored_block(IIZ)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, p3, v0}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 3
    .line 4
    .line 5
    iget p3, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-le p3, v0, :cond_0

    .line 10
    .line 11
    iget-short p3, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 12
    .line 13
    invoke-virtual {p0, p3}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-lez p3, :cond_1

    .line 18
    .line 19
    iget-short p3, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 20
    .line 21
    int-to-byte p3, p3

    .line 22
    invoke-virtual {p0, p3}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 26
    iput-short p3, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 27
    .line 28
    iput p3, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 29
    .line 30
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 31
    .line 32
    int-to-short p3, p2

    .line 33
    invoke-virtual {p0, p3}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 34
    .line 35
    .line 36
    not-int p3, p2

    .line 37
    int-to-short p3, p3

    .line 38
    invoke-virtual {p0, p3}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 39
    .line 40
    .line 41
    iget-object p3, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 42
    .line 43
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 44
    .line 45
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 46
    .line 47
    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    iget p1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 51
    .line 52
    add-int/2addr p1, p2

    .line 53
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 54
    .line 55
    return-void
.end method

.method public final _tr_tally(II)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 6
    .line 7
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    .line 8
    .line 9
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 10
    .line 11
    mul-int/lit8 v5, v4, 0x2

    .line 12
    .line 13
    add-int/2addr v5, v3

    .line 14
    ushr-int/lit8 v3, p1, 0x8

    .line 15
    .line 16
    int-to-byte v3, v3

    .line 17
    aput-byte v3, v2, v5

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    add-int/2addr v5, v3

    .line 21
    int-to-byte v6, p1

    .line 22
    aput-byte v6, v2, v5

    .line 23
    .line 24
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:I

    .line 25
    .line 26
    add-int/2addr v5, v4

    .line 27
    int-to-byte v6, p2

    .line 28
    aput-byte v6, v2, v5

    .line 29
    .line 30
    add-int/2addr v4, v3

    .line 31
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    mul-int/2addr p2, v2

    .line 37
    aget-short p1, v1, p2

    .line 38
    .line 39
    add-int/2addr p1, v3

    .line 40
    int-to-short p1, p1

    .line 41
    aput-short p1, v1, p2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 45
    .line 46
    add-int/2addr v5, v3

    .line 47
    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 48
    .line 49
    add-int/lit8 p1, p1, -0x1

    .line 50
    .line 51
    sget-object v5, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    .line 52
    .line 53
    aget-byte p2, v5, p2

    .line 54
    .line 55
    add-int/lit16 p2, p2, 0x101

    .line 56
    .line 57
    mul-int/2addr p2, v2

    .line 58
    aget-short v5, v1, p2

    .line 59
    .line 60
    add-int/2addr v5, v3

    .line 61
    int-to-short v5, v5

    .line 62
    aput-short v5, v1, p2

    .line 63
    .line 64
    sget-object p2, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    .line 65
    .line 66
    const/16 v1, 0x100

    .line 67
    .line 68
    if-ge p1, v1, :cond_1

    .line 69
    .line 70
    aget-byte p1, p2, p1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    ushr-int/lit8 p1, p1, 0x7

    .line 74
    .line 75
    add-int/2addr p1, v1

    .line 76
    aget-byte p1, p2, p1

    .line 77
    .line 78
    :goto_0
    mul-int/2addr p1, v2

    .line 79
    aget-short p2, v0, p1

    .line 80
    .line 81
    add-int/2addr p2, v3

    .line 82
    int-to-short p2, p2

    .line 83
    aput-short p2, v0, p1

    .line 84
    .line 85
    :goto_1
    and-int/lit16 p1, v4, 0x1fff

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    iget p1, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 91
    .line 92
    if-le p1, v2, :cond_3

    .line 93
    .line 94
    mul-int/lit8 v4, v4, 0x8

    .line 95
    .line 96
    iget p1, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 97
    .line 98
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 99
    .line 100
    sub-int/2addr p1, v1

    .line 101
    move v1, p2

    .line 102
    :goto_2
    const/16 v5, 0x1e

    .line 103
    .line 104
    if-ge v1, v5, :cond_2

    .line 105
    .line 106
    int-to-long v4, v4

    .line 107
    mul-int/lit8 v6, v1, 0x2

    .line 108
    .line 109
    aget-short v6, v0, v6

    .line 110
    .line 111
    int-to-long v6, v6

    .line 112
    sget-object v8, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 113
    .line 114
    aget v8, v8, v1

    .line 115
    .line 116
    int-to-long v8, v8

    .line 117
    const-wide/16 v10, 0x5

    .line 118
    .line 119
    add-long/2addr v8, v10

    .line 120
    mul-long/2addr v8, v6

    .line 121
    add-long/2addr v8, v4

    .line 122
    long-to-int v4, v8

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    ushr-int/lit8 v0, v4, 0x3

    .line 127
    .line 128
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 129
    .line 130
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 131
    .line 132
    div-int/2addr v4, v2

    .line 133
    if-ge v1, v4, :cond_3

    .line 134
    .line 135
    div-int/2addr p1, v2

    .line 136
    if-ge v0, p1, :cond_3

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    iget p1, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 140
    .line 141
    iget p0, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    .line 142
    .line 143
    sub-int/2addr p0, v3

    .line 144
    if-ne p1, p0, :cond_4

    .line 145
    .line 146
    :goto_3
    return v3

    .line 147
    :cond_4
    return p2
.end method

.method public final bi_flush()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 14
    .line 15
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/16 v1, 0x8

    .line 19
    .line 20
    if-lt v0, v1, :cond_1

    .line 21
    .line 22
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 23
    .line 24
    int-to-byte v0, v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 26
    .line 27
    .line 28
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 29
    .line 30
    ushr-int/2addr v0, v1

    .line 31
    int-to-short v0, v0

    .line 32
    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 33
    .line 34
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final compress_block([S[S)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 9
    .line 10
    iget v3, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    .line 11
    .line 12
    mul-int/lit8 v4, v0, 0x2

    .line 13
    .line 14
    add-int/2addr v4, v3

    .line 15
    aget-byte v3, v2, v4

    .line 16
    .line 17
    shl-int/lit8 v3, v3, 0x8

    .line 18
    .line 19
    const v5, 0xff00

    .line 20
    .line 21
    .line 22
    and-int/2addr v3, v5

    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    aget-byte v4, v2, v4

    .line 26
    .line 27
    and-int/lit16 v4, v4, 0xff

    .line 28
    .line 29
    or-int/2addr v3, v4

    .line 30
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:I

    .line 31
    .line 32
    add-int/2addr v4, v0

    .line 33
    aget-byte v2, v2, v4

    .line 34
    .line 35
    and-int/lit16 v2, v2, 0xff

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, v2, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    sget-object v4, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    .line 46
    .line 47
    aget-byte v4, v4, v2

    .line 48
    .line 49
    add-int/lit16 v5, v4, 0x101

    .line 50
    .line 51
    invoke-virtual {p0, v5, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 52
    .line 53
    .line 54
    sget-object v5, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    .line 55
    .line 56
    aget v5, v5, v4

    .line 57
    .line 58
    if-eqz v5, :cond_2

    .line 59
    .line 60
    sget-object v6, Lcom/jcraft/jzlib/Tree;->base_length:[I

    .line 61
    .line 62
    aget v4, v6, v4

    .line 63
    .line 64
    sub-int/2addr v2, v4

    .line 65
    invoke-virtual {p0, v2, v5}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 66
    .line 67
    .line 68
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 69
    .line 70
    sget-object v2, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    .line 71
    .line 72
    if-ge v3, v1, :cond_3

    .line 73
    .line 74
    aget-byte v2, v2, v3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    ushr-int/lit8 v4, v3, 0x7

    .line 78
    .line 79
    add-int/2addr v4, v1

    .line 80
    aget-byte v2, v2, v4

    .line 81
    .line 82
    :goto_0
    invoke-virtual {p0, v2, p2}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 83
    .line 84
    .line 85
    sget-object v4, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 86
    .line 87
    aget v4, v4, v2

    .line 88
    .line 89
    if-eqz v4, :cond_4

    .line 90
    .line 91
    sget-object v5, Lcom/jcraft/jzlib/Tree;->base_dist:[I

    .line 92
    .line 93
    aget v2, v5, v2

    .line 94
    .line 95
    sub-int/2addr v3, v2

    .line 96
    invoke-virtual {p0, v3, v4}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_1
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 100
    .line 101
    if-lt v0, v2, :cond_0

    .line 102
    .line 103
    :cond_5
    invoke-virtual {p0, v1, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 104
    .line 105
    .line 106
    const/16 p2, 0x201

    .line 107
    .line 108
    aget-short p1, p1, p2

    .line 109
    .line 110
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 111
    .line 112
    return-void
.end method

.method public final fill_window()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->window_size:I

    .line 4
    .line 5
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    iget v3, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 9
    .line 10
    sub-int/2addr v1, v3

    .line 11
    const/16 v4, 0x106

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, -0x1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_1
    if-ne v1, v6, :cond_2

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 30
    .line 31
    add-int v7, v2, v2

    .line 32
    .line 33
    sub-int/2addr v7, v4

    .line 34
    if-lt v3, v7, :cond_7

    .line 35
    .line 36
    iget-object v3, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 37
    .line 38
    invoke-static {v3, v2, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 42
    .line 43
    iget v3, v0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 44
    .line 45
    sub-int/2addr v2, v3

    .line 46
    iput v2, v0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 47
    .line 48
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 49
    .line 50
    sub-int/2addr v2, v3

    .line 51
    iput v2, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 52
    .line 53
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 54
    .line 55
    sub-int/2addr v2, v3

    .line 56
    iput v2, v0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 57
    .line 58
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 59
    .line 60
    move v3, v2

    .line 61
    :cond_3
    iget-object v7, v0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 62
    .line 63
    add-int/2addr v2, v6

    .line 64
    aget-short v8, v7, v2

    .line 65
    .line 66
    const v9, 0xffff

    .line 67
    .line 68
    .line 69
    and-int/2addr v8, v9

    .line 70
    iget v10, v0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 71
    .line 72
    if-lt v8, v10, :cond_4

    .line 73
    .line 74
    sub-int/2addr v8, v10

    .line 75
    int-to-short v8, v8

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    move v8, v5

    .line 78
    :goto_0
    aput-short v8, v7, v2

    .line 79
    .line 80
    add-int/2addr v3, v6

    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    move v2, v10

    .line 84
    :cond_5
    iget-object v3, v0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 85
    .line 86
    add-int/2addr v10, v6

    .line 87
    aget-short v7, v3, v10

    .line 88
    .line 89
    and-int/2addr v7, v9

    .line 90
    iget v8, v0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 91
    .line 92
    if-lt v7, v8, :cond_6

    .line 93
    .line 94
    sub-int/2addr v7, v8

    .line 95
    int-to-short v7, v7

    .line 96
    goto :goto_1

    .line 97
    :cond_6
    move v7, v5

    .line 98
    :goto_1
    aput-short v7, v3, v10

    .line 99
    .line 100
    add-int/2addr v2, v6

    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    add-int/2addr v1, v8

    .line 104
    :cond_7
    :goto_2
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 105
    .line 106
    iget v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 107
    .line 108
    if-nez v3, :cond_8

    .line 109
    .line 110
    goto/16 :goto_9

    .line 111
    .line 112
    :cond_8
    iget-object v7, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 113
    .line 114
    iget v8, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 115
    .line 116
    iget v9, v0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 117
    .line 118
    add-int/2addr v8, v9

    .line 119
    if-le v3, v1, :cond_9

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_9
    move v1, v3

    .line 123
    :goto_3
    if-nez v1, :cond_a

    .line 124
    .line 125
    goto/16 :goto_8

    .line 126
    .line 127
    :cond_a
    sub-int/2addr v3, v1

    .line 128
    iput v3, v2, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 129
    .line 130
    iget-object v3, v2, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 131
    .line 132
    iget v3, v3, Lcom/jcraft/jzlib/Deflate;->noheader:I

    .line 133
    .line 134
    if-nez v3, :cond_11

    .line 135
    .line 136
    iget-object v3, v2, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    .line 137
    .line 138
    iget-wide v9, v2, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 139
    .line 140
    iget-object v5, v2, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 141
    .line 142
    iget v11, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    if-nez v5, :cond_b

    .line 148
    .line 149
    const-wide/16 v5, 0x1

    .line 150
    .line 151
    move-wide v3, v5

    .line 152
    move-object v5, v7

    .line 153
    goto/16 :goto_6

    .line 154
    .line 155
    :cond_b
    const-wide/32 v12, 0xffff

    .line 156
    .line 157
    .line 158
    and-long v14, v9, v12

    .line 159
    .line 160
    const/16 v3, 0x10

    .line 161
    .line 162
    shr-long/2addr v9, v3

    .line 163
    and-long/2addr v9, v12

    .line 164
    move v12, v1

    .line 165
    :goto_4
    if-lez v12, :cond_10

    .line 166
    .line 167
    const/16 v13, 0x15b0

    .line 168
    .line 169
    if-ge v12, v13, :cond_c

    .line 170
    .line 171
    move v13, v12

    .line 172
    :cond_c
    sub-int/2addr v12, v13

    .line 173
    :goto_5
    if-lt v13, v3, :cond_d

    .line 174
    .line 175
    add-int/lit8 v16, v11, 0x1

    .line 176
    .line 177
    move/from16 v17, v3

    .line 178
    .line 179
    aget-byte v3, v5, v11

    .line 180
    .line 181
    and-int/lit16 v3, v3, 0xff

    .line 182
    .line 183
    move-object/from16 v18, v5

    .line 184
    .line 185
    int-to-long v4, v3

    .line 186
    add-long/2addr v14, v4

    .line 187
    add-long/2addr v9, v14

    .line 188
    add-int/lit8 v3, v11, 0x2

    .line 189
    .line 190
    aget-byte v4, v18, v16

    .line 191
    .line 192
    and-int/lit16 v4, v4, 0xff

    .line 193
    .line 194
    int-to-long v4, v4

    .line 195
    add-long/2addr v14, v4

    .line 196
    add-long/2addr v9, v14

    .line 197
    add-int/lit8 v4, v11, 0x3

    .line 198
    .line 199
    aget-byte v3, v18, v3

    .line 200
    .line 201
    and-int/lit16 v3, v3, 0xff

    .line 202
    .line 203
    move/from16 v16, v6

    .line 204
    .line 205
    move-object v5, v7

    .line 206
    int-to-long v6, v3

    .line 207
    add-long/2addr v14, v6

    .line 208
    add-long/2addr v9, v14

    .line 209
    add-int/lit8 v3, v11, 0x4

    .line 210
    .line 211
    aget-byte v4, v18, v4

    .line 212
    .line 213
    and-int/lit16 v4, v4, 0xff

    .line 214
    .line 215
    int-to-long v6, v4

    .line 216
    add-long/2addr v14, v6

    .line 217
    add-long/2addr v9, v14

    .line 218
    add-int/lit8 v4, v11, 0x5

    .line 219
    .line 220
    aget-byte v3, v18, v3

    .line 221
    .line 222
    and-int/lit16 v3, v3, 0xff

    .line 223
    .line 224
    int-to-long v6, v3

    .line 225
    add-long/2addr v14, v6

    .line 226
    add-long/2addr v9, v14

    .line 227
    add-int/lit8 v3, v11, 0x6

    .line 228
    .line 229
    aget-byte v4, v18, v4

    .line 230
    .line 231
    and-int/lit16 v4, v4, 0xff

    .line 232
    .line 233
    int-to-long v6, v4

    .line 234
    add-long/2addr v14, v6

    .line 235
    add-long/2addr v9, v14

    .line 236
    add-int/lit8 v4, v11, 0x7

    .line 237
    .line 238
    aget-byte v3, v18, v3

    .line 239
    .line 240
    and-int/lit16 v3, v3, 0xff

    .line 241
    .line 242
    int-to-long v6, v3

    .line 243
    add-long/2addr v14, v6

    .line 244
    add-long/2addr v9, v14

    .line 245
    add-int/lit8 v3, v11, 0x8

    .line 246
    .line 247
    aget-byte v4, v18, v4

    .line 248
    .line 249
    and-int/lit16 v4, v4, 0xff

    .line 250
    .line 251
    int-to-long v6, v4

    .line 252
    add-long/2addr v14, v6

    .line 253
    add-long/2addr v9, v14

    .line 254
    add-int/lit8 v4, v11, 0x9

    .line 255
    .line 256
    aget-byte v3, v18, v3

    .line 257
    .line 258
    and-int/lit16 v3, v3, 0xff

    .line 259
    .line 260
    int-to-long v6, v3

    .line 261
    add-long/2addr v14, v6

    .line 262
    add-long/2addr v9, v14

    .line 263
    add-int/lit8 v3, v11, 0xa

    .line 264
    .line 265
    aget-byte v4, v18, v4

    .line 266
    .line 267
    and-int/lit16 v4, v4, 0xff

    .line 268
    .line 269
    int-to-long v6, v4

    .line 270
    add-long/2addr v14, v6

    .line 271
    add-long/2addr v9, v14

    .line 272
    add-int/lit8 v4, v11, 0xb

    .line 273
    .line 274
    aget-byte v3, v18, v3

    .line 275
    .line 276
    and-int/lit16 v3, v3, 0xff

    .line 277
    .line 278
    int-to-long v6, v3

    .line 279
    add-long/2addr v14, v6

    .line 280
    add-long/2addr v9, v14

    .line 281
    add-int/lit8 v3, v11, 0xc

    .line 282
    .line 283
    aget-byte v4, v18, v4

    .line 284
    .line 285
    and-int/lit16 v4, v4, 0xff

    .line 286
    .line 287
    int-to-long v6, v4

    .line 288
    add-long/2addr v14, v6

    .line 289
    add-long/2addr v9, v14

    .line 290
    add-int/lit8 v4, v11, 0xd

    .line 291
    .line 292
    aget-byte v3, v18, v3

    .line 293
    .line 294
    and-int/lit16 v3, v3, 0xff

    .line 295
    .line 296
    int-to-long v6, v3

    .line 297
    add-long/2addr v14, v6

    .line 298
    add-long/2addr v9, v14

    .line 299
    add-int/lit8 v3, v11, 0xe

    .line 300
    .line 301
    aget-byte v4, v18, v4

    .line 302
    .line 303
    and-int/lit16 v4, v4, 0xff

    .line 304
    .line 305
    int-to-long v6, v4

    .line 306
    add-long/2addr v14, v6

    .line 307
    add-long/2addr v9, v14

    .line 308
    add-int/lit8 v4, v11, 0xf

    .line 309
    .line 310
    aget-byte v3, v18, v3

    .line 311
    .line 312
    and-int/lit16 v3, v3, 0xff

    .line 313
    .line 314
    int-to-long v6, v3

    .line 315
    add-long/2addr v14, v6

    .line 316
    add-long/2addr v9, v14

    .line 317
    add-int/lit8 v11, v11, 0x10

    .line 318
    .line 319
    aget-byte v3, v18, v4

    .line 320
    .line 321
    and-int/lit16 v3, v3, 0xff

    .line 322
    .line 323
    int-to-long v3, v3

    .line 324
    add-long/2addr v14, v3

    .line 325
    add-long/2addr v9, v14

    .line 326
    add-int/lit8 v13, v13, -0x10

    .line 327
    .line 328
    move-object v7, v5

    .line 329
    move/from16 v6, v16

    .line 330
    .line 331
    move/from16 v3, v17

    .line 332
    .line 333
    move-object/from16 v5, v18

    .line 334
    .line 335
    const/16 v4, 0x106

    .line 336
    .line 337
    goto/16 :goto_5

    .line 338
    .line 339
    :cond_d
    move/from16 v17, v3

    .line 340
    .line 341
    move-object/from16 v18, v5

    .line 342
    .line 343
    move/from16 v16, v6

    .line 344
    .line 345
    move-object v5, v7

    .line 346
    if-eqz v13, :cond_f

    .line 347
    .line 348
    :cond_e
    add-int/lit8 v3, v11, 0x1

    .line 349
    .line 350
    aget-byte v4, v18, v11

    .line 351
    .line 352
    and-int/lit16 v4, v4, 0xff

    .line 353
    .line 354
    int-to-long v6, v4

    .line 355
    add-long/2addr v14, v6

    .line 356
    add-long/2addr v9, v14

    .line 357
    add-int/lit8 v13, v13, -0x1

    .line 358
    .line 359
    move v11, v3

    .line 360
    if-nez v13, :cond_e

    .line 361
    .line 362
    :cond_f
    const-wide/32 v3, 0xfff1

    .line 363
    .line 364
    .line 365
    rem-long/2addr v14, v3

    .line 366
    rem-long/2addr v9, v3

    .line 367
    move-object v7, v5

    .line 368
    move/from16 v6, v16

    .line 369
    .line 370
    move/from16 v3, v17

    .line 371
    .line 372
    move-object/from16 v5, v18

    .line 373
    .line 374
    const/16 v4, 0x106

    .line 375
    .line 376
    goto/16 :goto_4

    .line 377
    .line 378
    :cond_10
    move/from16 v17, v3

    .line 379
    .line 380
    move-object v5, v7

    .line 381
    shl-long v3, v9, v17

    .line 382
    .line 383
    or-long/2addr v3, v14

    .line 384
    :goto_6
    iput-wide v3, v2, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 385
    .line 386
    goto :goto_7

    .line 387
    :cond_11
    move-object v5, v7

    .line 388
    :goto_7
    iget-object v3, v2, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 389
    .line 390
    iget v4, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 391
    .line 392
    invoke-static {v3, v4, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    .line 394
    .line 395
    iget v3, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 396
    .line 397
    add-int/2addr v3, v1

    .line 398
    iput v3, v2, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 399
    .line 400
    move v5, v1

    .line 401
    :goto_8
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 402
    .line 403
    add-int/2addr v1, v5

    .line 404
    iput v1, v0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 405
    .line 406
    const/4 v2, 0x3

    .line 407
    if-lt v1, v2, :cond_12

    .line 408
    .line 409
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 410
    .line 411
    iget v3, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 412
    .line 413
    aget-byte v4, v2, v3

    .line 414
    .line 415
    and-int/lit16 v4, v4, 0xff

    .line 416
    .line 417
    iput v4, v0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 418
    .line 419
    iget v5, v0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 420
    .line 421
    shl-int/2addr v4, v5

    .line 422
    add-int/lit8 v3, v3, 0x1

    .line 423
    .line 424
    aget-byte v2, v2, v3

    .line 425
    .line 426
    and-int/lit16 v2, v2, 0xff

    .line 427
    .line 428
    xor-int/2addr v2, v4

    .line 429
    iget v3, v0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 430
    .line 431
    and-int/2addr v2, v3

    .line 432
    iput v2, v0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 433
    .line 434
    :cond_12
    const/16 v2, 0x106

    .line 435
    .line 436
    if-ge v1, v2, :cond_13

    .line 437
    .line 438
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 439
    .line 440
    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 441
    .line 442
    if-nez v1, :cond_0

    .line 443
    .line 444
    :cond_13
    :goto_9
    return-void
.end method

.method public final flush_block_only(Z)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-ltz v2, :cond_0

    .line 9
    .line 10
    move v4, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v4, v3

    .line 13
    :goto_0
    iget v5, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 14
    .line 15
    sub-int/2addr v5, v2

    .line 16
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 17
    .line 18
    iget-object v6, v0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 19
    .line 20
    iget-object v7, v0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 21
    .line 22
    iget-object v8, v0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 23
    .line 24
    iget-object v9, v0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 25
    .line 26
    iget v10, v0, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 27
    .line 28
    sget-object v12, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    .line 29
    .line 30
    const/4 v14, 0x2

    .line 31
    const/4 v15, 0x3

    .line 32
    if-lez v10, :cond_8

    .line 33
    .line 34
    iget-byte v10, v0, Lcom/jcraft/jzlib/Deflate;->data_type:B

    .line 35
    .line 36
    if-ne v10, v14, :cond_5

    .line 37
    .line 38
    const/4 v10, 0x0

    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    const/16 v17, 0x1

    .line 42
    .line 43
    :goto_1
    const/4 v13, 0x7

    .line 44
    if-ge v10, v13, :cond_1

    .line 45
    .line 46
    mul-int/lit8 v13, v10, 0x2

    .line 47
    .line 48
    aget-short v13, v9, v13

    .line 49
    .line 50
    add-int v16, v16, v13

    .line 51
    .line 52
    add-int/lit8 v10, v10, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move/from16 v18, v14

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    :goto_2
    const/16 v14, 0x80

    .line 59
    .line 60
    if-ge v10, v14, :cond_2

    .line 61
    .line 62
    mul-int/lit8 v14, v10, 0x2

    .line 63
    .line 64
    aget-short v14, v9, v14

    .line 65
    .line 66
    add-int/2addr v13, v14

    .line 67
    add-int/lit8 v10, v10, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move/from16 v14, v16

    .line 71
    .line 72
    :goto_3
    const/16 v11, 0x100

    .line 73
    .line 74
    if-ge v10, v11, :cond_3

    .line 75
    .line 76
    mul-int/lit8 v11, v10, 0x2

    .line 77
    .line 78
    aget-short v11, v9, v11

    .line 79
    .line 80
    add-int/2addr v14, v11

    .line 81
    add-int/lit8 v10, v10, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    ushr-int/lit8 v10, v13, 0x2

    .line 85
    .line 86
    if-le v14, v10, :cond_4

    .line 87
    .line 88
    const/4 v10, 0x0

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    move/from16 v10, v17

    .line 91
    .line 92
    :goto_4
    int-to-byte v10, v10

    .line 93
    iput-byte v10, v0, Lcom/jcraft/jzlib/Deflate;->data_type:B

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_5
    move/from16 v18, v14

    .line 97
    .line 98
    const/16 v17, 0x1

    .line 99
    .line 100
    :goto_5
    invoke-virtual {v8, v0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    .line 104
    .line 105
    .line 106
    iget v10, v8, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 107
    .line 108
    invoke-virtual {v0, v10, v9}, Lcom/jcraft/jzlib/Deflate;->scan_tree(I[S)V

    .line 109
    .line 110
    .line 111
    iget v10, v7, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 112
    .line 113
    invoke-virtual {v0, v10, v6}, Lcom/jcraft/jzlib/Deflate;->scan_tree(I[S)V

    .line 114
    .line 115
    .line 116
    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    .line 117
    .line 118
    invoke-virtual {v10, v0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    .line 119
    .line 120
    .line 121
    const/16 v10, 0x12

    .line 122
    .line 123
    :goto_6
    if-lt v10, v15, :cond_7

    .line 124
    .line 125
    aget-byte v11, v12, v10

    .line 126
    .line 127
    mul-int/lit8 v11, v11, 0x2

    .line 128
    .line 129
    add-int/lit8 v11, v11, 0x1

    .line 130
    .line 131
    aget-short v11, v2, v11

    .line 132
    .line 133
    if-eqz v11, :cond_6

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_6
    add-int/lit8 v10, v10, -0x1

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_7
    :goto_7
    iget v11, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 140
    .line 141
    add-int/lit8 v13, v10, 0x1

    .line 142
    .line 143
    mul-int/2addr v13, v15

    .line 144
    add-int/lit8 v13, v13, 0xe

    .line 145
    .line 146
    add-int/2addr v13, v11

    .line 147
    iput v13, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 148
    .line 149
    add-int/lit8 v13, v13, 0xa

    .line 150
    .line 151
    ushr-int/lit8 v11, v13, 0x3

    .line 152
    .line 153
    iget v13, v0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 154
    .line 155
    add-int/lit8 v13, v13, 0xa

    .line 156
    .line 157
    ushr-int/2addr v13, v15

    .line 158
    if-gt v13, v11, :cond_9

    .line 159
    .line 160
    move v11, v13

    .line 161
    goto :goto_8

    .line 162
    :cond_8
    move/from16 v18, v14

    .line 163
    .line 164
    const/16 v17, 0x1

    .line 165
    .line 166
    add-int/lit8 v11, v5, 0x5

    .line 167
    .line 168
    move v13, v11

    .line 169
    const/4 v10, 0x0

    .line 170
    :cond_9
    :goto_8
    add-int/lit8 v14, v5, 0x4

    .line 171
    .line 172
    if-gt v14, v11, :cond_a

    .line 173
    .line 174
    if-eq v4, v3, :cond_a

    .line 175
    .line 176
    invoke-virtual {v0, v4, v5, v1}, Lcom/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 177
    .line 178
    .line 179
    goto :goto_a

    .line 180
    :cond_a
    if-ne v13, v11, :cond_b

    .line 181
    .line 182
    add-int/lit8 v2, v1, 0x2

    .line 183
    .line 184
    invoke-virtual {v0, v2, v15}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 185
    .line 186
    .line 187
    sget-object v2, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    .line 188
    .line 189
    sget-object v3, Lcom/jcraft/jzlib/StaticTree;->static_dtree:[S

    .line 190
    .line 191
    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jzlib/Deflate;->compress_block([S[S)V

    .line 192
    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_b
    add-int/lit8 v3, v1, 0x4

    .line 196
    .line 197
    invoke-virtual {v0, v3, v15}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 198
    .line 199
    .line 200
    iget v3, v8, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 201
    .line 202
    iget v4, v7, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 203
    .line 204
    add-int/lit8 v5, v10, 0x1

    .line 205
    .line 206
    add-int/lit16 v7, v3, -0x100

    .line 207
    .line 208
    const/4 v8, 0x5

    .line 209
    invoke-virtual {v0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v4, v8}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 213
    .line 214
    .line 215
    add-int/lit8 v10, v10, -0x3

    .line 216
    .line 217
    const/4 v7, 0x4

    .line 218
    invoke-virtual {v0, v10, v7}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 219
    .line 220
    .line 221
    const/4 v7, 0x0

    .line 222
    :goto_9
    if-ge v7, v5, :cond_c

    .line 223
    .line 224
    aget-byte v8, v12, v7

    .line 225
    .line 226
    mul-int/lit8 v8, v8, 0x2

    .line 227
    .line 228
    add-int/lit8 v8, v8, 0x1

    .line 229
    .line 230
    aget-short v8, v2, v8

    .line 231
    .line 232
    invoke-virtual {v0, v8, v15}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 233
    .line 234
    .line 235
    add-int/lit8 v7, v7, 0x1

    .line 236
    .line 237
    goto :goto_9

    .line 238
    :cond_c
    invoke-virtual {v0, v3, v9}, Lcom/jcraft/jzlib/Deflate;->send_tree(I[S)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v4, v6}, Lcom/jcraft/jzlib/Deflate;->send_tree(I[S)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v9, v6}, Lcom/jcraft/jzlib/Deflate;->compress_block([S[S)V

    .line 245
    .line 246
    .line 247
    :goto_a
    invoke-virtual {v0}, Lcom/jcraft/jzlib/Deflate;->init_block()V

    .line 248
    .line 249
    .line 250
    if-eqz v1, :cond_f

    .line 251
    .line 252
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 253
    .line 254
    const/16 v2, 0x8

    .line 255
    .line 256
    if-le v1, v2, :cond_e

    .line 257
    .line 258
    iget-short v1, v0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 261
    .line 262
    .line 263
    :cond_d
    :goto_b
    const/4 v1, 0x0

    .line 264
    goto :goto_c

    .line 265
    :cond_e
    if-lez v1, :cond_d

    .line 266
    .line 267
    iget-short v1, v0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 268
    .line 269
    int-to-byte v1, v1

    .line 270
    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 271
    .line 272
    .line 273
    goto :goto_b

    .line 274
    :goto_c
    iput-short v1, v0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 275
    .line 276
    iput v1, v0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 277
    .line 278
    :cond_f
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 279
    .line 280
    iput v1, v0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 281
    .line 282
    iget-object v0, v0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 283
    .line 284
    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 285
    .line 286
    .line 287
    return-void
.end method

.method public final init_block()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    const/16 v3, 0x11e

    .line 6
    .line 7
    if-ge v2, v3, :cond_0

    .line 8
    .line 9
    mul-int/lit8 v3, v2, 0x2

    .line 10
    .line 11
    aput-short v1, v0, v3

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_1
    const/16 v3, 0x1e

    .line 18
    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 22
    .line 23
    mul-int/lit8 v4, v2, 0x2

    .line 24
    .line 25
    aput-short v1, v3, v4

    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v2, v1

    .line 31
    :goto_2
    const/16 v3, 0x13

    .line 32
    .line 33
    if-ge v2, v3, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 36
    .line 37
    mul-int/lit8 v4, v2, 0x2

    .line 38
    .line 39
    aput-short v1, v3, v4

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v2, 0x200

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    aput-short v3, v0, v2

    .line 48
    .line 49
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 50
    .line 51
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 52
    .line 53
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 54
    .line 55
    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 56
    .line 57
    return-void
.end method

.method public final longest_match(I)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 4
    .line 5
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 6
    .line 7
    iget v3, v0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 8
    .line 9
    iget v4, v0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 10
    .line 11
    add-int/lit16 v4, v4, -0x106

    .line 12
    .line 13
    if-le v2, v4, :cond_0

    .line 14
    .line 15
    sub-int v4, v2, v4

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    :goto_0
    iget v5, v0, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    .line 20
    .line 21
    iget v6, v0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 22
    .line 23
    add-int/lit16 v7, v2, 0x102

    .line 24
    .line 25
    iget-object v8, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 26
    .line 27
    add-int v9, v2, v3

    .line 28
    .line 29
    add-int/lit8 v10, v9, -0x1

    .line 30
    .line 31
    aget-byte v10, v8, v10

    .line 32
    .line 33
    aget-byte v8, v8, v9

    .line 34
    .line 35
    iget v9, v0, Lcom/jcraft/jzlib/Deflate;->good_match:I

    .line 36
    .line 37
    if-lt v3, v9, :cond_1

    .line 38
    .line 39
    shr-int/lit8 v1, v1, 0x2

    .line 40
    .line 41
    :cond_1
    iget v9, v0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 42
    .line 43
    if-le v5, v9, :cond_2

    .line 44
    .line 45
    :goto_1
    move v5, v3

    .line 46
    move v3, v1

    .line 47
    move/from16 v1, p1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v9, v5

    .line 51
    goto :goto_1

    .line 52
    :goto_2
    iget-object v11, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 53
    .line 54
    add-int v12, v1, v5

    .line 55
    .line 56
    aget-byte v13, v11, v12

    .line 57
    .line 58
    if-ne v13, v8, :cond_3

    .line 59
    .line 60
    add-int/lit8 v12, v12, -0x1

    .line 61
    .line 62
    aget-byte v12, v11, v12

    .line 63
    .line 64
    if-ne v12, v10, :cond_3

    .line 65
    .line 66
    aget-byte v12, v11, v1

    .line 67
    .line 68
    aget-byte v13, v11, v2

    .line 69
    .line 70
    if-ne v12, v13, :cond_3

    .line 71
    .line 72
    add-int/lit8 v12, v1, 0x1

    .line 73
    .line 74
    aget-byte v12, v11, v12

    .line 75
    .line 76
    add-int/lit8 v13, v2, 0x1

    .line 77
    .line 78
    aget-byte v11, v11, v13

    .line 79
    .line 80
    if-eq v12, v11, :cond_4

    .line 81
    .line 82
    :cond_3
    move/from16 v17, v2

    .line 83
    .line 84
    goto/16 :goto_5

    .line 85
    .line 86
    :cond_4
    add-int/lit8 v11, v2, 0x2

    .line 87
    .line 88
    add-int/lit8 v12, v1, 0x2

    .line 89
    .line 90
    :goto_3
    iget-object v13, v0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 91
    .line 92
    add-int/lit8 v14, v11, 0x1

    .line 93
    .line 94
    aget-byte v15, v13, v14

    .line 95
    .line 96
    add-int/lit8 v16, v12, 0x1

    .line 97
    .line 98
    move/from16 v17, v2

    .line 99
    .line 100
    aget-byte v2, v13, v16

    .line 101
    .line 102
    if-ne v15, v2, :cond_7

    .line 103
    .line 104
    add-int/lit8 v14, v11, 0x2

    .line 105
    .line 106
    aget-byte v2, v13, v14

    .line 107
    .line 108
    add-int/lit8 v15, v12, 0x2

    .line 109
    .line 110
    aget-byte v15, v13, v15

    .line 111
    .line 112
    if-ne v2, v15, :cond_7

    .line 113
    .line 114
    add-int/lit8 v14, v11, 0x3

    .line 115
    .line 116
    aget-byte v2, v13, v14

    .line 117
    .line 118
    add-int/lit8 v15, v12, 0x3

    .line 119
    .line 120
    aget-byte v15, v13, v15

    .line 121
    .line 122
    if-ne v2, v15, :cond_7

    .line 123
    .line 124
    add-int/lit8 v14, v11, 0x4

    .line 125
    .line 126
    aget-byte v2, v13, v14

    .line 127
    .line 128
    add-int/lit8 v15, v12, 0x4

    .line 129
    .line 130
    aget-byte v15, v13, v15

    .line 131
    .line 132
    if-ne v2, v15, :cond_7

    .line 133
    .line 134
    add-int/lit8 v14, v11, 0x5

    .line 135
    .line 136
    aget-byte v2, v13, v14

    .line 137
    .line 138
    add-int/lit8 v15, v12, 0x5

    .line 139
    .line 140
    aget-byte v15, v13, v15

    .line 141
    .line 142
    if-ne v2, v15, :cond_7

    .line 143
    .line 144
    add-int/lit8 v14, v11, 0x6

    .line 145
    .line 146
    aget-byte v2, v13, v14

    .line 147
    .line 148
    add-int/lit8 v15, v12, 0x6

    .line 149
    .line 150
    aget-byte v15, v13, v15

    .line 151
    .line 152
    if-ne v2, v15, :cond_7

    .line 153
    .line 154
    add-int/lit8 v14, v11, 0x7

    .line 155
    .line 156
    aget-byte v2, v13, v14

    .line 157
    .line 158
    add-int/lit8 v15, v12, 0x7

    .line 159
    .line 160
    aget-byte v15, v13, v15

    .line 161
    .line 162
    if-ne v2, v15, :cond_7

    .line 163
    .line 164
    add-int/lit8 v11, v11, 0x8

    .line 165
    .line 166
    aget-byte v2, v13, v11

    .line 167
    .line 168
    add-int/lit8 v12, v12, 0x8

    .line 169
    .line 170
    aget-byte v14, v13, v12

    .line 171
    .line 172
    if-ne v2, v14, :cond_6

    .line 173
    .line 174
    if-lt v11, v7, :cond_5

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_5
    move/from16 v2, v17

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_6
    :goto_4
    move v14, v11

    .line 181
    :cond_7
    sub-int v2, v7, v14

    .line 182
    .line 183
    rsub-int v2, v2, 0x102

    .line 184
    .line 185
    if-le v2, v5, :cond_9

    .line 186
    .line 187
    iput v1, v0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 188
    .line 189
    if-lt v2, v9, :cond_8

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_8
    add-int v5, v17, v2

    .line 193
    .line 194
    add-int/lit8 v8, v5, -0x1

    .line 195
    .line 196
    aget-byte v8, v13, v8

    .line 197
    .line 198
    aget-byte v5, v13, v5

    .line 199
    .line 200
    move v10, v8

    .line 201
    move v8, v5

    .line 202
    move v5, v2

    .line 203
    :cond_9
    :goto_5
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 204
    .line 205
    and-int/2addr v1, v6

    .line 206
    aget-short v1, v2, v1

    .line 207
    .line 208
    const v2, 0xffff

    .line 209
    .line 210
    .line 211
    and-int/2addr v1, v2

    .line 212
    if-le v1, v4, :cond_b

    .line 213
    .line 214
    add-int/lit8 v3, v3, -0x1

    .line 215
    .line 216
    if-nez v3, :cond_a

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_a
    move/from16 v2, v17

    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :cond_b
    :goto_6
    move v2, v5

    .line 224
    :goto_7
    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 225
    .line 226
    if-gt v2, v0, :cond_c

    .line 227
    .line 228
    return v2

    .line 229
    :cond_c
    return v0
.end method

.method public final pqdownheap(I[S)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 4
    .line 5
    aget v2, v1, p1

    .line 6
    .line 7
    shl-int/lit8 v3, p1, 0x1

    .line 8
    .line 9
    :goto_0
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 10
    .line 11
    if-gt v3, v4, :cond_3

    .line 12
    .line 13
    if-ge v3, v4, :cond_1

    .line 14
    .line 15
    add-int/lit8 v4, v3, 0x1

    .line 16
    .line 17
    aget v5, v1, v4

    .line 18
    .line 19
    aget v6, v1, v3

    .line 20
    .line 21
    mul-int/lit8 v7, v5, 0x2

    .line 22
    .line 23
    aget-short v7, p2, v7

    .line 24
    .line 25
    mul-int/lit8 v8, v6, 0x2

    .line 26
    .line 27
    aget-short v8, p2, v8

    .line 28
    .line 29
    if-lt v7, v8, :cond_0

    .line 30
    .line 31
    if-ne v7, v8, :cond_1

    .line 32
    .line 33
    aget-byte v5, v0, v5

    .line 34
    .line 35
    aget-byte v6, v0, v6

    .line 36
    .line 37
    if-gt v5, v6, :cond_1

    .line 38
    .line 39
    :cond_0
    move v3, v4

    .line 40
    :cond_1
    aget v4, v1, v3

    .line 41
    .line 42
    mul-int/lit8 v5, v2, 0x2

    .line 43
    .line 44
    aget-short v5, p2, v5

    .line 45
    .line 46
    mul-int/lit8 v6, v4, 0x2

    .line 47
    .line 48
    aget-short v6, p2, v6

    .line 49
    .line 50
    if-lt v5, v6, :cond_3

    .line 51
    .line 52
    if-ne v5, v6, :cond_2

    .line 53
    .line 54
    aget-byte v5, v0, v2

    .line 55
    .line 56
    aget-byte v6, v0, v4

    .line 57
    .line 58
    if-gt v5, v6, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    aput v4, v1, p1

    .line 62
    .line 63
    shl-int/lit8 p1, v3, 0x1

    .line 64
    .line 65
    move v9, v3

    .line 66
    move v3, p1

    .line 67
    move p1, v9

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    :goto_1
    aput v2, v1, p1

    .line 70
    .line 71
    return-void
.end method

.method public final putShortMSB(I)V
    .locals 1

    .line 1
    shr-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 5
    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final put_byte(B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 8
    .line 9
    aput-byte p1, v0, v1

    .line 10
    .line 11
    return-void
.end method

.method public final put_short(I)V
    .locals 1

    .line 1
    int-to-byte v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 3
    .line 4
    .line 5
    ushr-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final scan_tree(I[S)V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    aget-short v1, p2, v0

    .line 5
    .line 6
    const/16 v2, 0x8a

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x7

    .line 10
    const/4 v5, 0x4

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move v6, v2

    .line 14
    move v7, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v6, v4

    .line 17
    move v7, v5

    .line 18
    :goto_0
    add-int/lit8 v8, p1, 0x1

    .line 19
    .line 20
    mul-int/lit8 v8, v8, 0x2

    .line 21
    .line 22
    add-int/2addr v8, v0

    .line 23
    const/4 v9, -0x1

    .line 24
    aput-short v9, p2, v8

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    move v10, v8

    .line 28
    move v11, v10

    .line 29
    :goto_1
    if-gt v10, p1, :cond_8

    .line 30
    .line 31
    add-int/lit8 v10, v10, 0x1

    .line 32
    .line 33
    mul-int/lit8 v12, v10, 0x2

    .line 34
    .line 35
    add-int/2addr v12, v0

    .line 36
    aget-short v12, p2, v12

    .line 37
    .line 38
    add-int/2addr v11, v0

    .line 39
    if-ge v11, v6, :cond_1

    .line 40
    .line 41
    if-ne v1, v12, :cond_1

    .line 42
    .line 43
    goto :goto_5

    .line 44
    :cond_1
    if-ge v11, v7, :cond_2

    .line 45
    .line 46
    mul-int/lit8 v6, v1, 0x2

    .line 47
    .line 48
    aget-short v7, p0, v6

    .line 49
    .line 50
    add-int/2addr v7, v11

    .line 51
    int-to-short v7, v7

    .line 52
    aput-short v7, p0, v6

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    if-eqz v1, :cond_4

    .line 56
    .line 57
    if-eq v1, v9, :cond_3

    .line 58
    .line 59
    mul-int/lit8 v6, v1, 0x2

    .line 60
    .line 61
    aget-short v7, p0, v6

    .line 62
    .line 63
    add-int/2addr v7, v0

    .line 64
    int-to-short v7, v7

    .line 65
    aput-short v7, p0, v6

    .line 66
    .line 67
    :cond_3
    const/16 v6, 0x20

    .line 68
    .line 69
    aget-short v7, p0, v6

    .line 70
    .line 71
    add-int/2addr v7, v0

    .line 72
    int-to-short v7, v7

    .line 73
    aput-short v7, p0, v6

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const/16 v6, 0xa

    .line 77
    .line 78
    if-gt v11, v6, :cond_5

    .line 79
    .line 80
    const/16 v6, 0x22

    .line 81
    .line 82
    aget-short v7, p0, v6

    .line 83
    .line 84
    add-int/2addr v7, v0

    .line 85
    int-to-short v7, v7

    .line 86
    aput-short v7, p0, v6

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    const/16 v6, 0x24

    .line 90
    .line 91
    aget-short v7, p0, v6

    .line 92
    .line 93
    add-int/2addr v7, v0

    .line 94
    int-to-short v7, v7

    .line 95
    aput-short v7, p0, v6

    .line 96
    .line 97
    :goto_2
    if-nez v12, :cond_6

    .line 98
    .line 99
    move v9, v1

    .line 100
    move v6, v2

    .line 101
    :goto_3
    move v7, v3

    .line 102
    :goto_4
    move v11, v8

    .line 103
    goto :goto_5

    .line 104
    :cond_6
    if-ne v1, v12, :cond_7

    .line 105
    .line 106
    const/4 v6, 0x6

    .line 107
    move v9, v1

    .line 108
    goto :goto_3

    .line 109
    :cond_7
    move v9, v1

    .line 110
    move v6, v4

    .line 111
    move v7, v5

    .line 112
    goto :goto_4

    .line 113
    :goto_5
    move v1, v12

    .line 114
    goto :goto_1

    .line 115
    :cond_8
    return-void
.end method

.method public final send_bits(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 2
    .line 3
    rsub-int/lit8 v1, p2, 0x10

    .line 4
    .line 5
    iget-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 6
    .line 7
    const v3, 0xffff

    .line 8
    .line 9
    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    shl-int v0, p1, v0

    .line 13
    .line 14
    and-int/2addr v0, v3

    .line 15
    or-int/2addr v0, v2

    .line 16
    int-to-short v0, v0

    .line 17
    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 23
    .line 24
    rsub-int/lit8 v1, v0, 0x10

    .line 25
    .line 26
    ushr-int/2addr p1, v1

    .line 27
    int-to-short p1, p1

    .line 28
    iput-short p1, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 29
    .line 30
    add-int/lit8 p2, p2, -0x10

    .line 31
    .line 32
    add-int/2addr p2, v0

    .line 33
    iput p2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    shl-int/2addr p1, v0

    .line 37
    and-int/2addr p1, v3

    .line 38
    or-int/2addr p1, v2

    .line 39
    int-to-short p1, p1

    .line 40
    iput-short p1, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 41
    .line 42
    add-int/2addr v0, p2

    .line 43
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 44
    .line 45
    return-void
.end method

.method public final send_code(I[S)V
    .locals 2

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    aget-short v0, p2, p1

    .line 4
    .line 5
    const v1, 0xffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    aget-short p1, p2, p1

    .line 12
    .line 13
    and-int/2addr p1, v1

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final send_tree(I[S)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    aget-short v3, p2, v2

    .line 7
    .line 8
    const/4 v5, 0x3

    .line 9
    const/4 v6, 0x7

    .line 10
    const/4 v7, 0x4

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    move v9, v5

    .line 14
    const/16 v8, 0x8a

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v8, v6

    .line 18
    move v9, v7

    .line 19
    :goto_0
    const/4 v10, -0x1

    .line 20
    const/4 v11, 0x0

    .line 21
    move/from16 v12, p1

    .line 22
    .line 23
    move v15, v10

    .line 24
    move v13, v11

    .line 25
    move v14, v13

    .line 26
    :goto_1
    if-gt v13, v12, :cond_9

    .line 27
    .line 28
    add-int/lit8 v13, v13, 0x1

    .line 29
    .line 30
    mul-int/lit8 v16, v13, 0x2

    .line 31
    .line 32
    add-int/lit8 v16, v16, 0x1

    .line 33
    .line 34
    aget-short v2, p2, v16

    .line 35
    .line 36
    add-int/lit8 v4, v14, 0x1

    .line 37
    .line 38
    if-ge v4, v8, :cond_1

    .line 39
    .line 40
    if-ne v3, v2, :cond_1

    .line 41
    .line 42
    move v14, v4

    .line 43
    goto :goto_5

    .line 44
    :cond_1
    if-ge v4, v9, :cond_3

    .line 45
    .line 46
    :cond_2
    invoke-virtual {v0, v3, v1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 47
    .line 48
    .line 49
    add-int/2addr v4, v10

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    if-eqz v3, :cond_5

    .line 54
    .line 55
    if-eq v3, v15, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0, v3, v1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    move v14, v4

    .line 62
    :goto_2
    const/16 v4, 0x10

    .line 63
    .line 64
    invoke-virtual {v0, v4, v1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 65
    .line 66
    .line 67
    sub-int/2addr v14, v5

    .line 68
    const/4 v4, 0x2

    .line 69
    invoke-virtual {v0, v14, v4}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_5
    const/16 v8, 0xa

    .line 74
    .line 75
    if-gt v4, v8, :cond_6

    .line 76
    .line 77
    const/16 v4, 0x11

    .line 78
    .line 79
    invoke-virtual {v0, v4, v1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v14, v14, -0x2

    .line 83
    .line 84
    invoke-virtual {v0, v14, v5}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    const/16 v4, 0x12

    .line 89
    .line 90
    invoke-virtual {v0, v4, v1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v14, v14, -0xa

    .line 94
    .line 95
    invoke-virtual {v0, v14, v6}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 96
    .line 97
    .line 98
    :goto_3
    if-nez v2, :cond_7

    .line 99
    .line 100
    move v15, v3

    .line 101
    move v9, v5

    .line 102
    move v14, v11

    .line 103
    const/16 v8, 0x8a

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_7
    if-ne v3, v2, :cond_8

    .line 107
    .line 108
    const/4 v4, 0x6

    .line 109
    move v15, v3

    .line 110
    move v8, v4

    .line 111
    move v9, v5

    .line 112
    :goto_4
    move v14, v11

    .line 113
    goto :goto_5

    .line 114
    :cond_8
    move v15, v3

    .line 115
    move v8, v6

    .line 116
    move v9, v7

    .line 117
    goto :goto_4

    .line 118
    :goto_5
    move v3, v2

    .line 119
    const/4 v2, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_9
    return-void
.end method
