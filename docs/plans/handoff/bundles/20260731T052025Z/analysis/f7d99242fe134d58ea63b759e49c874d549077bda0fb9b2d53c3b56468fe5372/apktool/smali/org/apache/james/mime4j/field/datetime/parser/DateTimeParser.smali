.class public final Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


# static fields
.field public static final jj_la1_0:[I

.field public static final jj_la1_1:[I


# instance fields
.field public final jj_expentries:Ljava/util/ArrayList;

.field public jj_gen:I

.field public jj_kind:I

.field public final jj_la1:[I

.field public jj_ntk:I

.field public token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

.field public final token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    .line 8
    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 4
        0x2
        0x0
        0x0
        -0x10000000
        0x10
        0x1ffe0
        0x1ffc0
    .end array-data

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    :array_1
    .array-data 4
        0x0
        0x7f00
        0x7f00
        0xff
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/io/StringReader;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x7

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 18
    .line 19
    new-instance v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 20
    .line 21
    invoke-direct {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;-><init>()V

    .line 22
    .line 23
    .line 24
    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    iput-boolean v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->closed:Z

    .line 28
    .line 29
    iput-boolean v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hadNext:Z

    .line 30
    .line 31
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 32
    .line 33
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 34
    .line 35
    iput-object p1, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slots:Ljava/lang/Object;

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    iput p1, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 39
    .line 40
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 41
    .line 42
    const/16 p1, 0x1000

    .line 43
    .line 44
    iput p1, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 45
    .line 46
    iput p1, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 47
    .line 48
    new-array v4, p1, [C

    .line 49
    .line 50
    iput-object v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 51
    .line 52
    new-array v4, p1, [I

    .line 53
    .line 54
    iput-object v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 55
    .line 56
    new-array p1, p1, [I

    .line 57
    .line 58
    iput-object p1, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 59
    .line 60
    new-instance p1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 61
    .line 62
    invoke-direct {p1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 66
    .line 67
    new-instance p1, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 73
    .line 74
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 75
    .line 76
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 77
    .line 78
    :goto_0
    if-ge v3, v0, :cond_0

    .line 79
    .line 80
    iget-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 81
    .line 82
    aput v1, p1, v3

    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public final doParseAll()Lorg/apache/james/mime4j/dom/datetime/DateTime;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :cond_0
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    iget-object v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 21
    .line 22
    aput v1, v6, v5

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :pswitch_0
    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 34
    .line 35
    .line 36
    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 37
    .line 38
    aput v1, v6, v4

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 41
    .line 42
    .line 43
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 44
    .line 45
    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :pswitch_1
    const/16 v1, 0x2e

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_2
    const/16 v1, 0x2d

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_3
    const/16 v1, 0x2c

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_4
    const/16 v1, 0x2b

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_5
    const/16 v1, 0x2a

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_6
    const/16 v1, 0x29

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_7
    const/16 v1, 0x28

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 88
    .line 89
    .line 90
    :goto_0
    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 91
    .line 92
    iget-object v1, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 95
    .line 96
    .line 97
    :goto_1
    const/16 v1, 0x1b

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    iget-object v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 104
    .line 105
    const/16 v8, 0xa

    .line 106
    .line 107
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    iget v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 112
    .line 113
    if-ne v7, v2, :cond_2

    .line 114
    .line 115
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    :cond_2
    const/4 v9, 0x4

    .line 120
    const/16 v14, 0x8

    .line 121
    .line 122
    const/16 v15, 0x9

    .line 123
    .line 124
    move/from16 v16, v3

    .line 125
    .line 126
    const/16 v3, 0xb

    .line 127
    .line 128
    const/16 v5, 0xc

    .line 129
    .line 130
    packed-switch v7, :pswitch_data_2

    .line 131
    .line 132
    .line 133
    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 134
    .line 135
    aput v1, v6, v16

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 138
    .line 139
    .line 140
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 141
    .line 142
    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    .line 143
    .line 144
    .line 145
    throw v0

    .line 146
    :pswitch_8
    const/16 v7, 0x27

    .line 147
    .line 148
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 149
    .line 150
    .line 151
    move/from16 v16, v5

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :pswitch_9
    const/16 v7, 0x26

    .line 155
    .line 156
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 157
    .line 158
    .line 159
    move/from16 v16, v3

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :pswitch_a
    const/16 v7, 0x25

    .line 163
    .line 164
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 165
    .line 166
    .line 167
    move/from16 v16, v8

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :pswitch_b
    const/16 v7, 0x24

    .line 171
    .line 172
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 173
    .line 174
    .line 175
    move/from16 v16, v15

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :pswitch_c
    const/16 v7, 0x23

    .line 179
    .line 180
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 181
    .line 182
    .line 183
    move/from16 v16, v14

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :pswitch_d
    const/16 v7, 0x22

    .line 187
    .line 188
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 189
    .line 190
    .line 191
    const/16 v16, 0x7

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :pswitch_e
    const/16 v7, 0x21

    .line 195
    .line 196
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 197
    .line 198
    .line 199
    const/16 v16, 0x6

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :pswitch_f
    const/16 v7, 0x20

    .line 203
    .line 204
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 205
    .line 206
    .line 207
    const/16 v16, 0x5

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :pswitch_10
    const/16 v7, 0x1f

    .line 211
    .line 212
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 213
    .line 214
    .line 215
    move/from16 v16, v9

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :pswitch_11
    const/16 v7, 0x1e

    .line 219
    .line 220
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :pswitch_12
    const/16 v7, 0x1d

    .line 225
    .line 226
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 227
    .line 228
    .line 229
    move/from16 v16, v4

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :pswitch_13
    const/16 v7, 0x1c

    .line 233
    .line 234
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 235
    .line 236
    .line 237
    const/16 v16, 0x1

    .line 238
    .line 239
    :goto_2
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    iget-object v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 244
    .line 245
    const/16 v18, 0x5

    .line 246
    .line 247
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    const/16 v19, 0x6

    .line 252
    .line 253
    const/4 v11, 0x0

    .line 254
    if-ne v10, v4, :cond_3

    .line 255
    .line 256
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    const/16 v10, 0x36

    .line 261
    .line 262
    if-le v4, v10, :cond_4

    .line 263
    .line 264
    const-string v4, "19"

    .line 265
    .line 266
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    :cond_3
    :goto_3
    move-object v10, v7

    .line 271
    goto :goto_4

    .line 272
    :cond_4
    const-string v4, "20"

    .line 273
    .line 274
    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    goto :goto_3

    .line 279
    :goto_4
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    iget-object v4, v4, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v4, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    invoke-virtual {v0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    iget-object v7, v7, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 297
    .line 298
    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    iget v13, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 303
    .line 304
    if-ne v13, v2, :cond_5

    .line 305
    .line 306
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    :cond_5
    if-eq v13, v9, :cond_6

    .line 311
    .line 312
    iget v13, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 313
    .line 314
    aput v13, v6, v9

    .line 315
    .line 316
    move v9, v11

    .line 317
    goto :goto_5

    .line 318
    :cond_6
    invoke-virtual {v0, v9}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 322
    .line 323
    .line 324
    move-result-object v9

    .line 325
    iget-object v9, v9, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 326
    .line 327
    invoke-static {v9, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 328
    .line 329
    .line 330
    move-result v9

    .line 331
    :goto_5
    iget v13, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 332
    .line 333
    if-ne v13, v2, :cond_7

    .line 334
    .line 335
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    .line 336
    .line 337
    .line 338
    move-result v13

    .line 339
    :cond_7
    packed-switch v13, :pswitch_data_3

    .line 340
    .line 341
    .line 342
    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 343
    .line 344
    aput v1, v6, v18

    .line 345
    .line 346
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 347
    .line 348
    .line 349
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 350
    .line 351
    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    .line 352
    .line 353
    .line 354
    throw v0

    .line 355
    :pswitch_14
    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 356
    .line 357
    if-ne v1, v2, :cond_8

    .line 358
    .line 359
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk()I

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    :cond_8
    const/4 v13, -0x5

    .line 364
    const/16 v17, -0x6

    .line 365
    .line 366
    const/16 v18, -0x7

    .line 367
    .line 368
    packed-switch v1, :pswitch_data_4

    .line 369
    .line 370
    .line 371
    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 372
    .line 373
    aput v1, v6, v19

    .line 374
    .line 375
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 376
    .line 377
    .line 378
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 379
    .line 380
    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :pswitch_15
    const/16 v1, 0x10

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    iget-object v1, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    .line 393
    .line 394
    .line 395
    :goto_6
    move v13, v11

    .line 396
    goto :goto_9

    .line 397
    :pswitch_16
    const/16 v1, 0xf

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 400
    .line 401
    .line 402
    :goto_7
    move/from16 v13, v18

    .line 403
    .line 404
    goto :goto_9

    .line 405
    :pswitch_17
    const/16 v1, 0xe

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 408
    .line 409
    .line 410
    const/4 v13, -0x8

    .line 411
    goto :goto_9

    .line 412
    :pswitch_18
    const/16 v1, 0xd

    .line 413
    .line 414
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 415
    .line 416
    .line 417
    :goto_8
    move/from16 v13, v17

    .line 418
    .line 419
    goto :goto_9

    .line 420
    :pswitch_19
    invoke-virtual {v0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 421
    .line 422
    .line 423
    goto :goto_7

    .line 424
    :pswitch_1a
    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 425
    .line 426
    .line 427
    goto :goto_9

    .line 428
    :pswitch_1b
    invoke-virtual {v0, v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 429
    .line 430
    .line 431
    goto :goto_8

    .line 432
    :pswitch_1c
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 433
    .line 434
    .line 435
    const/4 v13, -0x4

    .line 436
    goto :goto_9

    .line 437
    :pswitch_1d
    invoke-virtual {v0, v14}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 438
    .line 439
    .line 440
    goto :goto_9

    .line 441
    :pswitch_1e
    const/4 v1, 0x7

    .line 442
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 443
    .line 444
    .line 445
    goto :goto_6

    .line 446
    :pswitch_1f
    move/from16 v1, v19

    .line 447
    .line 448
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 449
    .line 450
    .line 451
    goto :goto_6

    .line 452
    :goto_9
    mul-int/lit8 v13, v13, 0x64

    .line 453
    .line 454
    :goto_a
    move v15, v9

    .line 455
    goto :goto_c

    .line 456
    :pswitch_20
    move/from16 v3, v18

    .line 457
    .line 458
    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    iget-object v1, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 467
    .line 468
    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    iget-object v3, v3, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 473
    .line 474
    const-string v5, "-"

    .line 475
    .line 476
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    if-eqz v3, :cond_9

    .line 481
    .line 482
    goto :goto_b

    .line 483
    :cond_9
    const/4 v2, 0x1

    .line 484
    :goto_b
    mul-int v13, v1, v2

    .line 485
    .line 486
    goto :goto_a

    .line 487
    :goto_c
    new-instance v9, Lorg/apache/james/mime4j/dom/datetime/DateTime;

    .line 488
    .line 489
    move v14, v7

    .line 490
    move v1, v11

    .line 491
    move/from16 v11, v16

    .line 492
    .line 493
    move/from16 v16, v13

    .line 494
    .line 495
    move v13, v4

    .line 496
    invoke-direct/range {v9 .. v16}, Lorg/apache/james/mime4j/dom/datetime/DateTime;-><init>(Ljava/lang/String;IIIIII)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 500
    .line 501
    .line 502
    return-object v9

    .line 503
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_20
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch
.end method

.method public final jj_consume_token(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 17
    .line 18
    iput-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 19
    .line 20
    :goto_0
    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 22
    .line 23
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 24
    .line 25
    iget v3, v2, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne v3, p1, :cond_1

    .line 29
    .line 30
    iget p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 31
    .line 32
    add-int/2addr p1, v4

    .line 33
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 37
    .line 38
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 39
    .line 40
    iget-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_expentries:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x31

    .line 46
    .line 47
    new-array v2, v0, [Z

    .line 48
    .line 49
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 50
    .line 51
    if-ltz v3, :cond_2

    .line 52
    .line 53
    aput-boolean v4, v2, v3

    .line 54
    .line 55
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_kind:I

    .line 56
    .line 57
    :cond_2
    const/4 v1, 0x0

    .line 58
    move v3, v1

    .line 59
    :goto_1
    const/4 v5, 0x7

    .line 60
    if-ge v3, v5, :cond_6

    .line 61
    .line 62
    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1:[I

    .line 63
    .line 64
    aget v5, v5, v3

    .line 65
    .line 66
    iget v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_gen:I

    .line 67
    .line 68
    if-ne v5, v6, :cond_5

    .line 69
    .line 70
    move v5, v1

    .line 71
    :goto_2
    const/16 v6, 0x20

    .line 72
    .line 73
    if-ge v5, v6, :cond_5

    .line 74
    .line 75
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_0:[I

    .line 76
    .line 77
    aget v6, v6, v3

    .line 78
    .line 79
    shl-int v7, v4, v5

    .line 80
    .line 81
    and-int/2addr v6, v7

    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    aput-boolean v4, v2, v5

    .line 85
    .line 86
    :cond_3
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_la1_1:[I

    .line 87
    .line 88
    aget v6, v6, v3

    .line 89
    .line 90
    and-int/2addr v6, v7

    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    add-int/lit8 v6, v5, 0x20

    .line 94
    .line 95
    aput-boolean v4, v2, v6

    .line 96
    .line 97
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    move v3, v1

    .line 104
    :goto_3
    if-ge v3, v0, :cond_8

    .line 105
    .line 106
    aget-boolean v5, v2, v3

    .line 107
    .line 108
    if-eqz v5, :cond_7

    .line 109
    .line 110
    filled-new-array {v3}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    new-array v0, v0, [[I

    .line 125
    .line 126
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-ge v1, v2, :cond_9

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, [I

    .line 137
    .line 138
    aput-object v2, v0, v1

    .line 139
    .line 140
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_9
    new-instance p1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 144
    .line 145
    iget-object p0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 146
    .line 147
    const-string v1, ""

    .line 148
    .line 149
    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v1, "line.separator"

    .line 153
    .line 154
    const-string v2, "\n"

    .line 155
    .line 156
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iput-object v1, p1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->eol:Ljava/lang/String;

    .line 161
    .line 162
    iput-boolean v4, p1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->specialConstructor:Z

    .line 163
    .line 164
    iput-object p0, p1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 165
    .line 166
    iput-object v0, p1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->expectedTokenSequences:[[I

    .line 167
    .line 168
    sget-object p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;->tokenImage:[Ljava/lang/String;

    .line 169
    .line 170
    iput-object p0, p1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->tokenImage:[Ljava/lang/String;

    .line 171
    .line 172
    throw p1
.end method

.method public final jj_ntk()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->token_source:Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;

    .line 8
    .line 9
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 14
    .line 15
    iget v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    .line 16
    .line 17
    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    iget v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    .line 21
    .line 22
    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->jj_ntk:I

    .line 23
    .line 24
    return v0
.end method
