.class public final Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final code:[B


# direct methods
.method public varargs constructor <init>(Lorg/mozilla/classfile/ClassFileWriter;Lorg/mozilla/classfile/ClassFileWriter$MHandle;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p3

    .line 5
    const/4 v1, 0x2

    .line 6
    mul-int/2addr v0, v1

    .line 7
    const/4 v2, 0x4

    .line 8
    add-int/2addr v0, v2

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    iput-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    .line 12
    .line 13
    iget-object v3, p1, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 14
    .line 15
    invoke-virtual {v3, p2}, Lorg/mozilla/classfile/ConstantPool;->addMethodHandle(Lorg/mozilla/classfile/ClassFileWriter$MHandle;)S

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, p2, v3}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 21
    .line 22
    .line 23
    array-length p2, p3

    .line 24
    invoke-static {v0, p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 25
    .line 26
    .line 27
    :goto_0
    array-length p2, p3

    .line 28
    if-ge v3, p2, :cond_9

    .line 29
    .line 30
    iget-object p2, p1, Lorg/mozilla/classfile/ClassFileWriter;->itsConstantPool:Lorg/mozilla/classfile/ConstantPool;

    .line 31
    .line 32
    aget-object v0, p3, v3

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    instance-of v1, v0, Ljava/lang/Integer;

    .line 38
    .line 39
    if-nez v1, :cond_8

    .line 40
    .line 41
    instance-of v1, v0, Ljava/lang/Byte;

    .line 42
    .line 43
    if-nez v1, :cond_8

    .line 44
    .line 45
    instance-of v1, v0, Ljava/lang/Short;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_0
    instance-of v1, v0, Ljava/lang/Character;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    check-cast v0, Ljava/lang/Character;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    check-cast v0, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    goto/16 :goto_2

    .line 82
    .line 83
    :cond_2
    instance-of v1, v0, Ljava/lang/Float;

    .line 84
    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    check-cast v0, Ljava/lang/Float;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v1, 0x5

    .line 94
    invoke-virtual {p2, v1}, Lorg/mozilla/classfile/ConstantPool;->ensure(I)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p2, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 98
    .line 99
    iget v4, p2, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 100
    .line 101
    add-int/lit8 v5, v4, 0x1

    .line 102
    .line 103
    iput v5, p2, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 104
    .line 105
    aput-byte v2, v1, v4

    .line 106
    .line 107
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iget-object v1, p2, Lorg/mozilla/classfile/ConstantPool;->itsPool:[B

    .line 112
    .line 113
    iget v4, p2, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 114
    .line 115
    invoke-static {v1, v0, v4}, Lorg/mozilla/classfile/ClassFileWriter;->putInt32([BII)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p2, Lorg/mozilla/classfile/ConstantPool;->itsTop:I

    .line 120
    .line 121
    iget-object v0, p2, Lorg/mozilla/classfile/ConstantPool;->itsPoolTypes:Ljava/util/HashMap;

    .line 122
    .line 123
    iget v1, p2, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    iget v0, p2, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 137
    .line 138
    add-int/lit8 v1, v0, 0x1

    .line 139
    .line 140
    iput v1, p2, Lorg/mozilla/classfile/ConstantPool;->itsTopIndex:I

    .line 141
    .line 142
    move p2, v0

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    .line 145
    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    check-cast v0, Ljava/lang/Long;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide v0

    .line 154
    invoke-virtual {p2, v0, v1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(J)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    goto :goto_2

    .line 159
    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    .line 160
    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    check-cast v0, Ljava/lang/Double;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    invoke-virtual {p2, v0, v1}, Lorg/mozilla/classfile/ConstantPool;->addConstant(D)I

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    goto :goto_2

    .line 174
    :cond_5
    instance-of v1, v0, Ljava/lang/String;

    .line 175
    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    check-cast v0, Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ConstantPool;->addConstant(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    goto :goto_2

    .line 185
    :cond_6
    instance-of v1, v0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    .line 186
    .line 187
    if-eqz v1, :cond_7

    .line 188
    .line 189
    check-cast v0, Lorg/mozilla/classfile/ClassFileWriter$MHandle;

    .line 190
    .line 191
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ConstantPool;->addMethodHandle(Lorg/mozilla/classfile/ClassFileWriter$MHandle;)S

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    goto :goto_2

    .line 196
    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    const-string/jumbo p1, "value "

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/4 p0, 0x0

    .line 211
    throw p0

    .line 212
    :cond_8
    :goto_1
    check-cast v0, Ljava/lang/Number;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-virtual {p2, v0}, Lorg/mozilla/classfile/ConstantPool;->addConstant(I)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    :goto_2
    iget-object v0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    .line 223
    .line 224
    mul-int/lit8 v1, v3, 0x2

    .line 225
    .line 226
    add-int/2addr v1, v2

    .line 227
    invoke-static {v0, p2, v1}, Lorg/mozilla/classfile/ClassFileWriter;->putInt16([BII)I

    .line 228
    .line 229
    .line 230
    add-int/lit8 v3, v3, 0x1

    .line 231
    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_9
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;

    .line 6
    .line 7
    iget-object p1, p1, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    .line 8
    .line 9
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    .line 10
    .line 11
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/classfile/ClassFileWriter$BootstrapEntry;->code:[B

    .line 2
    .line 3
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    not-int p0, p0

    .line 8
    return p0
.end method
