.class public final Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public locals:[I

.field public localsTop:I

.field public rawStackMap:[B

.field public rawStackMapTop:I

.field public stack:[I

.field public stackTop:I

.field public superBlocks:[Lorg/mozilla/classfile/SuperBlock;

.field public final synthetic this$0:Lorg/mozilla/classfile/ClassFileWriter;

.field public wide:Z

.field public workList:[Lorg/mozilla/classfile/SuperBlock;

.field public workListTop:I


# direct methods
.method public constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 8
    .line 9
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 10
    .line 11
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 12
    .line 13
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    .line 14
    .line 15
    iput-object p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 19
    .line 20
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 21
    .line 22
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    .line 23
    .line 24
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 25
    .line 26
    iput-boolean p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    .line 7
    .line 8
    iput-boolean v0, p1, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    .line 9
    .line 10
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    .line 11
    .line 12
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    mul-int/lit8 v2, v0, 0x2

    .line 18
    .line 19
    new-array v2, v2, [Lorg/mozilla/classfile/SuperBlock;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    .line 28
    .line 29
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    .line 30
    .line 31
    add-int/lit8 v2, v1, 0x1

    .line 32
    .line 33
    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    .line 34
    .line 35
    aput-object p1, v0, v1

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final executeALoad(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 6
    .line 7
    aget v0, v0, p1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    and-int/lit16 v1, v0, 0xff

    .line 12
    .line 13
    const/4 v2, 0x7

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-eq v1, v2, :cond_2

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string p0, "bad local variable type: "

    .line 28
    .line 29
    const-string v1, " at index: "

    .line 30
    .line 31
    invoke-static {v0, p1, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final executeStore(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    add-int/lit8 v1, p1, 0x1

    .line 9
    .line 10
    new-array v2, v1, [I

    .line 11
    .line 12
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    iput-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 19
    .line 20
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 21
    .line 22
    :cond_0
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 23
    .line 24
    aput p2, p0, p1

    .line 25
    .line 26
    return-void
.end method

.method public final executeWorkList()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    :pswitch_0
    iget v1, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    .line 4
    .line 5
    if-lez v1, :cond_29

    .line 6
    .line 7
    iget-object v2, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workList:[Lorg/mozilla/classfile/SuperBlock;

    .line 8
    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    iput v1, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->workListTop:I

    .line 12
    .line 13
    aget-object v1, v2, v1

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v1, Lorg/mozilla/classfile/SuperBlock;->isInQueue:Z

    .line 17
    .line 18
    iget v3, v1, Lorg/mozilla/classfile/SuperBlock;->start:I

    .line 19
    .line 20
    iget v4, v1, Lorg/mozilla/classfile/SuperBlock;->end:I

    .line 21
    .line 22
    iget-object v5, v1, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    .line 23
    .line 24
    array-length v6, v5

    .line 25
    new-array v6, v6, [I

    .line 26
    .line 27
    array-length v7, v5

    .line 28
    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iput-object v6, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 32
    .line 33
    iget-object v5, v1, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    .line 34
    .line 35
    array-length v6, v5

    .line 36
    new-array v7, v6, [I

    .line 37
    .line 38
    array-length v8, v5

    .line 39
    invoke-static {v5, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    .line 41
    .line 42
    iput-object v7, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 43
    .line 44
    iget-object v5, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 45
    .line 46
    array-length v5, v5

    .line 47
    iput v5, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 48
    .line 49
    iput v6, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 50
    .line 51
    iget-object v5, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    .line 52
    .line 53
    iget v6, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 54
    .line 55
    iget-object v7, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 56
    .line 57
    const/4 v8, 0x1

    .line 58
    if-le v6, v8, :cond_2

    .line 59
    .line 60
    const v6, 0x7fffffff

    .line 61
    .line 62
    .line 63
    move v9, v2

    .line 64
    move v10, v9

    .line 65
    :goto_1
    iget v11, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTableTop:I

    .line 66
    .line 67
    if-ge v10, v11, :cond_3

    .line 68
    .line 69
    iget-object v11, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 70
    .line 71
    aget-object v11, v11, v10

    .line 72
    .line 73
    iget v12, v11, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    .line 74
    .line 75
    invoke-virtual {v5, v12}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    if-lt v4, v12, :cond_1

    .line 80
    .line 81
    iget v11, v11, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    .line 82
    .line 83
    invoke-virtual {v5, v11}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    if-ge v3, v11, :cond_1

    .line 88
    .line 89
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    add-int/lit8 v11, v10, 0x1

    .line 94
    .line 95
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move v9, v6

    .line 103
    move v6, v2

    .line 104
    :cond_3
    move v10, v2

    .line 105
    :goto_2
    if-ge v3, v4, :cond_28

    .line 106
    .line 107
    iget-object v10, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 108
    .line 109
    aget-byte v10, v10, v3

    .line 110
    .line 111
    const/16 v12, 0xff

    .line 112
    .line 113
    and-int/2addr v10, v12

    .line 114
    const/16 v13, 0x8

    .line 115
    .line 116
    const/4 v14, 0x2

    .line 117
    const/16 v18, 0x3

    .line 118
    .line 119
    const-string v15, "V"

    .line 120
    .line 121
    const/16 v11, 0x29

    .line 122
    .line 123
    packed-switch v10, :pswitch_data_0

    .line 124
    .line 125
    .line 126
    :pswitch_1
    const-string v0, "bad opcode: "

    .line 127
    .line 128
    invoke-static {v10, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_2
    iput-boolean v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 137
    .line 138
    :cond_4
    :goto_3
    :pswitch_3
    const/4 v8, 0x5

    .line 139
    goto/16 :goto_1a

    .line 140
    .line 141
    :pswitch_4
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 142
    .line 143
    .line 144
    add-int/lit8 v11, v3, 0x1

    .line 145
    .line 146
    invoke-virtual {v0, v11, v14}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    invoke-static {v11}, Lokio/Okio;->OBJECT(I)I

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :pswitch_5
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    iput v2, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 163
    .line 164
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :pswitch_6
    add-int/lit8 v11, v3, 0x1

    .line 169
    .line 170
    invoke-virtual {v0, v11, v14}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    invoke-virtual {v7, v11}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v11

    .line 178
    check-cast v11, Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 181
    .line 182
    .line 183
    new-instance v13, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v15, "[L"

    .line 186
    .line 187
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v11, ";"

    .line 194
    .line 195
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    invoke-virtual {v7, v11}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    invoke-static {v11}, Lokio/Okio;->OBJECT(I)I

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :pswitch_7
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 215
    .line 216
    .line 217
    iget-object v11, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 218
    .line 219
    add-int/lit8 v13, v3, 0x1

    .line 220
    .line 221
    aget-byte v11, v11, v13

    .line 222
    .line 223
    packed-switch v11, :pswitch_data_1

    .line 224
    .line 225
    .line 226
    const-string v0, "bad operand"

    .line 227
    .line 228
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :pswitch_8
    const/16 v11, 0x4a

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :pswitch_9
    const/16 v11, 0x49

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :pswitch_a
    const/16 v11, 0x53

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :pswitch_b
    const/16 v11, 0x42

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :pswitch_c
    const/16 v11, 0x44

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :pswitch_d
    const/16 v11, 0x46

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :pswitch_e
    const/16 v11, 0x43

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :pswitch_f
    const/16 v11, 0x5a

    .line 254
    .line 255
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v15, "["

    .line 258
    .line 259
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    invoke-virtual {v7, v11}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    int-to-short v11, v11

    .line 274
    invoke-static {v11}, Lokio/Okio;->OBJECT(I)I

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_3

    .line 282
    .line 283
    :pswitch_10
    const v11, 0xffff

    .line 284
    .line 285
    .line 286
    and-int/2addr v11, v3

    .line 287
    shl-int/2addr v11, v13

    .line 288
    or-int/2addr v11, v13

    .line 289
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :pswitch_11
    add-int/lit8 v13, v3, 0x1

    .line 295
    .line 296
    invoke-virtual {v0, v13, v14}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 297
    .line 298
    .line 299
    move-result v13

    .line 300
    invoke-virtual {v7, v13}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v13

    .line 304
    check-cast v13, Ljava/lang/String;

    .line 305
    .line 306
    invoke-static {v13}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v20

    .line 310
    ushr-int/lit8 v12, v20, 0x10

    .line 311
    .line 312
    move/from16 v22, v8

    .line 313
    .line 314
    move v8, v2

    .line 315
    :goto_5
    if-ge v8, v12, :cond_5

    .line 316
    .line 317
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 318
    .line 319
    .line 320
    add-int/lit8 v8, v8, 0x1

    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_5
    invoke-virtual {v13, v11}, Ljava/lang/String;->indexOf(I)I

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    add-int/lit8 v8, v8, 0x1

    .line 328
    .line 329
    invoke-virtual {v13, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    invoke-static {v8}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    if-nez v11, :cond_4

    .line 342
    .line 343
    invoke-static {v8, v7}, Lokio/Okio;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    .line 344
    .line 345
    .line 346
    move-result v8

    .line 347
    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_3

    .line 351
    .line 352
    :pswitch_12
    move/from16 v22, v8

    .line 353
    .line 354
    add-int/lit8 v8, v3, 0x1

    .line 355
    .line 356
    invoke-virtual {v0, v8, v14}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    invoke-virtual {v7, v8}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    check-cast v8, Lorg/mozilla/classfile/FieldOrMethodRef;

    .line 365
    .line 366
    iget-object v12, v8, Lorg/mozilla/classfile/FieldOrMethodRef;->type:Ljava/lang/String;

    .line 367
    .line 368
    iget-object v2, v8, Lorg/mozilla/classfile/FieldOrMethodRef;->name:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {v12}, Lorg/mozilla/classfile/ClassFileWriter;->sizeOfParameters(Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    move-result v23

    .line 374
    ushr-int/lit8 v14, v23, 0x10

    .line 375
    .line 376
    const/4 v11, 0x0

    .line 377
    :goto_6
    if-ge v11, v14, :cond_6

    .line 378
    .line 379
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 380
    .line 381
    .line 382
    add-int/lit8 v11, v11, 0x1

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_6
    const/16 v11, 0xb8

    .line 386
    .line 387
    if-eq v10, v11, :cond_7

    .line 388
    .line 389
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 390
    .line 391
    .line 392
    move-result v11

    .line 393
    and-int/lit16 v14, v11, 0xff

    .line 394
    .line 395
    if-eq v14, v13, :cond_8

    .line 396
    .line 397
    const/4 v13, 0x6

    .line 398
    if-ne v14, v13, :cond_7

    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_7
    const/16 v2, 0x29

    .line 402
    .line 403
    goto :goto_b

    .line 404
    :cond_8
    :goto_7
    const-string v13, "<init>"

    .line 405
    .line 406
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_d

    .line 411
    .line 412
    const/16 v2, 0x8

    .line 413
    .line 414
    if-ne v14, v2, :cond_9

    .line 415
    .line 416
    iget-object v2, v8, Lorg/mozilla/classfile/FieldOrMethodRef;->className:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v7, v2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    invoke-static {v2}, Lokio/Okio;->OBJECT(I)I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    goto :goto_8

    .line 427
    :cond_9
    iget v2, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsThisClassIndex:I

    .line 428
    .line 429
    invoke-static {v2}, Lokio/Okio;->OBJECT(I)I

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    :goto_8
    iget-object v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 434
    .line 435
    iget v13, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 436
    .line 437
    const/4 v14, 0x0

    .line 438
    :goto_9
    if-ge v14, v13, :cond_b

    .line 439
    .line 440
    move/from16 v20, v2

    .line 441
    .line 442
    aget v2, v8, v14

    .line 443
    .line 444
    if-ne v2, v11, :cond_a

    .line 445
    .line 446
    aput v20, v8, v14

    .line 447
    .line 448
    :cond_a
    add-int/lit8 v14, v14, 0x1

    .line 449
    .line 450
    move/from16 v2, v20

    .line 451
    .line 452
    goto :goto_9

    .line 453
    :cond_b
    move/from16 v20, v2

    .line 454
    .line 455
    iget-object v2, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 456
    .line 457
    iget v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 458
    .line 459
    const/4 v13, 0x0

    .line 460
    :goto_a
    if-ge v13, v8, :cond_7

    .line 461
    .line 462
    aget v14, v2, v13

    .line 463
    .line 464
    if-ne v14, v11, :cond_c

    .line 465
    .line 466
    aput v20, v2, v13

    .line 467
    .line 468
    :cond_c
    add-int/lit8 v13, v13, 0x1

    .line 469
    .line 470
    goto :goto_a

    .line 471
    :cond_d
    const-string v0, "bad instance"

    .line 472
    .line 473
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    return-void

    .line 477
    :goto_b
    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    add-int/lit8 v2, v2, 0x1

    .line 482
    .line 483
    invoke-virtual {v12, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v8

    .line 495
    if-nez v8, :cond_4

    .line 496
    .line 497
    invoke-static {v2, v7}, Lokio/Okio;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 502
    .line 503
    .line 504
    goto/16 :goto_3

    .line 505
    .line 506
    :pswitch_13
    move/from16 v22, v8

    .line 507
    .line 508
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 509
    .line 510
    .line 511
    goto :goto_c

    .line 512
    :pswitch_14
    move/from16 v22, v8

    .line 513
    .line 514
    :goto_c
    add-int/lit8 v2, v3, 0x1

    .line 515
    .line 516
    const/4 v8, 0x2

    .line 517
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    invoke-virtual {v7, v2}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    check-cast v2, Lorg/mozilla/classfile/FieldOrMethodRef;

    .line 526
    .line 527
    iget-object v2, v2, Lorg/mozilla/classfile/FieldOrMethodRef;->type:Ljava/lang/String;

    .line 528
    .line 529
    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-static {v2, v7}, Lokio/Okio;->fromType(Ljava/lang/String;Lorg/mozilla/classfile/ConstantPool;)I

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 538
    .line 539
    .line 540
    goto/16 :goto_3

    .line 541
    .line 542
    :pswitch_15
    move/from16 v22, v8

    .line 543
    .line 544
    iput v2, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 545
    .line 546
    goto/16 :goto_3

    .line 547
    .line 548
    :pswitch_16
    move/from16 v22, v8

    .line 549
    .line 550
    add-int/lit8 v2, v3, 0x1

    .line 551
    .line 552
    not-int v8, v3

    .line 553
    and-int/lit8 v8, v8, 0x3

    .line 554
    .line 555
    add-int/2addr v2, v8

    .line 556
    add-int/lit8 v8, v2, 0x4

    .line 557
    .line 558
    const/4 v11, 0x4

    .line 559
    invoke-virtual {v0, v8, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 560
    .line 561
    .line 562
    move-result v8

    .line 563
    add-int/lit8 v12, v2, 0x8

    .line 564
    .line 565
    invoke-virtual {v0, v12, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 566
    .line 567
    .line 568
    move-result v12

    .line 569
    sub-int/2addr v12, v8

    .line 570
    add-int/2addr v12, v11

    .line 571
    mul-int/2addr v12, v11

    .line 572
    add-int/2addr v12, v2

    .line 573
    sub-int v2, v12, v3

    .line 574
    .line 575
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 576
    .line 577
    .line 578
    const/4 v8, 0x5

    .line 579
    goto/16 :goto_1b

    .line 580
    .line 581
    :pswitch_17
    move/from16 v22, v8

    .line 582
    .line 583
    goto/16 :goto_d

    .line 584
    .line 585
    :pswitch_18
    move/from16 v22, v8

    .line 586
    .line 587
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 592
    .line 593
    .line 594
    move-result v8

    .line 595
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_3

    .line 602
    .line 603
    :pswitch_19
    move/from16 v22, v8

    .line 604
    .line 605
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    .line 606
    .line 607
    .line 608
    move-result-wide v11

    .line 609
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    .line 610
    .line 611
    .line 612
    move-result-wide v13

    .line 613
    invoke-virtual {v0, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v13, v14}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_3

    .line 623
    .line 624
    :pswitch_1a
    move/from16 v22, v8

    .line 625
    .line 626
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    .line 627
    .line 628
    .line 629
    move-result-wide v11

    .line 630
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 631
    .line 632
    .line 633
    move-result v2

    .line 634
    invoke-virtual {v0, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_3

    .line 644
    .line 645
    :pswitch_1b
    move/from16 v22, v8

    .line 646
    .line 647
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    .line 648
    .line 649
    .line 650
    move-result-wide v11

    .line 651
    invoke-virtual {v0, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v0, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_3

    .line 658
    .line 659
    :pswitch_1c
    move/from16 v22, v8

    .line 660
    .line 661
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    .line 666
    .line 667
    .line 668
    move-result-wide v11

    .line 669
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0, v11, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push2(J)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_3

    .line 679
    .line 680
    :pswitch_1d
    move/from16 v22, v8

    .line 681
    .line 682
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 683
    .line 684
    .line 685
    move-result v2

    .line 686
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 687
    .line 688
    .line 689
    move-result v8

    .line 690
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 697
    .line 698
    .line 699
    goto/16 :goto_3

    .line 700
    .line 701
    :pswitch_1e
    move/from16 v22, v8

    .line 702
    .line 703
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 704
    .line 705
    .line 706
    move-result v2

    .line 707
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_3

    .line 714
    .line 715
    :pswitch_1f
    move/from16 v22, v8

    .line 716
    .line 717
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop2()J

    .line 718
    .line 719
    .line 720
    goto/16 :goto_3

    .line 721
    .line 722
    :pswitch_20
    move/from16 v22, v8

    .line 723
    .line 724
    goto :goto_e

    .line 725
    :pswitch_21
    move/from16 v22, v8

    .line 726
    .line 727
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 728
    .line 729
    .line 730
    :goto_d
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 731
    .line 732
    .line 733
    :goto_e
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 734
    .line 735
    .line 736
    goto/16 :goto_3

    .line 737
    .line 738
    :pswitch_22
    move/from16 v22, v8

    .line 739
    .line 740
    add-int/lit8 v2, v10, -0x4b

    .line 741
    .line 742
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 743
    .line 744
    .line 745
    move-result v8

    .line 746
    iget v11, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 747
    .line 748
    if-lt v2, v11, :cond_e

    .line 749
    .line 750
    add-int/lit8 v12, v10, -0x4a

    .line 751
    .line 752
    new-array v13, v12, [I

    .line 753
    .line 754
    iget-object v14, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 755
    .line 756
    const/4 v15, 0x0

    .line 757
    invoke-static {v14, v15, v13, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 758
    .line 759
    .line 760
    iput-object v13, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 761
    .line 762
    iput v12, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 763
    .line 764
    :cond_e
    iget-object v11, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 765
    .line 766
    aput v8, v11, v2

    .line 767
    .line 768
    goto/16 :goto_3

    .line 769
    .line 770
    :pswitch_23
    move/from16 v22, v8

    .line 771
    .line 772
    add-int/lit8 v2, v10, -0x47

    .line 773
    .line 774
    move/from16 v8, v18

    .line 775
    .line 776
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    .line 777
    .line 778
    .line 779
    goto/16 :goto_3

    .line 780
    .line 781
    :pswitch_24
    move/from16 v22, v8

    .line 782
    .line 783
    add-int/lit8 v2, v10, -0x43

    .line 784
    .line 785
    const/4 v8, 0x2

    .line 786
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    .line 787
    .line 788
    .line 789
    goto/16 :goto_3

    .line 790
    .line 791
    :pswitch_25
    move/from16 v22, v8

    .line 792
    .line 793
    add-int/lit8 v2, v10, -0x3f

    .line 794
    .line 795
    const/4 v11, 0x4

    .line 796
    invoke-virtual {v0, v2, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_3

    .line 800
    .line 801
    :pswitch_26
    move/from16 v22, v8

    .line 802
    .line 803
    add-int/lit8 v2, v10, -0x3b

    .line 804
    .line 805
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    .line 806
    .line 807
    .line 808
    goto/16 :goto_3

    .line 809
    .line 810
    :pswitch_27
    add-int/lit8 v2, v3, 0x1

    .line 811
    .line 812
    iget-boolean v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 813
    .line 814
    if-eqz v8, :cond_f

    .line 815
    .line 816
    const/4 v8, 0x2

    .line 817
    goto :goto_f

    .line 818
    :cond_f
    const/4 v8, 0x1

    .line 819
    :goto_f
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 820
    .line 821
    .line 822
    move-result v2

    .line 823
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 824
    .line 825
    .line 826
    move-result v8

    .line 827
    iget v11, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 828
    .line 829
    if-lt v2, v11, :cond_10

    .line 830
    .line 831
    add-int/lit8 v12, v2, 0x1

    .line 832
    .line 833
    new-array v13, v12, [I

    .line 834
    .line 835
    iget-object v14, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 836
    .line 837
    const/4 v15, 0x0

    .line 838
    invoke-static {v14, v15, v13, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 839
    .line 840
    .line 841
    iput-object v13, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 842
    .line 843
    iput v12, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 844
    .line 845
    :cond_10
    iget-object v11, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 846
    .line 847
    aput v8, v11, v2

    .line 848
    .line 849
    goto/16 :goto_3

    .line 850
    .line 851
    :pswitch_28
    add-int/lit8 v2, v3, 0x1

    .line 852
    .line 853
    iget-boolean v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 854
    .line 855
    if-eqz v8, :cond_11

    .line 856
    .line 857
    const/4 v8, 0x2

    .line 858
    goto :goto_10

    .line 859
    :cond_11
    const/4 v8, 0x1

    .line 860
    :goto_10
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 861
    .line 862
    .line 863
    move-result v2

    .line 864
    const/4 v8, 0x3

    .line 865
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    .line 866
    .line 867
    .line 868
    goto/16 :goto_3

    .line 869
    .line 870
    :pswitch_29
    add-int/lit8 v2, v3, 0x1

    .line 871
    .line 872
    iget-boolean v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 873
    .line 874
    if-eqz v8, :cond_12

    .line 875
    .line 876
    const/4 v8, 0x2

    .line 877
    goto :goto_11

    .line 878
    :cond_12
    const/4 v8, 0x1

    .line 879
    :goto_11
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 880
    .line 881
    .line 882
    move-result v2

    .line 883
    const/4 v8, 0x2

    .line 884
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_3

    .line 888
    .line 889
    :pswitch_2a
    add-int/lit8 v2, v3, 0x1

    .line 890
    .line 891
    iget-boolean v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 892
    .line 893
    if-eqz v8, :cond_13

    .line 894
    .line 895
    const/4 v8, 0x2

    .line 896
    goto :goto_12

    .line 897
    :cond_13
    const/4 v8, 0x1

    .line 898
    :goto_12
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 899
    .line 900
    .line 901
    move-result v2

    .line 902
    const/4 v11, 0x4

    .line 903
    invoke-virtual {v0, v2, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_3

    .line 907
    .line 908
    :pswitch_2b
    add-int/lit8 v2, v3, 0x1

    .line 909
    .line 910
    iget-boolean v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 911
    .line 912
    if-eqz v8, :cond_14

    .line 913
    .line 914
    const/4 v8, 0x2

    .line 915
    goto :goto_13

    .line 916
    :cond_14
    const/4 v8, 0x1

    .line 917
    :goto_13
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 918
    .line 919
    .line 920
    move-result v2

    .line 921
    const/4 v8, 0x1

    .line 922
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeStore(II)V

    .line 923
    .line 924
    .line 925
    goto/16 :goto_3

    .line 926
    .line 927
    :pswitch_2c
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 928
    .line 929
    .line 930
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 931
    .line 932
    .line 933
    move-result v2

    .line 934
    const/16 v24, 0x8

    .line 935
    .line 936
    ushr-int/lit8 v2, v2, 0x8

    .line 937
    .line 938
    invoke-virtual {v7, v2}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v2

    .line 942
    check-cast v2, Ljava/lang/String;

    .line 943
    .line 944
    const/4 v15, 0x0

    .line 945
    invoke-virtual {v2, v15}, Ljava/lang/String;->charAt(I)C

    .line 946
    .line 947
    .line 948
    move-result v11

    .line 949
    const/16 v12, 0x5b

    .line 950
    .line 951
    if-ne v11, v12, :cond_15

    .line 952
    .line 953
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    invoke-static {v2}, Lorg/mozilla/classfile/ClassFileWriter;->descriptorToInternalName(Ljava/lang/String;)Ljava/lang/String;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    invoke-virtual {v7, v2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 962
    .line 963
    .line 964
    move-result v2

    .line 965
    invoke-static {v2}, Lokio/Okio;->OBJECT(I)I

    .line 966
    .line 967
    .line 968
    move-result v2

    .line 969
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 970
    .line 971
    .line 972
    goto/16 :goto_3

    .line 973
    .line 974
    :cond_15
    const-string v0, "bad array type"

    .line 975
    .line 976
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    return-void

    .line 980
    :pswitch_2d
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 981
    .line 982
    .line 983
    :pswitch_2e
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 984
    .line 985
    .line 986
    const/4 v2, 0x2

    .line 987
    const/4 v8, 0x3

    .line 988
    goto/16 :goto_16

    .line 989
    .line 990
    :pswitch_2f
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 991
    .line 992
    .line 993
    :pswitch_30
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 994
    .line 995
    .line 996
    const/4 v2, 0x2

    .line 997
    goto/16 :goto_17

    .line 998
    .line 999
    :pswitch_31
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1000
    .line 1001
    .line 1002
    :pswitch_32
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1003
    .line 1004
    .line 1005
    :pswitch_33
    const/4 v11, 0x4

    .line 1006
    goto/16 :goto_18

    .line 1007
    .line 1008
    :pswitch_34
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1009
    .line 1010
    .line 1011
    :pswitch_35
    invoke-virtual {v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 1012
    .line 1013
    .line 1014
    const/4 v8, 0x1

    .line 1015
    goto/16 :goto_19

    .line 1016
    .line 1017
    :pswitch_36
    add-int/lit8 v2, v10, -0x2a

    .line 1018
    .line 1019
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeALoad(I)V

    .line 1020
    .line 1021
    .line 1022
    goto/16 :goto_3

    .line 1023
    .line 1024
    :pswitch_37
    add-int/lit8 v2, v3, 0x1

    .line 1025
    .line 1026
    iget-boolean v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 1027
    .line 1028
    if-eqz v8, :cond_16

    .line 1029
    .line 1030
    const/4 v8, 0x2

    .line 1031
    goto :goto_14

    .line 1032
    :cond_16
    const/4 v8, 0x1

    .line 1033
    :goto_14
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 1034
    .line 1035
    .line 1036
    move-result v2

    .line 1037
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->executeALoad(I)V

    .line 1038
    .line 1039
    .line 1040
    goto/16 :goto_3

    .line 1041
    .line 1042
    :pswitch_38
    const/16 v2, 0x12

    .line 1043
    .line 1044
    if-ne v10, v2, :cond_17

    .line 1045
    .line 1046
    add-int/lit8 v2, v3, 0x1

    .line 1047
    .line 1048
    const/4 v8, 0x1

    .line 1049
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 1050
    .line 1051
    .line 1052
    move-result v2

    .line 1053
    goto :goto_15

    .line 1054
    :cond_17
    add-int/lit8 v2, v3, 0x1

    .line 1055
    .line 1056
    const/4 v8, 0x2

    .line 1057
    invoke-virtual {v0, v2, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 1058
    .line 1059
    .line 1060
    move-result v2

    .line 1061
    :goto_15
    invoke-virtual {v7, v2}, Lorg/mozilla/classfile/ConstantPool;->getConstantType(I)B

    .line 1062
    .line 1063
    .line 1064
    move-result v2

    .line 1065
    const/4 v8, 0x3

    .line 1066
    if-eq v2, v8, :cond_1c

    .line 1067
    .line 1068
    const/4 v11, 0x4

    .line 1069
    if-eq v2, v11, :cond_1b

    .line 1070
    .line 1071
    const/4 v8, 0x5

    .line 1072
    if-eq v2, v8, :cond_1a

    .line 1073
    .line 1074
    const/4 v13, 0x6

    .line 1075
    if-eq v2, v13, :cond_19

    .line 1076
    .line 1077
    const/16 v8, 0x8

    .line 1078
    .line 1079
    if-ne v2, v8, :cond_18

    .line 1080
    .line 1081
    const-string v2, "java/lang/String"

    .line 1082
    .line 1083
    invoke-virtual {v7, v2}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 1084
    .line 1085
    .line 1086
    move-result v2

    .line 1087
    invoke-static {v2}, Lokio/Okio;->OBJECT(I)I

    .line 1088
    .line 1089
    .line 1090
    move-result v2

    .line 1091
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1092
    .line 1093
    .line 1094
    goto/16 :goto_3

    .line 1095
    .line 1096
    :cond_18
    const-string v0, "bad const type "

    .line 1097
    .line 1098
    invoke-static {v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v0

    .line 1102
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    return-void

    .line 1106
    :cond_19
    const/4 v8, 0x3

    .line 1107
    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1108
    .line 1109
    .line 1110
    goto/16 :goto_3

    .line 1111
    .line 1112
    :cond_1a
    const/4 v8, 0x3

    .line 1113
    const/4 v11, 0x4

    .line 1114
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1115
    .line 1116
    .line 1117
    goto/16 :goto_3

    .line 1118
    .line 1119
    :cond_1b
    const/4 v2, 0x2

    .line 1120
    const/4 v8, 0x3

    .line 1121
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1122
    .line 1123
    .line 1124
    goto/16 :goto_3

    .line 1125
    .line 1126
    :cond_1c
    const/4 v2, 0x2

    .line 1127
    const/4 v11, 0x1

    .line 1128
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1129
    .line 1130
    .line 1131
    goto/16 :goto_3

    .line 1132
    .line 1133
    :pswitch_39
    move v2, v14

    .line 1134
    move/from16 v8, v18

    .line 1135
    .line 1136
    :goto_16
    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_3

    .line 1140
    .line 1141
    :pswitch_3a
    move v2, v14

    .line 1142
    :goto_17
    invoke-virtual {v0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1143
    .line 1144
    .line 1145
    goto/16 :goto_3

    .line 1146
    .line 1147
    :goto_18
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1148
    .line 1149
    .line 1150
    goto/16 :goto_3

    .line 1151
    .line 1152
    :goto_19
    :pswitch_3b
    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1153
    .line 1154
    .line 1155
    goto/16 :goto_3

    .line 1156
    .line 1157
    :pswitch_3c
    const/4 v8, 0x5

    .line 1158
    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 1159
    .line 1160
    .line 1161
    :goto_1a
    const/4 v2, 0x0

    .line 1162
    :goto_1b
    if-nez v2, :cond_20

    .line 1163
    .line 1164
    iget-boolean v2, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 1165
    .line 1166
    const/16 v11, 0xfe

    .line 1167
    .line 1168
    if-eq v10, v11, :cond_1f

    .line 1169
    .line 1170
    const/16 v11, 0xff

    .line 1171
    .line 1172
    if-eq v10, v11, :cond_1f

    .line 1173
    .line 1174
    packed-switch v10, :pswitch_data_2

    .line 1175
    .line 1176
    .line 1177
    packed-switch v10, :pswitch_data_3

    .line 1178
    .line 1179
    .line 1180
    const-string v0, "Bad opcode: "

    .line 1181
    .line 1182
    invoke-static {v10, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    return-void

    .line 1190
    :pswitch_3d
    const/4 v8, 0x4

    .line 1191
    goto :goto_1c

    .line 1192
    :pswitch_3e
    if-eqz v2, :cond_1d

    .line 1193
    .line 1194
    goto :goto_1c

    .line 1195
    :pswitch_3f
    if-eqz v2, :cond_1e

    .line 1196
    .line 1197
    :cond_1d
    :pswitch_40
    const/4 v8, 0x3

    .line 1198
    goto :goto_1c

    .line 1199
    :cond_1e
    :pswitch_41
    const/4 v8, 0x2

    .line 1200
    goto :goto_1c

    .line 1201
    :cond_1f
    :pswitch_42
    const/4 v8, 0x1

    .line 1202
    :goto_1c
    :pswitch_43
    move v2, v8

    .line 1203
    :cond_20
    iget-boolean v8, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 1204
    .line 1205
    if-eqz v8, :cond_21

    .line 1206
    .line 1207
    const/16 v8, 0xc4

    .line 1208
    .line 1209
    if-eq v10, v8, :cond_21

    .line 1210
    .line 1211
    const/4 v15, 0x0

    .line 1212
    iput-boolean v15, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->wide:Z

    .line 1213
    .line 1214
    goto :goto_1d

    .line 1215
    :cond_21
    const/4 v15, 0x0

    .line 1216
    :goto_1d
    packed-switch v10, :pswitch_data_4

    .line 1217
    .line 1218
    .line 1219
    packed-switch v10, :pswitch_data_5

    .line 1220
    .line 1221
    .line 1222
    const/16 v8, 0xaa

    .line 1223
    .line 1224
    if-ne v10, v8, :cond_23

    .line 1225
    .line 1226
    add-int/lit8 v8, v3, 0x1

    .line 1227
    .line 1228
    not-int v11, v3

    .line 1229
    const/16 v18, 0x3

    .line 1230
    .line 1231
    and-int/lit8 v11, v11, 0x3

    .line 1232
    .line 1233
    add-int/2addr v8, v11

    .line 1234
    const/4 v11, 0x4

    .line 1235
    invoke-virtual {v0, v8, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 1236
    .line 1237
    .line 1238
    move-result v12

    .line 1239
    add-int/2addr v12, v3

    .line 1240
    invoke-virtual {v0, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v12

    .line 1244
    invoke-virtual {v0, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1245
    .line 1246
    .line 1247
    add-int/lit8 v12, v8, 0x4

    .line 1248
    .line 1249
    invoke-virtual {v0, v12, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 1250
    .line 1251
    .line 1252
    move-result v12

    .line 1253
    add-int/lit8 v13, v8, 0x8

    .line 1254
    .line 1255
    invoke-virtual {v0, v13, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 1256
    .line 1257
    .line 1258
    move-result v13

    .line 1259
    sub-int/2addr v13, v12

    .line 1260
    const/16 v22, 0x1

    .line 1261
    .line 1262
    add-int/lit8 v13, v13, 0x1

    .line 1263
    .line 1264
    add-int/lit8 v8, v8, 0xc

    .line 1265
    .line 1266
    move v12, v15

    .line 1267
    :goto_1e
    if-ge v12, v13, :cond_23

    .line 1268
    .line 1269
    mul-int/lit8 v14, v12, 0x4

    .line 1270
    .line 1271
    add-int/2addr v14, v8

    .line 1272
    invoke-virtual {v0, v14, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 1273
    .line 1274
    .line 1275
    move-result v14

    .line 1276
    add-int/2addr v14, v3

    .line 1277
    invoke-virtual {v0, v14}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v11

    .line 1281
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1282
    .line 1283
    .line 1284
    add-int/lit8 v12, v12, 0x1

    .line 1285
    .line 1286
    const/4 v11, 0x4

    .line 1287
    goto :goto_1e

    .line 1288
    :pswitch_44
    iget-object v8, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 1289
    .line 1290
    aget-byte v8, v8, v3

    .line 1291
    .line 1292
    const/16 v11, 0xff

    .line 1293
    .line 1294
    and-int/2addr v8, v11

    .line 1295
    const/16 v11, 0xc8

    .line 1296
    .line 1297
    if-ne v8, v11, :cond_22

    .line 1298
    .line 1299
    add-int/lit8 v8, v3, 0x1

    .line 1300
    .line 1301
    const/4 v11, 0x4

    .line 1302
    invoke-virtual {v0, v8, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 1303
    .line 1304
    .line 1305
    move-result v8

    .line 1306
    add-int/2addr v8, v3

    .line 1307
    goto :goto_1f

    .line 1308
    :cond_22
    add-int/lit8 v8, v3, 0x1

    .line 1309
    .line 1310
    const/4 v11, 0x2

    .line 1311
    invoke-virtual {v0, v8, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getOperand(II)I

    .line 1312
    .line 1313
    .line 1314
    move-result v8

    .line 1315
    int-to-short v8, v8

    .line 1316
    add-int/2addr v8, v3

    .line 1317
    :goto_1f
    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v8

    .line 1321
    invoke-virtual {v0, v8}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1322
    .line 1323
    .line 1324
    :cond_23
    move v8, v6

    .line 1325
    :goto_20
    if-ge v8, v9, :cond_27

    .line 1326
    .line 1327
    iget-object v11, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsExceptionTable:[Lorg/mozilla/classfile/ExceptionTableEntry;

    .line 1328
    .line 1329
    aget-object v11, v11, v8

    .line 1330
    .line 1331
    iget v12, v11, Lorg/mozilla/classfile/ExceptionTableEntry;->itsStartLabel:I

    .line 1332
    .line 1333
    invoke-virtual {v5, v12}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 1334
    .line 1335
    .line 1336
    move-result v12

    .line 1337
    iget v13, v11, Lorg/mozilla/classfile/ExceptionTableEntry;->itsEndLabel:I

    .line 1338
    .line 1339
    invoke-virtual {v5, v13}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 1340
    .line 1341
    .line 1342
    move-result v13

    .line 1343
    if-lt v3, v12, :cond_26

    .line 1344
    .line 1345
    if-lt v3, v13, :cond_24

    .line 1346
    .line 1347
    goto :goto_22

    .line 1348
    :cond_24
    iget v12, v11, Lorg/mozilla/classfile/ExceptionTableEntry;->itsHandlerLabel:I

    .line 1349
    .line 1350
    invoke-virtual {v5, v12}, Lorg/mozilla/classfile/ClassFileWriter;->getLabelPC(I)I

    .line 1351
    .line 1352
    .line 1353
    move-result v12

    .line 1354
    invoke-virtual {v0, v12}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v16

    .line 1358
    iget-short v11, v11, Lorg/mozilla/classfile/ExceptionTableEntry;->itsCatchType:S

    .line 1359
    .line 1360
    if-nez v11, :cond_25

    .line 1361
    .line 1362
    const-string v11, "java/lang/Throwable"

    .line 1363
    .line 1364
    invoke-virtual {v7, v11}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 1365
    .line 1366
    .line 1367
    move-result v11

    .line 1368
    invoke-static {v11}, Lokio/Okio;->OBJECT(I)I

    .line 1369
    .line 1370
    .line 1371
    move-result v11

    .line 1372
    goto :goto_21

    .line 1373
    :cond_25
    invoke-static {v11}, Lokio/Okio;->OBJECT(I)I

    .line 1374
    .line 1375
    .line 1376
    move-result v11

    .line 1377
    :goto_21
    iget-object v12, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 1378
    .line 1379
    iget v13, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 1380
    .line 1381
    filled-new-array {v11}, [I

    .line 1382
    .line 1383
    .line 1384
    move-result-object v19

    .line 1385
    const/16 v20, 0x1

    .line 1386
    .line 1387
    iget-object v11, v5, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 1388
    .line 1389
    move-object/from16 v21, v11

    .line 1390
    .line 1391
    move-object/from16 v17, v12

    .line 1392
    .line 1393
    move/from16 v18, v13

    .line 1394
    .line 1395
    invoke-virtual/range {v16 .. v21}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    .line 1396
    .line 1397
    .line 1398
    move-object/from16 v11, v16

    .line 1399
    .line 1400
    invoke-virtual {v0, v11}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1401
    .line 1402
    .line 1403
    :cond_26
    :goto_22
    add-int/lit8 v8, v8, 0x1

    .line 1404
    .line 1405
    goto :goto_20

    .line 1406
    :cond_27
    add-int/2addr v3, v2

    .line 1407
    move v2, v15

    .line 1408
    const/4 v8, 0x1

    .line 1409
    goto/16 :goto_2

    .line 1410
    .line 1411
    :cond_28
    const/16 v2, 0xa7

    .line 1412
    .line 1413
    if-eq v10, v2, :cond_0

    .line 1414
    .line 1415
    const/16 v2, 0xbf

    .line 1416
    .line 1417
    if-eq v10, v2, :cond_0

    .line 1418
    .line 1419
    const/16 v11, 0xc8

    .line 1420
    .line 1421
    if-eq v10, v11, :cond_0

    .line 1422
    .line 1423
    const/16 v2, 0xb0

    .line 1424
    .line 1425
    if-eq v10, v2, :cond_0

    .line 1426
    .line 1427
    const/16 v2, 0xb1

    .line 1428
    .line 1429
    if-eq v10, v2, :cond_0

    .line 1430
    .line 1431
    packed-switch v10, :pswitch_data_6

    .line 1432
    .line 1433
    .line 1434
    iget v1, v1, Lorg/mozilla/classfile/SuperBlock;->index:I

    .line 1435
    .line 1436
    const/16 v22, 0x1

    .line 1437
    .line 1438
    add-int/lit8 v1, v1, 0x1

    .line 1439
    .line 1440
    iget-object v2, v0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 1441
    .line 1442
    array-length v3, v2

    .line 1443
    if-ge v1, v3, :cond_0

    .line 1444
    .line 1445
    aget-object v1, v2, v1

    .line 1446
    .line 1447
    invoke-virtual {v0, v1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->flowInto(Lorg/mozilla/classfile/SuperBlock;)V

    .line 1448
    .line 1449
    .line 1450
    goto/16 :goto_0

    .line 1451
    .line 1452
    :cond_29
    return-void

    .line 1453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3c
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_33
        :pswitch_33
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_3b
        :pswitch_3b
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_3b
        :pswitch_33
        :pswitch_3a
        :pswitch_39
        :pswitch_37
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_34
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_2c
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_34
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_34
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_34
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_34
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_34
        :pswitch_31
        :pswitch_2f
        :pswitch_2d
        :pswitch_35
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_34
        :pswitch_31
        :pswitch_34
        :pswitch_31
        :pswitch_34
        :pswitch_31
        :pswitch_34
        :pswitch_31
        :pswitch_34
        :pswitch_31
        :pswitch_34
        :pswitch_31
        :pswitch_3
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_35
        :pswitch_30
        :pswitch_2e
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_35
        :pswitch_32
        :pswitch_30
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_16
        :pswitch_1
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_20
        :pswitch_13
        :pswitch_17
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_7
        :pswitch_6
        :pswitch_35
        :pswitch_5
        :pswitch_4
        :pswitch_35
        :pswitch_20
        :pswitch_20
        :pswitch_2
        :pswitch_1
        :pswitch_20
        :pswitch_20
        :pswitch_3
    .end packed-switch

    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_41
        :pswitch_40
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_3e
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_3f
    .end packed-switch

    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    :pswitch_data_3
    .packed-switch 0xac
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_40
        :pswitch_43
        :pswitch_43
        :pswitch_40
        :pswitch_41
        :pswitch_40
        :pswitch_42
        :pswitch_42
        :pswitch_40
        :pswitch_40
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_3d
        :pswitch_40
        :pswitch_40
        :pswitch_43
        :pswitch_43
        :pswitch_42
    .end packed-switch

    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    :pswitch_data_4
    .packed-switch 0x99
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch

    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    .line 2298
    .line 2299
    .line 2300
    .line 2301
    .line 2302
    .line 2303
    .line 2304
    .line 2305
    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    .line 2315
    .line 2316
    .line 2317
    .line 2318
    .line 2319
    .line 2320
    .line 2321
    .line 2322
    .line 2323
    :pswitch_data_5
    .packed-switch 0xc6
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch

    .line 2324
    .line 2325
    :pswitch_data_6
    .packed-switch 0xaa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final flowInto(Lorg/mozilla/classfile/SuperBlock;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->locals:[I

    .line 2
    .line 3
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->localsTop:I

    .line 4
    .line 5
    iget-object v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 6
    .line 7
    iget v4, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    .line 10
    .line 11
    iget-object v5, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/classfile/SuperBlock;->merge([II[IILorg/mozilla/classfile/ConstantPool;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->addToWorkList(Lorg/mozilla/classfile/SuperBlock;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final getOperand(II)I
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gt p2, v0, :cond_1

    .line 4
    .line 5
    move v0, v1

    .line 6
    :goto_0
    if-ge v1, p2, :cond_0

    .line 7
    .line 8
    shl-int/lit8 v0, v0, 0x8

    .line 9
    .line 10
    iget-object v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    .line 11
    .line 12
    iget-object v2, v2, Lorg/mozilla/classfile/ClassFileWriter;->itsCodeBuffer:[B

    .line 13
    .line 14
    add-int v3, p1, v1

    .line 15
    .line 16
    aget-byte v2, v2, v3

    .line 17
    .line 18
    and-int/lit16 v2, v2, 0xff

    .line 19
    .line 20
    or-int/2addr v0, v2

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v0

    .line 25
    :cond_1
    const-string p0, "bad operand size"

    .line 26
    .line 27
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v1
.end method

.method public final getSuperBlockFromOffset(I)Lorg/mozilla/classfile/SuperBlock;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->this$0:Lorg/mozilla/classfile/ClassFileWriter;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStarts:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 7
    .line 8
    invoke-static {v1, v2, v3, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gez v1, :cond_0

    .line 13
    .line 14
    neg-int v1, v1

    .line 15
    add-int/lit8 v1, v1, -0x2

    .line 16
    .line 17
    :cond_0
    iget v0, v0, Lorg/mozilla/classfile/ClassFileWriter;->itsSuperBlockStartsTop:I

    .line 18
    .line 19
    if-ge v1, v0, :cond_3

    .line 20
    .line 21
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->superBlocks:[Lorg/mozilla/classfile/SuperBlock;

    .line 22
    .line 23
    aget-object p0, p0, v1

    .line 24
    .line 25
    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->start:I

    .line 26
    .line 27
    if-lt p1, v0, :cond_2

    .line 28
    .line 29
    iget v0, p0, Lorg/mozilla/classfile/SuperBlock;->end:I

    .line 30
    .line 31
    if-lt p1, v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-object p0

    .line 35
    :cond_2
    :goto_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_3
    const-string p0, "bad offset: "

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method

.method public final pop()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iput v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 8
    .line 9
    aget p0, v0, v1

    .line 10
    .line 11
    return p0
.end method

.method public final pop2()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    long-to-int v2, v0

    .line 7
    invoke-static {v2}, Lokio/Okio;->isTwoWords(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-wide v0

    .line 14
    :cond_0
    const/16 v2, 0x20

    .line 15
    .line 16
    shl-long/2addr v0, v2

    .line 17
    invoke-virtual {p0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->pop()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const v2, 0xffffff

    .line 22
    .line 23
    .line 24
    and-int/2addr p0, v2

    .line 25
    int-to-long v2, p0

    .line 26
    or-long/2addr v0, v2

    .line 27
    return-wide v0
.end method

.method public final push(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-array v0, v0, [I

    .line 16
    .line 17
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 18
    .line 19
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stack:[I

    .line 28
    .line 29
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 30
    .line 31
    add-int/lit8 v2, v1, 0x1

    .line 32
    .line 33
    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->stackTop:I

    .line 34
    .line 35
    aput p1, v0, v1

    .line 36
    .line 37
    return-void
.end method

.method public final push2(J)V
    .locals 4

    .line 1
    const-wide/32 v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-long v2, p1, v0

    .line 5
    .line 6
    long-to-int v2, v2

    .line 7
    invoke-virtual {p0, v2}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x20

    .line 11
    .line 12
    ushr-long/2addr p1, v2

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v2, p1, v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    and-long/2addr p1, v0

    .line 20
    long-to-int p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->push(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final writeFullFrame([I[II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    aput-byte v3, v0, v1

    .line 11
    .line 12
    invoke-static {v0, p3, v2}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    iput p3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 17
    .line 18
    array-length v0, p1

    .line 19
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 20
    .line 21
    invoke-static {v1, v0, p3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    iput p3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 26
    .line 27
    const/4 p3, 0x0

    .line 28
    invoke-virtual {p0, p1, p3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([II)I

    .line 29
    .line 30
    .line 31
    array-length p1, p2

    .line 32
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 33
    .line 34
    iget v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 35
    .line 36
    invoke-static {v0, p1, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 41
    .line 42
    invoke-virtual {p0, p2, p3}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeTypes([II)I

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final writeType(I)I
    .locals 5

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMap:[B

    .line 4
    .line 5
    iget v2, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    iput v3, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 10
    .line 11
    int-to-byte v4, v0

    .line 12
    aput-byte v4, v1, v2

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    const/16 v4, 0x8

    .line 16
    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    if-ne v0, v4, :cond_1

    .line 20
    .line 21
    :cond_0
    ushr-int/2addr p1, v4

    .line 22
    invoke-static {v1, p1, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 27
    .line 28
    :cond_1
    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 29
    .line 30
    return p0
.end method

.method public final writeTypes([II)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p1

    .line 2
    if-ge p2, v0, :cond_0

    .line 3
    .line 4
    aget v0, p1, p2

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->writeType(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 11
    .line 12
    add-int/lit8 p2, p2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p0, p0, Lorg/mozilla/classfile/ClassFileWriter$StackMapTable;->rawStackMapTop:I

    .line 16
    .line 17
    return p0
.end method
