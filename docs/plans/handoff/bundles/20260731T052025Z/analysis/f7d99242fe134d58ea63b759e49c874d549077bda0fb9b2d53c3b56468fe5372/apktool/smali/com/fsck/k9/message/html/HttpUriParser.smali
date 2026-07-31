.class public final Lcom/fsck/k9/message/html/HttpUriParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/message/html/UriParser;


# static fields
.field public static final DOMAIN_REGEX:Lkotlin/text/Regex;

.field public static final IPv4_REGEX:Lkotlin/text/Regex;

.field public static final SCHEME_REGEX:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "(https?|rtsp)://"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/fsck/k9/message/html/HttpUriParser;->SCHEME_REGEX:Lkotlin/text/Regex;

    .line 10
    .line 11
    new-instance v0, Lkotlin/text/Regex;

    .line 12
    .line 13
    const-string v1, "[\\da-z](?:[\\da-z-]*[\\da-z])*(?:\\.[\\da-z](?:[\\da-z-]*[\\da-z])*)*(?::(\\d{0,5}))?"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/fsck/k9/message/html/HttpUriParser;->DOMAIN_REGEX:Lkotlin/text/Regex;

    .line 19
    .line 20
    new-instance v0, Lkotlin/text/Regex;

    .line 21
    .line 22
    const-string v1, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})(:(\\d{0,5}))?"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/fsck/k9/message/html/HttpUriParser;->IPv4_REGEX:Lkotlin/text/Regex;

    .line 28
    .line 29
    return-void
.end method

