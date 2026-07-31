.class public final Lorg/mozilla/classfile/SuperBlock;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public end:I

.field public index:I

.field public isInQueue:Z

.field public isInitialized:Z

.field public locals:[I

.field public stack:[I

.field public start:I


# direct methods
.method public static mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v1, p2, :cond_10

    .line 5
    .line 6
    aget v3, p0, v1

    .line 7
    .line 8
    aget v4, p1, v1

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-ne v3, v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    and-int/lit16 v6, v3, 0xff

    .line 16
    .line 17
    and-int/lit16 v7, v4, 0xff

    .line 18
    .line 19
    const/4 v8, 0x7

    .line 20
    if-ne v6, v8, :cond_1

    .line 21
    .line 22
    move v9, v5

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v9, v0

    .line 25
    :goto_1
    if-ne v7, v8, :cond_2

    .line 26
    .line 27
    move v8, v5

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move v8, v0

    .line 30
    :goto_2
    const/4 v10, 0x5

    .line 31
    if-eqz v9, :cond_3

    .line 32
    .line 33
    if-ne v4, v10, :cond_3

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    if-eqz v6, :cond_e

    .line 37
    .line 38
    if-nez v7, :cond_4

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_4
    if-ne v3, v10, :cond_5

    .line 43
    .line 44
    if-eqz v8, :cond_5

    .line 45
    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :cond_5
    if-eqz v9, :cond_d

    .line 49
    .line 50
    if-eqz v8, :cond_d

    .line 51
    .line 52
    invoke-static {v3, p3}, Lokio/Okio;->getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v4, p3}, Lokio/Okio;->getPayloadAsType(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const/4 v8, 0x2

    .line 61
    invoke-virtual {p3, v8}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    check-cast v8, Ljava/lang/String;

    .line 66
    .line 67
    const/4 v9, 0x4

    .line 68
    invoke-virtual {p3, v9}, Lorg/mozilla/classfile/ConstantPool;->getConstantData(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    check-cast v9, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_6

    .line 79
    .line 80
    move-object v6, v9

    .line 81
    :cond_6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_7

    .line 86
    .line 87
    move-object v7, v9

    .line 88
    :cond_7
    const/16 v8, 0x2e

    .line 89
    .line 90
    const/16 v9, 0x2f

    .line 91
    .line 92
    :try_start_0
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :try_start_1
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object v7
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-eqz v10, :cond_8

    .line 113
    .line 114
    :goto_3
    move v4, v3

    .line 115
    goto :goto_7

    .line 116
    :cond_8
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-eqz v10, :cond_9

    .line 121
    .line 122
    goto :goto_7

    .line 123
    :cond_9
    invoke-virtual {v7}, Ljava/lang/Class;->isInterface()Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-nez v10, :cond_c

    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-eqz v10, :cond_a

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    :goto_4
    if-eqz v7, :cond_d

    .line 141
    .line 142
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-eqz v10, :cond_b

    .line 147
    .line 148
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    sget v6, Lorg/mozilla/classfile/ClassFileWriter;->MajorVersion:I

    .line 153
    .line 154
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {p3, v4}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-static {v4}, Lokio/Okio;->OBJECT(I)I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    goto :goto_7

    .line 167
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    goto :goto_4

    .line 172
    :cond_c
    :goto_5
    const-string v4, "java/lang/Object"

    .line 173
    .line 174
    invoke-virtual {p3, v4}, Lorg/mozilla/classfile/ConstantPool;->addClass(Ljava/lang/String;)S

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-static {v4}, Lokio/Okio;->OBJECT(I)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    goto :goto_7

    .line 183
    :catch_0
    move-exception p0

    .line 184
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    return v0

    .line 188
    :catch_1
    move-exception p0

    .line 189
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    return v0

    .line 193
    :cond_d
    invoke-static {v3, p3}, Lokio/Okio;->toString(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {v4, p3}, Lokio/Okio;->toString(ILorg/mozilla/classfile/ConstantPool;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const-string p2, "bad merge attempt between "

    .line 202
    .line 203
    const-string p3, " and "

    .line 204
    .line 205
    invoke-static {p2, p0, p3, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    return v0

    .line 213
    :cond_e
    :goto_6
    move v4, v0

    .line 214
    :goto_7
    aput v4, p0, v1

    .line 215
    .line 216
    if-eq v3, v4, :cond_f

    .line 217
    .line 218
    move v2, v5

    .line 219
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_10
    return v2
.end method


# virtual methods
.method public final getTrimmedLocals()[I
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-ltz v0, :cond_0

    .line 7
    .line 8
    aget v1, p0, v0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v0, -0x1

    .line 13
    .line 14
    aget v1, p0, v1

    .line 15
    .line 16
    invoke-static {v1}, Lokio/Okio;->isTwoWords(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    move v3, v0

    .line 29
    move v2, v1

    .line 30
    :goto_1
    if-ge v2, v0, :cond_2

    .line 31
    .line 32
    aget v4, p0, v2

    .line 33
    .line 34
    invoke-static {v4}, Lokio/Okio;->isTwoWords(I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    add-int/lit8 v3, v3, -0x1

    .line 41
    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    new-array v0, v3, [I

    .line 46
    .line 47
    move v2, v1

    .line 48
    :goto_2
    if-ge v1, v3, :cond_4

    .line 49
    .line 50
    aget v4, p0, v2

    .line 51
    .line 52
    aput v4, v0, v1

    .line 53
    .line 54
    aget v4, p0, v2

    .line 55
    .line 56
    invoke-static {v4}, Lokio/Okio;->isTwoWords(I)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    return-object v0
.end method

.method public final merge([II[IILorg/mozilla/classfile/ConstantPool;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/classfile/SuperBlock;->locals:[I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, v3, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    new-array p1, p4, [I

    .line 13
    .line 14
    iput-object p1, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    .line 15
    .line 16
    invoke-static {p3, v3, p1, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iput-boolean v2, p0, Lorg/mozilla/classfile/SuperBlock;->isInitialized:Z

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    array-length v0, v1

    .line 23
    if-ne v0, p2, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    .line 26
    .line 27
    array-length v0, v0

    .line 28
    if-ne v0, p4, :cond_3

    .line 29
    .line 30
    invoke-static {v1, p1, p2, p5}, Lorg/mozilla/classfile/SuperBlock;->mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object p0, p0, Lorg/mozilla/classfile/SuperBlock;->stack:[I

    .line 35
    .line 36
    invoke-static {p0, p3, p4, p5}, Lorg/mozilla/classfile/SuperBlock;->mergeState([I[IILorg/mozilla/classfile/ConstantPool;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return v3

    .line 46
    :cond_2
    :goto_0
    return v2

    .line 47
    :cond_3
    const-string p0, "bad merge attempt"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget p0, p0, Lorg/mozilla/classfile/SuperBlock;->index:I

    .line 2
    .line 3
    const-string v0, "sb "

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
