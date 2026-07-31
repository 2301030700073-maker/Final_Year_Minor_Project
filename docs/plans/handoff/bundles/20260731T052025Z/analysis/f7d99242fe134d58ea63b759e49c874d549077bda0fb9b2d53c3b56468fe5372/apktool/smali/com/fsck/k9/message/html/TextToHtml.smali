.class public final Lcom/fsck/k9/message/html/TextToHtml;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final HTML_MODIFIERS:Ljava/util/List;


# instance fields
.field public final html:Ljava/lang/StringBuilder;

.field public final htmlTag:Lcom/fsck/k9/message/html/HTMLTag;

.field public final retainOriginalWhitespace:Z

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Lcom/fsck/k9/message/html/TextToHtml$HtmlModifier;

    .line 3
    .line 4
    sget-object v1, Lcom/fsck/k9/message/html/DividerReplacer;->INSTANCE:Lcom/fsck/k9/message/html/DividerReplacer;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/fsck/k9/message/html/UriLinkifier;->INSTANCE:Lcom/fsck/k9/message/html/UriLinkifier;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/fsck/k9/message/html/SignatureWrapper;->INSTANCE:Lcom/fsck/k9/message/html/SignatureWrapper;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/fsck/k9/message/html/TextToHtml;->HTML_MODIFIERS:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;ZLcom/fsck/k9/message/html/HTMLTag;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/message/html/TextToHtml;->text:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/message/html/TextToHtml;->html:Ljava/lang/StringBuilder;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/fsck/k9/message/html/TextToHtml;->retainOriginalWhitespace:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/message/html/TextToHtml;->htmlTag:Lcom/fsck/k9/message/html/HTMLTag;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final appendAsHtmlFragment()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/html/TextToHtml;->htmlTag:Lcom/fsck/k9/message/html/HTMLTag;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/fsck/k9/message/html/HTMLTag;->html:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "<"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " dir=\"auto\">"

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/fsck/k9/message/html/TextToHtml;->html:Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sget-object v3, Lcom/fsck/k9/message/html/TextToHtml;->HTML_MODIFIERS:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v5, p0, Lcom/fsck/k9/message/html/TextToHtml;->text:Ljava/lang/CharSequence;

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/fsck/k9/message/html/TextToHtml$HtmlModifier;

    .line 53
    .line 54
    invoke-interface {v4, v5}, Lcom/fsck/k9/message/html/TextToHtml$HtmlModifier;->findModifications(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v3, Lcom/fsck/k9/message/html/TextToHtml$appendAsHtmlFragment$$inlined$sortedBy$1;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v3, Ljava/util/ArrayDeque;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const/4 v4, 0x0

    .line 81
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-eqz v6, :cond_7

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    check-cast v6, Lcom/fsck/k9/message/html/HtmlModification;

    .line 92
    .line 93
    :goto_2
    iget v7, v6, Lcom/fsck/k9/message/html/HtmlModification;->startIndex:I

    .line 94
    .line 95
    iget v8, v6, Lcom/fsck/k9/message/html/HtmlModification;->endIndex:I

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    check-cast v9, Lcom/fsck/k9/message/html/HtmlModification$Wrap;

    .line 102
    .line 103
    const v10, 0x7fffffff

    .line 104
    .line 105
    .line 106
    if-eqz v9, :cond_2

    .line 107
    .line 108
    iget v9, v9, Lcom/fsck/k9/message/html/HtmlModification;->endIndex:I

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_2
    move v9, v10

    .line 112
    :goto_3
    if-lt v7, v9, :cond_3

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Lcom/fsck/k9/message/html/HtmlModification$Wrap;

    .line 119
    .line 120
    iget v8, v7, Lcom/fsck/k9/message/html/HtmlModification;->endIndex:I

    .line 121
    .line 122
    invoke-virtual {p0, v4, v8}, Lcom/fsck/k9/message/html/TextToHtml;->appendHtmlEncoded(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, p0}, Lcom/fsck/k9/message/html/HtmlModification$Wrap;->appendSuffix(Lcom/fsck/k9/message/html/TextToHtml;)V

    .line 126
    .line 127
    .line 128
    iget v4, v7, Lcom/fsck/k9/message/html/HtmlModification;->endIndex:I

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {p0, v4, v7}, Lcom/fsck/k9/message/html/TextToHtml;->appendHtmlEncoded(II)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    check-cast v9, Lcom/fsck/k9/message/html/HtmlModification$Wrap;

    .line 139
    .line 140
    if-eqz v9, :cond_4

    .line 141
    .line 142
    iget v10, v9, Lcom/fsck/k9/message/html/HtmlModification;->endIndex:I

    .line 143
    .line 144
    :cond_4
    if-gt v8, v10, :cond_6

    .line 145
    .line 146
    instance-of v9, v6, Lcom/fsck/k9/message/html/HtmlModification$Wrap;

    .line 147
    .line 148
    if-eqz v9, :cond_5

    .line 149
    .line 150
    move-object v4, v6

    .line 151
    check-cast v4, Lcom/fsck/k9/message/html/HtmlModification$Wrap;

    .line 152
    .line 153
    invoke-virtual {v4, p0}, Lcom/fsck/k9/message/html/HtmlModification$Wrap;->appendPrefix(Lcom/fsck/k9/message/html/TextToHtml;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    move v4, v7

    .line 160
    goto :goto_1

    .line 161
    :cond_5
    instance-of v6, v6, Lcom/fsck/k9/message/html/DividerReplacer$Divider;

    .line 162
    .line 163
    if-eqz v6, :cond_1

    .line 164
    .line 165
    const-string v4, "<hr>"

    .line 166
    .line 167
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    move v4, v8

    .line 171
    goto :goto_1

    .line 172
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    const-string v0, "HtmlModification "

    .line 177
    .line 178
    const-string v1, " must be fully contained within outer HtmlModification "

    .line 179
    .line 180
    invoke-static {v0, v6, v1, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_8

    .line 189
    .line 190
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    check-cast v1, Lcom/fsck/k9/message/html/HtmlModification$Wrap;

    .line 195
    .line 196
    iget v6, v1, Lcom/fsck/k9/message/html/HtmlModification;->endIndex:I

    .line 197
    .line 198
    invoke-virtual {p0, v4, v6}, Lcom/fsck/k9/message/html/TextToHtml;->appendHtmlEncoded(II)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, p0}, Lcom/fsck/k9/message/html/HtmlModification$Wrap;->appendSuffix(Lcom/fsck/k9/message/html/TextToHtml;)V

    .line 202
    .line 203
    .line 204
    iget v4, v1, Lcom/fsck/k9/message/html/HtmlModification;->endIndex:I

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_8
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    invoke-virtual {p0, v4, v1}, Lcom/fsck/k9/message/html/TextToHtml;->appendHtmlEncoded(II)V

    .line 212
    .line 213
    .line 214
    iget-object p0, v0, Lcom/fsck/k9/message/html/HTMLTag;->html:Ljava/lang/String;

    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v1, "</"

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string p0, ">"

    .line 227
    .line 228
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public final appendHtmlEncoded(II)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/message/html/TextToHtml;->retainOriginalWhitespace:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/message/html/TextToHtml;->text:Ljava/lang/CharSequence;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :goto_0
    if-ge p1, p2, :cond_6

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/html/TextToHtml;->appendHtmlEncoded$core(C)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 v0, 0xa0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/fsck/k9/message/html/TextToHtml;->html:Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const/16 v3, 0x20

    .line 24
    .line 25
    if-ge p1, p2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ne v4, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    move v5, v4

    .line 40
    :goto_1
    if-ge p1, p2, :cond_5

    .line 41
    .line 42
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-ne v6, v3, :cond_2

    .line 47
    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_2
    if-gtz v5, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    add-int/lit8 v5, v5, -0x1

    .line 55
    .line 56
    move v6, v4

    .line 57
    :goto_2
    if-ge v6, v5, :cond_4

    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    add-int/lit8 v6, v6, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :goto_3
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {p0, v5}, Lcom/fsck/k9/message/html/TextToHtml;->appendHtmlEncoded$core(C)V

    .line 73
    .line 74
    .line 75
    move v5, v4

    .line 76
    :goto_4
    add-int/lit8 p1, p1, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    if-gtz v5, :cond_7

    .line 80
    .line 81
    :cond_6
    return-void

    .line 82
    :cond_7
    add-int/lit8 v5, v5, -0x1

    .line 83
    .line 84
    :goto_5
    if-ge v4, v5, :cond_8

    .line 85
    .line 86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final appendHtmlEncoded$core(C)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/message/html/TextToHtml;->html:Ljava/lang/StringBuilder;

    .line 4
    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    .line 7
    const/16 v0, 0xd

    .line 8
    .line 9
    if-eq p1, v0, :cond_3

    .line 10
    .line 11
    const/16 v0, 0x26

    .line 12
    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/16 v0, 0x3c

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x3e

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string p1, "&gt;"

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string p1, "&lt;"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    const-string p1, "&amp;"

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :cond_3
    return-void

    .line 45
    :cond_4
    const-string p1, "<br>"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    return-void
.end method
