.class public final Lcom/grack/nanojson/JsonParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcoil3/transition/Transition;


# instance fields
.field public final synthetic $r8$classId:I

.field public token:I

.field public tokener:Ljava/lang/Object;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 266
    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 262
    iput-object p2, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 263
    iput p3, p0, Lcom/grack/nanojson/JsonParser;->token:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 258
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcoil3/target/ImageViewTarget;Lcoil3/request/ImageResult;I)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 244
    iput-object p2, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 245
    iput p3, p0, Lcom/grack/nanojson/JsonParser;->token:I

    if-lez p3, :cond_0

    return-void

    .line 246
    :cond_0
    const-string p0, "durationMillis must be > 0."

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonTokener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;ILandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 253
    iput p2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 254
    iput-object p3, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 255
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "changes cannot be empty"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;)V
    .locals 12

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->getIntervals()Lcom/grack/nanojson/JsonParser;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget v0, p1, Lkotlin/ranges/IntProgression;->first:I

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "negative nearestRange.first"

    .line 17
    .line 18
    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget p1, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 22
    .line 23
    iget v1, p2, Lcom/grack/nanojson/JsonParser;->token:I

    .line 24
    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-ge p1, v0, :cond_1

    .line 32
    .line 33
    sget-object p1, Landroidx/collection/ObjectIntMapKt;->EmptyObjectIntMap:Landroidx/collection/MutableObjectIntMap;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    new-array p2, p1, [Ljava/lang/Object;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 44
    .line 45
    iput p1, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 46
    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :cond_1
    sub-int v1, p1, v0

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    new-array v2, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    iput-object v2, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 56
    .line 57
    iput v0, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 58
    .line 59
    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    .line 60
    .line 61
    invoke-direct {v2, v1}, Landroidx/collection/MutableObjectIntMap;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p2, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 67
    .line 68
    const-string v3, ", size "

    .line 69
    .line 70
    const-string v4, "Index "

    .line 71
    .line 72
    if-ltz v0, :cond_2

    .line 73
    .line 74
    iget v5, p2, Lcom/grack/nanojson/JsonParser;->token:I

    .line 75
    .line 76
    if-ge v0, v5, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-static {v4, v0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    iget v6, p2, Lcom/grack/nanojson/JsonParser;->token:I

    .line 84
    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    if-ltz p1, :cond_3

    .line 96
    .line 97
    iget v5, p2, Lcom/grack/nanojson/JsonParser;->token:I

    .line 98
    .line 99
    if-ge p1, v5, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-static {v4, p1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget p2, p2, Lcom/grack/nanojson/JsonParser;->token:I

    .line 107
    .line 108
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    if-lt p1, v0, :cond_4

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string/jumbo v3, "toIndex ("

    .line 124
    .line 125
    .line 126
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, ") should be not smaller than fromIndex ("

    .line 133
    .line 134
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const/16 v3, 0x29

    .line 141
    .line 142
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {p2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :goto_3
    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->access$binarySearch(ILandroidx/compose/runtime/collection/MutableVector;)I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 157
    .line 158
    aget-object v3, v3, p2

    .line 159
    .line 160
    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 161
    .line 162
    iget v3, v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 163
    .line 164
    :goto_4
    if-gt v3, p1, :cond_8

    .line 165
    .line 166
    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 167
    .line 168
    aget-object v4, v4, p2

    .line 169
    .line 170
    check-cast v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 171
    .line 172
    iget-object v5, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->value:Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;

    .line 173
    .line 174
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;->getKey()Lkotlin/jvm/functions/Function1;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    iget v6, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 179
    .line 180
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    iget v8, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    .line 185
    .line 186
    add-int/2addr v8, v6

    .line 187
    add-int/lit8 v8, v8, -0x1

    .line 188
    .line 189
    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    if-gt v7, v8, :cond_7

    .line 194
    .line 195
    :goto_5
    if-eqz v5, :cond_5

    .line 196
    .line 197
    sub-int v9, v7, v6

    .line 198
    .line 199
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-interface {v5, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    if-nez v9, :cond_6

    .line 208
    .line 209
    :cond_5
    new-instance v9, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;

    .line 210
    .line 211
    invoke-direct {v9, v7}, Landroidx/compose/foundation/lazy/layout/DefaultLazyKey;-><init>(I)V

    .line 212
    .line 213
    .line 214
    :cond_6
    invoke-virtual {v2, v7, v9}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v10, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v10, [Ljava/lang/Object;

    .line 220
    .line 221
    iget v11, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 222
    .line 223
    sub-int v11, v7, v11

    .line 224
    .line 225
    aput-object v9, v10, v11

    .line 226
    .line 227
    if-eq v7, v8, :cond_7

    .line 228
    .line 229
    add-int/lit8 v7, v7, 0x1

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_7
    iget v4, v4, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    .line 233
    .line 234
    add-int/2addr v3, v4

    .line 235
    add-int/lit8 p2, p2, 0x1

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_8
    iput-object v2, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 239
    .line 240
    :goto_6
    return-void
.end method

.method public constructor <init>(Lokhttp3/Protocol;ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 249
    iput p2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 250
    iput-object p3, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/grack/nanojson/JsonParser;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x2

    .line 19
    if-eq v4, v6, :cond_0

    .line 20
    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v4, v6, :cond_22

    .line 25
    .line 26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v7, "gradient"

    .line 34
    .line 35
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/4 v9, 0x0

    .line 40
    if-nez v8, :cond_2

    .line 41
    .line 42
    const-string v5, "selector"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-static {v0, v2, v3, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/grack/nanojson/JsonParser;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-direct {v1, v9, v0, v2}, Lcom/grack/nanojson/JsonParser;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 65
    .line 66
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ": unsupported complex color tag "

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_21

    .line 103
    .line 104
    sget-object v4, Landroidx/core/R$styleable;->GradientColor:[I

    .line 105
    .line 106
    invoke-static {v0, v1, v3, v4}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const-string v7, "http://schemas.android.com/apk/res/android"

    .line 111
    .line 112
    const-string/jumbo v8, "startX"

    .line 113
    .line 114
    .line 115
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    const/4 v10, 0x0

    .line 120
    if-eqz v8, :cond_3

    .line 121
    .line 122
    const/16 v8, 0x8

    .line 123
    .line 124
    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    move v12, v8

    .line 129
    goto :goto_1

    .line 130
    :cond_3
    move v12, v10

    .line 131
    :goto_1
    const-string/jumbo v8, "startY"

    .line 132
    .line 133
    .line 134
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    if-eqz v8, :cond_4

    .line 139
    .line 140
    const/16 v8, 0x9

    .line 141
    .line 142
    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    move v13, v8

    .line 147
    goto :goto_2

    .line 148
    :cond_4
    move v13, v10

    .line 149
    :goto_2
    const-string v8, "endX"

    .line 150
    .line 151
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v8

    .line 155
    if-eqz v8, :cond_5

    .line 156
    .line 157
    const/16 v8, 0xa

    .line 158
    .line 159
    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    move v14, v8

    .line 164
    goto :goto_3

    .line 165
    :cond_5
    move v14, v10

    .line 166
    :goto_3
    const-string v8, "endY"

    .line 167
    .line 168
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    if-eqz v8, :cond_6

    .line 173
    .line 174
    const/16 v8, 0xb

    .line 175
    .line 176
    invoke-virtual {v4, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    move v15, v8

    .line 181
    goto :goto_4

    .line 182
    :cond_6
    move v15, v10

    .line 183
    :goto_4
    const-string v8, "centerX"

    .line 184
    .line 185
    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    const/4 v11, 0x3

    .line 190
    if-eqz v8, :cond_7

    .line 191
    .line 192
    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    goto :goto_5

    .line 197
    :cond_7
    move v8, v10

    .line 198
    :goto_5
    const-string v9, "centerY"

    .line 199
    .line 200
    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    if-eqz v9, :cond_8

    .line 205
    .line 206
    const/4 v9, 0x4

    .line 207
    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    goto :goto_6

    .line 212
    :cond_8
    move v9, v10

    .line 213
    :goto_6
    const-string/jumbo v11, "type"

    .line 214
    .line 215
    .line 216
    invoke-interface {v2, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    const/4 v10, 0x0

    .line 221
    if-eqz v11, :cond_9

    .line 222
    .line 223
    invoke-virtual {v4, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    goto :goto_7

    .line 228
    :cond_9
    move v11, v10

    .line 229
    :goto_7
    const-string/jumbo v6, "startColor"

    .line 230
    .line 231
    .line 232
    invoke-interface {v2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    if-eqz v6, :cond_a

    .line 237
    .line 238
    invoke-virtual {v4, v10, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    goto :goto_8

    .line 243
    :cond_a
    move v6, v10

    .line 244
    :goto_8
    const-string v5, "centerColor"

    .line 245
    .line 246
    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v20

    .line 250
    if-eqz v20, :cond_b

    .line 251
    .line 252
    const/16 v20, 0x1

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_b
    move/from16 v20, v10

    .line 256
    .line 257
    :goto_9
    invoke-interface {v2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    if-eqz v5, :cond_c

    .line 262
    .line 263
    const/4 v5, 0x7

    .line 264
    invoke-virtual {v4, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    goto :goto_a

    .line 269
    :cond_c
    move v5, v10

    .line 270
    :goto_a
    const-string v10, "endColor"

    .line 271
    .line 272
    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v10

    .line 276
    if-eqz v10, :cond_d

    .line 277
    .line 278
    move/from16 v21, v12

    .line 279
    .line 280
    const/4 v10, 0x0

    .line 281
    const/4 v12, 0x1

    .line 282
    invoke-virtual {v4, v12, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 283
    .line 284
    .line 285
    move-result v23

    .line 286
    move/from16 v12, v23

    .line 287
    .line 288
    goto :goto_b

    .line 289
    :cond_d
    move/from16 v21, v12

    .line 290
    .line 291
    const/4 v10, 0x0

    .line 292
    move v12, v10

    .line 293
    :goto_b
    const-string/jumbo v10, "tileMode"

    .line 294
    .line 295
    .line 296
    invoke-interface {v2, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    if-eqz v10, :cond_e

    .line 301
    .line 302
    const/4 v10, 0x6

    .line 303
    move/from16 v22, v13

    .line 304
    .line 305
    const/4 v13, 0x0

    .line 306
    invoke-virtual {v4, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    goto :goto_c

    .line 311
    :cond_e
    move/from16 v22, v13

    .line 312
    .line 313
    const/4 v10, 0x0

    .line 314
    :goto_c
    const-string v13, "gradientRadius"

    .line 315
    .line 316
    invoke-interface {v2, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v7

    .line 320
    if-eqz v7, :cond_f

    .line 321
    .line 322
    const/4 v7, 0x5

    .line 323
    const/4 v13, 0x0

    .line 324
    invoke-virtual {v4, v7, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 325
    .line 326
    .line 327
    move-result v7

    .line 328
    move v13, v7

    .line 329
    goto :goto_d

    .line 330
    :cond_f
    const/4 v13, 0x0

    .line 331
    :goto_d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    .line 333
    .line 334
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    const/4 v7, 0x1

    .line 339
    add-int/2addr v4, v7

    .line 340
    new-instance v7, Ljava/util/ArrayList;

    .line 341
    .line 342
    move-object/from16 v24, v2

    .line 343
    .line 344
    const/16 v2, 0x14

    .line 345
    .line 346
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    .line 348
    .line 349
    move/from16 v25, v13

    .line 350
    .line 351
    new-instance v13, Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .line 355
    .line 356
    :goto_e
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    move/from16 v26, v14

    .line 361
    .line 362
    const/4 v14, 0x1

    .line 363
    if-eq v2, v14, :cond_15

    .line 364
    .line 365
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 366
    .line 367
    .line 368
    move-result v14

    .line 369
    move/from16 v27, v15

    .line 370
    .line 371
    if-ge v14, v4, :cond_10

    .line 372
    .line 373
    const/4 v15, 0x3

    .line 374
    if-eq v2, v15, :cond_16

    .line 375
    .line 376
    :cond_10
    const/4 v15, 0x2

    .line 377
    if-eq v2, v15, :cond_12

    .line 378
    .line 379
    :cond_11
    :goto_f
    move/from16 v14, v26

    .line 380
    .line 381
    move/from16 v15, v27

    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_12
    if-gt v14, v4, :cond_11

    .line 385
    .line 386
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    const-string v14, "item"

    .line 391
    .line 392
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-nez v2, :cond_13

    .line 397
    .line 398
    goto :goto_f

    .line 399
    :cond_13
    sget-object v2, Landroidx/core/R$styleable;->GradientColorItem:[I

    .line 400
    .line 401
    invoke-static {v0, v1, v3, v2}, Landroidx/core/content/res/CamUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    const/4 v14, 0x0

    .line 406
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 407
    .line 408
    .line 409
    move-result v15

    .line 410
    const/4 v14, 0x1

    .line 411
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 412
    .line 413
    .line 414
    move-result v19

    .line 415
    if-eqz v15, :cond_14

    .line 416
    .line 417
    if-eqz v19, :cond_14

    .line 418
    .line 419
    const/4 v15, 0x0

    .line 420
    invoke-virtual {v2, v15, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 421
    .line 422
    .line 423
    move-result v28

    .line 424
    const/4 v15, 0x0

    .line 425
    invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 426
    .line 427
    .line 428
    move-result v29

    .line 429
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 430
    .line 431
    .line 432
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    goto :goto_f

    .line 447
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 448
    .line 449
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    const-string v1, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 462
    .line 463
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v0

    .line 474
    :cond_15
    move/from16 v27, v15

    .line 475
    .line 476
    :cond_16
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-lez v0, :cond_17

    .line 481
    .line 482
    new-instance v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;

    .line 483
    .line 484
    invoke-direct {v0, v13, v7}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 485
    .line 486
    .line 487
    goto :goto_10

    .line 488
    :cond_17
    const/4 v0, 0x0

    .line 489
    :goto_10
    if-eqz v0, :cond_18

    .line 490
    .line 491
    :goto_11
    const/4 v14, 0x1

    .line 492
    goto :goto_12

    .line 493
    :cond_18
    if-eqz v20, :cond_19

    .line 494
    .line 495
    new-instance v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;

    .line 496
    .line 497
    invoke-direct {v0, v6, v5, v12}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;-><init>(III)V

    .line 498
    .line 499
    .line 500
    goto :goto_11

    .line 501
    :cond_19
    new-instance v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;

    .line 502
    .line 503
    invoke-direct {v0, v6, v12}, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;-><init>(II)V

    .line 504
    .line 505
    .line 506
    goto :goto_11

    .line 507
    :goto_12
    if-eq v11, v14, :cond_1d

    .line 508
    .line 509
    const/4 v15, 0x2

    .line 510
    if-eq v11, v15, :cond_1c

    .line 511
    .line 512
    new-instance v11, Landroid/graphics/LinearGradient;

    .line 513
    .line 514
    iget-object v1, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpLocation:[I

    .line 515
    .line 516
    iget-object v0, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpMatrix:[F

    .line 517
    .line 518
    if-eq v10, v14, :cond_1b

    .line 519
    .line 520
    if-eq v10, v15, :cond_1a

    .line 521
    .line 522
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 523
    .line 524
    :goto_13
    move-object/from16 v17, v0

    .line 525
    .line 526
    move-object/from16 v16, v1

    .line 527
    .line 528
    move-object/from16 v18, v2

    .line 529
    .line 530
    move/from16 v12, v21

    .line 531
    .line 532
    move/from16 v13, v22

    .line 533
    .line 534
    move/from16 v14, v26

    .line 535
    .line 536
    move/from16 v15, v27

    .line 537
    .line 538
    goto :goto_14

    .line 539
    :cond_1a
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 540
    .line 541
    goto :goto_13

    .line 542
    :cond_1b
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 543
    .line 544
    goto :goto_13

    .line 545
    :goto_14
    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 546
    .line 547
    .line 548
    goto :goto_17

    .line 549
    :cond_1c
    new-instance v11, Landroid/graphics/SweepGradient;

    .line 550
    .line 551
    iget-object v1, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpLocation:[I

    .line 552
    .line 553
    iget-object v0, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpMatrix:[F

    .line 554
    .line 555
    invoke-direct {v11, v8, v9, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 556
    .line 557
    .line 558
    goto :goto_17

    .line 559
    :cond_1d
    const/16 v17, 0x0

    .line 560
    .line 561
    cmpg-float v1, v25, v17

    .line 562
    .line 563
    if-lez v1, :cond_20

    .line 564
    .line 565
    new-instance v16, Landroid/graphics/RadialGradient;

    .line 566
    .line 567
    iget-object v1, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpLocation:[I

    .line 568
    .line 569
    iget-object v0, v0, Landroidx/compose/ui/platform/CalculateMatrixToWindowApi21;->tmpMatrix:[F

    .line 570
    .line 571
    const/4 v14, 0x1

    .line 572
    if-eq v10, v14, :cond_1f

    .line 573
    .line 574
    const/4 v15, 0x2

    .line 575
    if-eq v10, v15, :cond_1e

    .line 576
    .line 577
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 578
    .line 579
    :goto_15
    move-object/from16 v21, v0

    .line 580
    .line 581
    move-object/from16 v20, v1

    .line 582
    .line 583
    move-object/from16 v22, v2

    .line 584
    .line 585
    move/from16 v17, v8

    .line 586
    .line 587
    move/from16 v18, v9

    .line 588
    .line 589
    move/from16 v19, v25

    .line 590
    .line 591
    goto :goto_16

    .line 592
    :cond_1e
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 593
    .line 594
    goto :goto_15

    .line 595
    :cond_1f
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 596
    .line 597
    goto :goto_15

    .line 598
    :goto_16
    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 599
    .line 600
    .line 601
    move-object/from16 v11, v16

    .line 602
    .line 603
    :goto_17
    new-instance v0, Lcom/grack/nanojson/JsonParser;

    .line 604
    .line 605
    const/4 v1, 0x0

    .line 606
    const/4 v13, 0x0

    .line 607
    invoke-direct {v0, v11, v1, v13}, Lcom/grack/nanojson/JsonParser;-><init>(Landroid/graphics/Shader;Landroid/content/res/ColorStateList;I)V

    .line 608
    .line 609
    .line 610
    return-object v0

    .line 611
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 612
    .line 613
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 614
    .line 615
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    throw v0

    .line 619
    :cond_21
    move-object/from16 v24, v2

    .line 620
    .line 621
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 622
    .line 623
    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v1, ": invalid gradient color tag "

    .line 636
    .line 637
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    throw v0

    .line 651
    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 652
    .line 653
    const-string v1, "No start tag found"

    .line 654
    .line 655
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v0
.end method

.method public static synthetic insert$default(Lcom/grack/nanojson/JsonParser;IIIIIIZZZI)V
    .locals 12

    .line 1
    and-int/lit8 v0, p10, 0x20

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    move v7, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move/from16 v7, p6

    .line 9
    .line 10
    :goto_0
    const/4 v11, -0x1

    .line 11
    move-object v1, p0

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move/from16 v5, p4

    .line 16
    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    move/from16 v8, p7

    .line 20
    .line 21
    move/from16 v9, p8

    .line 22
    .line 23
    move/from16 v10, p9

    .line 24
    .line 25
    invoke-virtual/range {v1 .. v11}, Lcom/grack/nanojson/JsonParser;->insert(IIIIIIZZZI)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static object()Lokhttp3/ConnectionPool;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/ConnectionPool;

    .line 2
    .line 3
    const-class v1, Lcom/grack/nanojson/JsonObject;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string/jumbo v0, "size should be >=0"

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    if-nez p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 14
    .line 15
    iget v1, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 16
    .line 17
    invoke-direct {v0, v1, p1, p2}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;-><init>(IILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 21
    .line 22
    add-int/2addr p2, p1

    .line 23
    iput p2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 24
    .line 25
    iget-object p0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Landroidx/compose/runtime/collection/MutableVector;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public advanceToken(ZZ)I
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Lcom/grack/nanojson/JsonTokener;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/grack/nanojson/JsonTokener;->reusableBuffer:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget v0, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 14
    .line 15
    sub-int/2addr v0, v4

    .line 16
    iput v0, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 17
    .line 18
    :cond_0
    iget-object v0, v2, Lcom/grack/nanojson/JsonTokener;->buffer:[C

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonTokener;->advanceChar()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-static {v5}, Lcom/grack/nanojson/JsonTokener;->isWhitespace(I)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget v6, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 32
    .line 33
    iget v7, v2, Lcom/grack/nanojson/JsonTokener;->charOffset:I

    .line 34
    .line 35
    add-int/2addr v7, v6

    .line 36
    iget v8, v2, Lcom/grack/nanojson/JsonTokener;->rowPos:I

    .line 37
    .line 38
    sub-int v8, v7, v8

    .line 39
    .line 40
    iget v9, v2, Lcom/grack/nanojson/JsonTokener;->utf8adjust:I

    .line 41
    .line 42
    sub-int/2addr v8, v9

    .line 43
    iput v8, v2, Lcom/grack/nanojson/JsonTokener;->tokenCharPos:I

    .line 44
    .line 45
    iput v7, v2, Lcom/grack/nanojson/JsonTokener;->tokenCharOffset:I

    .line 46
    .line 47
    const-string v9, "Malformed number: "

    .line 48
    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v10, -0x1

    .line 52
    if-eq v5, v10, :cond_40

    .line 53
    .line 54
    const/16 v10, 0x61

    .line 55
    .line 56
    const/16 v13, 0x41

    .line 57
    .line 58
    const/16 v14, 0x74

    .line 59
    .line 60
    const/16 v7, 0x6e

    .line 61
    .line 62
    const/16 v15, 0x66

    .line 63
    .line 64
    const/16 v8, 0x27

    .line 65
    .line 66
    move/from16 v17, v4

    .line 67
    .line 68
    const/16 v4, 0x22

    .line 69
    .line 70
    if-eq v5, v4, :cond_24

    .line 71
    .line 72
    if-eq v5, v8, :cond_24

    .line 73
    .line 74
    const/16 v4, 0x5b

    .line 75
    .line 76
    if-eq v5, v4, :cond_23

    .line 77
    .line 78
    const/16 v4, 0x5d

    .line 79
    .line 80
    if-eq v5, v4, :cond_22

    .line 81
    .line 82
    if-eq v5, v15, :cond_20

    .line 83
    .line 84
    if-eq v5, v7, :cond_1e

    .line 85
    .line 86
    if-eq v5, v14, :cond_1c

    .line 87
    .line 88
    const/16 v4, 0x7b

    .line 89
    .line 90
    if-eq v5, v4, :cond_1b

    .line 91
    .line 92
    const/16 v4, 0x7d

    .line 93
    .line 94
    if-eq v5, v4, :cond_1a

    .line 95
    .line 96
    packed-switch v5, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    packed-switch v5, :pswitch_data_1

    .line 100
    .line 101
    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    add-int/lit8 v6, v6, -0x1

    .line 105
    .line 106
    iput v6, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonTokener;->consumeTokenSemiString()V

    .line 109
    .line 110
    .line 111
    :goto_1
    const/16 v0, 0xc

    .line 112
    .line 113
    goto/16 :goto_1f

    .line 114
    .line 115
    :cond_2
    if-lt v5, v13, :cond_3

    .line 116
    .line 117
    const/16 v0, 0x5a

    .line 118
    .line 119
    if-le v5, v0, :cond_4

    .line 120
    .line 121
    :cond_3
    if-lt v5, v10, :cond_5

    .line 122
    .line 123
    const/16 v0, 0x7a

    .line 124
    .line 125
    if-gt v5, v0, :cond_5

    .line 126
    .line 127
    :cond_4
    int-to-char v0, v5

    .line 128
    invoke-virtual {v2, v0, v12, v11}, Lcom/grack/nanojson/JsonTokener;->createHelpfulException(C[CI)Lcom/grack/nanojson/JsonParserException;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    throw v0

    .line 133
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v1, "Unexpected character: "

    .line 136
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    int-to-char v1, v5

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    move/from16 v1, v17

    .line 149
    .line 150
    invoke-virtual {v2, v12, v0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    throw v0

    .line 155
    :pswitch_0
    const/4 v0, 0x2

    .line 156
    goto/16 :goto_1f

    .line 157
    .line 158
    :pswitch_1
    int-to-char v4, v5

    .line 159
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iput-boolean v11, v2, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    .line 166
    .line 167
    const/16 v5, 0x2d

    .line 168
    .line 169
    if-ne v4, v5, :cond_7

    .line 170
    .line 171
    const/4 v5, 0x1

    .line 172
    :cond_6
    :goto_2
    const/16 v6, 0x100

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    const/16 v5, 0x30

    .line 176
    .line 177
    if-ne v4, v5, :cond_8

    .line 178
    .line 179
    const/4 v5, 0x3

    .line 180
    goto :goto_2

    .line 181
    :cond_8
    const/4 v5, 0x2

    .line 182
    goto :goto_2

    .line 183
    :goto_3
    invoke-virtual {v2, v6}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-nez v7, :cond_a

    .line 188
    .line 189
    :cond_9
    const/4 v6, 0x2

    .line 190
    goto :goto_5

    .line 191
    :cond_a
    move v6, v11

    .line 192
    :goto_4
    if-ge v6, v7, :cond_6

    .line 193
    .line 194
    iget v8, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 195
    .line 196
    aget-char v8, v0, v8

    .line 197
    .line 198
    const/16 v10, 0x2b

    .line 199
    .line 200
    const/16 v13, 0x2e

    .line 201
    .line 202
    const/16 v14, 0x45

    .line 203
    .line 204
    const/16 v15, 0x65

    .line 205
    .line 206
    const/16 v11, 0x30

    .line 207
    .line 208
    if-lt v8, v11, :cond_b

    .line 209
    .line 210
    const/16 v11, 0x39

    .line 211
    .line 212
    if-le v8, v11, :cond_f

    .line 213
    .line 214
    :cond_b
    if-eq v8, v15, :cond_f

    .line 215
    .line 216
    if-eq v8, v14, :cond_f

    .line 217
    .line 218
    if-eq v8, v13, :cond_f

    .line 219
    .line 220
    if-eq v8, v10, :cond_f

    .line 221
    .line 222
    const/16 v11, 0x2d

    .line 223
    .line 224
    if-ne v8, v11, :cond_9

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :goto_5
    if-eq v5, v6, :cond_c

    .line 228
    .line 229
    const/4 v6, 0x3

    .line 230
    if-eq v5, v6, :cond_c

    .line 231
    .line 232
    const/4 v6, 0x5

    .line 233
    if-eq v5, v6, :cond_c

    .line 234
    .line 235
    const/16 v6, 0x8

    .line 236
    .line 237
    if-ne v5, v6, :cond_d

    .line 238
    .line 239
    :cond_c
    const/4 v6, 0x1

    .line 240
    const/4 v7, 0x3

    .line 241
    goto :goto_6

    .line 242
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    const/4 v6, 0x1

    .line 255
    invoke-virtual {v2, v12, v0, v6}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    throw v0

    .line 260
    :goto_6
    if-ne v5, v7, :cond_e

    .line 261
    .line 262
    const/16 v5, 0x2d

    .line 263
    .line 264
    if-ne v4, v5, :cond_e

    .line 265
    .line 266
    iput-boolean v6, v2, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    .line 267
    .line 268
    :cond_e
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    .line 269
    .line 270
    .line 271
    const/16 v0, 0x9

    .line 272
    .line 273
    goto/16 :goto_1f

    .line 274
    .line 275
    :cond_f
    :goto_7
    packed-switch v5, :pswitch_data_2

    .line 276
    .line 277
    .line 278
    goto/16 :goto_c

    .line 279
    .line 280
    :pswitch_2
    const/16 v11, 0x30

    .line 281
    .line 282
    if-lt v8, v11, :cond_18

    .line 283
    .line 284
    const/16 v13, 0x39

    .line 285
    .line 286
    if-gt v8, v13, :cond_18

    .line 287
    .line 288
    :goto_8
    const/16 v5, 0x8

    .line 289
    .line 290
    goto :goto_d

    .line 291
    :pswitch_3
    const/16 v11, 0x30

    .line 292
    .line 293
    const/16 v13, 0x39

    .line 294
    .line 295
    if-eq v8, v10, :cond_11

    .line 296
    .line 297
    const/16 v10, 0x2d

    .line 298
    .line 299
    if-ne v8, v10, :cond_10

    .line 300
    .line 301
    const/4 v10, 0x6

    .line 302
    if-ne v5, v10, :cond_10

    .line 303
    .line 304
    goto :goto_9

    .line 305
    :cond_10
    if-lt v8, v11, :cond_18

    .line 306
    .line 307
    if-gt v8, v13, :cond_18

    .line 308
    .line 309
    goto :goto_8

    .line 310
    :cond_11
    :goto_9
    const/4 v5, 0x7

    .line 311
    goto :goto_d

    .line 312
    :pswitch_4
    const/16 v11, 0x30

    .line 313
    .line 314
    const/16 v13, 0x39

    .line 315
    .line 316
    if-lt v8, v11, :cond_12

    .line 317
    .line 318
    if-gt v8, v13, :cond_12

    .line 319
    .line 320
    const/4 v5, 0x5

    .line 321
    goto :goto_d

    .line 322
    :cond_12
    if-eq v8, v15, :cond_13

    .line 323
    .line 324
    if-ne v8, v14, :cond_18

    .line 325
    .line 326
    :cond_13
    const/4 v10, 0x5

    .line 327
    if-ne v5, v10, :cond_18

    .line 328
    .line 329
    const/4 v10, 0x1

    .line 330
    :cond_14
    :goto_a
    iput-boolean v10, v2, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    .line 331
    .line 332
    const/4 v5, 0x6

    .line 333
    goto :goto_d

    .line 334
    :pswitch_5
    const/4 v10, 0x1

    .line 335
    const/16 v11, 0x30

    .line 336
    .line 337
    if-lt v8, v11, :cond_15

    .line 338
    .line 339
    const/16 v11, 0x39

    .line 340
    .line 341
    if-gt v8, v11, :cond_15

    .line 342
    .line 343
    const/4 v11, 0x2

    .line 344
    if-ne v5, v11, :cond_15

    .line 345
    .line 346
    :goto_b
    const/4 v5, 0x2

    .line 347
    goto :goto_d

    .line 348
    :cond_15
    if-ne v8, v13, :cond_16

    .line 349
    .line 350
    iput-boolean v10, v2, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    .line 351
    .line 352
    const/4 v5, 0x4

    .line 353
    goto :goto_d

    .line 354
    :cond_16
    if-eq v8, v15, :cond_14

    .line 355
    .line 356
    if-ne v8, v14, :cond_18

    .line 357
    .line 358
    goto :goto_a

    .line 359
    :pswitch_6
    const/16 v11, 0x30

    .line 360
    .line 361
    if-ne v8, v11, :cond_17

    .line 362
    .line 363
    const/4 v5, 0x3

    .line 364
    goto :goto_d

    .line 365
    :cond_17
    if-le v8, v11, :cond_18

    .line 366
    .line 367
    const/16 v11, 0x39

    .line 368
    .line 369
    if-gt v8, v11, :cond_18

    .line 370
    .line 371
    goto :goto_b

    .line 372
    :cond_18
    :goto_c
    const/4 v5, -0x1

    .line 373
    :goto_d
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    iget v8, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 377
    .line 378
    const/4 v10, 0x1

    .line 379
    add-int/2addr v8, v10

    .line 380
    iput v8, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 381
    .line 382
    const/4 v8, -0x1

    .line 383
    if-eq v5, v8, :cond_19

    .line 384
    .line 385
    add-int/lit8 v6, v6, 0x1

    .line 386
    .line 387
    const/4 v11, 0x0

    .line 388
    goto/16 :goto_4

    .line 389
    .line 390
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v2, v12, v0, v10}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    throw v0

    .line 407
    :pswitch_7
    const/4 v0, 0x1

    .line 408
    goto/16 :goto_1f

    .line 409
    .line 410
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string v1, "Numbers may not start with \'"

    .line 413
    .line 414
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    int-to-char v1, v5

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string v1, "\'"

    .line 422
    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    const/4 v10, 0x1

    .line 431
    invoke-virtual {v2, v12, v0, v10}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    throw v0

    .line 436
    :cond_1a
    const/4 v0, 0x3

    .line 437
    goto/16 :goto_1f

    .line 438
    .line 439
    :cond_1b
    const/16 v0, 0xa

    .line 440
    .line 441
    goto/16 :goto_1f

    .line 442
    .line 443
    :cond_1c
    int-to-char v0, v5

    .line 444
    :try_start_0
    sget-object v4, Lcom/grack/nanojson/JsonTokener;->TRUE:[C

    .line 445
    .line 446
    invoke-virtual {v2, v0, v4}, Lcom/grack/nanojson/JsonTokener;->consumeKeyword(C[C)V
    :try_end_0
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .line 448
    .line 449
    const/4 v0, 0x6

    .line 450
    goto/16 :goto_1f

    .line 451
    .line 452
    :catch_0
    move-exception v0

    .line 453
    if-eqz p1, :cond_1d

    .line 454
    .line 455
    :goto_e
    const/16 v17, 0x1

    .line 456
    .line 457
    add-int/lit8 v6, v6, -0x1

    .line 458
    .line 459
    iput v6, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 460
    .line 461
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonTokener;->consumeTokenSemiString()V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_1

    .line 465
    .line 466
    :cond_1d
    throw v0

    .line 467
    :cond_1e
    int-to-char v0, v5

    .line 468
    :try_start_1
    sget-object v4, Lcom/grack/nanojson/JsonTokener;->NULL:[C

    .line 469
    .line 470
    invoke-virtual {v2, v0, v4}, Lcom/grack/nanojson/JsonTokener;->consumeKeyword(C[C)V
    :try_end_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 471
    .line 472
    .line 473
    const/4 v0, 0x5

    .line 474
    goto/16 :goto_1f

    .line 475
    .line 476
    :catch_1
    move-exception v0

    .line 477
    if-eqz p1, :cond_1f

    .line 478
    .line 479
    goto :goto_e

    .line 480
    :cond_1f
    throw v0

    .line 481
    :cond_20
    int-to-char v0, v5

    .line 482
    :try_start_2
    sget-object v4, Lcom/grack/nanojson/JsonTokener;->FALSE:[C

    .line 483
    .line 484
    invoke-virtual {v2, v0, v4}, Lcom/grack/nanojson/JsonTokener;->consumeKeyword(C[C)V
    :try_end_2
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_2 .. :try_end_2} :catch_2

    .line 485
    .line 486
    .line 487
    const/4 v0, 0x7

    .line 488
    goto/16 :goto_1f

    .line 489
    .line 490
    :catch_2
    move-exception v0

    .line 491
    if-eqz p1, :cond_21

    .line 492
    .line 493
    goto :goto_e

    .line 494
    :cond_21
    throw v0

    .line 495
    :cond_22
    const/4 v0, 0x4

    .line 496
    goto/16 :goto_1f

    .line 497
    .line 498
    :cond_23
    const/16 v0, 0xb

    .line 499
    .line 500
    goto/16 :goto_1f

    .line 501
    .line 502
    :cond_24
    iget-boolean v6, v2, Lcom/grack/nanojson/JsonTokener;->utf8:Z

    .line 503
    .line 504
    const/4 v11, 0x0

    .line 505
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 506
    .line 507
    .line 508
    :goto_f
    const/16 v11, 0x100

    .line 509
    .line 510
    invoke-virtual {v2, v11}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 511
    .line 512
    .line 513
    move-result v10

    .line 514
    const-string v11, "String was not terminated before end of input"

    .line 515
    .line 516
    if-eqz v10, :cond_3f

    .line 517
    .line 518
    const/4 v13, 0x0

    .line 519
    :goto_10
    if-ge v13, v10, :cond_3e

    .line 520
    .line 521
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    .line 522
    .line 523
    .line 524
    move-result v14

    .line 525
    if-ne v14, v5, :cond_25

    .line 526
    .line 527
    iget v4, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 528
    .line 529
    sub-int/2addr v4, v13

    .line 530
    const/16 v17, 0x1

    .line 531
    .line 532
    add-int/lit8 v4, v4, -0x1

    .line 533
    .line 534
    invoke-virtual {v3, v0, v4, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    :goto_11
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonTokener;->fixupAfterRawBufferRead()V

    .line 538
    .line 539
    .line 540
    goto/16 :goto_1d

    .line 541
    .line 542
    :cond_25
    const/16 v7, 0x5c

    .line 543
    .line 544
    if-eq v14, v7, :cond_27

    .line 545
    .line 546
    if-eqz v6, :cond_26

    .line 547
    .line 548
    and-int/lit16 v14, v14, 0x80

    .line 549
    .line 550
    if-eqz v14, :cond_26

    .line 551
    .line 552
    goto :goto_12

    .line 553
    :cond_26
    add-int/lit8 v13, v13, 0x1

    .line 554
    .line 555
    const/16 v7, 0x6e

    .line 556
    .line 557
    const/16 v14, 0x74

    .line 558
    .line 559
    goto :goto_10

    .line 560
    :cond_27
    :goto_12
    iget v10, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 561
    .line 562
    sub-int/2addr v10, v13

    .line 563
    const/16 v17, 0x1

    .line 564
    .line 565
    add-int/lit8 v10, v10, -0x1

    .line 566
    .line 567
    invoke-virtual {v3, v0, v10, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    iget v10, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 571
    .line 572
    add-int/lit8 v10, v10, -0x1

    .line 573
    .line 574
    iput v10, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 575
    .line 576
    :goto_13
    const/16 v13, 0x100

    .line 577
    .line 578
    :goto_14
    invoke-virtual {v2, v13}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 579
    .line 580
    .line 581
    move-result v10

    .line 582
    if-eqz v10, :cond_3d

    .line 583
    .line 584
    iget v14, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 585
    .line 586
    add-int/2addr v14, v10

    .line 587
    :goto_15
    iget v10, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 588
    .line 589
    const-string v13, "EOF encountered in the middle of a string escape"

    .line 590
    .line 591
    if-ge v10, v14, :cond_3b

    .line 592
    .line 593
    invoke-virtual {v2}, Lcom/grack/nanojson/JsonTokener;->stringChar()C

    .line 594
    .line 595
    .line 596
    move-result v10

    .line 597
    if-eqz v6, :cond_28

    .line 598
    .line 599
    and-int/lit16 v15, v10, 0x80

    .line 600
    .line 601
    if-eqz v15, :cond_28

    .line 602
    .line 603
    invoke-virtual {v2, v10}, Lcom/grack/nanojson/JsonTokener;->consumeTokenStringUtf8Char(C)V

    .line 604
    .line 605
    .line 606
    const/16 v13, 0x100

    .line 607
    .line 608
    const/16 v15, 0x66

    .line 609
    .line 610
    goto :goto_14

    .line 611
    :cond_28
    if-eq v10, v4, :cond_39

    .line 612
    .line 613
    if-eq v10, v8, :cond_39

    .line 614
    .line 615
    if-eq v10, v7, :cond_29

    .line 616
    .line 617
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    move v13, v7

    .line 621
    const/16 v4, 0x9

    .line 622
    .line 623
    const/16 v7, 0x61

    .line 624
    .line 625
    const/16 v12, 0x66

    .line 626
    .line 627
    const/16 v18, 0x6e

    .line 628
    .line 629
    const/16 v19, 0x41

    .line 630
    .line 631
    goto/16 :goto_1e

    .line 632
    .line 633
    :cond_29
    iget v10, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 634
    .line 635
    sub-int v10, v14, v10

    .line 636
    .line 637
    const/16 v15, 0x75

    .line 638
    .line 639
    const/4 v7, 0x5

    .line 640
    if-ge v10, v7, :cond_2c

    .line 641
    .line 642
    invoke-virtual {v2, v7}, Lcom/grack/nanojson/JsonTokener;->ensureBuffer(I)I

    .line 643
    .line 644
    .line 645
    move-result v10

    .line 646
    iget v14, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 647
    .line 648
    add-int v20, v14, v10

    .line 649
    .line 650
    aget-char v14, v0, v14

    .line 651
    .line 652
    if-ne v14, v15, :cond_2b

    .line 653
    .line 654
    if-lt v10, v7, :cond_2a

    .line 655
    .line 656
    goto :goto_16

    .line 657
    :cond_2a
    iget v0, v2, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 658
    .line 659
    iput v0, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 660
    .line 661
    const/4 v11, 0x0

    .line 662
    invoke-virtual {v2, v12, v13, v11}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    throw v0

    .line 667
    :cond_2b
    :goto_16
    move/from16 v14, v20

    .line 668
    .line 669
    :cond_2c
    iget v7, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 670
    .line 671
    add-int/lit8 v10, v7, 0x1

    .line 672
    .line 673
    iput v10, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 674
    .line 675
    aget-char v7, v0, v7

    .line 676
    .line 677
    if-eq v7, v4, :cond_38

    .line 678
    .line 679
    if-eq v7, v8, :cond_38

    .line 680
    .line 681
    const/16 v10, 0x2f

    .line 682
    .line 683
    if-eq v7, v10, :cond_38

    .line 684
    .line 685
    const/16 v13, 0x5c

    .line 686
    .line 687
    if-eq v7, v13, :cond_37

    .line 688
    .line 689
    const/16 v10, 0x62

    .line 690
    .line 691
    if-eq v7, v10, :cond_36

    .line 692
    .line 693
    const/16 v10, 0x66

    .line 694
    .line 695
    if-eq v7, v10, :cond_35

    .line 696
    .line 697
    const/16 v10, 0x6e

    .line 698
    .line 699
    if-eq v7, v10, :cond_34

    .line 700
    .line 701
    const/16 v4, 0x72

    .line 702
    .line 703
    if-eq v7, v4, :cond_33

    .line 704
    .line 705
    const/16 v4, 0x74

    .line 706
    .line 707
    if-eq v7, v4, :cond_32

    .line 708
    .line 709
    if-ne v7, v15, :cond_31

    .line 710
    .line 711
    const/4 v7, 0x0

    .line 712
    const/4 v15, 0x0

    .line 713
    :goto_17
    const/4 v4, 0x4

    .line 714
    if-ge v7, v4, :cond_30

    .line 715
    .line 716
    shl-int/lit8 v4, v15, 0x4

    .line 717
    .line 718
    iget v15, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 719
    .line 720
    add-int/lit8 v8, v15, 0x1

    .line 721
    .line 722
    iput v8, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 723
    .line 724
    aget-char v8, v0, v15

    .line 725
    .line 726
    const/16 v15, 0x30

    .line 727
    .line 728
    if-lt v8, v15, :cond_2d

    .line 729
    .line 730
    const/16 v15, 0x39

    .line 731
    .line 732
    if-gt v8, v15, :cond_2d

    .line 733
    .line 734
    add-int/lit8 v8, v8, -0x30

    .line 735
    .line 736
    or-int/2addr v4, v8

    .line 737
    const/16 v10, 0x61

    .line 738
    .line 739
    const/16 v12, 0x66

    .line 740
    .line 741
    const/16 v15, 0x41

    .line 742
    .line 743
    goto :goto_18

    .line 744
    :cond_2d
    const/16 v15, 0x41

    .line 745
    .line 746
    if-lt v8, v15, :cond_2e

    .line 747
    .line 748
    const/16 v10, 0x46

    .line 749
    .line 750
    if-gt v8, v10, :cond_2e

    .line 751
    .line 752
    add-int/lit8 v8, v8, -0x37

    .line 753
    .line 754
    or-int/2addr v4, v8

    .line 755
    const/16 v10, 0x61

    .line 756
    .line 757
    const/16 v12, 0x66

    .line 758
    .line 759
    goto :goto_18

    .line 760
    :cond_2e
    const/16 v10, 0x61

    .line 761
    .line 762
    if-lt v8, v10, :cond_2f

    .line 763
    .line 764
    const/16 v12, 0x66

    .line 765
    .line 766
    if-gt v8, v12, :cond_2f

    .line 767
    .line 768
    add-int/lit8 v8, v8, -0x57

    .line 769
    .line 770
    or-int/2addr v4, v8

    .line 771
    :goto_18
    add-int/lit8 v7, v7, 0x1

    .line 772
    .line 773
    move v15, v4

    .line 774
    const/16 v8, 0x27

    .line 775
    .line 776
    const/16 v10, 0x6e

    .line 777
    .line 778
    const/4 v12, 0x0

    .line 779
    goto :goto_17

    .line 780
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 781
    .line 782
    const-string v1, "Expected unicode hex escape character: "

    .line 783
    .line 784
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    int-to-char v1, v8

    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    const-string v1, " ("

    .line 792
    .line 793
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    const-string v1, ")"

    .line 800
    .line 801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    const/4 v4, 0x0

    .line 809
    const/4 v8, 0x0

    .line 810
    invoke-virtual {v2, v4, v0, v8}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    throw v0

    .line 815
    :cond_30
    move-object v4, v12

    .line 816
    const/4 v8, 0x0

    .line 817
    const/16 v10, 0x61

    .line 818
    .line 819
    const/16 v12, 0x66

    .line 820
    .line 821
    const/16 v19, 0x41

    .line 822
    .line 823
    int-to-char v7, v15

    .line 824
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    const/16 v4, 0x9

    .line 828
    .line 829
    goto :goto_1c

    .line 830
    :cond_31
    move-object v4, v12

    .line 831
    const/4 v8, 0x0

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    .line 833
    .line 834
    const-string v1, "Invalid escape: \\"

    .line 835
    .line 836
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-virtual {v2, v4, v0, v8}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    throw v0

    .line 851
    :cond_32
    const/16 v4, 0x9

    .line 852
    .line 853
    const/16 v10, 0x61

    .line 854
    .line 855
    const/16 v12, 0x66

    .line 856
    .line 857
    const/16 v19, 0x41

    .line 858
    .line 859
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    goto :goto_1c

    .line 863
    :cond_33
    const/16 v4, 0x9

    .line 864
    .line 865
    const/16 v10, 0x61

    .line 866
    .line 867
    const/16 v12, 0x66

    .line 868
    .line 869
    const/16 v19, 0x41

    .line 870
    .line 871
    const/16 v7, 0xd

    .line 872
    .line 873
    :goto_19
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    goto :goto_1c

    .line 877
    :cond_34
    const/16 v4, 0x9

    .line 878
    .line 879
    const/16 v7, 0xa

    .line 880
    .line 881
    :goto_1a
    const/16 v10, 0x61

    .line 882
    .line 883
    const/16 v12, 0x66

    .line 884
    .line 885
    :goto_1b
    const/16 v19, 0x41

    .line 886
    .line 887
    goto :goto_19

    .line 888
    :cond_35
    move v12, v10

    .line 889
    const/16 v4, 0x9

    .line 890
    .line 891
    const/16 v7, 0xc

    .line 892
    .line 893
    const/16 v10, 0x61

    .line 894
    .line 895
    goto :goto_1b

    .line 896
    :cond_36
    const/16 v4, 0x9

    .line 897
    .line 898
    const/16 v7, 0x8

    .line 899
    .line 900
    goto :goto_1a

    .line 901
    :cond_37
    const/16 v4, 0x9

    .line 902
    .line 903
    const/16 v10, 0x61

    .line 904
    .line 905
    const/16 v12, 0x66

    .line 906
    .line 907
    goto :goto_1b

    .line 908
    :cond_38
    const/16 v4, 0x9

    .line 909
    .line 910
    const/16 v10, 0x61

    .line 911
    .line 912
    const/16 v12, 0x66

    .line 913
    .line 914
    const/16 v13, 0x5c

    .line 915
    .line 916
    goto :goto_1b

    .line 917
    :goto_1c
    move v7, v10

    .line 918
    const/16 v18, 0x6e

    .line 919
    .line 920
    goto :goto_1e

    .line 921
    :cond_39
    move v13, v7

    .line 922
    const/16 v4, 0x9

    .line 923
    .line 924
    const/16 v7, 0x61

    .line 925
    .line 926
    const/16 v12, 0x66

    .line 927
    .line 928
    const/16 v18, 0x6e

    .line 929
    .line 930
    const/16 v19, 0x41

    .line 931
    .line 932
    if-ne v10, v5, :cond_3a

    .line 933
    .line 934
    goto/16 :goto_11

    .line 935
    .line 936
    :goto_1d
    const/16 v0, 0x8

    .line 937
    .line 938
    goto :goto_1f

    .line 939
    :cond_3a
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    :goto_1e
    move v15, v12

    .line 943
    move v7, v13

    .line 944
    const/16 v4, 0x22

    .line 945
    .line 946
    const/16 v8, 0x27

    .line 947
    .line 948
    const/4 v12, 0x0

    .line 949
    const/16 v13, 0x100

    .line 950
    .line 951
    goto/16 :goto_15

    .line 952
    .line 953
    :cond_3b
    move v8, v7

    .line 954
    move v12, v15

    .line 955
    const/16 v4, 0x9

    .line 956
    .line 957
    const/16 v7, 0x61

    .line 958
    .line 959
    const/16 v18, 0x6e

    .line 960
    .line 961
    const/16 v19, 0x41

    .line 962
    .line 963
    iget v14, v2, Lcom/grack/nanojson/JsonTokener;->bufferLength:I

    .line 964
    .line 965
    if-gt v10, v14, :cond_3c

    .line 966
    .line 967
    move v7, v8

    .line 968
    move v15, v12

    .line 969
    const/16 v4, 0x22

    .line 970
    .line 971
    const/16 v8, 0x27

    .line 972
    .line 973
    const/4 v12, 0x0

    .line 974
    goto/16 :goto_13

    .line 975
    .line 976
    :cond_3c
    iput v14, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 977
    .line 978
    const/4 v8, 0x0

    .line 979
    const/4 v11, 0x0

    .line 980
    invoke-virtual {v2, v8, v13, v11}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    throw v0

    .line 985
    :cond_3d
    move-object v8, v12

    .line 986
    const/4 v13, 0x1

    .line 987
    invoke-virtual {v2, v8, v11, v13}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    throw v0

    .line 992
    :cond_3e
    move/from16 v18, v7

    .line 993
    .line 994
    move-object v8, v12

    .line 995
    move v12, v15

    .line 996
    const/16 v4, 0x9

    .line 997
    .line 998
    const/16 v7, 0x61

    .line 999
    .line 1000
    const/4 v13, 0x1

    .line 1001
    const/16 v19, 0x41

    .line 1002
    .line 1003
    iget v11, v2, Lcom/grack/nanojson/JsonTokener;->index:I

    .line 1004
    .line 1005
    sub-int/2addr v11, v10

    .line 1006
    invoke-virtual {v3, v0, v11, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    move/from16 v7, v18

    .line 1010
    .line 1011
    move/from16 v13, v19

    .line 1012
    .line 1013
    const/16 v4, 0x22

    .line 1014
    .line 1015
    const/16 v14, 0x74

    .line 1016
    .line 1017
    move-object v12, v8

    .line 1018
    const/16 v8, 0x27

    .line 1019
    .line 1020
    goto/16 :goto_f

    .line 1021
    .line 1022
    :cond_3f
    move-object v8, v12

    .line 1023
    const/4 v13, 0x1

    .line 1024
    invoke-virtual {v2, v8, v11, v13}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v0

    .line 1028
    throw v0

    .line 1029
    :cond_40
    const/4 v0, 0x0

    .line 1030
    :goto_1f
    iput v0, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1031
    .line 1032
    packed-switch v0, :pswitch_data_3

    .line 1033
    .line 1034
    .line 1035
    goto/16 :goto_2c

    .line 1036
    .line 1037
    :pswitch_9
    new-instance v0, Lcom/grack/nanojson/JsonArray;

    .line 1038
    .line 1039
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    const/4 v11, 0x0

    .line 1043
    invoke-virtual {v1, v11, v11}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 1044
    .line 1045
    .line 1046
    move-result v3

    .line 1047
    const/4 v4, 0x4

    .line 1048
    if-eq v3, v4, :cond_45

    .line 1049
    .line 1050
    :goto_20
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonParser;->currentValue()Ljava/lang/Object;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v3

    .line 1054
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1055
    .line 1056
    .line 1057
    iget v3, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1058
    .line 1059
    const/16 v7, 0xc

    .line 1060
    .line 1061
    if-eq v3, v7, :cond_44

    .line 1062
    .line 1063
    invoke-virtual {v1, v11, v11}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 1064
    .line 1065
    .line 1066
    move-result v3

    .line 1067
    if-ne v3, v4, :cond_41

    .line 1068
    .line 1069
    goto :goto_21

    .line 1070
    :cond_41
    iget v3, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1071
    .line 1072
    const/4 v10, 0x1

    .line 1073
    if-ne v3, v10, :cond_43

    .line 1074
    .line 1075
    invoke-virtual {v1, v11, v11}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 1076
    .line 1077
    .line 1078
    move-result v3

    .line 1079
    if-eq v3, v4, :cond_42

    .line 1080
    .line 1081
    const/4 v11, 0x0

    .line 1082
    goto :goto_20

    .line 1083
    :cond_42
    const-string v0, "Trailing comma found in array"

    .line 1084
    .line 1085
    const/4 v4, 0x0

    .line 1086
    invoke-virtual {v2, v4, v0, v10}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    throw v0

    .line 1091
    :cond_43
    const/4 v4, 0x0

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    const-string v3, "Expected a comma or end of the array instead of "

    .line 1095
    .line 1096
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    iget v1, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1100
    .line 1101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-virtual {v2, v4, v0, v10}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    throw v0

    .line 1113
    :cond_44
    const/4 v4, 0x0

    .line 1114
    const/4 v10, 0x1

    .line 1115
    const-string v0, "Semi-string is not allowed in array"

    .line 1116
    .line 1117
    invoke-virtual {v2, v4, v0, v10}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    throw v0

    .line 1122
    :cond_45
    :goto_21
    iput-object v0, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 1123
    .line 1124
    const/16 v2, 0xb

    .line 1125
    .line 1126
    iput v2, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1127
    .line 1128
    return v2

    .line 1129
    :pswitch_a
    const/4 v10, 0x1

    .line 1130
    new-instance v0, Lcom/grack/nanojson/JsonObject;

    .line 1131
    .line 1132
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    const/4 v11, 0x0

    .line 1136
    invoke-virtual {v1, v10, v11}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 1137
    .line 1138
    .line 1139
    move-result v3

    .line 1140
    const/4 v6, 0x3

    .line 1141
    if-eq v3, v6, :cond_50

    .line 1142
    .line 1143
    :goto_22
    iget v3, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1144
    .line 1145
    const/4 v6, 0x5

    .line 1146
    if-eq v3, v6, :cond_47

    .line 1147
    .line 1148
    const/4 v10, 0x6

    .line 1149
    const/4 v4, 0x7

    .line 1150
    const/16 v7, 0x8

    .line 1151
    .line 1152
    if-eq v3, v10, :cond_48

    .line 1153
    .line 1154
    if-eq v3, v4, :cond_48

    .line 1155
    .line 1156
    if-eq v3, v7, :cond_49

    .line 1157
    .line 1158
    const/16 v5, 0xc

    .line 1159
    .line 1160
    if-ne v3, v5, :cond_46

    .line 1161
    .line 1162
    goto :goto_23

    .line 1163
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    const-string v3, "Expected STRING, got "

    .line 1166
    .line 1167
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    iget v1, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1171
    .line 1172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    const/4 v4, 0x0

    .line 1180
    const/4 v10, 0x1

    .line 1181
    invoke-virtual {v2, v4, v0, v10}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    throw v0

    .line 1186
    :cond_47
    const/4 v4, 0x7

    .line 1187
    const/16 v7, 0x8

    .line 1188
    .line 1189
    const/4 v10, 0x6

    .line 1190
    :cond_48
    iget-object v3, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 1191
    .line 1192
    check-cast v3, Ljava/io/Serializable;

    .line 1193
    .line 1194
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v3

    .line 1198
    iput-object v3, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 1199
    .line 1200
    :cond_49
    :goto_23
    iget-object v3, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 1201
    .line 1202
    check-cast v3, Ljava/io/Serializable;

    .line 1203
    .line 1204
    check-cast v3, Ljava/lang/String;

    .line 1205
    .line 1206
    iget v5, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1207
    .line 1208
    const-string v8, "Expected COLON, got "

    .line 1209
    .line 1210
    const/16 v9, 0xc

    .line 1211
    .line 1212
    const/4 v11, 0x0

    .line 1213
    if-ne v5, v9, :cond_4b

    .line 1214
    .line 1215
    const/4 v13, 0x1

    .line 1216
    invoke-virtual {v1, v11, v13}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 1217
    .line 1218
    .line 1219
    move-result v5

    .line 1220
    const/4 v12, 0x2

    .line 1221
    if-ne v5, v12, :cond_4a

    .line 1222
    .line 1223
    goto :goto_24

    .line 1224
    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1227
    .line 1228
    .line 1229
    iget v1, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1230
    .line 1231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    const/4 v4, 0x0

    .line 1239
    invoke-virtual {v2, v4, v0, v13}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    throw v0

    .line 1244
    :cond_4b
    const/4 v12, 0x2

    .line 1245
    invoke-virtual {v1, v11, v11}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 1246
    .line 1247
    .line 1248
    move-result v5

    .line 1249
    if-ne v5, v12, :cond_4f

    .line 1250
    .line 1251
    :goto_24
    invoke-virtual {v1, v11, v11}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonParser;->currentValue()Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v5

    .line 1258
    invoke-virtual {v0, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    .line 1260
    .line 1261
    invoke-virtual {v1, v11, v11}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 1262
    .line 1263
    .line 1264
    move-result v3

    .line 1265
    const/4 v5, 0x3

    .line 1266
    if-ne v3, v5, :cond_4c

    .line 1267
    .line 1268
    goto :goto_25

    .line 1269
    :cond_4c
    iget v3, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1270
    .line 1271
    const/4 v13, 0x1

    .line 1272
    if-ne v3, v13, :cond_4e

    .line 1273
    .line 1274
    invoke-virtual {v1, v13, v11}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 1275
    .line 1276
    .line 1277
    move-result v3

    .line 1278
    if-eq v3, v5, :cond_4d

    .line 1279
    .line 1280
    goto/16 :goto_22

    .line 1281
    .line 1282
    :cond_4d
    const-string v0, "Trailing object found in array"

    .line 1283
    .line 1284
    const/4 v4, 0x0

    .line 1285
    invoke-virtual {v2, v4, v0, v13}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v0

    .line 1289
    throw v0

    .line 1290
    :cond_4e
    const/4 v4, 0x0

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    const-string v3, "Expected a comma or end of the object instead of "

    .line 1294
    .line 1295
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1296
    .line 1297
    .line 1298
    iget v1, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1299
    .line 1300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v0

    .line 1307
    invoke-virtual {v2, v4, v0, v13}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    throw v0

    .line 1312
    :cond_4f
    const/4 v4, 0x0

    .line 1313
    const/4 v13, 0x1

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1315
    .line 1316
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1317
    .line 1318
    .line 1319
    iget v1, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1320
    .line 1321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1322
    .line 1323
    .line 1324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v0

    .line 1328
    invoke-virtual {v2, v4, v0, v13}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    throw v0

    .line 1333
    :cond_50
    :goto_25
    iput-object v0, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 1334
    .line 1335
    const/16 v7, 0xa

    .line 1336
    .line 1337
    iput v7, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1338
    .line 1339
    return v7

    .line 1340
    :pswitch_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v3

    .line 1344
    :try_start_3
    iget-boolean v0, v2, Lcom/grack/nanojson/JsonTokener;->isDouble:Z

    .line 1345
    .line 1346
    if-eqz v0, :cond_51

    .line 1347
    .line 1348
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1349
    .line 1350
    .line 1351
    move-result-wide v4

    .line 1352
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    goto/16 :goto_2a

    .line 1357
    .line 1358
    :catch_3
    move-exception v0

    .line 1359
    goto/16 :goto_2b

    .line 1360
    .line 1361
    :cond_51
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1362
    .line 1363
    .line 1364
    move-result v0

    .line 1365
    const/4 v10, 0x1

    .line 1366
    if-ne v0, v10, :cond_52

    .line 1367
    .line 1368
    const/4 v11, 0x0

    .line 1369
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    .line 1370
    .line 1371
    .line 1372
    move-result v0

    .line 1373
    const/16 v16, 0x30

    .line 1374
    .line 1375
    add-int/lit8 v0, v0, -0x30

    .line 1376
    .line 1377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    goto/16 :goto_2a

    .line 1382
    .line 1383
    :cond_52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1384
    .line 1385
    .line 1386
    move-result v0

    .line 1387
    const/4 v6, 0x2

    .line 1388
    if-ne v0, v6, :cond_53

    .line 1389
    .line 1390
    const/4 v11, 0x0

    .line 1391
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    .line 1392
    .line 1393
    .line 1394
    move-result v0

    .line 1395
    const/16 v5, 0x2d

    .line 1396
    .line 1397
    if-ne v0, v5, :cond_53

    .line 1398
    .line 1399
    const/4 v10, 0x1

    .line 1400
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    .line 1401
    .line 1402
    .line 1403
    move-result v0

    .line 1404
    const/16 v16, 0x30

    .line 1405
    .line 1406
    rsub-int/lit8 v15, v0, 0x30

    .line 1407
    .line 1408
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v0

    .line 1412
    goto :goto_2a

    .line 1413
    :cond_53
    const/4 v11, 0x0

    .line 1414
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    .line 1415
    .line 1416
    .line 1417
    move-result v0

    .line 1418
    const/16 v5, 0x2d

    .line 1419
    .line 1420
    if-ne v0, v5, :cond_54

    .line 1421
    .line 1422
    const/4 v11, 0x1

    .line 1423
    :cond_54
    if-eqz v11, :cond_55

    .line 1424
    .line 1425
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1426
    .line 1427
    .line 1428
    move-result v0

    .line 1429
    const/16 v17, 0x1

    .line 1430
    .line 1431
    add-int/lit8 v0, v0, -0x1

    .line 1432
    .line 1433
    :goto_26
    const/16 v7, 0xa

    .line 1434
    .line 1435
    goto :goto_27

    .line 1436
    :cond_55
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    goto :goto_26

    .line 1441
    :goto_27
    if-lt v0, v7, :cond_59

    .line 1442
    .line 1443
    if-ne v0, v7, :cond_56

    .line 1444
    .line 1445
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    .line 1446
    .line 1447
    .line 1448
    move-result v4

    .line 1449
    const/16 v5, 0x32

    .line 1450
    .line 1451
    if-ge v4, v5, :cond_56

    .line 1452
    .line 1453
    goto :goto_29

    .line 1454
    :cond_56
    const/16 v4, 0x13

    .line 1455
    .line 1456
    if-lt v0, v4, :cond_58

    .line 1457
    .line 1458
    if-ne v0, v4, :cond_57

    .line 1459
    .line 1460
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    .line 1461
    .line 1462
    .line 1463
    move-result v0

    .line 1464
    const/16 v11, 0x39

    .line 1465
    .line 1466
    if-ge v0, v11, :cond_57

    .line 1467
    .line 1468
    goto :goto_28

    .line 1469
    :cond_57
    new-instance v0, Ljava/math/BigInteger;

    .line 1470
    .line 1471
    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    goto :goto_2a

    .line 1475
    :cond_58
    :goto_28
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 1476
    .line 1477
    .line 1478
    move-result-wide v4

    .line 1479
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    goto :goto_2a

    .line 1484
    :cond_59
    :goto_29
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1485
    .line 1486
    .line 1487
    move-result v0

    .line 1488
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1492
    :goto_2a
    iput-object v0, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 1493
    .line 1494
    goto :goto_2c

    .line 1495
    :goto_2b
    invoke-virtual {v9, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v1

    .line 1499
    const/4 v10, 0x1

    .line 1500
    invoke-virtual {v2, v0, v1, v10}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v0

    .line 1504
    throw v0

    .line 1505
    :pswitch_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v0

    .line 1509
    goto :goto_2a

    .line 1510
    :pswitch_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1511
    .line 1512
    goto :goto_2a

    .line 1513
    :pswitch_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1514
    .line 1515
    goto :goto_2a

    .line 1516
    :pswitch_f
    const/4 v4, 0x0

    .line 1517
    iput-object v4, v1, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 1518
    .line 1519
    :goto_2c
    iget v0, v1, Lcom/grack/nanojson/JsonParser;->token:I

    .line 1520
    .line 1521
    return v0

    .line 1522
    nop

    .line 1523
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_8
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public applySupportImageTint()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lokhttp3/ConnectionSpec$Builder;

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Lokhttp3/ConnectionSpec$Builder;[I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public currentValue()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/io/Serializable;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/grack/nanojson/JsonTokener;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Expected JSON value, got "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v0, v2, p0, v1}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0
.end method

.method public get(I)Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "Index "

    .line 9
    .line 10
    const-string v1, ", size "

    .line 11
    .line 12
    invoke-static {v0, p1, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget v1, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v1, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->startIndex:I

    .line 35
    .line 36
    iget v2, v0, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->size:I

    .line 37
    .line 38
    add-int/2addr v2, v1

    .line 39
    if-ge p1, v2, :cond_1

    .line 40
    .line 41
    if-gt v1, p1, :cond_1

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 47
    .line 48
    invoke-static {p1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->access$binarySearch(ILandroidx/compose/runtime/collection/MutableVector;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 53
    .line 54
    aget-object p1, v0, p1

    .line 55
    .line 56
    check-cast p1, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 57
    .line 58
    iput-object p1, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 59
    .line 60
    return-object p1
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/collection/MutableObjectIntMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/collection/MutableObjectIntMap;->findKeyIndex(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 12
    .line 13
    aget p0, p0, p1

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    return p0
.end method

.method public insert(IIIIIIZZZI)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    iget v1, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 6
    .line 7
    add-int/lit8 v2, v1, 0x3

    .line 8
    .line 9
    iput v2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 10
    .line 11
    array-length v3, v0

    .line 12
    if-gt v3, v2, :cond_0

    .line 13
    .line 14
    mul-int/lit8 v3, v3, 0x2

    .line 15
    .line 16
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, [J

    .line 29
    .line 30
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, [J

    .line 39
    .line 40
    int-to-long v2, p2

    .line 41
    const/16 p2, 0x20

    .line 42
    .line 43
    shl-long/2addr v2, p2

    .line 44
    int-to-long v4, p3

    .line 45
    const-wide v6, 0xffffffffL

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    and-long/2addr v4, v6

    .line 51
    or-long/2addr v2, v4

    .line 52
    aput-wide v2, p0, v1

    .line 53
    .line 54
    add-int/lit8 p3, v1, 0x1

    .line 55
    .line 56
    int-to-long v2, p4

    .line 57
    shl-long/2addr v2, p2

    .line 58
    int-to-long v4, p5

    .line 59
    and-long/2addr v4, v6

    .line 60
    or-long/2addr v2, v4

    .line 61
    aput-wide v2, p0, p3

    .line 62
    .line 63
    add-int/lit8 p2, v1, 0x2

    .line 64
    .line 65
    move/from16 p3, p9

    .line 66
    .line 67
    int-to-long v2, p3

    .line 68
    const/16 p3, 0x3f

    .line 69
    .line 70
    shl-long/2addr v2, p3

    .line 71
    move/from16 p3, p8

    .line 72
    .line 73
    int-to-long v4, p3

    .line 74
    const/16 p3, 0x3e

    .line 75
    .line 76
    shl-long/2addr v4, p3

    .line 77
    or-long/2addr v2, v4

    .line 78
    move/from16 p3, p7

    .line 79
    .line 80
    int-to-long v4, p3

    .line 81
    const/16 p3, 0x3d

    .line 82
    .line 83
    shl-long/2addr v4, p3

    .line 84
    or-long/2addr v2, v4

    .line 85
    const-wide/high16 v4, 0x1000000000000000L

    .line 86
    .line 87
    or-long/2addr v2, v4

    .line 88
    const/4 p3, 0x0

    .line 89
    const/16 v0, 0x3ff

    .line 90
    .line 91
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    int-to-long v4, p3

    .line 96
    const/16 p3, 0x32

    .line 97
    .line 98
    shl-long/2addr v4, p3

    .line 99
    or-long/2addr v2, v4

    .line 100
    const v4, 0x1ffffff

    .line 101
    .line 102
    .line 103
    and-int v5, p6, v4

    .line 104
    .line 105
    int-to-long v6, v5

    .line 106
    const/16 v8, 0x19

    .line 107
    .line 108
    shl-long/2addr v6, v8

    .line 109
    or-long/2addr v2, v6

    .line 110
    and-int/2addr p1, v4

    .line 111
    int-to-long v6, p1

    .line 112
    or-long/2addr v2, v6

    .line 113
    aput-wide v2, p0, p2

    .line 114
    .line 115
    if-gez p6, :cond_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    const/4 p1, -0x1

    .line 119
    move/from16 p2, p10

    .line 120
    .line 121
    if-eq p2, p1, :cond_2

    .line 122
    .line 123
    move p1, p2

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    add-int/lit8 p1, v1, -0x3

    .line 126
    .line 127
    :goto_0
    if-ltz p1, :cond_4

    .line 128
    .line 129
    add-int/lit8 p2, p1, 0x2

    .line 130
    .line 131
    aget-wide v2, p0, p2

    .line 132
    .line 133
    long-to-int v6, v2

    .line 134
    and-int/2addr v6, v4

    .line 135
    if-ne v6, v5, :cond_3

    .line 136
    .line 137
    sub-int/2addr v1, p1

    .line 138
    div-int/lit8 v1, v1, 0x3

    .line 139
    .line 140
    sget p1, Landroidx/compose/ui/spatial/RectListKt;->$r8$clinit:I

    .line 141
    .line 142
    const-wide v4, -0xffc000000000001L    # -3.8812952307517716E231

    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    and-long/2addr v2, v4

    .line 148
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    int-to-long v0, p1

    .line 153
    shl-long/2addr v0, p3

    .line 154
    or-long/2addr v0, v2

    .line 155
    aput-wide v0, p0, p2

    .line 156
    .line 157
    return-void

    .line 158
    :cond_3
    add-int/lit8 p1, p1, -0x3

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_4
    :goto_1
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Shader;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Landroid/widget/ImageView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    .line 11
    .line 12
    invoke-static {p0, p1, v2, p2}, Lorg/acra/util/ProcessFinisher;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lorg/acra/util/ProcessFinisher;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    iget-object v1, p0, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v6, v1

    .line 19
    check-cast v6, Landroid/content/res/TypedArray;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v3, p0, Lorg/acra/util/ProcessFinisher;->config:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v4, v3

    .line 28
    check-cast v4, Landroid/content/res/TypedArray;

    .line 29
    .line 30
    move-object v3, p1

    .line 31
    move v5, p2

    .line 32
    invoke-static/range {v0 .. v5}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 p2, -0x1

    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v6, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eq v1, p2, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, v1}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    move-object p1, v0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    const/4 p1, 0x2

    .line 72
    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lorg/acra/util/ProcessFinisher;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    const/4 p1, 0x3

    .line 86
    invoke-virtual {v6, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-virtual {v6, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    const/4 p2, 0x0

    .line 97
    invoke-static {p1, p2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_3
    invoke-virtual {p0}, Lorg/acra/util/ProcessFinisher;->recycle()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_1
    invoke-virtual {p0}, Lorg/acra/util/ProcessFinisher;->recycle()V

    .line 109
    .line 110
    .line 111
    throw p1
.end method

.method public parse(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/grack/nanojson/JsonTokener;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, v1}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonParser;->currentValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, v1, v1}, Lcom/grack/nanojson/JsonParser;->advanceToken(ZZ)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    const-class p0, Ljava/lang/Object;

    .line 22
    .line 23
    if-eq p1, p0, :cond_1

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, "JSON did not contain the correct type, expected "

    .line 41
    .line 42
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, "."

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, v4, p0, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v1, "Expected end of input, got "

    .line 74
    .line 75
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget p0, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, v4, p0, v3}, Lcom/grack/nanojson/JsonTokener;->createParseException(Ljava/lang/Exception;Ljava/lang/String;Z)Lcom/grack/nanojson/JsonParserException;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    throw p0
.end method

.method public setImageResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1, p1}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonParser;->applySupportImageTint()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/grack/nanojson/JsonParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lokhttp3/Protocol;

    .line 19
    .line 20
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    const-string v1, "HTTP/1.0"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v1, "HTTP/1.1"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :goto_0
    const/16 v1, 0x20

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public transition()V
    .locals 8

    .line 1
    new-instance v0, Lcoil3/transition/CrossfadeDrawable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v6, v1

    .line 6
    check-cast v6, Lcoil3/target/ImageViewTarget;

    .line 7
    .line 8
    iget-object v1, v6, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v7, v2

    .line 17
    check-cast v7, Lcoil3/request/ImageResult;

    .line 18
    .line 19
    invoke-interface {v7}, Lcoil3/request/ImageResult;->getImage()Lcoil3/Image;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v3, v6, Lcoil3/target/ImageViewTarget;->view:Landroid/widget/ImageView;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcoil3/UriKt;->asDrawable(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x0

    .line 37
    :goto_0
    invoke-interface {v7}, Lcoil3/request/ImageResult;->getRequest()Lcoil3/request/ImageRequest;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-object v3, v3, Lcoil3/request/ImageRequest;->scale:Lcoil3/size/Scale;

    .line 42
    .line 43
    iget v4, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 44
    .line 45
    instance-of p0, v7, Lcoil3/request/SuccessResult;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    move-object v5, v7

    .line 50
    check-cast v5, Lcoil3/request/SuccessResult;

    .line 51
    .line 52
    iget-boolean v5, v5, Lcoil3/request/SuccessResult;->isPlaceholderCached:Z

    .line 53
    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const/4 v5, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 60
    :goto_2
    invoke-direct/range {v0 .. v5}, Lcoil3/transition/CrossfadeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil3/size/Scale;IZ)V

    .line 61
    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    invoke-static {v0}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v6, p0}, Lcoil3/target/ImageViewTarget;->updateImage(Lcoil3/Image;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    instance-of p0, v7, Lcoil3/request/ErrorResult;

    .line 74
    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    invoke-static {v0}, Lcoil3/UriKt;->asImage(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {v6, p0}, Lcoil3/target/ImageViewTarget;->updateImage(Lcoil3/Image;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public updateHasCallbacks(IZ)V
    .locals 8

    .line 1
    const v0, 0x1ffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [J

    .line 8
    .line 9
    iget p0, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, v1

    .line 13
    add-int/lit8 v3, v3, -0x2

    .line 14
    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    if-ge v2, p0, :cond_1

    .line 18
    .line 19
    add-int/lit8 v3, v2, 0x2

    .line 20
    .line 21
    aget-wide v4, v1, v3

    .line 22
    .line 23
    long-to-int v6, v4

    .line 24
    and-int/2addr v6, v0

    .line 25
    if-ne v6, p1, :cond_0

    .line 26
    .line 27
    const-wide p0, 0x6fffffffffffffffL    # 3.1050361846014175E231

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    and-long/2addr p0, v4

    .line 33
    int-to-long v4, p2

    .line 34
    const-wide/high16 v6, 0x1000000000000000L

    .line 35
    .line 36
    mul-long/2addr v6, v4

    .line 37
    or-long/2addr p0, v6

    .line 38
    const-wide/high16 v6, -0x8000000000000000L

    .line 39
    .line 40
    mul-long/2addr v4, v6

    .line 41
    or-long/2addr p0, v4

    .line 42
    aput-wide p0, v1, v3

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public updateSubhierarchy(IJI)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, [J

    .line 6
    .line 7
    iget-object v2, v0, Lcom/grack/nanojson/JsonParser;->tokener:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, [J

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-wide p2, v2, v3

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    :cond_0
    if-lez v3, :cond_4

    .line 16
    .line 17
    add-int/lit8 v3, v3, -0x1

    .line 18
    .line 19
    aget-wide v4, v2, v3

    .line 20
    .line 21
    long-to-int v6, v4

    .line 22
    const v7, 0x1ffffff

    .line 23
    .line 24
    .line 25
    and-int/2addr v6, v7

    .line 26
    const/16 v8, 0x19

    .line 27
    .line 28
    shr-long v9, v4, v8

    .line 29
    .line 30
    long-to-int v9, v9

    .line 31
    and-int/2addr v9, v7

    .line 32
    const/16 v10, 0x32

    .line 33
    .line 34
    shr-long/2addr v4, v10

    .line 35
    long-to-int v4, v4

    .line 36
    const/16 v5, 0x3ff

    .line 37
    .line 38
    and-int/2addr v4, v5

    .line 39
    if-ne v4, v5, :cond_1

    .line 40
    .line 41
    iget v4, v0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    mul-int/lit8 v4, v4, 0x3

    .line 45
    .line 46
    add-int/2addr v4, v9

    .line 47
    :goto_0
    if-ltz v9, :cond_4

    .line 48
    .line 49
    :goto_1
    array-length v11, v1

    .line 50
    add-int/lit8 v11, v11, -0x2

    .line 51
    .line 52
    if-ge v9, v11, :cond_0

    .line 53
    .line 54
    if-ge v9, v4, :cond_0

    .line 55
    .line 56
    add-int/lit8 v11, v9, 0x2

    .line 57
    .line 58
    aget-wide v12, v1, v11

    .line 59
    .line 60
    shr-long v14, v12, v8

    .line 61
    .line 62
    long-to-int v14, v14

    .line 63
    and-int/2addr v14, v7

    .line 64
    if-ne v14, v6, :cond_2

    .line 65
    .line 66
    aget-wide v14, v1, v9

    .line 67
    .line 68
    add-int/lit8 v16, v9, 0x1

    .line 69
    .line 70
    move/from16 p2, v7

    .line 71
    .line 72
    move/from16 p3, v8

    .line 73
    .line 74
    aget-wide v7, v1, v16

    .line 75
    .line 76
    const/16 v17, 0x20

    .line 77
    .line 78
    move/from16 v18, v10

    .line 79
    .line 80
    move/from16 v19, v11

    .line 81
    .line 82
    shr-long v10, v14, v17

    .line 83
    .line 84
    long-to-int v10, v10

    .line 85
    add-int v10, v10, p1

    .line 86
    .line 87
    long-to-int v11, v14

    .line 88
    add-int v11, v11, p4

    .line 89
    .line 90
    int-to-long v14, v10

    .line 91
    shl-long v14, v14, v17

    .line 92
    .line 93
    int-to-long v10, v11

    .line 94
    const-wide v20, 0xffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    and-long v10, v10, v20

    .line 100
    .line 101
    or-long/2addr v10, v14

    .line 102
    aput-wide v10, v1, v9

    .line 103
    .line 104
    shr-long v10, v7, v17

    .line 105
    .line 106
    long-to-int v10, v10

    .line 107
    add-int v10, v10, p1

    .line 108
    .line 109
    long-to-int v7, v7

    .line 110
    add-int v7, v7, p4

    .line 111
    .line 112
    int-to-long v10, v10

    .line 113
    shl-long v10, v10, v17

    .line 114
    .line 115
    int-to-long v7, v7

    .line 116
    and-long v7, v7, v20

    .line 117
    .line 118
    or-long/2addr v7, v10

    .line 119
    aput-wide v7, v1, v16

    .line 120
    .line 121
    const/16 v7, 0x3f

    .line 122
    .line 123
    shr-long v7, v12, v7

    .line 124
    .line 125
    const-wide/16 v10, 0x1

    .line 126
    .line 127
    and-long/2addr v7, v10

    .line 128
    const/16 v10, 0x3c

    .line 129
    .line 130
    shl-long/2addr v7, v10

    .line 131
    or-long/2addr v7, v12

    .line 132
    aput-wide v7, v1, v19

    .line 133
    .line 134
    shr-long v7, v12, v18

    .line 135
    .line 136
    long-to-int v7, v7

    .line 137
    and-int/2addr v7, v5

    .line 138
    if-lez v7, :cond_3

    .line 139
    .line 140
    add-int/lit8 v7, v3, 0x1

    .line 141
    .line 142
    add-int/lit8 v8, v9, 0x3

    .line 143
    .line 144
    sget v10, Landroidx/compose/ui/spatial/RectListKt;->$r8$clinit:I

    .line 145
    .line 146
    const-wide v10, -0x3fffffe000001L

    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    and-long/2addr v10, v12

    .line 152
    and-int v8, v8, p2

    .line 153
    .line 154
    int-to-long v12, v8

    .line 155
    shl-long v12, v12, p3

    .line 156
    .line 157
    or-long/2addr v10, v12

    .line 158
    aput-wide v10, v2, v3

    .line 159
    .line 160
    move v3, v7

    .line 161
    goto :goto_2

    .line 162
    :cond_2
    move/from16 p2, v7

    .line 163
    .line 164
    move/from16 p3, v8

    .line 165
    .line 166
    move/from16 v18, v10

    .line 167
    .line 168
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x3

    .line 169
    .line 170
    move/from16 v7, p2

    .line 171
    .line 172
    move/from16 v8, p3

    .line 173
    .line 174
    move/from16 v10, v18

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    return-void
.end method

.method public withRect(ILkotlin/jvm/functions/Function4;)V
    .locals 6

    .line 1
    const v0, 0x1ffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p1, v0

    .line 5
    iget-object v1, p0, Lcom/grack/nanojson/JsonParser;->value:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [J

    .line 8
    .line 9
    iget p0, p0, Lcom/grack/nanojson/JsonParser;->token:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, v1

    .line 13
    add-int/lit8 v3, v3, -0x2

    .line 14
    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    if-ge v2, p0, :cond_1

    .line 18
    .line 19
    add-int/lit8 v3, v2, 0x2

    .line 20
    .line 21
    aget-wide v3, v1, v3

    .line 22
    .line 23
    long-to-int v3, v3

    .line 24
    and-int/2addr v3, v0

    .line 25
    if-ne v3, p1, :cond_0

    .line 26
    .line 27
    aget-wide p0, v1, v2

    .line 28
    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    aget-wide v0, v1, v2

    .line 32
    .line 33
    const/16 v2, 0x20

    .line 34
    .line 35
    shr-long v3, p0, v2

    .line 36
    .line 37
    long-to-int v3, v3

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    long-to-int p0, p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    shr-long v4, v0, v2

    .line 48
    .line 49
    long-to-int p1, v4

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    long-to-int v0, v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p2, v3, p0, p1, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method
