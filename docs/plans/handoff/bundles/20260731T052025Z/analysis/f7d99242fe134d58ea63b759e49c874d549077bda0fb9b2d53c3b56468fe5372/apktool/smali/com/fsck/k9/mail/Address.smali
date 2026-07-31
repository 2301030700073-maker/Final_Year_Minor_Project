.class public final Lcom/fsck/k9/mail/Address;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ATOM:Ljava/util/regex/Pattern;

.field public static final EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;


# instance fields
.field public final address:Ljava/lang/String;

.field public final personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^(?:[a-zA-Z0-9!#$%&\'*+\\-/=?^_`{|}~]|\\s)+$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    .line 14
    .line 15
    sput-object v0, Lcom/fsck/k9/mail/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/fsck/k9/mail/Address;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    :cond_0
    const/4 p1, 0x1

    .line 66
    invoke-direct {p0, p2, p3, p1}, Lcom/fsck/k9/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p3, :cond_4

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->tokenize(Ljava/lang/String;)[Lcom/fsck/k9/mail/helper/Rfc822Token;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    array-length v0, p3

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    new-array p0, p0, [Ljava/lang/Object;

    .line 26
    .line 27
    aput-object p1, p0, v1

    .line 28
    .line 29
    const-string p1, "Invalid address: %s"

    .line 30
    .line 31
    invoke-static {p1, p0}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    aget-object p1, p3, v1

    .line 36
    .line 37
    iget-object p3, p1, Lcom/fsck/k9/mail/helper/Rfc822Token;->mAddress:Ljava/lang/String;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/fsck/k9/mail/helper/Rfc822Token;->mName:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-nez p3, :cond_3

    .line 50
    .line 51
    :cond_1
    if-eqz p2, :cond_2

    .line 52
    .line 53
    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 p1, 0x0

    .line 63
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 64
    .line 65
    :cond_4
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-class v2, Lcom/fsck/k9/mail/Address;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    check-cast p1, Lcom/fsck/k9/mail/Address;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    iget-object p0, p0, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_4

    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    return v0
.end method

.method public final getHostname()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "@"

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    iget-object p0, p0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1, p0, v0}, Lkotlin/text/StringsKt;->lastIndexOf$default(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    add-int/2addr v0, p0

    .line 20
    return v0
.end method

.method public final toEncodedString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p0, :cond_13

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_b

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil;->BASE64_TABLE:[B

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    move v4, v3

    .line 24
    :goto_0
    const/4 v5, 0x1

    .line 25
    if-ge v3, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    sget-object v7, Lorg/apache/james/mime4j/codec/EncoderUtil;->ATEXT_CHARS:Ljava/util/BitSet;

    .line 32
    .line 33
    invoke-virtual {v7, v6}, Ljava/util/BitSet;->get(I)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    move v4, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {v6}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-nez v6, :cond_2

    .line 46
    .line 47
    move v4, v2

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 53
    .line 54
    goto/16 :goto_a

    .line 55
    .line 56
    :cond_4
    move v1, v2

    .line 57
    move v3, v1

    .line 58
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ge v1, v4, :cond_12

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/16 v6, 0x9

    .line 69
    .line 70
    if-eq v4, v6, :cond_10

    .line 71
    .line 72
    const/16 v6, 0x20

    .line 73
    .line 74
    if-ne v4, v6, :cond_5

    .line 75
    .line 76
    goto/16 :goto_9

    .line 77
    .line 78
    :cond_5
    add-int/2addr v3, v5

    .line 79
    const/16 v7, 0x4d

    .line 80
    .line 81
    const/16 v8, 0x7f

    .line 82
    .line 83
    if-le v3, v7, :cond_6

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    if-lt v4, v6, :cond_7

    .line 87
    .line 88
    if-lt v4, v8, :cond_11

    .line 89
    .line 90
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    move v3, v2

    .line 95
    :goto_5
    const/16 v4, 0xff

    .line 96
    .line 97
    if-ge v3, v1, :cond_a

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-le v7, v4, :cond_8

    .line 104
    .line 105
    sget-object v1, Lorg/apache/james/mime4j/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 106
    .line 107
    goto :goto_6

    .line 108
    :cond_8
    if-le v7, v8, :cond_9

    .line 109
    .line 110
    move v5, v2

    .line 111
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_a
    if-eqz v5, :cond_b

    .line 115
    .line 116
    sget-object v1, Lorg/apache/james/mime4j/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_b
    sget-object v1, Lorg/apache/james/mime4j/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 120
    .line 121
    :goto_6
    invoke-static {p0, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    array-length v5, v3

    .line 126
    const-string v7, "=?"

    .line 127
    .line 128
    if-nez v5, :cond_c

    .line 129
    .line 130
    goto :goto_8

    .line 131
    :cond_c
    sget-object v5, Lorg/apache/james/mime4j/codec/EncoderUtil;->Q_RESTRICTED_CHARS:Ljava/util/BitSet;

    .line 132
    .line 133
    array-length v8, v3

    .line 134
    move v9, v2

    .line 135
    :goto_7
    if-ge v2, v8, :cond_e

    .line 136
    .line 137
    aget-byte v10, v3, v2

    .line 138
    .line 139
    and-int/2addr v10, v4

    .line 140
    if-eq v10, v6, :cond_d

    .line 141
    .line 142
    invoke-virtual {v5, v10}, Ljava/util/BitSet;->get(I)Z

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-nez v10, :cond_d

    .line 147
    .line 148
    add-int/lit8 v9, v9, 0x1

    .line 149
    .line 150
    :cond_d
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_e
    mul-int/lit8 v9, v9, 0x64

    .line 154
    .line 155
    array-length v2, v3

    .line 156
    div-int/2addr v9, v2

    .line 157
    const/16 v2, 0x1e

    .line 158
    .line 159
    if-le v9, v2, :cond_f

    .line 160
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v4, "?B?"

    .line 174
    .line 175
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {v2, p0, v1, v3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeB(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    goto :goto_a

    .line 187
    :cond_f
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v4, "?Q?"

    .line 200
    .line 201
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-static {v2, p0, v1, v3}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeQ(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    goto :goto_a

    .line 213
    :cond_10
    :goto_9
    move v3, v2

    .line 214
    :cond_11
    add-int/lit8 v1, v1, 0x1

    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v2, "\""

    .line 221
    .line 222
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil;->QUOTE:Ljava/util/regex/Pattern;

    .line 226
    .line 227
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    const-string v2, "\\\\$0"

    .line 232
    .line 233
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const/16 p0, 0x22

    .line 241
    .line 242
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p0

    .line 249
    :goto_a
    const-string v1, " <"

    .line 250
    .line 251
    const-string v2, ">"

    .line 252
    .line 253
    invoke-static {p0, v1, v0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    :cond_13
    :goto_b
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-eqz p0, :cond_3

    .line 15
    .line 16
    sget-object v1, Lcom/fsck/k9/mail/Address;->ATOM:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "^\".*\"$"

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v1, "\""

    .line 50
    .line 51
    invoke-static {v1, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 p0, 0x0

    .line 57
    :goto_0
    const-string v1, " <"

    .line 58
    .line 59
    const-string v2, ">"

    .line 60
    .line 61
    invoke-static {p0, v1, v0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_4
    :goto_1
    return-object v0
.end method
