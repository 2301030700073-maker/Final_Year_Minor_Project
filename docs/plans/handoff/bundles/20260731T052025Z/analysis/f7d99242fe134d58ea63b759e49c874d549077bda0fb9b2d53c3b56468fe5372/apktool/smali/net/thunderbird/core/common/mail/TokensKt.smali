.class public abstract Lnet/thunderbird/core/common/mail/TokensKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ATEXT_EXTRA:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/thunderbird/core/common/mail/TokensKt;->ATEXT_EXTRA:[C

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 2
        0x21s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x2as
        0x2bs
        0x2ds
        0x2fs
        0x3ds
        0x3fs
        0x5es
        0x5fs
        0x60s
        0x7bs
        0x7cs
        0x7ds
        0x7es
    .end array-data
.end method

.method public static final isAtext(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x41

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x5b

    .line 6
    .line 7
    if-ge p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x61

    .line 11
    .line 12
    if-gt v0, p0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x7b

    .line 15
    .line 16
    if-ge p0, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v0, 0x30

    .line 20
    .line 21
    if-gt v0, p0, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x3a

    .line 24
    .line 25
    if-ge p0, v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    sget-object v0, Lnet/thunderbird/core/common/mail/TokensKt;->ATEXT_EXTRA:[C

    .line 29
    .line 30
    invoke-static {v0, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([CC)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    :goto_0
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_3
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public static final isDotString(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x2e

    .line 14
    .line 15
    if-eq v0, v2, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v3, 0x1

    .line 22
    sub-int/2addr v0, v3

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne v0, v2, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sub-int/2addr v0, v3

    .line 35
    if-ltz v0, :cond_4

    .line 36
    .line 37
    move v4, v1

    .line 38
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-ne v5, v2, :cond_2

    .line 43
    .line 44
    add-int/lit8 v5, v4, -0x1

    .line 45
    .line 46
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v5, v2, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-static {v5}, Lnet/thunderbird/core/common/mail/TokensKt;->isAtext(C)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    if-eq v4, v0, :cond_4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    return v3

    .line 66
    :cond_5
    :goto_1
    return v1
.end method

.method public static final isQtext(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x22

    .line 6
    .line 7
    if-ge p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x23

    .line 11
    .line 12
    if-gt v0, p0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x5c

    .line 15
    .line 16
    if-ge p0, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/16 v0, 0x5d

    .line 20
    .line 21
    if-gt v0, p0, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x7f

    .line 24
    .line 25
    if-ge p0, v0, :cond_2

    .line 26
    .line 27
    :goto_0
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public static parse(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;)Lnet/thunderbird/core/common/mail/EmailAddress;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/thunderbird/core/common/mail/EmailAddressParser;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lnet/thunderbird/core/common/mail/EmailAddressParser;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/BaseParser;->peek()C

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Lnet/thunderbird/core/common/mail/TokensKt;->isAtext(C)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, v0, Lnet/thunderbird/core/common/mail/EmailAddressParser;->config:Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lnet/thunderbird/core/common/mail/EmailAddressParser;->appendAtom(Ljava/lang/StringBuilder;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/BaseParser;->endReached()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/BaseParser;->peek()C

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v3, 0x2e

    .line 40
    .line 41
    if-ne v1, v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lnet/thunderbird/core/common/mail/BaseParser;->expect(C)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lnet/thunderbird/core/common/mail/EmailAddressParser;->appendAtom(Ljava/lang/StringBuilder;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_3

    .line 58
    :cond_1
    const/16 v1, 0x22

    .line 59
    .line 60
    if-ne p1, v1, :cond_14

    .line 61
    .line 62
    iget-boolean p1, v2, Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;->isQuotedLocalPartAllowed:Z

    .line 63
    .line 64
    if-eqz p1, :cond_13

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/common/mail/BaseParser;->expect(C)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/BaseParser;->endReached()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_6

    .line 79
    .line 80
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/BaseParser;->peek()C

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-static {v3}, Lnet/thunderbird/core/common/mail/TokensKt;->isQtext(C)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/BaseParser;->read()C

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    sget-object v4, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->InvalidQuotedString:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 99
    .line 100
    const-string v5, "Expected \'Quoted-string\'"

    .line 101
    .line 102
    const/16 v6, 0x5c

    .line 103
    .line 104
    if-ne v3, v6, :cond_4

    .line 105
    .line 106
    invoke-virtual {v0, v6}, Lnet/thunderbird/core/common/mail/BaseParser;->expect(C)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/BaseParser;->read()C

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    const/16 v6, 0x20

    .line 114
    .line 115
    if-gt v6, v3, :cond_3

    .line 116
    .line 117
    const/16 v6, 0x7f

    .line 118
    .line 119
    if-ge v3, v6, :cond_3

    .line 120
    .line 121
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 126
    .line 127
    invoke-direct {p1, v5, v4, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_4
    if-ne v3, v1, :cond_5

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 135
    .line 136
    invoke-direct {p1, v5, v4, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_6
    :goto_2
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/common/mail/BaseParser;->expect(C)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :goto_3
    const/16 v1, 0x40

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lnet/thunderbird/core/common/mail/BaseParser;->expect(C)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/BaseParser;->peek()C

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    const/16 v4, 0x41

    .line 157
    .line 158
    const/16 v5, 0x5b

    .line 159
    .line 160
    if-gt v4, v3, :cond_7

    .line 161
    .line 162
    if-ge v3, v5, :cond_7

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_7
    const/16 v4, 0x61

    .line 166
    .line 167
    if-gt v4, v3, :cond_8

    .line 168
    .line 169
    const/16 v4, 0x7b

    .line 170
    .line 171
    if-ge v3, v4, :cond_8

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_8
    const/16 v4, 0x30

    .line 175
    .line 176
    if-gt v4, v3, :cond_11

    .line 177
    .line 178
    const/16 v4, 0x3a

    .line 179
    .line 180
    if-ge v3, v4, :cond_11

    .line 181
    .line 182
    :goto_4
    new-instance v3, Lnet/thunderbird/core/common/mail/EmailDomainParser;

    .line 183
    .line 184
    iget v4, v0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    invoke-direct {v3, p0, v4, v5}, Lnet/thunderbird/core/common/mail/BaseParser;-><init>(Ljava/lang/String;II)V

    .line 191
    .line 192
    .line 193
    :try_start_0
    invoke-virtual {v3}, Lnet/thunderbird/core/common/mail/EmailDomainParser;->readDomain$1()Lnet/thunderbird/core/common/mail/EmailDomain;

    .line 194
    .line 195
    .line 196
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget v3, v3, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 198
    .line 199
    iput v3, v0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 200
    .line 201
    new-instance v3, Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 202
    .line 203
    invoke-direct {v3, p1, v4}, Lnet/thunderbird/core/common/mail/EmailAddress;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailDomain;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lnet/thunderbird/core/common/mail/BaseParser;->endReached()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_10

    .line 211
    .line 212
    iget-boolean p1, v2, Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;->isEmailAddressLengthCheckEnabled:Z

    .line 213
    .line 214
    iget-object v4, v3, Lnet/thunderbird/core/common/mail/EmailAddress;->warnings:Lkotlin/collections/builders/SetBuilder;

    .line 215
    .line 216
    if-eqz p1, :cond_a

    .line 217
    .line 218
    sget-object p1, Lnet/thunderbird/core/common/mail/EmailAddress$Warning;->EmailAddressExceedsLengthLimit:Lnet/thunderbird/core/common/mail/EmailAddress$Warning;

    .line 219
    .line 220
    iget-object v5, v4, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 221
    .line 222
    invoke-virtual {v5, p1}, Lkotlin/collections/builders/MapBuilder;->containsKey(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-nez p1, :cond_9

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_9
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 230
    .line 231
    const-string v0, "The email address exceeds the maximum length of 254 characters"

    .line 232
    .line 233
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->TotalLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 234
    .line 235
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p1

    .line 239
    :cond_a
    :goto_5
    iget-boolean p1, v2, Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;->isLocalPartLengthCheckEnabled:Z

    .line 240
    .line 241
    if-eqz p1, :cond_c

    .line 242
    .line 243
    sget-object p1, Lnet/thunderbird/core/common/mail/EmailAddress$Warning;->LocalPartExceedsLengthLimit:Lnet/thunderbird/core/common/mail/EmailAddress$Warning;

    .line 244
    .line 245
    iget-object v5, v4, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 246
    .line 247
    invoke-virtual {v5, p1}, Lkotlin/collections/builders/MapBuilder;->containsKey(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-nez p1, :cond_b

    .line 252
    .line 253
    goto :goto_6

    .line 254
    :cond_b
    const/4 p1, 0x0

    .line 255
    const/4 v2, 0x6

    .line 256
    iget-object v0, v0, Lnet/thunderbird/core/common/mail/BaseParser;->input:Ljava/lang/String;

    .line 257
    .line 258
    invoke-static {v0, v1, p1, v2}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;CII)I

    .line 259
    .line 260
    .line 261
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 262
    .line 263
    const-string v0, "Local part exceeds maximum length of 64 characters"

    .line 264
    .line 265
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->LocalPartLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 266
    .line 267
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw p1

    .line 271
    :cond_c
    :goto_6
    iget-boolean p1, v2, Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;->isLocalPartRequiringQuotedStringAllowed:Z

    .line 272
    .line 273
    if-nez p1, :cond_e

    .line 274
    .line 275
    sget-object p1, Lnet/thunderbird/core/common/mail/EmailAddress$Warning;->QuotedStringInLocalPart:Lnet/thunderbird/core/common/mail/EmailAddress$Warning;

    .line 276
    .line 277
    iget-object v0, v4, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 278
    .line 279
    invoke-virtual {v0, p1}, Lkotlin/collections/builders/MapBuilder;->containsKey(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-nez p1, :cond_d

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_d
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 287
    .line 288
    const-string v0, "Local part requiring the use of a quoted string is not allowed by config"

    .line 289
    .line 290
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->LocalPartRequiresQuotedString:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 291
    .line 292
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p1

    .line 296
    :cond_e
    :goto_7
    sget-object p1, Lnet/thunderbird/core/common/mail/EmailAddress$Warning;->EmptyLocalPart:Lnet/thunderbird/core/common/mail/EmailAddress$Warning;

    .line 297
    .line 298
    iget-object v0, v4, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/MapBuilder;

    .line 299
    .line 300
    invoke-virtual {v0, p1}, Lkotlin/collections/builders/MapBuilder;->containsKey(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-nez p1, :cond_f

    .line 305
    .line 306
    return-object v3

    .line 307
    :cond_f
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 308
    .line 309
    const-string v0, "Empty local part is not allowed by config"

    .line 310
    .line 311
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->EmptyLocalPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 312
    .line 313
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p1

    .line 317
    :cond_10
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 318
    .line 319
    const-string v0, "Expected end of input"

    .line 320
    .line 321
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->ExpectedEndOfInput:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 322
    .line 323
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p1

    .line 327
    :catchall_0
    move-exception p0

    .line 328
    iget p1, v3, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 329
    .line 330
    iput p1, v0, Lnet/thunderbird/core/common/mail/BaseParser;->currentIndex:I

    .line 331
    .line 332
    throw p0

    .line 333
    :cond_11
    if-ne v3, v5, :cond_12

    .line 334
    .line 335
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 336
    .line 337
    const-string v0, "Address literals are not supported"

    .line 338
    .line 339
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->AddressLiteralsNotSupported:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 340
    .line 341
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p1

    .line 345
    :cond_12
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 346
    .line 347
    const-string v0, "Expected \'Domain\' or \'address-literal\'"

    .line 348
    .line 349
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->InvalidDomainPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 350
    .line 351
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw p1

    .line 355
    :cond_13
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 356
    .line 357
    const-string v0, "Quoted string in local part is not allowed by config"

    .line 358
    .line 359
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->QuotedStringInLocalPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 360
    .line 361
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw p1

    .line 365
    :cond_14
    new-instance p1, Lnet/thunderbird/core/common/mail/EmailAddressParserException;

    .line 366
    .line 367
    const-string v0, "Expected \'Dot-string\' or \'Quoted-string\'"

    .line 368
    .line 369
    sget-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->InvalidLocalPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 370
    .line 371
    invoke-direct {p1, v0, v1, p0}, Lnet/thunderbird/core/common/mail/EmailAddressParserException;-><init>(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserError;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw p1
.end method

.method public static final toEmailAddressOrNull(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/EmailAddress;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    sget-object v0, Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;->RELAXED:Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;

    .line 5
    .line 6
    invoke-static {p0, v0}, Lnet/thunderbird/core/common/mail/TokensKt;->parse(Ljava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddressParserConfig;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Lnet/thunderbird/core/common/mail/EmailAddressParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method
