.class public Lorg/wikipedia/databinding/FragmentNewsBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final appBarLayout:Ljava/lang/Object;

.field public final gradientView:Ljava/lang/Object;

.field public final headerImageView:Ljava/lang/Object;

.field public final newsStoryItemsRecyclerview:Ljava/lang/Object;

.field public final rootView:Ljava/lang/Object;

.field public storyTextView:Ljava/lang/Object;

.field public final toolbar:Ljava/lang/Object;

.field public final toolbarContainer:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const-class v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 297
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040440

    .line 298
    invoke-static {v1, p1, v0}, Landroidx/work/Operation$State;->resolveTypedValueOrThrow(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 299
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendar:[I

    .line 300
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 301
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 302
    invoke-static {p1, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->create(Landroid/content/Context;I)Landroidx/compose/ui/node/RulerTrackingMap;

    move-result-object v1

    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    const/4 v1, 0x2

    .line 303
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 304
    invoke-static {p1, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->create(Landroid/content/Context;I)Landroidx/compose/ui/node/RulerTrackingMap;

    move-result-object v1

    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    const/4 v1, 0x3

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 306
    invoke-static {p1, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->create(Landroid/content/Context;I)Landroidx/compose/ui/node/RulerTrackingMap;

    move-result-object v1

    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    const/4 v1, 0x5

    .line 307
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 308
    invoke-static {p1, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->create(Landroid/content/Context;I)Landroidx/compose/ui/node/RulerTrackingMap;

    move-result-object v1

    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    const/4 v1, 0x7

    .line 309
    invoke-static {p1, v0, v1}, Landroidx/work/OperationKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v3, 0x9

    .line 310
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 311
    invoke-static {p1, v3}, Landroidx/compose/ui/node/RulerTrackingMap;->create(Landroid/content/Context;I)Landroidx/compose/ui/node/RulerTrackingMap;

    move-result-object v3

    iput-object v3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    const/16 v3, 0x8

    .line 312
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 313
    invoke-static {p1, v3}, Landroidx/compose/ui/node/RulerTrackingMap;->create(Landroid/content/Context;I)Landroidx/compose/ui/node/RulerTrackingMap;

    move-result-object v3

    iput-object v3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    const/16 v3, 0xa

    .line 314
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 315
    invoke-static {p1, v2}, Landroidx/compose/ui/node/RulerTrackingMap;->create(Landroid/content/Context;I)Landroidx/compose/ui/node/RulerTrackingMap;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 316
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 317
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    new-instance v0, Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 27
    .line 28
    invoke-direct {v0, p1, p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v1, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 34
    .line 35
    invoke-direct {v1, p1, p0}, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v3, Lorg/maplibre/android/gestures/ShoveGestureDetector;

    .line 41
    .line 42
    invoke-direct {v3, p1, p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v4, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    .line 48
    .line 49
    invoke-direct {v4, p1, p0}, Lorg/maplibre/android/gestures/ProgressiveGesture;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    .line 53
    .line 54
    invoke-direct {v5, p1, p0}, Lorg/maplibre/android/gestures/MultiFingerGesture;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 55
    .line 56
    .line 57
    iput-object v5, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 58
    .line 59
    new-instance v6, Lorg/maplibre/android/gestures/MoveGestureDetector;

    .line 60
    .line 61
    invoke-direct {v6, p1, p0}, Lorg/maplibre/android/gestures/MoveGestureDetector;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 62
    .line 63
    .line 64
    iput-object v6, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 65
    .line 66
    new-instance v7, Lorg/maplibre/android/gestures/StandardGestureDetector;

    .line 67
    .line 68
    invoke-direct {v7, p1, p0}, Lorg/maplibre/android/gestures/StandardGestureDetector;-><init>(Landroid/content/Context;Lorg/wikipedia/databinding/FragmentNewsBinding;)V

    .line 69
    .line 70
    .line 71
    iput-object v7, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    if-eqz p2, :cond_7

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lorg/maplibre/android/gestures/BaseGesture;

    .line 111
    .line 112
    instance-of p2, p1, Lorg/maplibre/android/gestures/MultiFingerGesture;

    .line 113
    .line 114
    if-eqz p2, :cond_2

    .line 115
    .line 116
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    const/16 v0, 0x18

    .line 119
    .line 120
    if-ge p2, v0, :cond_1

    .line 121
    .line 122
    move-object p2, p1

    .line 123
    check-cast p2, Lorg/maplibre/android/gestures/MultiFingerGesture;

    .line 124
    .line 125
    iget-object v0, p2, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const v1, 0x7f07037b

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iput v0, p2, Lorg/maplibre/android/gestures/MultiFingerGesture;->spanThreshold:F

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    move-object p2, p1

    .line 142
    check-cast p2, Lorg/maplibre/android/gestures/MultiFingerGesture;

    .line 143
    .line 144
    iget-object v0, p2, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const v1, 0x7f07037c

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    iput v0, p2, Lorg/maplibre/android/gestures/MultiFingerGesture;->spanThreshold:F

    .line 158
    .line 159
    :cond_2
    :goto_1
    instance-of p2, p1, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 160
    .line 161
    if-eqz p2, :cond_3

    .line 162
    .line 163
    move-object p2, p1

    .line 164
    check-cast p2, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;

    .line 165
    .line 166
    iget-object v0, p2, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const v1, 0x7f070379

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    iput v0, p2, Lorg/maplibre/android/gestures/StandardScaleGestureDetector;->spanSinceStartThreshold:F

    .line 180
    .line 181
    :cond_3
    instance-of p2, p1, Lorg/maplibre/android/gestures/ShoveGestureDetector;

    .line 182
    .line 183
    const/high16 v0, 0x41a00000    # 20.0f

    .line 184
    .line 185
    const v1, 0x7f07037a

    .line 186
    .line 187
    .line 188
    if-eqz p2, :cond_4

    .line 189
    .line 190
    move-object p2, p1

    .line 191
    check-cast p2, Lorg/maplibre/android/gestures/ShoveGestureDetector;

    .line 192
    .line 193
    iget-object v2, p2, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    .line 194
    .line 195
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    iput v2, p2, Lorg/maplibre/android/gestures/ShoveGestureDetector;->pixelDeltaThreshold:F

    .line 204
    .line 205
    iput v0, p2, Lorg/maplibre/android/gestures/ShoveGestureDetector;->maxShoveAngle:F

    .line 206
    .line 207
    :cond_4
    instance-of p2, p1, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    .line 208
    .line 209
    if-eqz p2, :cond_5

    .line 210
    .line 211
    move-object p2, p1

    .line 212
    check-cast p2, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;

    .line 213
    .line 214
    iget-object v2, p2, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    iput v1, p2, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->pixelDeltaThreshold:F

    .line 225
    .line 226
    iput v0, p2, Lorg/maplibre/android/gestures/SidewaysShoveGestureDetector;->maxShoveAngle:F

    .line 227
    .line 228
    :cond_5
    instance-of p2, p1, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    .line 229
    .line 230
    if-eqz p2, :cond_6

    .line 231
    .line 232
    move-object p2, p1

    .line 233
    check-cast p2, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;

    .line 234
    .line 235
    iget-object v0, p2, Lorg/maplibre/android/gestures/BaseGesture;->context:Landroid/content/Context;

    .line 236
    .line 237
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const v1, 0x7f070378

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    iput v0, p2, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->multiFingerTapMovementThreshold:F

    .line 249
    .line 250
    const-wide/16 v0, 0x96

    .line 251
    .line 252
    iput-wide v0, p2, Lorg/maplibre/android/gestures/MultiFingerTapGestureDetector;->multiFingerTapTimeThreshold:J

    .line 253
    .line 254
    :cond_6
    instance-of p2, p1, Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 255
    .line 256
    if-eqz p2, :cond_0

    .line 257
    .line 258
    check-cast p1, Lorg/maplibre/android/gestures/RotateGestureDetector;

    .line 259
    .line 260
    const p2, 0x4174cccd    # 15.3f

    .line 261
    .line 262
    .line 263
    iput p2, p1, Lorg/maplibre/android/gestures/RotateGestureDetector;->angleThreshold:F

    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_7
    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    iput-object p2, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    iput-object p3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    iput-object p4, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    iput-object p5, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    iput-object p6, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    iput-object p7, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    iput-object p8, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 279
    iput-object p2, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 280
    iput-object p3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 281
    iput-object p4, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 282
    iput-object p5, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 283
    iput-object p6, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 284
    iput-object p7, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 285
    iput-object p8, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout;Lorg/wikipedia/views/CabSearchView;Landroid/widget/LinearLayout;Lorg/wikipedia/views/LangCodeView;Lorg/wikipedia/views/LanguageScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lcom/google/android/material/appbar/MaterialToolbar;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 288
    iput-object p2, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 289
    iput-object p3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 290
    iput-object p4, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 291
    iput-object p5, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 292
    iput-object p6, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 293
    iput-object p7, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 294
    iput-object p8, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/ConcatAdapter;)V
    .locals 3

    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config;->DEFAULT:Landroidx/recyclerview/widget/ConcatAdapter$Config;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 321
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 323
    new-instance v1, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 324
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 326
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 327
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    new-instance p1, Lokio/PriorityQueue;

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 329
    invoke-direct {p1, v1, v2}, Lokio/PriorityQueue;-><init>(CI)V

    .line 330
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 331
    iput v1, p1, Lokio/PriorityQueue;->size:I

    .line 332
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 333
    iget-object p1, v0, Landroidx/recyclerview/widget/ConcatAdapter$Config;->stableIdMode:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 334
    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne p1, v0, :cond_0

    .line 335
    new-instance p1, Lcoil3/memory/MemoryCacheService;

    const/4 v0, 0x3

    invoke-direct {p1, v0, v1}, Lcoil3/memory/MemoryCacheService;-><init>(IB)V

    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    return-void

    .line 336
    :cond_0
    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne p1, v0, :cond_1

    .line 337
    new-instance p1, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    .line 338
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 339
    iput-wide v0, p1, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->fastestInterval:J

    .line 340
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    return-void

    .line 341
    :cond_1
    sget-object v0, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    if-ne p1, v0, :cond_2

    .line 342
    new-instance p1, Lcoil3/memory/MemoryCacheService;

    const/4 v0, 0x4

    invoke-direct {p1, v0, v1}, Lcoil3/memory/MemoryCacheService;-><init>(IB)V

    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    return-void

    .line 343
    :cond_2
    const-string/jumbo p0, "unknown stable id mode"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 270
    iput-object p2, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 271
    iput-object p3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 272
    iput-object p4, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 273
    iput-object p5, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 274
    iput-object p6, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 275
    iput-object p7, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 276
    iput-object p8, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAdapter(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    if-ltz p1, :cond_7

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-gt p1, v1, :cond_7

    .line 12
    .line 13
    iget-object v1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbar:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 16
    .line 17
    sget-object v2, Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Landroidx/recyclerview/widget/ConcatAdapter$Config$StableIdMode;

    .line 18
    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    iget-boolean v1, p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 22
    .line 23
    const-string v2, "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS"

    .line 24
    .line 25
    invoke-static {v2, v1}, Landroidx/work/Operation$State;->checkArgument(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-boolean v1, p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v1, "ConcatAdapter"

    .line 34
    .line 35
    const-string v2, "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids"

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lorg/wikipedia/databinding/FragmentNewsBinding;->indexOfWrapper(Landroidx/recyclerview/widget/RecyclerView$Adapter;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, -0x1

    .line 45
    if-ne v1, v2, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 54
    .line 55
    :goto_1
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return p0

    .line 59
    :cond_3
    new-instance v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 60
    .line 61
    iget-object v2, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lokio/PriorityQueue;

    .line 64
    .line 65
    iget-object v3, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v3, Landroidx/recyclerview/widget/StableIdStorage;

    .line 68
    .line 69
    invoke-interface {v3}, Landroidx/recyclerview/widget/StableIdStorage;->createStableIdLookup()Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-direct {v1, p2, p0, v2, v3}, Landroidx/recyclerview/widget/NestedAdapterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Lorg/wikipedia/databinding/FragmentNewsBinding;Lokio/PriorityQueue;Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->gradientView:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5

    .line 92
    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    iget p1, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 112
    .line 113
    if-lez p1, :cond_6

    .line 114
    .line 115
    iget-object p1, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p1, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Lorg/wikipedia/databinding/FragmentNewsBinding;->countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    iget v0, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 124
    .line 125
    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 126
    .line 127
    .line 128
    :cond_6
    invoke-virtual {p0}, Lorg/wikipedia/databinding/FragmentNewsBinding;->calculateAndUpdateStateRestorationPolicy()V

    .line 129
    .line 130
    .line 131
    const/4 p0, 0x1

    .line 132
    return p0

    .line 133
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v1, "Index must be between 0 and "

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string p2, ". Given:"

    .line 150
    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0
.end method

.method public calculateAndUpdateStateRestorationPolicy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 20
    .line 21
    iget-object v2, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 24
    .line 25
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v4, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 31
    .line 32
    if-ne v2, v4, :cond_0

    .line 33
    .line 34
    iget v1, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-object v3, Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 40
    .line 41
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 46
    .line 47
    if-eq v3, v0, :cond_3

    .line 48
    .line 49
    iput-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mStateRestorationPolicy:Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 50
    .line 51
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyStateRestorationPolicyChanged()V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public countItemsBefore(Landroidx/recyclerview/widget/NestedAdapterWrapper;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 21
    .line 22
    if-eq v1, p1, :cond_0

    .line 23
    .line 24
    iget v1, v1, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v0
.end method

.method public findWrapperAndLocalPosition(I)Lcom/google/android/material/expandable/ExpandableWidgetHelper;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->storyTextView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 17
    .line 18
    :goto_0
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    move v1, p1

    .line 27
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 38
    .line 39
    iget v3, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->mCachedItemCount:I

    .line 40
    .line 41
    if-le v3, v1, :cond_1

    .line 42
    .line 43
    iput-object v2, v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 44
    .line 45
    iput v1, v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    sub-int/2addr v1, v3

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_2
    iget-object p0, v0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->widget:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 53
    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    const-string p0, "Cannot find wrapper for "

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return-object p0
.end method

.method public getWrapper(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/NestedAdapterWrapper;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string v0, "Cannot find wrapper for "

    .line 15
    .line 16
    const-string v1, ", seems like it is not bound by this adapter: "

    .line 17
    .line 18
    invoke-static {v0, p1, v1, p0}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public indexOfWrapper(Landroidx/recyclerview/widget/RecyclerView$Adapter;)I
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->newsStoryItemsRecyclerview:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/recyclerview/widget/NestedAdapterWrapper;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 19
    .line 20
    if-ne v2, p1, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, -0x1

    .line 27
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object p0, p0, Lorg/wikipedia/databinding/FragmentNewsBinding;->appBarLayout:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lorg/maplibre/android/gestures/BaseGesture;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move v2, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v3, v2, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 36
    .line 37
    .line 38
    iput-object v4, v2, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 39
    .line 40
    :cond_2
    iget-object v3, v2, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 41
    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iput-object v3, v2, Lorg/maplibre/android/gestures/BaseGesture;->previousEvent:Landroid/view/MotionEvent;

    .line 49
    .line 50
    iget-object v3, v2, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 53
    .line 54
    .line 55
    iput-object v4, v2, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 56
    .line 57
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iput-object v3, v2, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    iget-object v5, v2, Lorg/maplibre/android/gestures/BaseGesture;->currentEvent:Landroid/view/MotionEvent;

    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDownTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    sub-long/2addr v3, v5

    .line 74
    iput-wide v3, v2, Lorg/maplibre/android/gestures/BaseGesture;->gestureDuration:J

    .line 75
    .line 76
    invoke-virtual {v2, p1}, Lorg/maplibre/android/gestures/BaseGesture;->analyzeEvent(Landroid/view/MotionEvent;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    :goto_1
    if-eqz v2, :cond_0

    .line 81
    .line 82
    const/4 v1, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    return v1
.end method
