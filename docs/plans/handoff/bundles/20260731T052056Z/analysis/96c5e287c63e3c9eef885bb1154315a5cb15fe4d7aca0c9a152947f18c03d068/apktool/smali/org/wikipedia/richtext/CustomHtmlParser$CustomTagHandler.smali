.class public final Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public hiddenSpanDepth:I

.field public hiddenSpanStartPos:I

.field public lastAClass:Ljava/lang/Object;

.field public final listItemCounts:Ljava/lang/Object;

.field public final listParents:Ljava/lang/Object;

.field public final view:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->view:Ljava/lang/Object;

    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    iput-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->lastAClass:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanStartPos:I

    .line 12
    .line 13
    new-instance p1, Ljava/util/Stack;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listItemCounts:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listParents:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridSlots;IILandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;Lokhttp3/Dispatcher;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listParents:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->view:Ljava/lang/Object;

    .line 31
    iput p2, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanDepth:I

    .line 32
    iput p3, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanStartPos:I

    .line 33
    iput-object p4, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->lastAClass:Ljava/lang/Object;

    .line 34
    iput-object p5, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listItemCounts:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public childConstraints-JhjzzOo$foundation(II)J
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->view:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->sizes:[I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    aget p0, v0, p1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    add-int/2addr p2, p1

    .line 14
    sub-int/2addr p2, v1

    .line 15
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->positions:[I

    .line 16
    .line 17
    aget v1, p0, p2

    .line 18
    .line 19
    aget p2, v0, p2

    .line 20
    .line 21
    add-int/2addr v1, p2

    .line 22
    aget p0, p0, p1

    .line 23
    .line 24
    sub-int p0, v1, p0

    .line 25
    .line 26
    :goto_0
    const/4 p1, 0x0

    .line 27
    if-gez p0, :cond_1

    .line 28
    .line 29
    move p0, p1

    .line 30
    :cond_1
    if-ltz p0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const-string/jumbo p2, "width must be >= 0"

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    const p2, 0x7fffffff

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p0, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    .line 43
    .line 44
    .line 45
    move-result-wide p0

    .line 46
    return-wide p0
.end method

.method public getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listItemCounts:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/Dispatcher;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lokhttp3/Dispatcher;->getLineConfiguration(I)Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mChildState:I

    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    add-int v4, v1, v2

    .line 21
    .line 22
    iget v5, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanDepth:I

    .line 23
    .line 24
    if-ne v4, v5, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v4, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanStartPos:I

    .line 28
    .line 29
    move v10, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move v10, v3

    .line 32
    :goto_1
    new-array v4, v2, [Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 33
    .line 34
    move v9, v3

    .line 35
    :goto_2
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->mFlexLines:Ljava/util/List;

    .line 36
    .line 37
    if-ge v3, v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 44
    .line 45
    iget-wide v5, v5, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->packedValue:J

    .line 46
    .line 47
    long-to-int v5, v5

    .line 48
    invoke-virtual {p0, v9, v5}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->childConstraints-JhjzzOo$foundation(II)J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    iget-object v6, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->lastAClass:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    .line 55
    .line 56
    move v11, v10

    .line 57
    move v10, v5

    .line 58
    move-object v5, v6

    .line 59
    add-int v6, v1, v3

    .line 60
    .line 61
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;->getAndMeasure-m8Kt_7k(IJIII)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    add-int/2addr v9, v10

    .line 66
    aput-object v5, v4, v3

    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    move v10, v11

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v11, v10

    .line 73
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 74
    .line 75
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listParents:Ljava/lang/Object;

    .line 76
    .line 77
    move-object v8, p0

    .line 78
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 79
    .line 80
    move v6, p1

    .line 81
    move-object v7, v4

    .line 82
    move-object v9, v5

    .line 83
    move-object v5, v0

    .line 84
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;-><init>(I[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Landroidx/compose/foundation/lazy/grid/LazyGridSlots;Ljava/util/List;I)V

    .line 85
    .line 86
    .line 87
    return-object v5
.end method

.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listItemCounts:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Stack;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->listParents:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->view:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroid/widget/TextView;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v5, "img"

    .line 19
    .line 20
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const/4 v7, 0x1

    .line 25
    if-eqz v6, :cond_0

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_0
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    const-string v6, ""

    .line 36
    .line 37
    if-eqz v5, :cond_b

    .line 38
    .line 39
    if-eqz p1, :cond_b

    .line 40
    .line 41
    if-eqz v2, :cond_b

    .line 42
    .line 43
    sget-object p1, Lorg/wikipedia/richtext/CustomHtmlParser;->contextBmpMap:Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    const-string/jumbo p1, "width"

    .line 46
    .line 47
    .line 48
    invoke-static {p4, p1}, Lokhttp3/Headers$Companion;->getValue(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    move-object p1, v6

    .line 55
    :cond_1
    invoke-static {p1}, Lokio/Okio__OkioKt;->htmlPxToInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const-string p2, "height"

    .line 60
    .line 61
    invoke-static {p4, p2}, Lokhttp3/Headers$Companion;->getValue(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    move-object p2, v6

    .line 68
    :cond_2
    invoke-static {p2}, Lokio/Okio__OkioKt;->htmlPxToInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    const-string p3, "src"

    .line 73
    .line 74
    invoke-static {p4, p3}, Lokhttp3/Headers$Companion;->getValue(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    if-nez p3, :cond_3

    .line 79
    .line 80
    move-object p3, v6

    .line 81
    :cond_3
    const/16 p4, 0x40

    .line 82
    .line 83
    if-lt p1, p4, :cond_a

    .line 84
    .line 85
    if-ge p2, p4, :cond_4

    .line 86
    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :cond_4
    int-to-float p1, p1

    .line 90
    invoke-static {p1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    int-to-float p2, p2

    .line 95
    invoke-static {p2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-lez p1, :cond_22

    .line 100
    .line 101
    if-lez p2, :cond_22

    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    if-lez p4, :cond_22

    .line 108
    .line 109
    sget-object p4, Lorg/wikipedia/richtext/CustomHtmlParser;->contextBmpMap:Ljava/util/LinkedHashMap;

    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v1, :cond_5

    .line 120
    .line 121
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_5
    check-cast v1, Ljava/util/Map;

    .line 130
    .line 131
    new-instance p4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 132
    .line 133
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 141
    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_22

    .line 155
    .line 156
    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 157
    .line 158
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 177
    .line 178
    invoke-direct {v5, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 179
    .line 180
    .line 181
    iput-object v5, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 182
    .line 183
    invoke-interface {v1, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    iget-object v0, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 189
    .line 190
    invoke-virtual {v0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 191
    .line 192
    .line 193
    const-string p1, "//"

    .line 194
    .line 195
    invoke-static {p3, p1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_7

    .line 200
    .line 201
    const-string p1, "https:"

    .line 202
    .line 203
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p3

    .line 207
    goto :goto_0

    .line 208
    :cond_7
    const-string p1, "./"

    .line 209
    .line 210
    invoke-static {p3, p1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_8

    .line 215
    .line 216
    invoke-static {p3, p1, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const-string p2, "https://commons.wikimedia.org/"

    .line 221
    .line 222
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    :cond_8
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    new-instance p2, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;

    .line 234
    .line 235
    const/4 v0, 0x4

    .line 236
    invoke-direct {p2, v0, p4, p0}, Lorg/wikipedia/util/SingleLiveData$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    sget-object p0, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 240
    .line 241
    if-eqz p0, :cond_9

    .line 242
    .line 243
    new-instance p0, Lcoil3/request/ImageRequest$Builder;

    .line 244
    .line 245
    invoke-direct {p0, p1}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    .line 247
    .line 248
    iput-object p3, p0, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 249
    .line 250
    new-instance p3, Landroidx/compose/ui/draw/DrawResult;

    .line 251
    .line 252
    invoke-direct {p3, p2}, Landroidx/compose/ui/draw/DrawResult;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 253
    .line 254
    .line 255
    iput-object p3, p0, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 256
    .line 257
    invoke-virtual {p0}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-static {p1}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1, p0}, Lcoil3/RealImageLoader;->enqueue(Lcoil3/request/ImageRequest;)V

    .line 266
    .line 267
    .line 268
    return v3

    .line 269
    :cond_9
    const-string p0, "ImageService has not been set, call ImageService.setImplementation() before using ImageService"

    .line 270
    .line 271
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return v3

    .line 275
    :cond_a
    :goto_1
    return v7

    .line 276
    :cond_b
    const-string v5, "a"

    .line 277
    .line 278
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    const/4 v8, -0x1

    .line 283
    const/4 v9, 0x0

    .line 284
    if-eqz v5, :cond_13

    .line 285
    .line 286
    if-eqz p1, :cond_d

    .line 287
    .line 288
    sget-object p1, Lorg/wikipedia/richtext/CustomHtmlParser;->contextBmpMap:Ljava/util/LinkedHashMap;

    .line 289
    .line 290
    const-string p1, "class"

    .line 291
    .line 292
    invoke-static {p4, p1}, Lokhttp3/Headers$Companion;->getValue(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    if-nez p1, :cond_c

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_c
    move-object v6, p1

    .line 300
    :goto_2
    iput-object v6, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->lastAClass:Ljava/lang/Object;

    .line 301
    .line 302
    return v3

    .line 303
    :cond_d
    if-eqz p3, :cond_22

    .line 304
    .line 305
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-nez p1, :cond_e

    .line 310
    .line 311
    goto/16 :goto_7

    .line 312
    .line 313
    :cond_e
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    sub-int/2addr p1, v7

    .line 318
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 319
    .line 320
    .line 321
    move-result p2

    .line 322
    const-class p4, Landroid/text/style/URLSpan;

    .line 323
    .line 324
    invoke-interface {p3, p1, p2, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    .line 330
    .line 331
    check-cast p1, [Landroid/text/style/URLSpan;

    .line 332
    .line 333
    array-length p2, p1

    .line 334
    if-nez p2, :cond_f

    .line 335
    .line 336
    goto/16 :goto_7

    .line 337
    .line 338
    :cond_f
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    check-cast p1, Landroid/text/style/URLSpan;

    .line 343
    .line 344
    invoke-interface {p3, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 345
    .line 346
    .line 347
    move-result p2

    .line 348
    invoke-interface {p3, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 349
    .line 350
    .line 351
    move-result p4

    .line 352
    invoke-interface {p3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->lastAClass:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast p0, Ljava/lang/String;

    .line 358
    .line 359
    const-string v0, "new"

    .line 360
    .line 361
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-eqz p0, :cond_12

    .line 366
    .line 367
    if-eqz v2, :cond_12

    .line 368
    .line 369
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 370
    .line 371
    .line 372
    move-result-object p0

    .line 373
    invoke-static {p0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    const v1, 0x7f040128

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, v1, v0, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 385
    .line 386
    .line 387
    move-result p0

    .line 388
    if-eqz p0, :cond_10

    .line 389
    .line 390
    move-object v9, v0

    .line 391
    :cond_10
    if-eqz v9, :cond_11

    .line 392
    .line 393
    iget v8, v9, Landroid/util/TypedValue;->data:I

    .line 394
    .line 395
    goto :goto_3

    .line 396
    :cond_11
    const-string p0, "Attribute not found; ID=2130968872"

    .line 397
    .line 398
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    return v3

    .line 402
    :cond_12
    :goto_3
    new-instance p0, Lorg/wikipedia/richtext/URLSpanNoUnderline;

    .line 403
    .line 404
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    invoke-direct {p0, v8, p1}, Lorg/wikipedia/richtext/URLSpanNoUnderline;-><init>(ILjava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-interface {p3, p0, p2, p4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 415
    .line 416
    .line 417
    return v3

    .line 418
    :cond_13
    const-string v2, "code"

    .line 419
    .line 420
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-eqz v2, :cond_16

    .line 425
    .line 426
    if-eqz p3, :cond_16

    .line 427
    .line 428
    const-string p0, "monospace"

    .line 429
    .line 430
    if-eqz p1, :cond_14

    .line 431
    .line 432
    new-instance p1, Landroid/text/style/TypefaceSpan;

    .line 433
    .line 434
    invoke-direct {p1, p0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 438
    .line 439
    .line 440
    move-result p0

    .line 441
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 442
    .line 443
    .line 444
    move-result p2

    .line 445
    const/16 p4, 0x12

    .line 446
    .line 447
    invoke-interface {p3, p1, p0, p2, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 448
    .line 449
    .line 450
    return v3

    .line 451
    :cond_14
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 452
    .line 453
    .line 454
    move-result p1

    .line 455
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 456
    .line 457
    .line 458
    move-result p2

    .line 459
    const-class p4, Landroid/text/style/TypefaceSpan;

    .line 460
    .line 461
    invoke-interface {p3, p1, p2, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    check-cast p1, [Landroid/text/style/TypefaceSpan;

    .line 469
    .line 470
    array-length p2, p1

    .line 471
    if-nez p2, :cond_15

    .line 472
    .line 473
    goto/16 :goto_7

    .line 474
    .line 475
    :cond_15
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object p1

    .line 479
    check-cast p1, Landroid/text/style/TypefaceSpan;

    .line 480
    .line 481
    invoke-interface {p3, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 482
    .line 483
    .line 484
    move-result p2

    .line 485
    invoke-interface {p3, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    new-instance p1, Landroid/text/style/TypefaceSpan;

    .line 489
    .line 490
    invoke-direct {p1, p0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 494
    .line 495
    .line 496
    move-result p0

    .line 497
    invoke-interface {p3, p1, p2, p0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 498
    .line 499
    .line 500
    return v3

    .line 501
    :cond_16
    const-string v2, "ol"

    .line 502
    .line 503
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-eqz v5, :cond_18

    .line 508
    .line 509
    if-eqz p1, :cond_17

    .line 510
    .line 511
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    check-cast p0, Ljava/lang/Integer;

    .line 519
    .line 520
    return v3

    .line 521
    :cond_17
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object p0

    .line 528
    check-cast p0, Ljava/lang/Integer;

    .line 529
    .line 530
    return v3

    .line 531
    :cond_18
    const-string v5, "li"

    .line 532
    .line 533
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    if-eqz v5, :cond_1c

    .line 538
    .line 539
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    if-nez v5, :cond_1c

    .line 544
    .line 545
    if-nez p1, :cond_1c

    .line 546
    .line 547
    if-eqz p3, :cond_1c

    .line 548
    .line 549
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object p0

    .line 553
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result p0

    .line 557
    if-eqz p0, :cond_22

    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 560
    .line 561
    .line 562
    move-result p0

    .line 563
    if-lez p0, :cond_19

    .line 564
    .line 565
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object p0

    .line 569
    move-object v4, p0

    .line 570
    check-cast v4, Ljava/lang/Integer;

    .line 571
    .line 572
    :cond_19
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 573
    .line 574
    .line 575
    move-result p0

    .line 576
    add-int/2addr p0, v7

    .line 577
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 589
    .line 590
    .line 591
    move-result p2

    .line 592
    const-class p4, Landroid/text/style/ParagraphStyle;

    .line 593
    .line 594
    invoke-interface {p3, p1, p2, p4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    .line 600
    .line 601
    check-cast p1, [Landroid/text/style/ParagraphStyle;

    .line 602
    .line 603
    array-length p2, p1

    .line 604
    move p4, v3

    .line 605
    :goto_4
    if-ge p4, p2, :cond_1b

    .line 606
    .line 607
    aget-object v0, p1, p4

    .line 608
    .line 609
    instance-of v1, v0, Landroid/text/style/LeadingMarginSpan;

    .line 610
    .line 611
    if-nez v1, :cond_1a

    .line 612
    .line 613
    invoke-interface {p3, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    goto :goto_5

    .line 617
    :cond_1a
    move-object v9, v0

    .line 618
    :goto_5
    add-int/lit8 p4, p4, 0x1

    .line 619
    .line 620
    goto :goto_4

    .line 621
    :cond_1b
    check-cast v9, Landroid/text/style/LeadingMarginSpan;

    .line 622
    .line 623
    if-eqz v9, :cond_22

    .line 624
    .line 625
    invoke-interface {p3, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 626
    .line 627
    .line 628
    move-result p1

    .line 629
    invoke-interface {p3, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    new-instance p2, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    .line 636
    .line 637
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    const-string p0, ". "

    .line 641
    .line 642
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object p0

    .line 649
    invoke-interface {p3, p1, p0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 650
    .line 651
    .line 652
    new-instance p0, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 653
    .line 654
    const/high16 p2, 0x41800000    # 16.0f

    .line 655
    .line 656
    invoke-static {p2}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 657
    .line 658
    .line 659
    move-result p2

    .line 660
    invoke-direct {p0, p2}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(I)V

    .line 661
    .line 662
    .line 663
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 664
    .line 665
    .line 666
    move-result p2

    .line 667
    invoke-interface {p3, p0, p1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 668
    .line 669
    .line 670
    return v3

    .line 671
    :cond_1c
    const-string v0, "span"

    .line 672
    .line 673
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 674
    .line 675
    .line 676
    move-result p2

    .line 677
    if-eqz p2, :cond_22

    .line 678
    .line 679
    if-eqz p3, :cond_22

    .line 680
    .line 681
    iget p2, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanDepth:I

    .line 682
    .line 683
    if-eqz p1, :cond_20

    .line 684
    .line 685
    if-lez p2, :cond_1d

    .line 686
    .line 687
    add-int/2addr p2, v7

    .line 688
    iput p2, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanDepth:I

    .line 689
    .line 690
    return v3

    .line 691
    :cond_1d
    sget-object p1, Lorg/wikipedia/richtext/CustomHtmlParser;->contextBmpMap:Ljava/util/LinkedHashMap;

    .line 692
    .line 693
    const-string p1, "style"

    .line 694
    .line 695
    invoke-static {p4, p1}, Lokhttp3/Headers$Companion;->getValue(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object p1

    .line 699
    if-nez p1, :cond_1e

    .line 700
    .line 701
    goto :goto_6

    .line 702
    :cond_1e
    move-object v6, p1

    .line 703
    :goto_6
    const-string p1, "display:none"

    .line 704
    .line 705
    invoke-static {v6, p1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 706
    .line 707
    .line 708
    move-result p1

    .line 709
    if-nez p1, :cond_1f

    .line 710
    .line 711
    const-string p1, "display: none"

    .line 712
    .line 713
    invoke-static {v6, p1, v3}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 714
    .line 715
    .line 716
    move-result p1

    .line 717
    if-eqz p1, :cond_22

    .line 718
    .line 719
    :cond_1f
    iput v7, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanDepth:I

    .line 720
    .line 721
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 722
    .line 723
    .line 724
    move-result p1

    .line 725
    iput p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanStartPos:I

    .line 726
    .line 727
    return v3

    .line 728
    :cond_20
    if-lez p2, :cond_22

    .line 729
    .line 730
    add-int/2addr p2, v8

    .line 731
    iput p2, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanDepth:I

    .line 732
    .line 733
    if-nez p2, :cond_22

    .line 734
    .line 735
    iget p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanStartPos:I

    .line 736
    .line 737
    if-ltz p1, :cond_22

    .line 738
    .line 739
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 740
    .line 741
    .line 742
    move-result p2

    .line 743
    if-ge p1, p2, :cond_21

    .line 744
    .line 745
    iget p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanStartPos:I

    .line 746
    .line 747
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 748
    .line 749
    .line 750
    move-result p2

    .line 751
    invoke-interface {p3, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 752
    .line 753
    .line 754
    :cond_21
    iput v8, p0, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->hiddenSpanStartPos:I

    .line 755
    .line 756
    :cond_22
    :goto_7
    return v3
.end method
