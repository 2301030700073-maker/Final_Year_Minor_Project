.class public final Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# instance fields
.field public anchorViewRef:Ljava/lang/ref/WeakReference;

.field public final badgeBounds:Landroid/graphics/Rect;

.field public badgeCenterX:F

.field public badgeCenterY:F

.field public final contextRef:Ljava/lang/ref/WeakReference;

.field public cornerRadius:F

.field public customBadgeParentRef:Ljava/lang/ref/WeakReference;

.field public halfBadgeHeight:F

.field public halfBadgeWidth:F

.field public final maxBadgeNumber:I

.field public final shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final state:Lcom/google/android/material/badge/BadgeState;

.field public final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    sget-object v1, Lcom/google/android/material/internal/ViewUtils;->MATERIAL_CHECK_ATTRS:[I

    .line 12
    .line 13
    const-string v2, "Theme.MaterialComponents"

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, Lcom/google/android/material/internal/ViewUtils;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v1, Lcom/google/android/material/internal/TextDrawableHelper;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 31
    .line 32
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 33
    .line 34
    iget-object v3, v1, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/google/android/material/badge/BadgeState;

    .line 40
    .line 41
    invoke-direct {v2, p1}, Lcom/google/android/material/badge/BadgeState;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 45
    .line 46
    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    iget-object v2, v2, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 53
    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    iget-object v5, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v5, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    iget-object v6, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v6, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    :goto_1
    new-instance v7, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    invoke-direct {v7, v8}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v5, v6, v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {v4, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 103
    .line 104
    .line 105
    iput-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/content/Context;

    .line 115
    .line 116
    if-nez p1, :cond_2

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    .line 120
    .line 121
    iget-object v5, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-direct {v0, p1, v5}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 128
    .line 129
    .line 130
    iget-object v5, v1, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    .line 131
    .line 132
    if-ne v5, v0, :cond_3

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_3
    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 154
    .line 155
    .line 156
    :goto_2
    iget p1, v2, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 157
    .line 158
    const/4 v0, -0x2

    .line 159
    const/4 v5, 0x1

    .line 160
    if-eq p1, v0, :cond_4

    .line 161
    .line 162
    int-to-double v6, p1

    .line 163
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 164
    .line 165
    sub-double/2addr v6, v8

    .line 166
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 167
    .line 168
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 169
    .line 170
    .line 171
    move-result-wide v6

    .line 172
    double-to-int p1, v6

    .line 173
    sub-int/2addr p1, v5

    .line 174
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_4
    iget p1, v2, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    .line 178
    .line 179
    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 180
    .line 181
    :goto_3
    iput-boolean v5, v1, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 187
    .line 188
    .line 189
    iput-boolean v5, v1, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 208
    .line 209
    .line 210
    iget-object p1, v2, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    iget-object v0, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 223
    .line 224
    if-eq v0, p1, :cond_5

    .line 225
    .line 226
    invoke-virtual {v4, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 230
    .line 231
    .line 232
    :cond_5
    iget-object p1, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 245
    .line 246
    if-eqz p1, :cond_7

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-eqz p1, :cond_7

    .line 253
    .line 254
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Landroid/view/View;

    .line 261
    .line 262
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 263
    .line 264
    if-eqz v0, :cond_6

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Landroid/widget/FrameLayout;

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_6
    const/4 v0, 0x0

    .line 274
    :goto_4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 275
    .line 276
    .line 277
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 278
    .line 279
    .line 280
    iget-object p1, v2, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 288
    .line 289
    .line 290
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeContent()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v1, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 47
    .line 48
    iget-object v3, v2, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-float/2addr v3, v4

    .line 65
    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 66
    .line 67
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    if-gtz v1, :cond_1

    .line 70
    .line 71
    float-to-int v1, v3

    .line 72
    :goto_0
    int-to-float v1, v1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    iget-object v2, v2, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 80
    .line 81
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_2
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 6
    .line 7
    return p0
.end method

.method public final getBadgeContent()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v6, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    const/4 v7, -0x2

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget p0, v1, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 18
    .line 19
    if-ne p0, v7, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-le v0, p0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/content/Context;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    sub-int/2addr p0, v4

    .line 40
    invoke-virtual {v2, v5, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const v1, 0x7f130256

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-array v1, v3, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p0, v1, v5

    .line 54
    .line 55
    const-string/jumbo p0, "\u2026"

    .line 56
    .line 57
    .line 58
    aput-object p0, v1, v4

    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_2
    :goto_0
    return-object v2

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_7

    .line 71
    .line 72
    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    .line 73
    .line 74
    if-eq v1, v7, :cond_6

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-gt v2, v1, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Landroid/content/Context;

    .line 88
    .line 89
    if-nez p0, :cond_5

    .line 90
    .line 91
    :goto_1
    const-string p0, ""

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_5
    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 95
    .line 96
    const v2, 0x7f130316

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-array v2, v3, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object v1, v2, v5

    .line 110
    .line 111
    const-string v1, "+"

    .line 112
    .line 113
    aput-object v1, v2, v4

    .line 114
    .line 115
    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 121
    .line 122
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    int-to-long v1, p0

    .line 131
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :cond_7
    const/4 p0, 0x0

    .line 137
    return-object p0
.end method

.method public final getCustomBadgeParent()Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getNumber()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 4
    .line 5
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
.end method

.method public final hasBadgeContent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final hasNumber()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onBadgeShapeAppearanceUpdated()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v2, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, v2, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v2, v2, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, v2, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_1
    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-direct {v3, v4}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final onTextSizeChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 4
    .line 5
    iput p1, v1, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 8
    .line 9
    iput p1, v0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final updateCenterAndBounds()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/view/View;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_1f

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_14

    .line 27
    .line 28
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    iget-object v6, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/view/ViewGroup;

    .line 55
    .line 56
    :cond_2
    if-nez v3, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v6, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    .line 74
    .line 75
    :goto_2
    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    .line 76
    .line 77
    const/high16 v7, -0x40800000    # -1.0f

    .line 78
    .line 79
    cmpl-float v8, v3, v7

    .line 80
    .line 81
    const/high16 v9, 0x40000000    # 2.0f

    .line 82
    .line 83
    if-eqz v8, :cond_5

    .line 84
    .line 85
    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 86
    .line 87
    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 88
    .line 89
    goto :goto_7

    .line 90
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    .line 97
    .line 98
    :goto_3
    div-float/2addr v3, v9

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    int-to-float v3, v3

    .line 108
    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_7

    .line 115
    .line 116
    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    .line 117
    .line 118
    :goto_5
    div-float/2addr v3, v9

    .line 119
    goto :goto_6

    .line 120
    :cond_7
    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :goto_6
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    int-to-float v3, v3

    .line 128
    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 129
    .line 130
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_a

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeContent()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 141
    .line 142
    iget-object v10, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 143
    .line 144
    iget-boolean v11, v10, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    .line 145
    .line 146
    if-nez v11, :cond_8

    .line 147
    .line 148
    iget v11, v10, Lcom/google/android/material/internal/TextDrawableHelper;->textWidth:F

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_8
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/TextDrawableHelper;->refreshTextDimens(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget v11, v10, Lcom/google/android/material/internal/TextDrawableHelper;->textWidth:F

    .line 155
    .line 156
    :goto_8
    div-float/2addr v11, v9

    .line 157
    iget-object v12, v6, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 158
    .line 159
    iget-object v12, v12, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    .line 160
    .line 161
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    int-to-float v12, v12

    .line 166
    add-float/2addr v11, v12

    .line 167
    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    iput v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 172
    .line 173
    iget v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 174
    .line 175
    iget-boolean v11, v10, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    .line 176
    .line 177
    if-nez v11, :cond_9

    .line 178
    .line 179
    goto :goto_9

    .line 180
    :cond_9
    invoke-virtual {v10, v3}, Lcom/google/android/material/internal/TextDrawableHelper;->refreshTextDimens(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :goto_9
    iget v3, v10, Lcom/google/android/material/internal/TextDrawableHelper;->textHeight:F

    .line 184
    .line 185
    div-float/2addr v3, v9

    .line 186
    iget-object v9, v6, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 187
    .line 188
    iget-object v9, v9, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v9

    .line 194
    int-to-float v9, v9

    .line 195
    add-float/2addr v3, v9

    .line 196
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 201
    .line 202
    iget v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 203
    .line 204
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 209
    .line 210
    :cond_a
    iget-object v3, v6, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 211
    .line 212
    iget-object v8, v6, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 213
    .line 214
    iget v9, v6, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    .line 215
    .line 216
    iget-object v10, v3, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 217
    .line 218
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    const/4 v12, 0x0

    .line 227
    if-eqz v11, :cond_b

    .line 228
    .line 229
    iget-object v10, v3, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v10

    .line 235
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    check-cast v0, Landroid/content/Context;

    .line 240
    .line 241
    if-eqz v0, :cond_b

    .line 242
    .line 243
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 252
    .line 253
    const/high16 v11, 0x3f800000    # 1.0f

    .line 254
    .line 255
    sub-float/2addr v0, v11

    .line 256
    const v13, 0x3e99999a    # 0.3f

    .line 257
    .line 258
    .line 259
    invoke-static {v12, v11, v13, v11, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    iget-object v11, v3, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    .line 264
    .line 265
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 266
    .line 267
    .line 268
    move-result v11

    .line 269
    sub-int v11, v10, v11

    .line 270
    .line 271
    invoke-static {v0, v10, v11}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FII)I

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    :cond_b
    if-nez v9, :cond_c

    .line 276
    .line 277
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 278
    .line 279
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    sub-int/2addr v10, v0

    .line 284
    :cond_c
    iget-object v0, v3, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 285
    .line 286
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    add-int/2addr v0, v10

    .line 291
    iget-object v10, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 292
    .line 293
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    const v11, 0x800053

    .line 298
    .line 299
    .line 300
    if-eq v10, v11, :cond_d

    .line 301
    .line 302
    const v13, 0x800055

    .line 303
    .line 304
    .line 305
    if-eq v10, v13, :cond_d

    .line 306
    .line 307
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 308
    .line 309
    add-int/2addr v10, v0

    .line 310
    int-to-float v0, v10

    .line 311
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_d
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 315
    .line 316
    sub-int/2addr v10, v0

    .line 317
    int-to-float v0, v10

    .line 318
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 319
    .line 320
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_e

    .line 325
    .line 326
    iget-object v0, v3, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    goto :goto_b

    .line 333
    :cond_e
    iget-object v0, v3, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    :goto_b
    const/4 v10, 0x1

    .line 340
    if-ne v9, v10, :cond_10

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    .line 343
    .line 344
    .line 345
    move-result v9

    .line 346
    if-eqz v9, :cond_f

    .line 347
    .line 348
    iget v6, v6, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_f
    iget v6, v6, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    .line 352
    .line 353
    :goto_c
    add-int/2addr v0, v6

    .line 354
    :cond_10
    iget-object v6, v3, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 355
    .line 356
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    add-int/2addr v6, v0

    .line 361
    iget-object v0, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    const v8, 0x800033

    .line 368
    .line 369
    .line 370
    if-eq v0, v8, :cond_12

    .line 371
    .line 372
    if-eq v0, v11, :cond_12

    .line 373
    .line 374
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 375
    .line 376
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-nez v0, :cond_11

    .line 381
    .line 382
    iget v0, v5, Landroid/graphics/Rect;->right:I

    .line 383
    .line 384
    int-to-float v0, v0

    .line 385
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 386
    .line 387
    add-float/2addr v0, v5

    .line 388
    int-to-float v5, v6

    .line 389
    sub-float/2addr v0, v5

    .line 390
    goto :goto_d

    .line 391
    :cond_11
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 392
    .line 393
    int-to-float v0, v0

    .line 394
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 395
    .line 396
    sub-float/2addr v0, v5

    .line 397
    int-to-float v5, v6

    .line 398
    add-float/2addr v0, v5

    .line 399
    :goto_d
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 400
    .line 401
    goto :goto_f

    .line 402
    :cond_12
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 403
    .line 404
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    if-nez v0, :cond_13

    .line 409
    .line 410
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 411
    .line 412
    int-to-float v0, v0

    .line 413
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 414
    .line 415
    sub-float/2addr v0, v5

    .line 416
    int-to-float v5, v6

    .line 417
    add-float/2addr v0, v5

    .line 418
    goto :goto_e

    .line 419
    :cond_13
    iget v0, v5, Landroid/graphics/Rect;->right:I

    .line 420
    .line 421
    int-to-float v0, v0

    .line 422
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 423
    .line 424
    add-float/2addr v0, v5

    .line 425
    int-to-float v5, v6

    .line 426
    sub-float/2addr v0, v5

    .line 427
    :goto_e
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 428
    .line 429
    :goto_f
    iget-object v0, v3, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_1d

    .line 436
    .line 437
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    if-nez v0, :cond_15

    .line 442
    .line 443
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    instance-of v0, v0, Landroid/view/View;

    .line 448
    .line 449
    if-nez v0, :cond_14

    .line 450
    .line 451
    goto/16 :goto_13

    .line 452
    .line 453
    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    check-cast v2, Landroid/view/View;

    .line 466
    .line 467
    move-object v14, v2

    .line 468
    move v2, v0

    .line 469
    move-object v0, v14

    .line 470
    goto :goto_10

    .line 471
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    if-eqz v2, :cond_17

    .line 476
    .line 477
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 478
    .line 479
    .line 480
    move-result v2

    .line 481
    const v3, 0x7f0a0265

    .line 482
    .line 483
    .line 484
    if-ne v2, v3, :cond_17

    .line 485
    .line 486
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    instance-of v2, v2, Landroid/view/View;

    .line 491
    .line 492
    if-nez v2, :cond_16

    .line 493
    .line 494
    goto/16 :goto_13

    .line 495
    .line 496
    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 501
    .line 502
    .line 503
    move-result v3

    .line 504
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    check-cast v0, Landroid/view/View;

    .line 509
    .line 510
    goto :goto_10

    .line 511
    :cond_17
    move v2, v12

    .line 512
    move v3, v2

    .line 513
    :goto_10
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 514
    .line 515
    iget v6, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 516
    .line 517
    sub-float/2addr v5, v6

    .line 518
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 519
    .line 520
    .line 521
    move-result v6

    .line 522
    add-float/2addr v6, v5

    .line 523
    add-float/2addr v6, v2

    .line 524
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 525
    .line 526
    iget v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 527
    .line 528
    sub-float/2addr v5, v8

    .line 529
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 530
    .line 531
    .line 532
    move-result v8

    .line 533
    add-float/2addr v8, v5

    .line 534
    add-float/2addr v8, v3

    .line 535
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    instance-of v5, v5, Landroid/view/View;

    .line 540
    .line 541
    if-eqz v5, :cond_18

    .line 542
    .line 543
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    check-cast v5, Landroid/view/View;

    .line 548
    .line 549
    iget v9, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 550
    .line 551
    iget v10, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 552
    .line 553
    add-float/2addr v9, v10

    .line 554
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 555
    .line 556
    .line 557
    move-result v5

    .line 558
    int-to-float v5, v5

    .line 559
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 560
    .line 561
    .line 562
    move-result v10

    .line 563
    sub-float/2addr v5, v10

    .line 564
    sub-float/2addr v9, v5

    .line 565
    add-float/2addr v9, v2

    .line 566
    goto :goto_11

    .line 567
    :cond_18
    move v9, v12

    .line 568
    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    instance-of v2, v2, Landroid/view/View;

    .line 573
    .line 574
    if-eqz v2, :cond_19

    .line 575
    .line 576
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 577
    .line 578
    .line 579
    move-result-object v2

    .line 580
    check-cast v2, Landroid/view/View;

    .line 581
    .line 582
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 583
    .line 584
    iget v10, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 585
    .line 586
    add-float/2addr v5, v10

    .line 587
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 588
    .line 589
    .line 590
    move-result v2

    .line 591
    int-to-float v2, v2

    .line 592
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    sub-float/2addr v2, v0

    .line 597
    sub-float/2addr v5, v2

    .line 598
    add-float/2addr v5, v3

    .line 599
    goto :goto_12

    .line 600
    :cond_19
    move v5, v12

    .line 601
    :goto_12
    cmpg-float v0, v6, v12

    .line 602
    .line 603
    if-gez v0, :cond_1a

    .line 604
    .line 605
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 606
    .line 607
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    add-float/2addr v2, v0

    .line 612
    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 613
    .line 614
    :cond_1a
    cmpg-float v0, v8, v12

    .line 615
    .line 616
    if-gez v0, :cond_1b

    .line 617
    .line 618
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 619
    .line 620
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 621
    .line 622
    .line 623
    move-result v2

    .line 624
    add-float/2addr v2, v0

    .line 625
    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 626
    .line 627
    :cond_1b
    cmpl-float v0, v9, v12

    .line 628
    .line 629
    if-lez v0, :cond_1c

    .line 630
    .line 631
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 632
    .line 633
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 634
    .line 635
    .line 636
    move-result v2

    .line 637
    sub-float/2addr v0, v2

    .line 638
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 639
    .line 640
    :cond_1c
    cmpl-float v0, v5, v12

    .line 641
    .line 642
    if-lez v0, :cond_1d

    .line 643
    .line 644
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 645
    .line 646
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 647
    .line 648
    .line 649
    move-result v2

    .line 650
    sub-float/2addr v0, v2

    .line 651
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 652
    .line 653
    :cond_1d
    :goto_13
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    .line 654
    .line 655
    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    .line 656
    .line 657
    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    .line 658
    .line 659
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    .line 660
    .line 661
    sub-float v6, v0, v3

    .line 662
    .line 663
    float-to-int v6, v6

    .line 664
    sub-float v8, v2, v5

    .line 665
    .line 666
    float-to-int v8, v8

    .line 667
    add-float/2addr v0, v3

    .line 668
    float-to-int v0, v0

    .line 669
    add-float/2addr v2, v5

    .line 670
    float-to-int v2, v2

    .line 671
    invoke-virtual {v4, v6, v8, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 672
    .line 673
    .line 674
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    .line 675
    .line 676
    cmpl-float v2, v0, v7

    .line 677
    .line 678
    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 679
    .line 680
    if-eqz v2, :cond_1e

    .line 681
    .line 682
    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 683
    .line 684
    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 685
    .line 686
    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lorg/schabi/newpipe/databinding/FragmentChannelBinding;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 691
    .line 692
    invoke-direct {v3, v0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 693
    .line 694
    .line 695
    iput-object v3, v2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelKaomoji:Ljava/lang/Object;

    .line 696
    .line 697
    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 698
    .line 699
    invoke-direct {v3, v0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 700
    .line 701
    .line 702
    iput-object v3, v2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Ljava/lang/Object;

    .line 703
    .line 704
    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 705
    .line 706
    invoke-direct {v3, v0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 707
    .line 708
    .line 709
    iput-object v3, v2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelTitleView:Ljava/lang/Object;

    .line 710
    .line 711
    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 712
    .line 713
    invoke-direct {v3, v0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 714
    .line 715
    .line 716
    iput-object v3, v2, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->errorContentNotSupported:Ljava/lang/Object;

    .line 717
    .line 718
    invoke-virtual {v2}, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 723
    .line 724
    .line 725
    :cond_1e
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-nez v0, :cond_1f

    .line 730
    .line 731
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 732
    .line 733
    .line 734
    :cond_1f
    :goto_14
    return-void
.end method
