.class public final enum Lj$/util/stream/z6;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final enum DISTINCT:Lj$/util/stream/z6;

.field public static final enum ORDERED:Lj$/util/stream/z6;

.field public static final enum SHORT_CIRCUIT:Lj$/util/stream/z6;

.field public static final enum SIZED:Lj$/util/stream/z6;

.field public static final enum SORTED:Lj$/util/stream/z6;

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final synthetic v:[Lj$/util/stream/z6;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lj$/util/stream/z6;

    .line 2
    .line 3
    sget-object v1, Lj$/util/stream/y6;->SPLITERATOR:Lj$/util/stream/y6;

    .line 4
    .line 5
    invoke-static {v1}, Lj$/util/stream/z6;->F(Lj$/util/stream/y6;)Lj$/desugar/sun/nio/fs/g;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v3, Lj$/util/stream/y6;->STREAM:Lj$/util/stream/y6;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lj$/desugar/sun/nio/fs/g;->b(Lj$/util/stream/y6;)V

    .line 12
    .line 13
    .line 14
    sget-object v4, Lj$/util/stream/y6;->OP:Lj$/util/stream/y6;

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    iget-object v7, v2, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v7, Ljava/util/Map;

    .line 24
    .line 25
    check-cast v7, Ljava/util/EnumMap;

    .line 26
    .line 27
    invoke-virtual {v7, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v7, "DISTINCT"

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-direct {v0, v7, v8, v8, v2}, Lj$/util/stream/z6;-><init>(Ljava/lang/String;IILj$/desugar/sun/nio/fs/g;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lj$/util/stream/z6;->DISTINCT:Lj$/util/stream/z6;

    .line 37
    .line 38
    new-instance v2, Lj$/util/stream/z6;

    .line 39
    .line 40
    invoke-static {v1}, Lj$/util/stream/z6;->F(Lj$/util/stream/y6;)Lj$/desugar/sun/nio/fs/g;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    invoke-virtual {v7, v3}, Lj$/desugar/sun/nio/fs/g;->b(Lj$/util/stream/y6;)V

    .line 45
    .line 46
    .line 47
    iget-object v9, v7, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v9, Ljava/util/Map;

    .line 50
    .line 51
    check-cast v9, Ljava/util/EnumMap;

    .line 52
    .line 53
    invoke-virtual {v9, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v9, "SORTED"

    .line 57
    .line 58
    const/4 v10, 0x1

    .line 59
    invoke-direct {v2, v9, v10, v10, v7}, Lj$/util/stream/z6;-><init>(Ljava/lang/String;IILj$/desugar/sun/nio/fs/g;)V

    .line 60
    .line 61
    .line 62
    sput-object v2, Lj$/util/stream/z6;->SORTED:Lj$/util/stream/z6;

    .line 63
    .line 64
    new-instance v7, Lj$/util/stream/z6;

    .line 65
    .line 66
    const/4 v9, 0x2

    .line 67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-static {v1}, Lj$/util/stream/z6;->F(Lj$/util/stream/y6;)Lj$/desugar/sun/nio/fs/g;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    invoke-virtual {v12, v3}, Lj$/desugar/sun/nio/fs/g;->b(Lj$/util/stream/y6;)V

    .line 76
    .line 77
    .line 78
    iget-object v13, v12, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v13, Ljava/util/Map;

    .line 81
    .line 82
    check-cast v13, Ljava/util/EnumMap;

    .line 83
    .line 84
    invoke-virtual {v13, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    sget-object v6, Lj$/util/stream/y6;->TERMINAL_OP:Lj$/util/stream/y6;

    .line 88
    .line 89
    iget-object v13, v12, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v13, Ljava/util/Map;

    .line 92
    .line 93
    check-cast v13, Ljava/util/EnumMap;

    .line 94
    .line 95
    invoke-virtual {v13, v6, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    sget-object v13, Lj$/util/stream/y6;->UPSTREAM_TERMINAL_OP:Lj$/util/stream/y6;

    .line 99
    .line 100
    iget-object v14, v12, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v14, Ljava/util/Map;

    .line 103
    .line 104
    check-cast v14, Ljava/util/EnumMap;

    .line 105
    .line 106
    invoke-virtual {v14, v13, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    const-string v14, "ORDERED"

    .line 110
    .line 111
    invoke-direct {v7, v14, v9, v9, v12}, Lj$/util/stream/z6;-><init>(Ljava/lang/String;IILj$/desugar/sun/nio/fs/g;)V

    .line 112
    .line 113
    .line 114
    sput-object v7, Lj$/util/stream/z6;->ORDERED:Lj$/util/stream/z6;

    .line 115
    .line 116
    new-instance v12, Lj$/util/stream/z6;

    .line 117
    .line 118
    invoke-static {v1}, Lj$/util/stream/z6;->F(Lj$/util/stream/y6;)Lj$/desugar/sun/nio/fs/g;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    invoke-virtual {v14, v3}, Lj$/desugar/sun/nio/fs/g;->b(Lj$/util/stream/y6;)V

    .line 123
    .line 124
    .line 125
    iget-object v15, v14, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v15, Ljava/util/Map;

    .line 128
    .line 129
    check-cast v15, Ljava/util/EnumMap;

    .line 130
    .line 131
    invoke-virtual {v15, v4, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string v11, "SIZED"

    .line 135
    .line 136
    invoke-direct {v12, v11, v5, v5, v14}, Lj$/util/stream/z6;-><init>(Ljava/lang/String;IILj$/desugar/sun/nio/fs/g;)V

    .line 137
    .line 138
    .line 139
    sput-object v12, Lj$/util/stream/z6;->SIZED:Lj$/util/stream/z6;

    .line 140
    .line 141
    new-instance v11, Lj$/util/stream/z6;

    .line 142
    .line 143
    invoke-static {v4}, Lj$/util/stream/z6;->F(Lj$/util/stream/y6;)Lj$/desugar/sun/nio/fs/g;

    .line 144
    .line 145
    .line 146
    move-result-object v14

    .line 147
    invoke-virtual {v14, v6}, Lj$/desugar/sun/nio/fs/g;->b(Lj$/util/stream/y6;)V

    .line 148
    .line 149
    .line 150
    const-string v15, "SHORT_CIRCUIT"

    .line 151
    .line 152
    move/from16 v16, v5

    .line 153
    .line 154
    const/4 v5, 0x4

    .line 155
    move/from16 v17, v8

    .line 156
    .line 157
    const/16 v8, 0xc

    .line 158
    .line 159
    invoke-direct {v11, v15, v5, v8, v14}, Lj$/util/stream/z6;-><init>(Ljava/lang/String;IILj$/desugar/sun/nio/fs/g;)V

    .line 160
    .line 161
    .line 162
    sput-object v11, Lj$/util/stream/z6;->SHORT_CIRCUIT:Lj$/util/stream/z6;

    .line 163
    .line 164
    const/4 v8, 0x5

    .line 165
    new-array v8, v8, [Lj$/util/stream/z6;

    .line 166
    .line 167
    aput-object v0, v8, v17

    .line 168
    .line 169
    aput-object v2, v8, v10

    .line 170
    .line 171
    aput-object v7, v8, v9

    .line 172
    .line 173
    aput-object v12, v8, v16

    .line 174
    .line 175
    aput-object v11, v8, v5

    .line 176
    .line 177
    sput-object v8, Lj$/util/stream/z6;->v:[Lj$/util/stream/z6;

    .line 178
    .line 179
    invoke-static {v1}, Lj$/util/stream/z6;->m(Lj$/util/stream/y6;)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    sput v0, Lj$/util/stream/z6;->f:I

    .line 184
    .line 185
    invoke-static {v3}, Lj$/util/stream/z6;->m(Lj$/util/stream/y6;)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    sput v0, Lj$/util/stream/z6;->g:I

    .line 190
    .line 191
    invoke-static {v4}, Lj$/util/stream/z6;->m(Lj$/util/stream/y6;)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    sput v0, Lj$/util/stream/z6;->h:I

    .line 196
    .line 197
    invoke-static {v6}, Lj$/util/stream/z6;->m(Lj$/util/stream/y6;)I

    .line 198
    .line 199
    .line 200
    invoke-static {v13}, Lj$/util/stream/z6;->m(Lj$/util/stream/y6;)I

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lj$/util/stream/z6;->values()[Lj$/util/stream/z6;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    array-length v1, v0

    .line 208
    move/from16 v8, v17

    .line 209
    .line 210
    :goto_0
    if-ge v8, v1, :cond_0

    .line 211
    .line 212
    aget-object v2, v0, v8

    .line 213
    .line 214
    iget v2, v2, Lj$/util/stream/z6;->e:I

    .line 215
    .line 216
    or-int v17, v17, v2

    .line 217
    .line 218
    add-int/lit8 v8, v8, 0x1

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_0
    sput v17, Lj$/util/stream/z6;->i:I

    .line 222
    .line 223
    sget v0, Lj$/util/stream/z6;->g:I

    .line 224
    .line 225
    sput v0, Lj$/util/stream/z6;->j:I

    .line 226
    .line 227
    shl-int/lit8 v1, v0, 0x1

    .line 228
    .line 229
    sput v1, Lj$/util/stream/z6;->k:I

    .line 230
    .line 231
    or-int/2addr v0, v1

    .line 232
    sput v0, Lj$/util/stream/z6;->l:I

    .line 233
    .line 234
    sget-object v0, Lj$/util/stream/z6;->DISTINCT:Lj$/util/stream/z6;

    .line 235
    .line 236
    iget v1, v0, Lj$/util/stream/z6;->c:I

    .line 237
    .line 238
    sput v1, Lj$/util/stream/z6;->m:I

    .line 239
    .line 240
    iget v0, v0, Lj$/util/stream/z6;->d:I

    .line 241
    .line 242
    sput v0, Lj$/util/stream/z6;->n:I

    .line 243
    .line 244
    sget-object v0, Lj$/util/stream/z6;->SORTED:Lj$/util/stream/z6;

    .line 245
    .line 246
    iget v1, v0, Lj$/util/stream/z6;->c:I

    .line 247
    .line 248
    sput v1, Lj$/util/stream/z6;->o:I

    .line 249
    .line 250
    iget v0, v0, Lj$/util/stream/z6;->d:I

    .line 251
    .line 252
    sput v0, Lj$/util/stream/z6;->p:I

    .line 253
    .line 254
    sget-object v0, Lj$/util/stream/z6;->ORDERED:Lj$/util/stream/z6;

    .line 255
    .line 256
    iget v1, v0, Lj$/util/stream/z6;->c:I

    .line 257
    .line 258
    sput v1, Lj$/util/stream/z6;->q:I

    .line 259
    .line 260
    iget v0, v0, Lj$/util/stream/z6;->d:I

    .line 261
    .line 262
    sput v0, Lj$/util/stream/z6;->r:I

    .line 263
    .line 264
    sget-object v0, Lj$/util/stream/z6;->SIZED:Lj$/util/stream/z6;

    .line 265
    .line 266
    iget v1, v0, Lj$/util/stream/z6;->c:I

    .line 267
    .line 268
    sput v1, Lj$/util/stream/z6;->s:I

    .line 269
    .line 270
    iget v0, v0, Lj$/util/stream/z6;->d:I

    .line 271
    .line 272
    sput v0, Lj$/util/stream/z6;->t:I

    .line 273
    .line 274
    sget-object v0, Lj$/util/stream/z6;->SHORT_CIRCUIT:Lj$/util/stream/z6;

    .line 275
    .line 276
    iget v0, v0, Lj$/util/stream/z6;->c:I

    .line 277
    .line 278
    sput v0, Lj$/util/stream/z6;->u:I

    .line 279
    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILj$/desugar/sun/nio/fs/g;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lj$/util/stream/y6;->values()[Lj$/util/stream/y6;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    array-length p2, p1

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    if-ge v1, p2, :cond_0

    .line 12
    .line 13
    aget-object v2, p1, v1

    .line 14
    .line 15
    iget-object v3, p4, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Ljava/util/Map;

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v3, v2, v4}, Lj$/util/Map$-EL;->c(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p4, Lj$/desugar/sun/nio/fs/g;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Ljava/util/Map;

    .line 32
    .line 33
    iput-object p1, p0, Lj$/util/stream/z6;->a:Ljava/util/Map;

    .line 34
    .line 35
    const/4 p1, 0x2

    .line 36
    mul-int/2addr p3, p1

    .line 37
    iput p3, p0, Lj$/util/stream/z6;->b:I

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    shl-int/2addr p2, p3

    .line 41
    iput p2, p0, Lj$/util/stream/z6;->c:I

    .line 42
    .line 43
    shl-int/2addr p1, p3

    .line 44
    iput p1, p0, Lj$/util/stream/z6;->d:I

    .line 45
    .line 46
    const/4 p1, 0x3

    .line 47
    shl-int/2addr p1, p3

    .line 48
    iput p1, p0, Lj$/util/stream/z6;->e:I

    .line 49
    .line 50
    return-void
.end method

.method public static F(Lj$/util/stream/y6;)Lj$/desugar/sun/nio/fs/g;
    .locals 3

    .line 1
    new-instance v0, Lj$/desugar/sun/nio/fs/g;

    .line 2
    .line 3
    new-instance v1, Ljava/util/EnumMap;

    .line 4
    .line 5
    const-class v2, Lj$/util/stream/y6;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0xc

    .line 11
    .line 12
    invoke-direct {v0, v2, v1}, Lj$/desugar/sun/nio/fs/g;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lj$/desugar/sun/nio/fs/g;->b(Lj$/util/stream/y6;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static k(II)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget v0, Lj$/util/stream/z6;->i:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lj$/util/stream/z6;->j:I

    .line 7
    .line 8
    and-int/2addr v0, p0

    .line 9
    shl-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    or-int/2addr v0, p0

    .line 12
    sget v1, Lj$/util/stream/z6;->k:I

    .line 13
    .line 14
    and-int/2addr v1, p0

    .line 15
    shr-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    or-int/2addr v0, v1

    .line 18
    not-int v0, v0

    .line 19
    :goto_0
    and-int/2addr p1, v0

    .line 20
    or-int/2addr p0, p1

    .line 21
    return p0
.end method

.method public static m(Lj$/util/stream/y6;)I
    .locals 6

    .line 1
    invoke-static {}, Lj$/util/stream/z6;->values()[Lj$/util/stream/z6;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-object v4, v0, v2

    .line 11
    .line 12
    iget-object v5, v4, Lj$/util/stream/z6;->a:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    check-cast v5, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget v4, v4, Lj$/util/stream/z6;->b:I

    .line 25
    .line 26
    shl-int v4, v5, v4

    .line 27
    .line 28
    or-int/2addr v3, v4

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return v3
.end method

.method public static n(Lj$/util/Spliterator;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Lj$/util/Spliterator;->characteristics()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x4

    .line 6
    .line 7
    sget v2, Lj$/util/stream/z6;->f:I

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Lj$/util/Spliterator;->getComparator()Ljava/util/Comparator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    and-int p0, v0, v2

    .line 18
    .line 19
    and-int/lit8 p0, p0, -0x5

    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    and-int p0, v0, v2

    .line 23
    .line 24
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/stream/z6;
    .locals 1

    .line 1
    const-class v0, Lj$/util/stream/z6;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lj$/util/stream/z6;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lj$/util/stream/z6;
    .locals 1

    .line 1
    sget-object v0, Lj$/util/stream/z6;->v:[Lj$/util/stream/z6;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lj$/util/stream/z6;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lj$/util/stream/z6;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final u(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lj$/util/stream/z6;->e:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    iget p0, p0, Lj$/util/stream/z6;->c:I

    .line 5
    .line 6
    if-ne p1, p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method
