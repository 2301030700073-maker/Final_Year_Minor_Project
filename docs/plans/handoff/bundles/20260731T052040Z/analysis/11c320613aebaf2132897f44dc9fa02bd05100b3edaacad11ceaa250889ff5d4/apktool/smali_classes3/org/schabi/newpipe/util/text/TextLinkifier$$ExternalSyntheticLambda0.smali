.class public final synthetic Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Lorg/schabi/newpipe/extractor/StreamingService;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$4:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-class v3, Landroid/text/style/URLSpan;

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    invoke-virtual {v0, v8, v1, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, [Landroid/text/style/URLSpan;

    .line 26
    .line 27
    array-length v3, v1

    .line 28
    move v4, v8

    .line 29
    :goto_0
    if-ge v4, v3, :cond_0

    .line 30
    .line 31
    aget-object v5, v1, v4

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    new-instance v7, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;

    .line 38
    .line 39
    invoke-direct {v7, v2, v6}, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    invoke-virtual {v0, v7, v6, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v5, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 64
    .line 65
    if-eqz v5, :cond_7

    .line 66
    .line 67
    iget-object v6, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v9, 0x1

    .line 70
    if-eqz v6, :cond_5

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    sget-object v1, Lorg/schabi/newpipe/util/text/TimestampExtractor;->TIMESTAMPS_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    :goto_1
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->start(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v4, -0x1

    .line 93
    const/4 v7, 0x2

    .line 94
    if-ne v1, v4, :cond_1

    .line 95
    .line 96
    invoke-virtual {v10, v7}, Ljava/util/regex/Matcher;->start(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    :cond_1
    const/4 v4, 0x3

    .line 101
    invoke-virtual {v10, v4}, Ljava/util/regex/Matcher;->end(I)I

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    invoke-virtual {v3, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    const-string v13, ":"

    .line 110
    .line 111
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    array-length v13, v12

    .line 116
    if-ne v13, v4, :cond_2

    .line 117
    .line 118
    aget-object v4, v12, v8

    .line 119
    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    mul-int/lit16 v4, v4, 0xe10

    .line 125
    .line 126
    aget-object v13, v12, v9

    .line 127
    .line 128
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v13

    .line 132
    mul-int/lit8 v13, v13, 0x3c

    .line 133
    .line 134
    add-int/2addr v13, v4

    .line 135
    aget-object v4, v12, v7

    .line 136
    .line 137
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    add-int/2addr v4, v13

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    array-length v4, v12

    .line 144
    if-ne v4, v7, :cond_3

    .line 145
    .line 146
    aget-object v4, v12, v8

    .line 147
    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    mul-int/lit8 v4, v4, 0x3c

    .line 153
    .line 154
    aget-object v7, v12, v9

    .line 155
    .line 156
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    add-int/2addr v4, v7

    .line 161
    :goto_2
    new-instance v7, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    .line 162
    .line 163
    invoke-direct {v7, v1, v11, v4}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;-><init>(III)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_3
    const/4 v7, 0x0

    .line 168
    :goto_3
    if-nez v7, :cond_4

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_4
    new-instance v1, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;

    .line 172
    .line 173
    iget-object v4, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$4:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 174
    .line 175
    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;)V

    .line 176
    .line 177
    .line 178
    iget v4, v7, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart:I

    .line 179
    .line 180
    iget v7, v7, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd:I

    .line 181
    .line 182
    invoke-virtual {v0, v1, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_5
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    sget-object v1, Lorg/schabi/newpipe/util/text/TextLinkifier;->HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

    .line 191
    .line 192
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_7

    .line 201
    .line 202
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->start(I)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->end(I)I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    const-class v7, Lorg/schabi/newpipe/util/text/LongPressClickableSpan;

    .line 215
    .line 216
    invoke-virtual {v0, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    check-cast v7, [Lorg/schabi/newpipe/util/text/LongPressClickableSpan;

    .line 221
    .line 222
    array-length v7, v7

    .line 223
    if-nez v7, :cond_6

    .line 224
    .line 225
    iget v7, v5, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 226
    .line 227
    new-instance v10, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;

    .line 228
    .line 229
    invoke-direct {v10, v2, v7, v6}, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v10, v3, v4, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_7
    return-object v0
.end method
