.class public final Lcom/jcraft/jzlib/ZOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final buf:[B

.field public final buf1:[B

.field public final bufsize:I

.field public final compress:Z

.field public flush:I

.field public out:Ljava/io/OutputStream;

.field public z:Lcom/jcraft/jzlib/ZStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/jcraft/jzlib/Adler32;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, v2}, Lcom/jcraft/jzlib/Adler32;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 18
    .line 19
    const/16 v1, 0x200

    .line 20
    .line 21
    iput v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    .line 22
    .line 23
    iput v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    iput-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    new-array v3, v1, [B

    .line 31
    .line 32
    iput-object v3, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    .line 33
    .line 34
    iput-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 35
    .line 36
    new-instance p1, Lcom/jcraft/jzlib/Deflate;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lcom/jcraft/jzlib/Tree;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v3, p1, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 47
    .line 48
    new-instance v4, Lcom/jcraft/jzlib/Tree;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v4, p1, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 54
    .line 55
    new-instance v5, Lcom/jcraft/jzlib/Tree;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v5, p1, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    .line 61
    .line 62
    const/16 v6, 0x10

    .line 63
    .line 64
    new-array v6, v6, [S

    .line 65
    .line 66
    iput-object v6, p1, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 67
    .line 68
    const/16 v6, 0x23d

    .line 69
    .line 70
    new-array v7, v6, [I

    .line 71
    .line 72
    iput-object v7, p1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 73
    .line 74
    new-array v6, v6, [B

    .line 75
    .line 76
    iput-object v6, p1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 77
    .line 78
    const/16 v6, 0x47a

    .line 79
    .line 80
    new-array v6, v6, [S

    .line 81
    .line 82
    iput-object v6, p1, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 83
    .line 84
    const/16 v7, 0x7a

    .line 85
    .line 86
    new-array v7, v7, [S

    .line 87
    .line 88
    iput-object v7, p1, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 89
    .line 90
    const/16 v8, 0x4e

    .line 91
    .line 92
    new-array v8, v8, [S

    .line 93
    .line 94
    iput-object v8, p1, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 95
    .line 96
    iput-object p1, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 97
    .line 98
    iput v1, p1, Lcom/jcraft/jzlib/Deflate;->noheader:I

    .line 99
    .line 100
    const/16 v9, 0xf

    .line 101
    .line 102
    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    .line 103
    .line 104
    const v9, 0x8000

    .line 105
    .line 106
    .line 107
    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 108
    .line 109
    const/16 v10, 0x7fff

    .line 110
    .line 111
    iput v10, p1, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 112
    .line 113
    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 114
    .line 115
    iput v10, p1, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 116
    .line 117
    const/4 v10, 0x5

    .line 118
    iput v10, p1, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 119
    .line 120
    const/high16 v10, 0x10000

    .line 121
    .line 122
    new-array v11, v10, [B

    .line 123
    .line 124
    iput-object v11, p1, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 125
    .line 126
    new-array v11, v9, [S

    .line 127
    .line 128
    iput-object v11, p1, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 129
    .line 130
    new-array v9, v9, [S

    .line 131
    .line 132
    iput-object v9, p1, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 133
    .line 134
    const/16 v9, 0x4000

    .line 135
    .line 136
    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    .line 137
    .line 138
    new-array v9, v10, [B

    .line 139
    .line 140
    iput-object v9, p1, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 141
    .line 142
    iput v10, p1, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    .line 143
    .line 144
    const/16 v9, 0x2000

    .line 145
    .line 146
    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    .line 147
    .line 148
    const v9, 0xc000

    .line 149
    .line 150
    .line 151
    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->l_buf:I

    .line 152
    .line 153
    iput v1, p1, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 154
    .line 155
    const/4 v9, 0x0

    .line 156
    iput-object v9, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 157
    .line 158
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 159
    .line 160
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 161
    .line 162
    const/16 v9, 0x71

    .line 163
    .line 164
    iput v9, p1, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 165
    .line 166
    const-wide/16 v9, 0x1

    .line 167
    .line 168
    iput-wide v9, v0, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 169
    .line 170
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 171
    .line 172
    iput-object v6, v3, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 173
    .line 174
    sget-object v0, Lcom/jcraft/jzlib/StaticTree;->static_l_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 175
    .line 176
    iput-object v0, v3, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 177
    .line 178
    iput-object v7, v4, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 179
    .line 180
    sget-object v0, Lcom/jcraft/jzlib/StaticTree;->static_d_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 181
    .line 182
    iput-object v0, v4, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 183
    .line 184
    iput-object v8, v5, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 185
    .line 186
    sget-object v0, Lcom/jcraft/jzlib/StaticTree;->static_bl_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 187
    .line 188
    iput-object v0, v5, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 189
    .line 190
    iput-short v2, p1, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 191
    .line 192
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 193
    .line 194
    const/16 v0, 0x8

    .line 195
    .line 196
    iput v0, p1, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/jcraft/jzlib/Deflate;->init_block()V

    .line 199
    .line 200
    .line 201
    iget v0, p1, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 202
    .line 203
    const/4 v3, 0x2

    .line 204
    mul-int/2addr v0, v3

    .line 205
    iput v0, p1, Lcom/jcraft/jzlib/Deflate;->window_size:I

    .line 206
    .line 207
    iget-object v0, p1, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 208
    .line 209
    iget v4, p1, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 210
    .line 211
    sub-int/2addr v4, v1

    .line 212
    aput-short v2, v0, v4

    .line 213
    .line 214
    move v0, v2

    .line 215
    :goto_0
    iget v4, p1, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 216
    .line 217
    sub-int/2addr v4, v1

    .line 218
    if-ge v0, v4, :cond_0

    .line 219
    .line 220
    iget-object v4, p1, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 221
    .line 222
    aput-short v2, v4, v0

    .line 223
    .line 224
    add-int/lit8 v0, v0, 0x1

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_0
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    .line 228
    .line 229
    iget v4, p1, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 230
    .line 231
    aget-object v0, v0, v4

    .line 232
    .line 233
    iget v4, v0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    .line 234
    .line 235
    iput v4, p1, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 236
    .line 237
    iget v4, v0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    .line 238
    .line 239
    iput v4, p1, Lcom/jcraft/jzlib/Deflate;->good_match:I

    .line 240
    .line 241
    iget v4, v0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    .line 242
    .line 243
    iput v4, p1, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    .line 244
    .line 245
    iget v0, v0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    .line 246
    .line 247
    iput v0, p1, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 248
    .line 249
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 250
    .line 251
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 252
    .line 253
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 254
    .line 255
    iput v3, p1, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 256
    .line 257
    iput v3, p1, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 258
    .line 259
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 260
    .line 261
    iput v2, p1, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 262
    .line 263
    iput-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 264
    .line 265
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catchall_0
    move-exception v1

    .line 7
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->end()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 16
    .line 17
    throw v1

    .line 18
    :catch_0
    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->end()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 27
    .line 28
    return-void
.end method

.method public final end()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v1, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget v3, v1, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 17
    .line 18
    const/16 v4, 0x2a

    .line 19
    .line 20
    if-eq v3, v4, :cond_2

    .line 21
    .line 22
    const/16 v4, 0x71

    .line 23
    .line 24
    if-eq v3, v4, :cond_2

    .line 25
    .line 26
    const/16 v4, 0x29a

    .line 27
    .line 28
    if-eq v3, v4, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iput-object v2, v1, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 32
    .line 33
    iput-object v2, v1, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 34
    .line 35
    iput-object v2, v1, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 36
    .line 37
    iput-object v2, v1, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 38
    .line 39
    :goto_0
    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 40
    .line 41
    :cond_3
    :goto_1
    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 42
    .line 43
    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 44
    .line 45
    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v2, v0, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    .line 48
    .line 49
    iput-object v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 50
    .line 51
    return-void
.end method

.method public final finish()V
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    .line 4
    .line 5
    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput v2, v0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 9
    .line 10
    iget v3, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    .line 11
    .line 12
    iput v3, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 13
    .line 14
    iget-boolean v4, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    const/4 v5, 0x4

    .line 19
    invoke-virtual {v0, v5}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, -0x2

    .line 25
    :goto_0
    const/4 v5, 0x1

    .line 26
    if-eq v0, v5, :cond_3

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    new-instance v0, Lkotlin/io/FileSystemException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuffer;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 35
    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    const-string v2, "de"

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const-string v2, "in"

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    const-string v2, "flating: "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 68
    .line 69
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 70
    .line 71
    sub-int/2addr v3, v0

    .line 72
    if-lez v3, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 80
    .line 81
    iget v1, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 82
    .line 83
    if-gtz v1, :cond_0

    .line 84
    .line 85
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 86
    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/jcraft/jzlib/ZOutputStream;->flush()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 97
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf1:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jzlib/ZOutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 3

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 5
    .line 6
    iput-object p1, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 7
    .line 8
    iput p2, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 9
    .line 10
    iput p3, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 11
    .line 12
    :cond_1
    iget-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 13
    .line 14
    iget-object p2, p0, Lcom/jcraft/jzlib/ZOutputStream;->buf:[B

    .line 15
    .line 16
    iput-object p2, p1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 17
    .line 18
    const/4 p3, 0x0

    .line 19
    iput p3, p1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 20
    .line 21
    iget v0, p0, Lcom/jcraft/jzlib/ZOutputStream;->bufsize:I

    .line 22
    .line 23
    iput v0, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 24
    .line 25
    iget v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->flush:I

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/jcraft/jzlib/ZOutputStream;->compress:Z

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 p1, -0x2

    .line 37
    :goto_0
    if-eqz p1, :cond_4

    .line 38
    .line 39
    new-instance p1, Lkotlin/io/FileSystemException;

    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    .line 45
    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    const-string p3, "de"

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const-string p3, "in"

    .line 52
    .line 53
    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    const-string p3, "flating: "

    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->out:Ljava/io/OutputStream;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 79
    .line 80
    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 81
    .line 82
    sub-int/2addr v0, v1

    .line 83
    invoke-virtual {p1, p2, p3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/jcraft/jzlib/ZOutputStream;->z:Lcom/jcraft/jzlib/ZStream;

    .line 87
    .line 88
    iget p2, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 89
    .line 90
    if-gtz p2, :cond_1

    .line 91
    .line 92
    iget p1, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 93
    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    :goto_2
    return-void
.end method