.method public static isHexDigit(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x61

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x7b

    .line 6
    .line 7
    if-ge p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x41

    .line 11
    .line 12
    if-gt v0, p0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x5b

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

.method public static matchUnreservedPCTEncodedSubDelimClassesGreedy(ILjava/lang/CharSequence;Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "!$&\'()*+,;=-._~"

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x0

    .line 8
    move v1, v0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge p0, v2, :cond_2

    .line 14
    .line 15
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Lcom/fsck/k9/message/html/HttpUriParser;->isHexDigit(C)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    if-gez v1, :cond_1

    .line 28
    .line 29
    move v1, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    if-nez v1, :cond_2

    .line 32
    .line 33
    invoke-static {p2, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    const/16 v1, 0x25

    .line 40
    .line 41
    if-ne v2, v1, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x2

    .line 44
    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return p0
.end method

.method public static tryMatchIpv4Address(Ljava/lang/CharSequence;IZ)I
    .locals 4

    .line 1
    sget-object v0, Lcom/fsck/k9/message/html/HttpUriParser;->IPv4_REGEX:Lkotlin/text/Regex;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p0}, Lkotlin/text/Regex;->find(ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Lkotlin/ranges/IntProgression;->first:I

    .line 15
    .line 16
    if-eq v0, p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    move v1, v0

    .line 21
    :goto_0
    const/4 v2, 0x5

    .line 22
    if-ge v1, v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lkotlin/collections/ReversedListReadOnly;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/16 v3, 0xff

    .line 41
    .line 42
    if-le v2, v3, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    if-nez p2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lkotlin/collections/ReversedListReadOnly;

    .line 55
    .line 56
    invoke-virtual {p2, v2}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    check-cast p2, Ljava/lang/CharSequence;

    .line 61
    .line 62
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-lez p2, :cond_4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    const/4 v1, 0x6

    .line 74
    check-cast p2, Lkotlin/collections/ReversedListReadOnly;

    .line 75
    .line 76
    invoke-virtual {p2, v1}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-lez v1, :cond_5

    .line 87
    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    const v1, 0xffff

    .line 93
    .line 94
    .line 95
    if-le p2, v1, :cond_5

    .line 96
    .line 97
    :goto_1
    return p1

    .line 98
    :cond_5
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    iget p0, p0, Lkotlin/ranges/IntProgression;->last:I

    .line 103
    .line 104
    add-int/2addr p0, v0

    .line 105
    return p0
.end method


# virtual methods
.method public final parseUri(ILjava/lang/CharSequence;)Lcom/fsck/k9/message/html/UriMatch;
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-ltz v0, :cond_30

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v0, v3, :cond_30

    .line 15
    .line 16
    sget-object v3, Lcom/fsck/k9/message/html/HttpUriParser;->SCHEME_REGEX:Lkotlin/text/Regex;

    .line 17
    .line 18
    invoke-virtual {v3, v0, v1}, Lkotlin/text/Regex;->find(ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    :goto_0
    const/16 p0, 0x0

    .line 25
    .line 26
    goto/16 :goto_14

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v3}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v4, v4, Lkotlin/ranges/IntProgression;->first:I

    .line 33
    .line 34
    if-eq v4, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-nez v0, :cond_3

    .line 38
    .line 39
    :cond_2
    const/4 v4, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    add-int/lit8 v4, v0, -0x1

    .line 42
    .line 43
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0x28

    .line 48
    .line 49
    if-ne v4, v5, :cond_2

    .line 50
    .line 51
    const/16 v4, 0x29

    .line 52
    .line 53
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    :goto_1
    invoke-virtual {v3}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget v3, v3, Lkotlin/ranges/IntProgression;->last:I

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    add-int/2addr v3, v5

    .line 65
    const/16 v6, 0x2f

    .line 66
    .line 67
    const/4 v7, 0x4

    .line 68
    invoke-static {v1, v6, v3, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    const/4 v9, -0x1

    .line 73
    if-ne v8, v9, :cond_4

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    :cond_4
    const/16 v10, 0x40

    .line 80
    .line 81
    invoke-static {v1, v10, v3, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-eq v10, v9, :cond_7

    .line 86
    .line 87
    if-lt v10, v8, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    const-string v8, ":"

    .line 91
    .line 92
    invoke-static {v3, v1, v8}, Lcom/fsck/k9/message/html/HttpUriParser;->matchUnreservedPCTEncodedSubDelimClassesGreedy(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eq v8, v10, :cond_6

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_6
    add-int/2addr v10, v5

    .line 100
    goto :goto_3

    .line 101
    :cond_7
    :goto_2
    move v10, v3

    .line 102
    :goto_3
    sget-object v8, Lcom/fsck/k9/message/html/HttpUriParser;->DOMAIN_REGEX:Lkotlin/text/Regex;

    .line 103
    .line 104
    invoke-virtual {v8, v10, v1}, Lkotlin/text/Regex;->find(ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    const v11, 0xffff

    .line 109
    .line 110
    .line 111
    if-nez v8, :cond_8

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_8
    invoke-virtual {v8}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    iget v12, v12, Lkotlin/ranges/IntProgression;->first:I

    .line 119
    .line 120
    if-eq v12, v10, :cond_9

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_9
    invoke-virtual {v8}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    check-cast v12, Lkotlin/collections/ReversedListReadOnly;

    .line 128
    .line 129
    invoke-virtual {v12, v5}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    check-cast v12, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    if-lez v13, :cond_a

    .line 140
    .line 141
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    if-le v12, v11, :cond_a

    .line 146
    .line 147
    :goto_4
    move v8, v10

    .line 148
    goto :goto_5

    .line 149
    :cond_a
    invoke-virtual {v8}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    iget v8, v8, Lkotlin/ranges/IntProgression;->last:I

    .line 154
    .line 155
    add-int/2addr v8, v5

    .line 156
    :goto_5
    if-eq v8, v10, :cond_b

    .line 157
    .line 158
    :goto_6
    move/from16 v17, v5

    .line 159
    .line 160
    const/16 p0, 0x0

    .line 161
    .line 162
    goto/16 :goto_13

    .line 163
    .line 164
    :cond_b
    invoke-static {v1, v10, v5}, Lcom/fsck/k9/message/html/HttpUriParser;->tryMatchIpv4Address(Ljava/lang/CharSequence;IZ)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-eq v8, v10, :cond_c

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_c
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eq v10, v8, :cond_d

    .line 176
    .line 177
    invoke-interface {v1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    const/16 v12, 0x5b

    .line 182
    .line 183
    if-eq v8, v12, :cond_e

    .line 184
    .line 185
    :cond_d
    :goto_7
    move/from16 v17, v5

    .line 186
    .line 187
    const/16 p0, 0x0

    .line 188
    .line 189
    goto/16 :goto_11

    .line 190
    .line 191
    :cond_e
    const/16 v8, 0x5d

    .line 192
    .line 193
    invoke-static {v1, v8, v10, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    if-ne v8, v9, :cond_f

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_f
    add-int/lit8 v12, v10, 0x1

    .line 201
    .line 202
    const-string v13, "::"

    .line 203
    .line 204
    const/4 v14, 0x0

    .line 205
    invoke-static {v1, v13, v12, v14, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    if-eq v13, v9, :cond_10

    .line 210
    .line 211
    if-ge v13, v8, :cond_10

    .line 212
    .line 213
    move v15, v5

    .line 214
    :goto_8
    const/16 p0, 0x0

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_10
    move v15, v14

    .line 218
    goto :goto_8

    .line 219
    :goto_9
    const/16 v2, 0x3a

    .line 220
    .line 221
    if-eqz v15, :cond_16

    .line 222
    .line 223
    move/from16 v16, v14

    .line 224
    .line 225
    :goto_a
    if-ge v12, v13, :cond_15

    .line 226
    .line 227
    move/from16 v17, v5

    .line 228
    .line 229
    if-lez v16, :cond_12

    .line 230
    .line 231
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eq v5, v2, :cond_11

    .line 236
    .line 237
    goto/16 :goto_11

    .line 238
    .line 239
    :cond_11
    add-int/lit8 v12, v12, 0x1

    .line 240
    .line 241
    :cond_12
    add-int/lit8 v5, v12, 0x4

    .line 242
    .line 243
    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    move v6, v12

    .line 248
    :goto_b
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 249
    .line 250
    .line 251
    move-result v18

    .line 252
    invoke-static/range {v18 .. v18}, Lcom/fsck/k9/message/html/HttpUriParser;->isHexDigit(C)Z

    .line 253
    .line 254
    .line 255
    move-result v18

    .line 256
    if-eqz v18, :cond_13

    .line 257
    .line 258
    if-ge v6, v5, :cond_13

    .line 259
    .line 260
    add-int/lit8 v6, v6, 0x1

    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_13
    if-ne v6, v12, :cond_14

    .line 264
    .line 265
    goto/16 :goto_11

    .line 266
    .line 267
    :cond_14
    add-int/lit8 v16, v16, 0x1

    .line 268
    .line 269
    move v12, v6

    .line 270
    move/from16 v5, v17

    .line 271
    .line 272
    const/16 v6, 0x2f

    .line 273
    .line 274
    goto :goto_a

    .line 275
    :cond_15
    move/from16 v17, v5

    .line 276
    .line 277
    add-int/lit8 v12, v12, 0x2

    .line 278
    .line 279
    move v5, v14

    .line 280
    goto :goto_c

    .line 281
    :cond_16
    move/from16 v17, v5

    .line 282
    .line 283
    move v5, v14

    .line 284
    move/from16 v16, v5

    .line 285
    .line 286
    :goto_c
    const/16 v6, 0x8

    .line 287
    .line 288
    if-ge v12, v8, :cond_1d

    .line 289
    .line 290
    add-int v13, v16, v5

    .line 291
    .line 292
    if-ge v13, v6, :cond_1d

    .line 293
    .line 294
    if-lez v5, :cond_18

    .line 295
    .line 296
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 297
    .line 298
    .line 299
    move-result v13

    .line 300
    if-eq v13, v2, :cond_17

    .line 301
    .line 302
    goto/16 :goto_11

    .line 303
    .line 304
    :cond_17
    add-int/lit8 v12, v12, 0x1

    .line 305
    .line 306
    :cond_18
    invoke-static {v1, v2, v12, v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    if-eq v13, v9, :cond_19

    .line 311
    .line 312
    if-le v13, v8, :cond_1a

    .line 313
    .line 314
    :cond_19
    sub-int v13, v8, v12

    .line 315
    .line 316
    const/4 v7, 0x7

    .line 317
    if-ge v13, v7, :cond_1d

    .line 318
    .line 319
    :cond_1a
    add-int/lit8 v6, v12, 0x4

    .line 320
    .line 321
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    move v7, v12

    .line 326
    :goto_d
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 327
    .line 328
    .line 329
    move-result v13

    .line 330
    invoke-static {v13}, Lcom/fsck/k9/message/html/HttpUriParser;->isHexDigit(C)Z

    .line 331
    .line 332
    .line 333
    move-result v13

    .line 334
    if-eqz v13, :cond_1b

    .line 335
    .line 336
    if-ge v7, v6, :cond_1b

    .line 337
    .line 338
    add-int/lit8 v7, v7, 0x1

    .line 339
    .line 340
    goto :goto_d

    .line 341
    :cond_1b
    if-ne v7, v12, :cond_1c

    .line 342
    .line 343
    goto :goto_11

    .line 344
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    .line 345
    .line 346
    move v12, v7

    .line 347
    const/4 v7, 0x4

    .line 348
    goto :goto_c

    .line 349
    :cond_1d
    if-ne v12, v8, :cond_20

    .line 350
    .line 351
    if-nez v15, :cond_1e

    .line 352
    .line 353
    add-int v7, v16, v5

    .line 354
    .line 355
    if-eq v7, v6, :cond_1f

    .line 356
    .line 357
    :cond_1e
    if-eqz v15, :cond_25

    .line 358
    .line 359
    add-int v5, v16, v5

    .line 360
    .line 361
    if-ge v5, v6, :cond_25

    .line 362
    .line 363
    :cond_1f
    add-int/lit8 v12, v12, 0x1

    .line 364
    .line 365
    goto :goto_e

    .line 366
    :cond_20
    invoke-static {v1, v12, v14}, Lcom/fsck/k9/message/html/HttpUriParser;->tryMatchIpv4Address(Ljava/lang/CharSequence;IZ)I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-eq v5, v8, :cond_21

    .line 371
    .line 372
    goto :goto_11

    .line 373
    :cond_21
    add-int/lit8 v12, v8, 0x1

    .line 374
    .line 375
    :goto_e
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-eq v12, v5, :cond_24

    .line 380
    .line 381
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-eq v5, v2, :cond_22

    .line 386
    .line 387
    goto :goto_10

    .line 388
    :cond_22
    :goto_f
    add-int/lit8 v12, v12, 0x1

    .line 389
    .line 390
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 391
    .line 392
    .line 393
    move-result v5

    .line 394
    if-ge v12, v5, :cond_23

    .line 395
    .line 396
    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    const/16 v6, 0x30

    .line 401
    .line 402
    if-gt v6, v5, :cond_23

    .line 403
    .line 404
    if-ge v5, v2, :cond_23

    .line 405
    .line 406
    mul-int/lit8 v14, v14, 0xa

    .line 407
    .line 408
    add-int/lit8 v5, v5, -0x30

    .line 409
    .line 410
    add-int/2addr v14, v5

    .line 411
    goto :goto_f

    .line 412
    :cond_23
    if-gt v14, v11, :cond_25

    .line 413
    .line 414
    :cond_24
    :goto_10
    move v8, v12

    .line 415
    goto :goto_12

    .line 416
    :cond_25
    :goto_11
    move v8, v10

    .line 417
    :goto_12
    if-eq v8, v10, :cond_26

    .line 418
    .line 419
    goto :goto_13

    .line 420
    :cond_26
    move v8, v3

    .line 421
    :goto_13
    if-ne v8, v3, :cond_27

    .line 422
    .line 423
    :goto_14
    return-object p0

    .line 424
    :cond_27
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-ge v8, v2, :cond_28

    .line 429
    .line 430
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    const/16 v3, 0x2f

    .line 435
    .line 436
    if-ne v2, v3, :cond_28

    .line 437
    .line 438
    add-int/lit8 v8, v8, 0x1

    .line 439
    .line 440
    const-string v2, "/:@"

    .line 441
    .line 442
    invoke-static {v8, v1, v2}, Lcom/fsck/k9/message/html/HttpUriParser;->matchUnreservedPCTEncodedSubDelimClassesGreedy(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    move-result v8

    .line 446
    :cond_28
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    const-string v3, ":@/?"

    .line 451
    .line 452
    if-ge v8, v2, :cond_29

    .line 453
    .line 454
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    const/16 v5, 0x3f

    .line 459
    .line 460
    if-ne v2, v5, :cond_29

    .line 461
    .line 462
    add-int/lit8 v8, v8, 0x1

    .line 463
    .line 464
    invoke-static {v8, v1, v3}, Lcom/fsck/k9/message/html/HttpUriParser;->matchUnreservedPCTEncodedSubDelimClassesGreedy(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 465
    .line 466
    .line 467
    move-result v8

    .line 468
    :cond_29
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-ge v8, v2, :cond_2a

    .line 473
    .line 474
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    const/16 v5, 0x23

    .line 479
    .line 480
    if-ne v2, v5, :cond_2a

    .line 481
    .line 482
    add-int/lit8 v8, v8, 0x1

    .line 483
    .line 484
    invoke-static {v8, v1, v3}, Lcom/fsck/k9/message/html/HttpUriParser;->matchUnreservedPCTEncodedSubDelimClassesGreedy(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    move-result v8

    .line 488
    :cond_2a
    :goto_15
    if-le v8, v0, :cond_2f

    .line 489
    .line 490
    add-int/lit8 v2, v8, -0x1

    .line 491
    .line 492
    if-eqz v4, :cond_2b

    .line 493
    .line 494
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    .line 499
    .line 500
    .line 501
    move-result v5

    .line 502
    if-ne v3, v5, :cond_2b

    .line 503
    .line 504
    add-int/lit8 v8, v8, -0x1

    .line 505
    .line 506
    goto :goto_16

    .line 507
    :cond_2b
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    add-int/lit8 v3, v3, -0x1

    .line 512
    .line 513
    const/16 v5, 0x3e

    .line 514
    .line 515
    if-ge v2, v3, :cond_2c

    .line 516
    .line 517
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-ne v3, v5, :cond_2c

    .line 522
    .line 523
    goto :goto_16

    .line 524
    :cond_2c
    const-string v3, ",;:\'\""

    .line 525
    .line 526
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 527
    .line 528
    .line 529
    move-result v6

    .line 530
    invoke-static {v3, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    if-nez v3, :cond_2e

    .line 535
    .line 536
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 537
    .line 538
    .line 539
    move-result v3

    .line 540
    add-int/lit8 v3, v3, -0x1

    .line 541
    .line 542
    if-ge v2, v3, :cond_2d

    .line 543
    .line 544
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    if-ne v3, v5, :cond_2d

    .line 549
    .line 550
    goto :goto_16

    .line 551
    :cond_2d
    const-string v3, ".?!"

    .line 552
    .line 553
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    invoke-static {v3, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;C)Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    if-eqz v3, :cond_2f

    .line 562
    .line 563
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    add-int/lit8 v3, v3, -0x1

    .line 568
    .line 569
    if-eq v2, v3, :cond_2e

    .line 570
    .line 571
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    .line 572
    .line 573
    .line 574
    move-result v2

    .line 575
    invoke-static {v2}, Lkotlin/text/CharsKt__CharKt;->isWhitespace(C)Z

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    if-eqz v2, :cond_2f

    .line 580
    .line 581
    :cond_2e
    add-int/lit8 v8, v8, -0x1

    .line 582
    .line 583
    goto :goto_15

    .line 584
    :cond_2f
    :goto_16
    invoke-interface {v1, v0, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    new-instance v2, Lcom/fsck/k9/message/html/UriMatch;

    .line 589
    .line 590
    invoke-direct {v2, v0, v8, v1}, Lcom/fsck/k9/message/html/UriMatch;-><init>(IILjava/lang/CharSequence;)V

    .line 591
    .line 592
    .line 593
    return-object v2

    .line 594
    :cond_30
    const/16 p0, 0x0

    .line 595
    .line 596
    const-string v0, "Invalid \'startPos\' value"

    .line 597
    .line 598
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    return-object p0
.end method
