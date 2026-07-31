.class public final Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final useUglyHackToForceCallToFlushInJava5:Z


# instance fields
.field public final base64:Lcom/beetstra/jutf7/Base64Util;

.field public base64mode:Z

.field public bitsToOutput:I

.field public final cs:Lcom/beetstra/jutf7/UTF7StyleCharset;

.field public sextet:I

.field public final shift:B

.field public final strict:Z

.field public final unshift:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "java.specification.version"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "java.vm.vendor"

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "1.4"

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string v2, "1.5"

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 33
    :goto_1
    sput-boolean v0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    .line 34
    .line 35
    const-string v2, "Sun Microsystems Inc."

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    and-int/2addr v0, v1

    .line 42
    sput-boolean v0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V
    .locals 2

    .line 1
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 2
    .line 3
    const/high16 v1, 0x40a00000    # 5.0f

    .line 4
    .line 5
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->cs:Lcom/beetstra/jutf7/UTF7StyleCharset;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 11
    .line 12
    iput-boolean p3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->strict:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/beetstra/jutf7/UTF7StyleCharset;->shift()B

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput-byte p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    .line 19
    .line 20
    const/16 p1, 0x2d

    .line 21
    .line 22
    iput-byte p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 6

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x4

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->cs:Lcom/beetstra/jutf7/UTF7StyleCharset;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/beetstra/jutf7/UTF7StyleCharset;->canEncodeDirectly(C)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    iget-object v4, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 31
    .line 32
    iget-byte v5, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    .line 33
    .line 34
    if-eqz v1, :cond_7

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 44
    .line 45
    iget-object v2, v4, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, [C

    .line 48
    .line 49
    aget-char v1, v2, v1

    .line 50
    .line 51
    int-to-byte v1, v1

    .line 52
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    :cond_2
    const/16 v1, 0x80

    .line 56
    .line 57
    if-lt v0, v1, :cond_3

    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v1, v4, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, [I

    .line 66
    .line 67
    aget v1, v1, v0

    .line 68
    .line 69
    if-ltz v1, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    :goto_1
    if-eq v0, v5, :cond_5

    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->strict:Z

    .line 75
    .line 76
    if-eqz v1, :cond_6

    .line 77
    .line 78
    :cond_5
    :goto_2
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    :cond_6
    iput-boolean v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    .line 82
    .line 83
    iput v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 84
    .line 85
    iput v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 86
    .line 87
    :goto_3
    int-to-byte v0, v0

    .line 88
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    iget-byte v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->shift:B

    .line 93
    .line 94
    if-nez v2, :cond_8

    .line 95
    .line 96
    if-ne v0, v1, :cond_8

    .line 97
    .line 98
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_8
    if-nez v2, :cond_9

    .line 106
    .line 107
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    :cond_9
    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    .line 112
    .line 113
    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x10

    .line 116
    .line 117
    iput v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 118
    .line 119
    :goto_4
    iget v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 120
    .line 121
    const/4 v2, 0x6

    .line 122
    if-lt v1, v2, :cond_a

    .line 123
    .line 124
    add-int/lit8 v1, v1, -0x6

    .line 125
    .line 126
    iput v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 127
    .line 128
    iget v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 129
    .line 130
    shr-int v1, v0, v1

    .line 131
    .line 132
    add-int/2addr v2, v1

    .line 133
    and-int/lit8 v1, v2, 0x3f

    .line 134
    .line 135
    iput v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 136
    .line 137
    iget-object v2, v4, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v2, [C

    .line 140
    .line 141
    aget-char v1, v2, v1

    .line 142
    .line 143
    int-to-byte v1, v1

    .line 144
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    .line 147
    iput v3, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_a
    rsub-int/lit8 v1, v1, 0x6

    .line 151
    .line 152
    shl-int/2addr v0, v1

    .line 153
    and-int/lit8 v0, v0, 0x3f

    .line 154
    .line 155
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_b
    iget-boolean p0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    .line 160
    .line 161
    if-eqz p0, :cond_c

    .line 162
    .line 163
    sget-boolean p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->useUglyHackToForceCallToFlushInJava5:Z

    .line 164
    .line 165
    if-eqz p0, :cond_c

    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    int-to-float p0, p0

    .line 172
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    int-to-float p1, p1

    .line 177
    const/high16 p2, 0x40a00000    # 5.0f

    .line 178
    .line 179
    mul-float/2addr p1, p2

    .line 180
    cmpl-float p0, p0, p1

    .line 181
    .line 182
    if-eqz p0, :cond_c

    .line 183
    .line 184
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 185
    .line 186
    return-object p0

    .line 187
    :cond_c
    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 188
    .line 189
    return-object p0
.end method

.method public final implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, [C

    .line 26
    .line 27
    aget-char v0, v1, v0

    .line 28
    .line 29
    int-to-byte v0, v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-byte p0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->unshift:B

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    :cond_2
    sget-object p0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 39
    .line 40
    return-object p0
.end method

.method public final implReset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->base64mode:Z

    .line 3
    .line 4
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->sextet:I

    .line 5
    .line 6
    iput v0, p0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;->bitsToOutput:I

    .line 7
    .line 8
    return-void
.end method
