.class public final Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;
.super Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener$Companion;


# instance fields
.field public isMoving:Z

.field public final playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->Companion:Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener$Companion;

    .line 7
    .line 8
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/ui/MainPlayerUi;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;-><init>(Lorg/schabi/newpipe/player/ui/VideoPlayerUi;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getDisplayPortion(Landroid/view/MotionEvent;)Lorg/schabi/newpipe/player/gesture/DisplayPortion;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 7
    .line 8
    iget-object v2, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-double v2, v2

    .line 15
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 16
    .line 17
    div-double/2addr v2, v4

    .line 18
    cmpg-double v0, v0, v2

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    .line 22
    sget-object p0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    float-to-double v0, p1

    .line 30
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    int-to-double p0, p0

    .line 37
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 38
    .line 39
    mul-double/2addr p0, v2

    .line 40
    div-double/2addr p0, v4

    .line 41
    cmpl-double p0, v0, p0

    .line 42
    .line 43
    if-lez p0, :cond_1

    .line 44
    .line 45
    sget-object p0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_1
    sget-object p0, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->MIDDLE:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 49
    .line 50
    return-object p0
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_e

    .line 6
    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 8
    .line 9
    iget-boolean v1, v1, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_6

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 16
    .line 17
    iget-object v2, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 18
    .line 19
    iget-object v3, v1, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 20
    .line 21
    const-string v4, "status_bar_height"

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v6, "dimen"

    .line 28
    .line 29
    const-string v7, "android"

    .line 30
    .line 31
    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-gtz v4, :cond_1

    .line 36
    .line 37
    move v2, v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    :goto_0
    const-string v4, "navigation_bar_height"

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-gtz v4, :cond_2

    .line 58
    .line 59
    move v4, v0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    int-to-float v2, v2

    .line 74
    cmpg-float v2, v5, v2

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    if-gez v2, :cond_3

    .line 78
    .line 79
    move v2, v5

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move v2, v0

    .line 82
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    iget-object v7, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 87
    .line 88
    iget-object v8, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    sub-int/2addr v8, v4

    .line 95
    int-to-float v4, v8

    .line 96
    cmpl-float v4, v6, v4

    .line 97
    .line 98
    if-lez v4, :cond_4

    .line 99
    .line 100
    move v4, v5

    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move v4, v0

    .line 103
    :goto_3
    if-nez v2, :cond_e

    .line 104
    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    sub-float/2addr p2, v2

    .line 118
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    const/high16 v2, 0x42200000    # 40.0f

    .line 123
    .line 124
    cmpg-float p2, p2, v2

    .line 125
    .line 126
    if-gtz p2, :cond_6

    .line 127
    .line 128
    move p2, v5

    .line 129
    goto :goto_4

    .line 130
    :cond_6
    move p2, v0

    .line 131
    :goto_4
    iget-boolean v2, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->isMoving:Z

    .line 132
    .line 133
    if-nez v2, :cond_7

    .line 134
    .line 135
    if-nez p2, :cond_e

    .line 136
    .line 137
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 142
    .line 143
    .line 144
    move-result p3

    .line 145
    cmpl-float p2, p2, p3

    .line 146
    .line 147
    if-gtz p2, :cond_e

    .line 148
    .line 149
    :cond_7
    iget p2, v1, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 150
    .line 151
    const/16 p3, 0x80

    .line 152
    .line 153
    if-ne p2, p3, :cond_8

    .line 154
    .line 155
    goto/16 :goto_6

    .line 156
    .line 157
    :cond_8
    iput-boolean v5, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->isMoving:Z

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    float-to-double p1, p1

    .line 164
    iget-object p3, v7, Lorg/schabi/newpipe/databinding/PlayerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 165
    .line 166
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    int-to-double v0, p3

    .line 171
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 172
    .line 173
    div-double/2addr v0, v6

    .line 174
    cmpg-double p1, p1, v0

    .line 175
    .line 176
    sget-object p2, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->RIGHT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 177
    .line 178
    if-gez p1, :cond_9

    .line 179
    .line 180
    sget-object p1, Lorg/schabi/newpipe/player/gesture/DisplayPortion;->LEFT_HALF:Lorg/schabi/newpipe/player/gesture/DisplayPortion;

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_9
    move-object p1, p2

    .line 184
    :goto_5
    const p3, 0x7f13006e

    .line 185
    .line 186
    .line 187
    const v0, 0x7f130539

    .line 188
    .line 189
    .line 190
    if-ne p1, p2, :cond_b

    .line 191
    .line 192
    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const p2, 0x7f130431

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    const v1, 0x7f1300e5

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    if-eqz p2, :cond_a

    .line 223
    .line 224
    invoke-virtual {p0, p4}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->onScrollVolume(F)V

    .line 225
    .line 226
    .line 227
    return v5

    .line 228
    :cond_a
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_d

    .line 237
    .line 238
    invoke-virtual {p0, p4}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->onScrollBrightness(F)V

    .line 239
    .line 240
    .line 241
    return v5

    .line 242
    :cond_b
    invoke-static {v3}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    const p2, 0x7f13023f

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    const v1, 0x7f1300db

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    if-eqz p2, :cond_c

    .line 273
    .line 274
    invoke-virtual {p0, p4}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->onScrollVolume(F)V

    .line 275
    .line 276
    .line 277
    return v5

    .line 278
    :cond_c
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_d

    .line 287
    .line 288
    invoke-virtual {p0, p4}, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->onScrollBrightness(F)V

    .line 289
    .line 290
    .line 291
    :cond_d
    return v5

    .line 292
    :cond_e
    :goto_6
    return v0
.end method

.method public final onScrollBrightness(F)V
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->getParentActivity()Lj$/util/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 26
    .line 27
    iget-object v4, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessProgressBar:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    iget-object v5, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessRelativeLayout:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    int-to-float v7, v7

    .line 38
    const/4 v8, 0x0

    .line 39
    const/high16 v9, 0x3f800000    # 1.0f

    .line 40
    .line 41
    invoke-static {v6, v8, v9}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    mul-float/2addr v6, v7

    .line 46
    float-to-int v6, v6

    .line 47
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 48
    .line 49
    .line 50
    float-to-int p1, p1

    .line 51
    invoke-virtual {v4, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    int-to-float p1, p1

    .line 59
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    int-to-float v4, v4

    .line 64
    div-float/2addr p1, v4

    .line 65
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const v2, 0x7f130438

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const v2, 0x7f130439

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    .line 103
    .line 104
    move-result-wide v6

    .line 105
    invoke-interface {v1, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    .line 111
    .line 112
    iget-object v0, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 113
    .line 114
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 115
    .line 116
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 117
    .line 118
    float-to-double v1, p1

    .line 119
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 120
    .line 121
    cmpg-double p1, v1, v6

    .line 122
    .line 123
    if-gez p1, :cond_1

    .line 124
    .line 125
    const p1, 0x7f0800ed

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    .line 130
    .line 131
    cmpg-double p1, v1, v6

    .line 132
    .line 133
    if-gez p1, :cond_2

    .line 134
    .line 135
    const p1, 0x7f0800ee

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    const p1, 0x7f0800ec

    .line 140
    .line 141
    .line 142
    :goto_0
    invoke-static {p0, p1}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_3

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    const/4 v12, 0x0

    .line 157
    const/16 v13, 0x18

    .line 158
    .line 159
    const/4 v6, 0x1

    .line 160
    const-wide/16 v7, 0xc8

    .line 161
    .line 162
    sget-object v9, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 163
    .line 164
    const-wide/16 v10, 0x0

    .line 165
    .line 166
    invoke-static/range {v5 .. v13}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 167
    .line 168
    .line 169
    :goto_1
    iget-object p0, v3, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    .line 170
    .line 171
    const/16 p1, 0x8

    .line 172
    .line 173
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method public final onScrollVolume(F)V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeProgressBar:Landroid/widget/ProgressBar;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 6
    .line 7
    iget-object v2, p0, Lorg/schabi/newpipe/player/Player;->audioReactor:Lorg/schabi/newpipe/player/helper/AudioReactor;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v2, Lorg/schabi/newpipe/player/helper/AudioReactor;->audioManager:Landroid/media/AudioManager;

    .line 13
    .line 14
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/4 v5, 0x3

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    int-to-float v4, v4

    .line 29
    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    int-to-float v6, v6

    .line 34
    div-float/2addr v4, v6

    .line 35
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    int-to-float v6, v6

    .line 40
    mul-float/2addr v4, v6

    .line 41
    float-to-int v4, v4

    .line 42
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object v4, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeProgressBar:Landroid/widget/ProgressBar;

    .line 46
    .line 47
    float-to-int p1, p1

    .line 48
    invoke-virtual {v4, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    int-to-float p1, p1

    .line 56
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    int-to-float v1, v1

    .line 61
    div-float/2addr p1, v1

    .line 62
    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    int-to-float v1, v1

    .line 67
    mul-float/2addr v1, p1

    .line 68
    float-to-int v1, v1

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v2, v5, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 74
    .line 75
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->context:Lorg/schabi/newpipe/player/PlayerService;

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    cmpg-float v2, p1, v2

    .line 79
    .line 80
    if-gtz v2, :cond_1

    .line 81
    .line 82
    const p1, 0x7f080163

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    float-to-double v4, p1

    .line 87
    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    .line 88
    .line 89
    cmpg-double p1, v4, v6

    .line 90
    .line 91
    if-gez p1, :cond_2

    .line 92
    .line 93
    const p1, 0x7f080162

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    .line 98
    .line 99
    cmpg-double p1, v4, v6

    .line 100
    .line 101
    if-gez p1, :cond_3

    .line 102
    .line 103
    const p1, 0x7f080161

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const p1, 0x7f080164

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-static {p0, p1}, Lokhttp3/Cookie$Companion;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-nez p0, :cond_4

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const/4 v10, 0x0

    .line 125
    const/16 v11, 0x18

    .line 126
    .line 127
    const/4 v4, 0x1

    .line 128
    const-wide/16 v5, 0xc8

    .line 129
    .line 130
    sget-object v7, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 131
    .line 132
    const-wide/16 v8, 0x0

    .line 133
    .line 134
    invoke-static/range {v3 .. v11}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 135
    .line 136
    .line 137
    :goto_2
    iget-object p0, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessRelativeLayout:Landroid/widget/RelativeLayout;

    .line 138
    .line 139
    const/16 p1, 0x8

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 14
    .line 15
    iget p1, p1, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 16
    .line 17
    const/16 v0, 0x7b

    .line 18
    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onSingleTap()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p2}, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_2

    .line 17
    .line 18
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->isMoving:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iput-boolean v1, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->isMoving:Z

    .line 23
    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/VideoPlayerUi;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->isControlsVisible()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->player:Lorg/schabi/newpipe/player/Player;

    .line 33
    .line 34
    iget v3, v3, Lorg/schabi/newpipe/player/Player;->currentState:I

    .line 35
    .line 36
    const/16 v4, 0x7c

    .line 37
    .line 38
    if-ne v3, v4, :cond_0

    .line 39
    .line 40
    const-wide/16 v3, 0x12c

    .line 41
    .line 42
    const-wide/16 v5, 0x7d0

    .line 43
    .line 44
    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/schabi/newpipe/player/ui/VideoPlayerUi;->hideControls(JJ)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->binding:Lorg/schabi/newpipe/databinding/PlayerBinding;

    .line 48
    .line 49
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    iget-object v4, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->brightnessRelativeLayout:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    sget-object v8, Lorg/schabi/newpipe/ktx/AnimationType;->SCALE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 58
    .line 59
    if-nez v3, :cond_1

    .line 60
    .line 61
    iget-object v5, v0, Lorg/schabi/newpipe/databinding/PlayerBinding;->volumeRelativeLayout:Landroid/widget/RelativeLayout;

    .line 62
    .line 63
    const/4 v12, 0x0

    .line 64
    const/16 v13, 0x10

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    move-object v9, v8

    .line 68
    const-wide/16 v7, 0xc8

    .line 69
    .line 70
    const-wide/16 v10, 0xc8

    .line 71
    .line 72
    invoke-static/range {v5 .. v13}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    move-object v9, v8

    .line 77
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    const/4 v11, 0x0

    .line 84
    const/16 v12, 0x10

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    const-wide/16 v6, 0xc8

    .line 88
    .line 89
    move-object v8, v9

    .line 90
    const-wide/16 v9, 0xc8

    .line 91
    .line 92
    invoke-static/range {v4 .. v12}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    if-eq v0, v2, :cond_3

    .line 102
    .line 103
    const/4 v1, 0x2

    .line 104
    if-eq v0, v1, :cond_5

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 114
    .line 115
    .line 116
    :cond_4
    return v1

    .line 117
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    iget-object p0, p0, Lorg/schabi/newpipe/player/gesture/MainPlayerGestureListener;->playerUi:Lorg/schabi/newpipe/player/ui/MainPlayerUi;

    .line 124
    .line 125
    iget-boolean p0, p0, Lorg/schabi/newpipe/player/ui/MainPlayerUi;->isFullscreen:Z

    .line 126
    .line 127
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 128
    .line 129
    .line 130
    :cond_6
    :goto_1
    return v2
.end method
