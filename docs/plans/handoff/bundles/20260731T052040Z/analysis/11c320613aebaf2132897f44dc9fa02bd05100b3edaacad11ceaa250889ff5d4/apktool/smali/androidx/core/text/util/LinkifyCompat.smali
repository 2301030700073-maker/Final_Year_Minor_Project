.class public abstract Landroidx/core/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final COMPARATOR:Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;

    .line 8
    .line 9
    return-void
.end method

.method public static addLinks(Landroid/text/Spannable;I)Z
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-class v2, Landroid/text/style/URLSpan;

    .line 22
    .line 23
    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, [Landroid/text/style/URLSpan;

    .line 28
    .line 29
    array-length v3, v1

    .line 30
    const/4 v4, 0x1

    .line 31
    sub-int/2addr v3, v4

    .line 32
    :goto_0
    if-ltz v3, :cond_2

    .line 33
    .line 34
    aget-object v5, v1, v3

    .line 35
    .line 36
    invoke-interface {p0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v3, v3, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    and-int/lit8 v1, p1, 0x4

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-static {p0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 48
    .line 49
    .line 50
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    sget-object v3, Landroidx/core/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    const-string v5, "https://"

    .line 58
    .line 59
    const-string v6, "rtsp://"

    .line 60
    .line 61
    const-string v7, "http://"

    .line 62
    .line 63
    filled-new-array {v7, v5, v6}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    sget-object v6, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 68
    .line 69
    invoke-static {v1, p0, v3, v5, v6}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;)V

    .line 70
    .line 71
    .line 72
    and-int/lit8 p1, p1, 0x2

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    sget-object p1, Landroidx/core/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 77
    .line 78
    const-string v3, "mailto:"

    .line 79
    .line 80
    filled-new-array {v3}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const/4 v5, 0x0

    .line 85
    invoke-static {v1, p0, p1, v3, v5}, Landroidx/core/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    invoke-interface {p0, v0, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, [Landroid/text/style/URLSpan;

    .line 97
    .line 98
    array-length v2, p1

    .line 99
    move v3, v0

    .line 100
    :goto_1
    if-ge v3, v2, :cond_5

    .line 101
    .line 102
    aget-object v5, p1, v3

    .line 103
    .line 104
    new-instance v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 105
    .line 106
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v5, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 110
    .line 111
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    iput v7, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 116
    .line 117
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    iput v5, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 122
    .line 123
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    sget-object p1, Landroidx/core/text/util/LinkifyCompat;->COMPARATOR:Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;

    .line 130
    .line 131
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    move v2, v0

    .line 139
    :goto_2
    add-int/lit8 v3, p1, -0x1

    .line 140
    .line 141
    if-ge v2, v3, :cond_b

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 148
    .line 149
    add-int/lit8 v5, v2, 0x1

    .line 150
    .line 151
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 156
    .line 157
    iget v7, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 158
    .line 159
    iget v8, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 160
    .line 161
    if-gt v7, v8, :cond_a

    .line 162
    .line 163
    iget v3, v3, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 164
    .line 165
    if-le v3, v8, :cond_a

    .line 166
    .line 167
    iget v6, v6, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 168
    .line 169
    const/4 v9, -0x1

    .line 170
    if-gt v6, v3, :cond_6

    .line 171
    .line 172
    :goto_3
    move v3, v5

    .line 173
    goto :goto_4

    .line 174
    :cond_6
    sub-int/2addr v3, v7

    .line 175
    sub-int/2addr v6, v8

    .line 176
    if-le v3, v6, :cond_7

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    if-ge v3, v6, :cond_8

    .line 180
    .line 181
    move v3, v2

    .line 182
    goto :goto_4

    .line 183
    :cond_8
    move v3, v9

    .line 184
    :goto_4
    if-eq v3, v9, :cond_a

    .line 185
    .line 186
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    check-cast v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 191
    .line 192
    iget-object v5, v5, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 193
    .line 194
    if-eqz v5, :cond_9

    .line 195
    .line 196
    invoke-interface {p0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    add-int/lit8 p1, p1, -0x1

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_a
    move v2, v5

    .line 206
    goto :goto_2

    .line 207
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_c

    .line 212
    .line 213
    :goto_5
    return v0

    .line 214
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    :cond_d
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    if-eqz v0, :cond_e

    .line 223
    .line 224
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 229
    .line 230
    iget-object v1, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    .line 231
    .line 232
    if-nez v1, :cond_d

    .line 233
    .line 234
    iget-object v1, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 235
    .line 236
    iget v2, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 237
    .line 238
    iget v0, v0, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 239
    .line 240
    new-instance v3, Landroid/text/style/URLSpan;

    .line 241
    .line 242
    invoke-direct {v3, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const/16 v1, 0x21

    .line 246
    .line 247
    invoke-interface {p0, v3, v2, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_e
    return v4
.end method

.method public static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_6

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-interface {v3, v0, v4, v5}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move-object/from16 v4, p0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    if-eqz v7, :cond_0

    .line 45
    .line 46
    new-instance v13, Landroidx/core/text/util/LinkifyCompat$LinkSpec;

    .line 47
    .line 48
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    array-length v14, v1

    .line 52
    move v15, v6

    .line 53
    :goto_2
    if-ge v15, v14, :cond_3

    .line 54
    .line 55
    aget-object v10, v1, v15

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v12

    .line 62
    const/4 v8, 0x1

    .line 63
    const/4 v9, 0x0

    .line 64
    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_2

    .line 69
    .line 70
    const/4 v11, 0x0

    .line 71
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    const/4 v9, 0x1

    .line 82
    if-nez v8, :cond_4

    .line 83
    .line 84
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    move v9, v6

    .line 101
    :cond_4
    :goto_3
    if-nez v9, :cond_5

    .line 102
    .line 103
    array-length v8, v1

    .line 104
    if-lez v8, :cond_5

    .line 105
    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    aget-object v6, v1, v6

    .line 112
    .line 113
    invoke-static {v8, v6, v7}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    :cond_5
    iput-object v7, v13, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    .line 118
    .line 119
    iput v4, v13, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->start:I

    .line 120
    .line 121
    iput v5, v13, Landroidx/core/text/util/LinkifyCompat$LinkSpec;->end:I

    .line 122
    .line 123
    move-object/from16 v4, p0

    .line 124
    .line 125
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    return-void
.end method
