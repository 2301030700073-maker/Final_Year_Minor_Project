.class public final Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

.field public static final INSTANCE$1:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

.field public static final INSTANCE$2:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

.field public static final INSTANCE$3:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

.field public static final INSTANCE$4:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

.field public static final INSTANCE$5:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE$1:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 9
    .line 10
    new-instance v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE$2:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 17
    .line 18
    new-instance v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE$3:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 25
    .line 26
    new-instance v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE$4:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 33
    .line 34
    new-instance v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 35
    .line 36
    const/4 v2, 0x5

    .line 37
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE$5:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 41
    .line 42
    new-instance v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-direct {v0, v1, v2}, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;-><init>(II)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 49
    .line 50
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget p0, p0, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/glance/GlanceModifier$Element;

    .line 9
    .line 10
    instance-of p0, p1, Landroidx/glance/BackgroundModifier$Image;

    .line 11
    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    instance-of p0, p1, Landroidx/glance/action/ActionModifier;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    check-cast p1, Landroidx/glance/GlanceModifier$Element;

    .line 26
    .line 27
    instance-of p0, p1, Landroidx/glance/action/ActionModifier;

    .line 28
    .line 29
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    check-cast p1, Landroidx/glance/GlanceModifier$Element;

    .line 35
    .line 36
    instance-of p0, p1, Landroidx/glance/BackgroundModifier;

    .line 37
    .line 38
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_2
    check-cast p1, Landroidx/glance/Emittable;

    .line 44
    .line 45
    instance-of p0, p1, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    move-object v2, p1

    .line 50
    check-cast v2, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 51
    .line 52
    iget-object v3, v2, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v4, Landroidx/glance/layout/EmittableBox;

    .line 55
    .line 56
    invoke-direct {v4}, Landroidx/glance/layout/EmittableBox;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v5, v4, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 62
    .line 63
    .line 64
    iget-object v5, v2, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;->alignment:Landroidx/glance/layout/Alignment;

    .line 65
    .line 66
    iput-object v5, v4, Landroidx/glance/layout/EmittableBox;->contentAlignment:Landroidx/glance/layout/Alignment;

    .line 67
    .line 68
    iget-object v5, v2, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;->modifier:Landroidx/glance/GlanceModifier;

    .line 69
    .line 70
    iput-object v5, v4, Landroidx/glance/layout/EmittableBox;->modifier:Landroidx/glance/GlanceModifier;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    sget-object v3, Landroidx/glance/layout/Alignment;->CenterStart:Landroidx/glance/layout/Alignment;

    .line 79
    .line 80
    iput-object v3, v2, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;->alignment:Landroidx/glance/layout/Alignment;

    .line 81
    .line 82
    :cond_2
    if-nez p0, :cond_15

    .line 83
    .line 84
    instance-of p0, p1, Landroidx/glance/appwidget/EmittableSizeBox;

    .line 85
    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    goto/16 :goto_9

    .line 89
    .line 90
    :cond_3
    invoke-interface {p1}, Landroidx/glance/Emittable;->getModifier()Landroidx/glance/GlanceModifier;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    new-instance v2, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 95
    .line 96
    const/4 v3, 0x6

    .line 97
    invoke-direct {v2, v0, v3}, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;-><init>(II)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0, v2}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-nez p0, :cond_4

    .line 105
    .line 106
    goto/16 :goto_9

    .line 107
    .line 108
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1}, Landroidx/glance/Emittable;->getModifier()Landroidx/glance/GlanceModifier;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    sget-object v4, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE$4:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 123
    .line 124
    invoke-interface {v3, v4}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    sget-object v5, Landroidx/glance/GlanceModifier$Companion;->$$INSTANCE:Landroidx/glance/GlanceModifier$Companion;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    if-eqz v4, :cond_5

    .line 132
    .line 133
    new-instance v4, Lkotlin/Pair;

    .line 134
    .line 135
    invoke-direct {v4, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    sget-object v7, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$16:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 139
    .line 140
    invoke-interface {v3, v4, v7}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    check-cast v3, Lkotlin/Pair;

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    new-instance v4, Lkotlin/Pair;

    .line 148
    .line 149
    invoke-direct {v4, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    move-object v3, v4

    .line 153
    :goto_1
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v4, Landroidx/glance/BackgroundModifier;

    .line 156
    .line 157
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v3, Landroidx/glance/GlanceModifier;

    .line 160
    .line 161
    if-eqz v4, :cond_7

    .line 162
    .line 163
    instance-of v7, v4, Landroidx/glance/BackgroundModifier$Image;

    .line 164
    .line 165
    if-eqz v7, :cond_6

    .line 166
    .line 167
    new-instance v7, Landroidx/glance/EmittableImage;

    .line 168
    .line 169
    invoke-direct {v7}, Landroidx/glance/EmittableImage;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-static {v5}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    iput-object v8, v7, Landroidx/glance/EmittableImage;->modifier:Landroidx/glance/GlanceModifier;

    .line 177
    .line 178
    check-cast v4, Landroidx/glance/BackgroundModifier$Image;

    .line 179
    .line 180
    iget-object v8, v4, Landroidx/glance/BackgroundModifier$Image;->imageProvider:Landroidx/glance/AndroidResourceImageProvider;

    .line 181
    .line 182
    iput-object v8, v7, Landroidx/glance/EmittableImage;->provider:Landroidx/glance/AndroidResourceImageProvider;

    .line 183
    .line 184
    const/4 v8, 0x2

    .line 185
    iput v8, v7, Landroidx/glance/EmittableImage;->contentScale:I

    .line 186
    .line 187
    iget-object v4, v4, Landroidx/glance/BackgroundModifier$Image;->colorFilter:Landroidx/glance/ColorFilter;

    .line 188
    .line 189
    iget-object v4, v4, Landroidx/glance/ColorFilter;->colorFilterParams:Landroidx/glance/TintColorFilterParams;

    .line 190
    .line 191
    iput-object v4, v7, Landroidx/glance/EmittableImage;->colorFilterParams:Landroidx/glance/TintColorFilterParams;

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    instance-of v7, v4, Landroidx/glance/BackgroundModifier$Color;

    .line 195
    .line 196
    if-eqz v7, :cond_7

    .line 197
    .line 198
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_7
    move-object v7, v6

    .line 202
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    sget-object v4, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$18:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 207
    .line 208
    invoke-interface {v3, v1, v4}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Ljava/lang/Number;

    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-le v1, v0, :cond_8

    .line 219
    .line 220
    const-string v1, "GlanceAppWidget"

    .line 221
    .line 222
    const-string v4, "More than one clickable defined on the same GlanceModifier, only the last one will be used."

    .line 223
    .line 224
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    :cond_8
    sget-object v1, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE$5:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 228
    .line 229
    invoke-interface {v3, v1}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_9

    .line 234
    .line 235
    new-instance v1, Lkotlin/Pair;

    .line 236
    .line 237
    invoke-direct {v1, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    sget-object v4, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$17:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 241
    .line 242
    invoke-interface {v3, v1, v4}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Lkotlin/Pair;

    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_9
    new-instance v1, Lkotlin/Pair;

    .line 250
    .line 251
    invoke-direct {v1, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :goto_3
    iget-object v3, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v3, Landroidx/glance/action/ActionModifier;

    .line 257
    .line 258
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v1, Landroidx/glance/GlanceModifier;

    .line 261
    .line 262
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    if-eqz v3, :cond_b

    .line 266
    .line 267
    iget v3, v3, Landroidx/glance/action/ActionModifier;->rippleOverride:I

    .line 268
    .line 269
    if-eqz v3, :cond_a

    .line 270
    .line 271
    new-instance v4, Landroidx/glance/AndroidResourceImageProvider;

    .line 272
    .line 273
    invoke-direct {v4, v3}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_a
    new-instance v4, Landroidx/glance/AndroidResourceImageProvider;

    .line 278
    .line 279
    const v3, 0x7f080105

    .line 280
    .line 281
    .line 282
    invoke-direct {v4, v3}, Landroidx/glance/AndroidResourceImageProvider;-><init>(I)V

    .line 283
    .line 284
    .line 285
    :goto_4
    new-instance v3, Landroidx/glance/EmittableImage;

    .line 286
    .line 287
    invoke-direct {v3}, Landroidx/glance/EmittableImage;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-static {v5}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    iput-object v8, v3, Landroidx/glance/EmittableImage;->modifier:Landroidx/glance/GlanceModifier;

    .line 295
    .line 296
    iput-object v4, v3, Landroidx/glance/EmittableImage;->provider:Landroidx/glance/AndroidResourceImageProvider;

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_b
    move-object v3, v6

    .line 300
    :goto_5
    sget-object v4, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE$2:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 301
    .line 302
    invoke-interface {v1, v4}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-eqz v4, :cond_c

    .line 307
    .line 308
    new-instance v0, Landroidx/glance/appwidget/ExtractedSizeModifiers;

    .line 309
    .line 310
    const/4 v4, 0x3

    .line 311
    invoke-direct {v0, v6, v4}, Landroidx/glance/appwidget/ExtractedSizeModifiers;-><init>(Landroidx/glance/GlanceModifier;I)V

    .line 312
    .line 313
    .line 314
    sget-object v4, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$11:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 315
    .line 316
    invoke-interface {v1, v0, v4}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    check-cast v0, Landroidx/glance/appwidget/ExtractedSizeModifiers;

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_c
    new-instance v4, Landroidx/glance/appwidget/ExtractedSizeModifiers;

    .line 324
    .line 325
    invoke-direct {v4, v1, v0}, Landroidx/glance/appwidget/ExtractedSizeModifiers;-><init>(Landroidx/glance/GlanceModifier;I)V

    .line 326
    .line 327
    .line 328
    move-object v0, v4

    .line 329
    :goto_6
    iget-object v1, v0, Landroidx/glance/appwidget/ExtractedSizeModifiers;->sizeModifiers:Landroidx/glance/GlanceModifier;

    .line 330
    .line 331
    iget-object v0, v0, Landroidx/glance/appwidget/ExtractedSizeModifiers;->nonSizeModifiers:Landroidx/glance/GlanceModifier;

    .line 332
    .line 333
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    invoke-static {v0}, Landroidx/compose/ui/unit/DpKt;->fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    new-instance v0, Landroidx/glance/layout/EmittableBox;

    .line 344
    .line 345
    invoke-direct {v0}, Landroidx/glance/layout/EmittableBox;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    move-object v1, v5

    .line 353
    :cond_d
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-eqz v4, :cond_f

    .line 358
    .line 359
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    check-cast v4, Landroidx/glance/GlanceModifier;

    .line 364
    .line 365
    if-eqz v4, :cond_d

    .line 366
    .line 367
    invoke-interface {v1, v4}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    if-nez v4, :cond_e

    .line 372
    .line 373
    goto :goto_7

    .line 374
    :cond_e
    move-object v1, v4

    .line 375
    goto :goto_7

    .line 376
    :cond_f
    iput-object v1, v0, Landroidx/glance/layout/EmittableBox;->modifier:Landroidx/glance/GlanceModifier;

    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    :cond_10
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v1

    .line 386
    if-eqz v1, :cond_12

    .line 387
    .line 388
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    check-cast v1, Landroidx/glance/GlanceModifier;

    .line 393
    .line 394
    if-eqz v1, :cond_10

    .line 395
    .line 396
    invoke-interface {v5, v1}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    if-nez v1, :cond_11

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_11
    move-object v5, v1

    .line 404
    goto :goto_8

    .line 405
    :cond_12
    invoke-interface {p1, v5}, Landroidx/glance/Emittable;->setModifier(Landroidx/glance/GlanceModifier;)V

    .line 406
    .line 407
    .line 408
    iget-object p0, v0, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 409
    .line 410
    if-eqz v7, :cond_13

    .line 411
    .line 412
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    if-eqz v3, :cond_14

    .line 419
    .line 420
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    :cond_14
    move-object p1, v0

    .line 424
    :cond_15
    :goto_9
    return-object p1

    .line 425
    :pswitch_3
    check-cast p1, Landroidx/glance/GlanceModifier$Element;

    .line 426
    .line 427
    instance-of p0, p1, Landroidx/glance/layout/WidthModifier;

    .line 428
    .line 429
    if-nez p0, :cond_17

    .line 430
    .line 431
    instance-of p0, p1, Landroidx/glance/layout/HeightModifier;

    .line 432
    .line 433
    if-nez p0, :cond_17

    .line 434
    .line 435
    instance-of p0, p1, Landroidx/glance/appwidget/CornerRadiusModifier;

    .line 436
    .line 437
    if-eqz p0, :cond_16

    .line 438
    .line 439
    goto :goto_a

    .line 440
    :cond_16
    move v0, v1

    .line 441
    :cond_17
    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 442
    .line 443
    .line 444
    move-result-object p0

    .line 445
    return-object p0

    .line 446
    :pswitch_4
    check-cast p1, Landroidx/glance/GlanceModifier$Element;

    .line 447
    .line 448
    instance-of p0, p1, Landroidx/glance/action/ActionModifier;

    .line 449
    .line 450
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    return-object p0

    .line 455
    :pswitch_5
    check-cast p1, Landroidx/glance/GlanceModifier$Element;

    .line 456
    .line 457
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 458
    .line 459
    return-object p0

    .line 460
    nop

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
