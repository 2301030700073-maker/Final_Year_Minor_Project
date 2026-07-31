.class public abstract Lorg/wikipedia/activity/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public _instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public callback:Lorg/wikipedia/activity/BaseActivity$Callback;

.field public currentTooltip:Lcom/skydoves/balloon/Balloon;

.field public imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

.field public final notificationPermissionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestDonateActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestPermissionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final requestReadingChallengeActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final yearInReviewLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->savedStateRegistryController:Lcoil3/svg/internal/AndroidSvg;

    .line 5
    .line 6
    iget-object v0, v0, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcoil3/svg/internal/AndroidSvg;

    .line 9
    .line 10
    new-instance v1, Landroidx/appcompat/app/AppCompatActivity$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Landroidx/appcompat/app/AppCompatActivity$1;-><init>(Lorg/wikipedia/activity/BaseActivity;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "androidx:appcompat"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcoil3/svg/internal/AndroidSvg;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroidx/appcompat/app/AppCompatActivity$2;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatActivity$2;-><init>(Lorg/wikipedia/activity/BaseActivity;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/activity/BaseActivity;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 45
    .line 46
    iput-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 47
    .line 48
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/activity/BaseActivity;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v3, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 65
    .line 66
    iput-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->requestDonateActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 67
    .line 68
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 69
    .line 70
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v3, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;

    .line 74
    .line 75
    invoke-direct {v3, p0, v1}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/activity/BaseActivity;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 83
    .line 84
    iput-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->requestReadingChallengeActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 85
    .line 86
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 101
    .line 102
    iput-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->notificationPermissionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 103
    .line 104
    new-instance v0, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    .line 105
    .line 106
    invoke-direct {v0, v2}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;

    .line 110
    .line 111
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/activity/BaseActivity;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1, v0}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lkotlin/ExceptionsKt;)Landroidx/activity/result/ActivityResultLauncher;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 119
    .line 120
    iput-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->yearInReviewLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 121
    .line 122
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v4, 0x5

    .line 20
    if-ne v2, v4, :cond_2

    .line 21
    .line 22
    :cond_0
    iget-object v2, v0, Lorg/wikipedia/activity/BaseActivity;->currentTooltip:Lcom/skydoves/balloon/Balloon;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/skydoves/balloon/Balloon;->dismiss()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iput-object v3, v0, Lorg/wikipedia/activity/BaseActivity;->currentTooltip:Lcom/skydoves/balloon/Balloon;

    .line 30
    .line 31
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v1}, Lorg/jsoup/select/NodeTraversor;->dispatchTouchEvent(Landroid/view/Window;Landroid/view/MotionEvent;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, v0, Lorg/wikipedia/activity/BaseActivity;->imageZoomHelper:Lorg/wikipedia/views/ImageZoomHelper;

    .line 42
    .line 43
    if-eqz v5, :cond_17

    .line 44
    .line 45
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/app/Activity;

    .line 52
    .line 53
    const/4 v13, 0x1

    .line 54
    const/4 v4, 0x0

    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    :cond_3
    move/from16 v18, v13

    .line 58
    .line 59
    goto/16 :goto_3

    .line 60
    .line 61
    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    iget-object v7, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 66
    .line 67
    const/4 v14, 0x2

    .line 68
    const-string v8, "originalXY"

    .line 69
    .line 70
    if-ne v6, v14, :cond_10

    .line 71
    .line 72
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 73
    .line 74
    if-nez v7, :cond_b

    .line 75
    .line 76
    const v7, 0x1020002

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v7}, Landroidx/core/app/ActivityCompat;->requireViewById(Landroid/app/Activity;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-static {v7, v1}, Lorg/wikipedia/views/ImageZoomHelper;->findZoomableView(Landroid/view/View;Landroid/view/MotionEvent;)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    if-eqz v7, :cond_3

    .line 91
    .line 92
    iput-object v7, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 93
    .line 94
    new-array v0, v14, [I

    .line 95
    .line 96
    iput-object v0, v5, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    .line 97
    .line 98
    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Landroid/widget/FrameLayout;

    .line 102
    .line 103
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-direct {v0, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 108
    .line 109
    .line 110
    new-instance v11, Landroid/view/View;

    .line 111
    .line 112
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-direct {v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    iput-object v11, v5, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    .line 120
    .line 121
    const/high16 v12, -0x1000000

    .line 122
    .line 123
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object v11, v5, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    .line 127
    .line 128
    if-eqz v11, :cond_5

    .line 129
    .line 130
    const/4 v12, 0x0

    .line 131
    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 132
    .line 133
    .line 134
    :cond_5
    iget-object v11, v5, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    .line 135
    .line 136
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    .line 138
    const/4 v14, -0x1

    .line 139
    invoke-direct {v12, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    check-cast v2, Landroid/view/ViewGroup;

    .line 157
    .line 158
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    check-cast v2, Landroid/view/ViewGroup;

    .line 174
    .line 175
    iput-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->parentOfZoomableView:Landroid/view/ViewGroup;

    .line 176
    .line 177
    iget-object v11, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 178
    .line 179
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    iput v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->viewIndex:I

    .line 184
    .line 185
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    iput-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewLP:Landroid/view/ViewGroup$LayoutParams;

    .line 198
    .line 199
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .line 201
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    invoke-direct {v2, v11, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 210
    .line 211
    .line 212
    iput-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 213
    .line 214
    iget-object v7, v5, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    .line 215
    .line 216
    if-eqz v7, :cond_a

    .line 217
    .line 218
    aget v11, v7, v4

    .line 219
    .line 220
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 221
    .line 222
    aget v7, v7, v13

    .line 223
    .line 224
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 225
    .line 226
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->parentOfZoomableView:Landroid/view/ViewGroup;

    .line 227
    .line 228
    if-eqz v2, :cond_9

    .line 229
    .line 230
    iget-object v7, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 231
    .line 232
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 233
    .line 234
    .line 235
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 236
    .line 237
    iget-object v7, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 238
    .line 239
    invoke-virtual {v0, v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    .line 241
    .line 242
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 243
    .line 244
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v4, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 248
    .line 249
    .line 250
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    .line 251
    .line 252
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v13, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 256
    .line 257
    .line 258
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 259
    .line 260
    float-to-double v11, v7

    .line 261
    iget v7, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 262
    .line 263
    float-to-double v14, v7

    .line 264
    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 265
    .line 266
    const/high16 v16, 0x40000000    # 2.0f

    .line 267
    .line 268
    float-to-double v6, v7

    .line 269
    move-object/from16 v17, v3

    .line 270
    .line 271
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 272
    .line 273
    move/from16 v18, v13

    .line 274
    .line 275
    move-wide/from16 v19, v14

    .line 276
    .line 277
    float-to-double v13, v3

    .line 278
    sub-double v11, v19, v11

    .line 279
    .line 280
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 281
    .line 282
    .line 283
    move-result-wide v11

    .line 284
    sub-double/2addr v13, v6

    .line 285
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 286
    .line 287
    .line 288
    move-result-wide v6

    .line 289
    add-double/2addr v6, v11

    .line 290
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 291
    .line 292
    .line 293
    move-result-wide v6

    .line 294
    iput-wide v6, v5, Lorg/wikipedia/views/ImageZoomHelper;->originalDistance:D

    .line 295
    .line 296
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 297
    .line 298
    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 299
    .line 300
    add-float/2addr v3, v6

    .line 301
    div-float v3, v3, v16

    .line 302
    .line 303
    float-to-int v3, v3

    .line 304
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 305
    .line 306
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 307
    .line 308
    add-float/2addr v2, v0

    .line 309
    div-float v2, v2, v16

    .line 310
    .line 311
    float-to-int v0, v2

    .line 312
    filled-new-array {v3, v0}, [I

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iput-object v0, v5, Lorg/wikipedia/views/ImageZoomHelper;->twoPointCenter:[I

    .line 317
    .line 318
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    float-to-int v0, v0

    .line 323
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    .line 324
    .line 325
    if-eqz v2, :cond_8

    .line 326
    .line 327
    aget v2, v2, v4

    .line 328
    .line 329
    sub-int/2addr v0, v2

    .line 330
    iput v0, v5, Lorg/wikipedia/views/ImageZoomHelper;->pivotX:I

    .line 331
    .line 332
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    float-to-int v0, v0

    .line 337
    iget-object v1, v5, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    .line 338
    .line 339
    if-eqz v1, :cond_7

    .line 340
    .line 341
    aget v1, v1, v18

    .line 342
    .line 343
    sub-int/2addr v0, v1

    .line 344
    iput v0, v5, Lorg/wikipedia/views/ImageZoomHelper;->pivotY:I

    .line 345
    .line 346
    sput-boolean v18, Lorg/wikipedia/views/ImageZoomHelper;->isZooming:Z

    .line 347
    .line 348
    iget-object v0, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomListeners:Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_15

    .line 359
    .line 360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    if-eqz v0, :cond_6

    .line 365
    .line 366
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 367
    .line 368
    .line 369
    return v4

    .line 370
    :cond_6
    throw v17

    .line 371
    :cond_7
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    throw v17

    .line 375
    :cond_8
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw v17

    .line 379
    :cond_9
    move-object/from16 v17, v3

    .line 380
    .line 381
    const-string v0, "parentOfZoomableView"

    .line 382
    .line 383
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    throw v17

    .line 387
    :cond_a
    move-object/from16 v17, v3

    .line 388
    .line 389
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v17

    .line 393
    :cond_b
    move-object/from16 v17, v3

    .line 394
    .line 395
    move/from16 v18, v13

    .line 396
    .line 397
    const/high16 v16, 0x40000000    # 2.0f

    .line 398
    .line 399
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 400
    .line 401
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v4, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 405
    .line 406
    .line 407
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    .line 408
    .line 409
    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 410
    .line 411
    .line 412
    move/from16 v3, v18

    .line 413
    .line 414
    invoke-virtual {v1, v3, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 415
    .line 416
    .line 417
    iget v1, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 418
    .line 419
    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 420
    .line 421
    add-float v6, v1, v3

    .line 422
    .line 423
    div-float v6, v6, v16

    .line 424
    .line 425
    float-to-int v6, v6

    .line 426
    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 427
    .line 428
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 429
    .line 430
    add-float v7, v2, v0

    .line 431
    .line 432
    div-float v7, v7, v16

    .line 433
    .line 434
    float-to-int v7, v7

    .line 435
    filled-new-array {v6, v7}, [I

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    float-to-double v11, v3

    .line 440
    float-to-double v13, v1

    .line 441
    float-to-double v0, v0

    .line 442
    float-to-double v2, v2

    .line 443
    sub-double/2addr v13, v11

    .line 444
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 445
    .line 446
    .line 447
    move-result-wide v11

    .line 448
    sub-double/2addr v2, v0

    .line 449
    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 450
    .line 451
    .line 452
    move-result-wide v0

    .line 453
    add-double/2addr v0, v11

    .line 454
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 455
    .line 456
    .line 457
    move-result-wide v0

    .line 458
    double-to-int v0, v0

    .line 459
    int-to-double v0, v0

    .line 460
    iget-wide v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->originalDistance:D

    .line 461
    .line 462
    sub-double/2addr v0, v2

    .line 463
    div-double/2addr v0, v2

    .line 464
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 465
    .line 466
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    iget v3, v5, Lorg/wikipedia/views/ImageZoomHelper;->pivotX:I

    .line 470
    .line 471
    int-to-float v3, v3

    .line 472
    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    .line 473
    .line 474
    .line 475
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 476
    .line 477
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    iget v3, v5, Lorg/wikipedia/views/ImageZoomHelper;->pivotY:I

    .line 481
    .line 482
    int-to-float v3, v3

    .line 483
    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 484
    .line 485
    .line 486
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    .line 490
    .line 491
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 492
    .line 493
    add-double/2addr v9, v0

    .line 494
    double-to-float v3, v9

    .line 495
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 496
    .line 497
    .line 498
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 499
    .line 500
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 504
    .line 505
    .line 506
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 507
    .line 508
    if-eqz v2, :cond_e

    .line 509
    .line 510
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 511
    .line 512
    if-eqz v2, :cond_e

    .line 513
    .line 514
    aget v3, v6, v4

    .line 515
    .line 516
    iget-object v7, v5, Lorg/wikipedia/views/ImageZoomHelper;->twoPointCenter:[I

    .line 517
    .line 518
    if-eqz v7, :cond_d

    .line 519
    .line 520
    aget v9, v7, v4

    .line 521
    .line 522
    sub-int/2addr v3, v9

    .line 523
    iget-object v9, v5, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    .line 524
    .line 525
    if-eqz v9, :cond_c

    .line 526
    .line 527
    aget v4, v9, v4

    .line 528
    .line 529
    add-int/2addr v3, v4

    .line 530
    int-to-float v3, v3

    .line 531
    const/16 v18, 0x1

    .line 532
    .line 533
    aget v4, v6, v18

    .line 534
    .line 535
    aget v6, v7, v18

    .line 536
    .line 537
    sub-int/2addr v4, v6

    .line 538
    aget v6, v9, v18

    .line 539
    .line 540
    add-int/2addr v4, v6

    .line 541
    int-to-float v4, v4

    .line 542
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    float-to-int v3, v3

    .line 546
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 547
    .line 548
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 549
    .line 550
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 551
    .line 552
    .line 553
    float-to-int v3, v4

    .line 554
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 555
    .line 556
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 557
    .line 558
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 559
    .line 560
    .line 561
    iget-object v3, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 562
    .line 563
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    .line 565
    .line 566
    goto :goto_0

    .line 567
    :cond_c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    throw v17

    .line 571
    :cond_d
    const-string/jumbo v0, "twoPointCenter"

    .line 572
    .line 573
    .line 574
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    throw v17

    .line 578
    :cond_e
    :goto_0
    iget-object v2, v5, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    .line 579
    .line 580
    if-eqz v2, :cond_f

    .line 581
    .line 582
    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    .line 583
    .line 584
    div-double/2addr v0, v3

    .line 585
    double-to-float v0, v0

    .line 586
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 587
    .line 588
    .line 589
    const/4 v3, 0x1

    .line 590
    return v3

    .line 591
    :cond_f
    const/16 v18, 0x1

    .line 592
    .line 593
    goto/16 :goto_4

    .line 594
    .line 595
    :cond_10
    move-object/from16 v17, v3

    .line 596
    .line 597
    move v3, v13

    .line 598
    if-eqz v7, :cond_14

    .line 599
    .line 600
    iget-boolean v6, v5, Lorg/wikipedia/views/ImageZoomHelper;->isAnimatingDismiss:Z

    .line 601
    .line 602
    if-nez v6, :cond_14

    .line 603
    .line 604
    iput-boolean v3, v5, Lorg/wikipedia/views/ImageZoomHelper;->isAnimatingDismiss:Z

    .line 605
    .line 606
    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    .line 607
    .line 608
    .line 609
    move-result v6

    .line 610
    iget-object v0, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 611
    .line 612
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 616
    .line 617
    .line 618
    move-result v7

    .line 619
    iget-object v0, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 620
    .line 621
    if-eqz v0, :cond_11

    .line 622
    .line 623
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 624
    .line 625
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    goto :goto_1

    .line 630
    :cond_11
    move-object/from16 v0, v17

    .line 631
    .line 632
    :goto_1
    iget-object v1, v5, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 633
    .line 634
    if-eqz v1, :cond_12

    .line 635
    .line 636
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 637
    .line 638
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    move-object v9, v1

    .line 643
    goto :goto_2

    .line 644
    :cond_12
    move-object/from16 v9, v17

    .line 645
    .line 646
    :goto_2
    iget-object v1, v5, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    .line 647
    .line 648
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    .line 652
    .line 653
    .line 654
    move-result v12

    .line 655
    iget-object v1, v5, Lorg/wikipedia/views/ImageZoomHelper;->originalXY:[I

    .line 656
    .line 657
    if-eqz v1, :cond_13

    .line 658
    .line 659
    aget v10, v1, v4

    .line 660
    .line 661
    const/16 v18, 0x1

    .line 662
    .line 663
    aget v11, v1, v18

    .line 664
    .line 665
    new-array v1, v14, [F

    .line 666
    .line 667
    fill-array-data v1, :array_0

    .line 668
    .line 669
    .line 670
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    const/high16 v3, 0x10e0000

    .line 679
    .line 680
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    int-to-long v2, v2

    .line 685
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 686
    .line 687
    .line 688
    new-instance v4, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;

    .line 689
    .line 690
    move-object v8, v0

    .line 691
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/views/ImageZoomHelper;FFLjava/lang/Integer;Ljava/lang/Integer;IIF)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 695
    .line 696
    .line 697
    new-instance v4, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;

    .line 698
    .line 699
    move-object v12, v1

    .line 700
    invoke-direct/range {v4 .. v12}, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/views/ImageZoomHelper;FFLjava/lang/Integer;Ljava/lang/Integer;IILandroid/animation/ValueAnimator;)V

    .line 701
    .line 702
    .line 703
    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;

    .line 704
    .line 705
    invoke-direct {v0, v14, v4, v4}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;-><init>(ILjava/lang/Object;Lkotlin/Function;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v12, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 712
    .line 713
    .line 714
    const/16 v18, 0x1

    .line 715
    .line 716
    return v18

    .line 717
    :cond_13
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    throw v17

    .line 721
    :cond_14
    move/from16 v18, v3

    .line 722
    .line 723
    sput-boolean v4, Lorg/wikipedia/views/ImageZoomHelper;->isZooming:Z

    .line 724
    .line 725
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-eqz v0, :cond_16

    .line 730
    .line 731
    :cond_15
    :goto_4
    return v18

    .line 732
    :cond_16
    return v4

    .line 733
    :cond_17
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 734
    .line 735
    .line 736
    move-result v0

    .line 737
    return v0

    .line 738
    nop

    .line 739
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final maybeShowLoggedOutInBackgroundDialog()V
    .locals 10

    .line 1
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const v3, 0x7f120624

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v0, v2, v3}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v0, v1, v0}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    instance-of v1, p0, Lorg/wikipedia/login/LoginActivity;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-static {v0}, Lorg/wikipedia/settings/Prefs;->setQueueLoggedOutInBackgroundDialog(Z)V

    .line 45
    .line 46
    .line 47
    sget-object v1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 53
    .line 54
    const-string v3, "apps-authentication"

    .line 55
    .line 56
    invoke-direct {v2, v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "logout_background_dialog"

    .line 60
    .line 61
    iput-object v1, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 62
    .line 63
    const-string v1, "logout_account_background"

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->startFunnel(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    const/16 v9, 0xfe

    .line 70
    .line 71
    const-string v3, "impression"

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 81
    .line 82
    invoke-direct {v1, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 88
    .line 89
    iput-boolean v0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 90
    .line 91
    const v3, 0x7f120345

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 95
    .line 96
    .line 97
    const v3, 0x7f120343

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda0;

    .line 104
    .line 105
    invoke-direct {v3, v0, v2, p0}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const p0, 0x7f120344

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, p0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    new-instance p0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;

    .line 115
    .line 116
    invoke-direct {p0, v2, v0}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;I)V

    .line 117
    .line 118
    .line 119
    const v0, 0x7f120342

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 126
    .line 127
    .line 128
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    const-string p1, "onThisDayGameCompleted"

    .line 10
    .line 11
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, 0x1

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    instance-of p1, p0, Lorg/wikipedia/page/PageActivity;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    new-array p3, p1, [Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 28
    .line 29
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v1, 0x7f120633

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p1, v0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0, p1, p3, p1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    const p1, 0x7f1204bf

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v1, v1, Lorg/wikipedia/WikipediaApp;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Lorg/wikipedia/activity/BaseActivity;->setTheme()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v3, Landroid/util/TypedValue;

    .line 44
    .line 45
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const v5, 0x7f0404e7

    .line 53
    .line 54
    .line 55
    const/4 v6, 0x1

    .line 56
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/4 v7, 0x0

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move-object v3, v7

    .line 65
    :goto_0
    if-eqz v3, :cond_19

    .line 66
    .line 67
    iget v3, v3, Landroid/util/TypedValue;->data:I

    .line 68
    .line 69
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 70
    .line 71
    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v3, "ACTION_APP_SHORTCUT"

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const-string v3, "APP_SHORTCUT_ID"

    .line 92
    .line 93
    const-string v4, "invokeSource"

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    sget-object v8, Lorg/wikipedia/Constants$InvokeSource;->APP_SHORTCUTS:Lorg/wikipedia/Constants$InvokeSource;

    .line 102
    .line 103
    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_3

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-nez v8, :cond_2

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v8, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->reportShortcutUsed(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lorg/wikipedia/Constants$InvokeSource;

    .line 139
    .line 140
    const/4 v4, 0x3

    .line 141
    const/4 v8, 0x2

    .line 142
    if-eqz v1, :cond_7

    .line 143
    .line 144
    sget-object v9, Lorg/wikipedia/activity/BaseActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    aget v1, v9, v1

    .line 151
    .line 152
    const-string v9, "apps-open"

    .line 153
    .line 154
    if-eq v1, v6, :cond_6

    .line 155
    .line 156
    if-eq v1, v8, :cond_5

    .line 157
    .line 158
    if-eq v1, v4, :cond_4

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    sget-object v1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    new-instance v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 175
    .line 176
    invoke-direct {v10, v9, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 177
    .line 178
    .line 179
    const/16 v16, 0x0

    .line 180
    .line 181
    const/16 v17, 0xf8

    .line 182
    .line 183
    const-string v11, "app_open"

    .line 184
    .line 185
    const-string v12, "shortcut"

    .line 186
    .line 187
    const/4 v14, 0x0

    .line 188
    const/4 v15, 0x0

    .line 189
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    sget-object v1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    new-instance v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 199
    .line 200
    invoke-direct {v10, v9, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 201
    .line 202
    .line 203
    const/16 v16, 0x0

    .line 204
    .line 205
    const/16 v17, 0xfc

    .line 206
    .line 207
    const-string v11, "app_open"

    .line 208
    .line 209
    const-string v12, "notification"

    .line 210
    .line 211
    const/4 v13, 0x0

    .line 212
    const/4 v14, 0x0

    .line 213
    const/4 v15, 0x0

    .line 214
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 215
    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const-string/jumbo v3, "widgetType"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    sget-object v1, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    new-instance v10, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 235
    .line 236
    invoke-direct {v10, v9, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 237
    .line 238
    .line 239
    const/16 v16, 0x0

    .line 240
    .line 241
    const/16 v17, 0xf8

    .line 242
    .line 243
    const-string v11, "app_open"

    .line 244
    .line 245
    const-string/jumbo v12, "widget"

    .line 246
    .line 247
    .line 248
    const/4 v14, 0x0

    .line 249
    const/4 v15, 0x0

    .line 250
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 251
    .line 252
    .line 253
    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-eqz v1, :cond_8

    .line 258
    .line 259
    invoke-virtual {v1, v6}, Lcoil3/util/ContextsKt;->setDisplayHomeAsUpEnabled(Z)V

    .line 260
    .line 261
    .line 262
    :cond_8
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 263
    .line 264
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    new-instance v3, Lorg/wikipedia/settings/RemoteConfigRefreshTask;

    .line 269
    .line 270
    invoke-direct {v3, v2}, Lorg/wikipedia/settings/RemoteConfigRefreshTask;-><init>(I)V

    .line 271
    .line 272
    .line 273
    new-instance v9, Lorg/wikipedia/recurring/DailyEventTask;

    .line 274
    .line 275
    invoke-direct {v9, v1}, Lorg/wikipedia/recurring/DailyEventTask;-><init>(Lorg/wikipedia/WikipediaApp;)V

    .line 276
    .line 277
    .line 278
    new-instance v10, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;

    .line 279
    .line 280
    invoke-direct {v10, v1, v6}, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;-><init>(Lorg/wikipedia/WikipediaApp;I)V

    .line 281
    .line 282
    .line 283
    new-instance v11, Lorg/wikipedia/settings/RemoteConfigRefreshTask;

    .line 284
    .line 285
    invoke-direct {v11, v6}, Lorg/wikipedia/settings/RemoteConfigRefreshTask;-><init>(I)V

    .line 286
    .line 287
    .line 288
    new-instance v12, Lorg/wikipedia/settings/RemoteConfigRefreshTask;

    .line 289
    .line 290
    invoke-direct {v12, v8}, Lorg/wikipedia/settings/RemoteConfigRefreshTask;-><init>(I)V

    .line 291
    .line 292
    .line 293
    const/4 v13, 0x5

    .line 294
    new-array v13, v13, [Lorg/wikipedia/recurring/RecurringTask;

    .line 295
    .line 296
    aput-object v3, v13, v2

    .line 297
    .line 298
    aput-object v9, v13, v6

    .line 299
    .line 300
    aput-object v10, v13, v8

    .line 301
    .line 302
    aput-object v11, v13, v4

    .line 303
    .line 304
    const/4 v3, 0x4

    .line 305
    aput-object v12, v13, v3

    .line 306
    .line 307
    invoke-static {v13}, Landroidx/room/Room;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    const-string v9, "beta"

    .line 312
    .line 313
    const-string v10, "org.wikipedia"

    .line 314
    .line 315
    invoke-static {v10, v9, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    if-eqz v9, :cond_9

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_9
    const-string v9, "alpha"

    .line 323
    .line 324
    invoke-static {v10, v9, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 325
    .line 326
    .line 327
    move-result v9

    .line 328
    if-eqz v9, :cond_a

    .line 329
    .line 330
    new-instance v9, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;

    .line 331
    .line 332
    invoke-direct {v9, v1, v2}, Lorg/wikipedia/alphaupdater/AlphaUpdateChecker;-><init>(Lorg/wikipedia/WikipediaApp;I)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_a
    const-string v1, "dev"

    .line 340
    .line 341
    invoke-static {v10, v1, v2}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 342
    .line 343
    .line 344
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_b

    .line 353
    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    check-cast v3, Lorg/wikipedia/recurring/RecurringTask;

    .line 359
    .line 360
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    sget-object v10, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 365
    .line 366
    new-instance v11, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 367
    .line 368
    const/16 v12, 0x8

    .line 369
    .line 370
    invoke-direct {v11, v10, v12}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 371
    .line 372
    .line 373
    new-instance v10, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 374
    .line 375
    const/16 v12, 0xd

    .line 376
    .line 377
    invoke-direct {v10, v12, v3, v7}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v9, v11, v7, v10, v8}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 381
    .line 382
    .line 383
    goto :goto_4

    .line 384
    :cond_b
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 385
    .line 386
    new-array v1, v2, [Ljava/lang/Object;

    .line 387
    .line 388
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 389
    .line 390
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    const v9, 0x7f12065b

    .line 399
    .line 400
    .line 401
    invoke-static {v1, v2, v3, v9}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    invoke-static {v3, v2, v1, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_c

    .line 414
    .line 415
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-eqz v1, :cond_c

    .line 420
    .line 421
    invoke-static {v9, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 422
    .line 423
    .line 424
    invoke-static {v6}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 425
    .line 426
    .line 427
    invoke-static {}, Lokio/Path$Companion;->manualSyncWithForce()V

    .line 428
    .line 429
    .line 430
    :cond_c
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->connectionStateMonitor:Lorg/wikipedia/connectivity/ConnectionStateMonitor;

    .line 435
    .line 436
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1}, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->ensureNetworkCallbackRegistered()V

    .line 440
    .line 441
    .line 442
    iget-object v1, v1, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->callbacks:Ljava/util/ArrayList;

    .line 443
    .line 444
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    iget-object v1, v1, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 452
    .line 453
    invoke-virtual {v1}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    xor-int/2addr v1, v6

    .line 458
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    new-instance v10, Landroidx/paging/HintHandler;

    .line 470
    .line 471
    invoke-direct {v10, v9}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 472
    .line 473
    .line 474
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 475
    .line 476
    const/16 v11, 0x1a

    .line 477
    .line 478
    const/16 v12, 0x1e

    .line 479
    .line 480
    const/16 v13, 0x23

    .line 481
    .line 482
    if-lt v9, v13, :cond_d

    .line 483
    .line 484
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 485
    .line 486
    invoke-direct {v9, v3, v10}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 487
    .line 488
    .line 489
    goto :goto_5

    .line 490
    :cond_d
    if-lt v9, v12, :cond_e

    .line 491
    .line 492
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 493
    .line 494
    invoke-direct {v9, v3, v10}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 495
    .line 496
    .line 497
    goto :goto_5

    .line 498
    :cond_e
    if-lt v9, v11, :cond_f

    .line 499
    .line 500
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 501
    .line 502
    invoke-direct {v9, v3, v10}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 503
    .line 504
    .line 505
    goto :goto_5

    .line 506
    :cond_f
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 507
    .line 508
    invoke-direct {v9, v3, v10}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 509
    .line 510
    .line 511
    :goto_5
    invoke-virtual {v9, v1}, Lcoil3/util/UtilsKt;->setAppearanceLightStatusBars(Z)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    new-instance v10, Landroidx/paging/HintHandler;

    .line 526
    .line 527
    invoke-direct {v10, v9}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 528
    .line 529
    .line 530
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 531
    .line 532
    if-lt v9, v13, :cond_10

    .line 533
    .line 534
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 535
    .line 536
    invoke-direct {v9, v3, v10}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 537
    .line 538
    .line 539
    goto :goto_6

    .line 540
    :cond_10
    if-lt v9, v12, :cond_11

    .line 541
    .line 542
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 543
    .line 544
    invoke-direct {v9, v3, v10}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 545
    .line 546
    .line 547
    goto :goto_6

    .line 548
    :cond_11
    if-lt v9, v11, :cond_12

    .line 549
    .line 550
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 551
    .line 552
    invoke-direct {v9, v3, v10}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 553
    .line 554
    .line 555
    goto :goto_6

    .line 556
    :cond_12
    new-instance v9, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 557
    .line 558
    invoke-direct {v9, v3, v10}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 559
    .line 560
    .line 561
    :goto_6
    invoke-virtual {v9, v1}, Lcoil3/util/UtilsKt;->setAppearanceLightNavigationBars(Z)V

    .line 562
    .line 563
    .line 564
    invoke-static {v0, v5}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    invoke-virtual {v0, v1}, Lorg/wikipedia/activity/BaseActivity;->setStatusBarColor(I)V

    .line 569
    .line 570
    .line 571
    invoke-static {v0, v5}, Lokhttp3/Cache$Companion;->getThemedColor(Landroid/content/Context;I)I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    invoke-virtual {v0, v1}, Lorg/wikipedia/activity/BaseActivity;->setNavigationBarColor(I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v0}, Lorg/wikipedia/activity/BaseActivity;->maybeShowLoggedOutInBackgroundDialog()V

    .line 579
    .line 580
    .line 581
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 582
    .line 583
    const-class v3, Lorg/wikipedia/main/MainActivity;

    .line 584
    .line 585
    invoke-virtual {v1, v3}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    const-class v5, Lorg/wikipedia/page/PageActivity;

    .line 590
    .line 591
    invoke-virtual {v1, v5}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    new-array v5, v8, [Lkotlin/reflect/KClass;

    .line 596
    .line 597
    aput-object v3, v5, v2

    .line 598
    .line 599
    aput-object v1, v5, v6

    .line 600
    .line 601
    invoke-static {v5}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    if-eqz v3, :cond_13

    .line 610
    .line 611
    goto/16 :goto_7

    .line 612
    .line 613
    :cond_13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    if-eqz v3, :cond_18

    .line 622
    .line 623
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    check-cast v3, Lkotlin/reflect/KClass;

    .line 628
    .line 629
    invoke-interface {v3, v0}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    if-eqz v3, :cond_14

    .line 634
    .line 635
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 636
    .line 637
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isInitialOnboardingEnabled()Z

    .line 638
    .line 639
    .line 640
    move-result v1

    .line 641
    if-eqz v1, :cond_15

    .line 642
    .line 643
    goto :goto_7

    .line 644
    :cond_15
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isExploreFeedUpdatePromptShown()Z

    .line 645
    .line 646
    .line 647
    move-result v1

    .line 648
    if-nez v1, :cond_16

    .line 649
    .line 650
    goto :goto_7

    .line 651
    :cond_16
    sget-object v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetRepository;->REMOVE_DATE:Lj$/time/LocalDate;

    .line 652
    .line 653
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingChallengeOnboardingShown()Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-nez v1, :cond_17

    .line 658
    .line 659
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getSTART_DATE()Lj$/time/LocalDate;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    invoke-virtual {v1, v3}, Lj$/time/LocalDate;->isBefore(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 668
    .line 669
    .line 670
    move-result v1

    .line 671
    if-nez v1, :cond_17

    .line 672
    .line 673
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-static {}, Lorg/wikipedia/widgets/readingchallenge/StreakProgressBarKt;->getEND_DATE()Lj$/time/LocalDate;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    invoke-virtual {v1, v3}, Lj$/time/LocalDate;->isAfter(Lj$/time/chrono/ChronoLocalDate;)Z

    .line 682
    .line 683
    .line 684
    move-result v1

    .line 685
    if-nez v1, :cond_17

    .line 686
    .line 687
    new-instance v1, Landroid/content/Intent;

    .line 688
    .line 689
    const-class v3, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;

    .line 690
    .line 691
    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 692
    .line 693
    .line 694
    const/high16 v3, 0x4000000

    .line 695
    .line 696
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    .line 702
    .line 703
    iget-object v3, v0, Lorg/wikipedia/activity/BaseActivity;->requestReadingChallengeActivity:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 704
    .line 705
    invoke-virtual {v3, v1, v7}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 706
    .line 707
    .line 708
    goto :goto_7

    .line 709
    :cond_17
    invoke-static {}, Lorg/wikipedia/login/LoginClient;->isAccessible()Z

    .line 710
    .line 711
    .line 712
    move-result v1

    .line 713
    if-eqz v1, :cond_18

    .line 714
    .line 715
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isYearInReviewEnabled()Z

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    if-eqz v1, :cond_18

    .line 720
    .line 721
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getYearInReviewVisited()Z

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    if-nez v1, :cond_18

    .line 726
    .line 727
    new-instance v1, Landroid/content/Intent;

    .line 728
    .line 729
    const-class v3, Lorg/wikipedia/yearinreview/YearInReviewOnboardingActivity;

    .line 730
    .line 731
    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    .line 733
    .line 734
    iget-object v3, v0, Lorg/wikipedia/activity/BaseActivity;->yearInReviewLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 735
    .line 736
    invoke-virtual {v3, v1, v7}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 737
    .line 738
    .line 739
    :cond_18
    :goto_7
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 740
    .line 741
    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    const v3, 0x7f1205d8

    .line 746
    .line 747
    .line 748
    invoke-static {v3, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 749
    .line 750
    .line 751
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    new-instance v3, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 756
    .line 757
    invoke-direct {v3, v0, v7, v2}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 758
    .line 759
    .line 760
    invoke-static {v1, v7, v7, v3, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 761
    .line 762
    .line 763
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    new-instance v2, Lorg/wikipedia/activity/BaseActivity$onCreate$2;

    .line 768
    .line 769
    invoke-direct {v2, v0, v7, v4}, Lorg/wikipedia/activity/BaseActivity$onCreate$2;-><init>(Lorg/wikipedia/activity/BaseActivity;Lkotlin/coroutines/Continuation;I)V

    .line 770
    .line 771
    .line 772
    invoke-static {v1, v7, v7, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 773
    .line 774
    .line 775
    return-void

    .line 776
    :cond_19
    const-string v0, "Attribute not found; ID=2130969831"

    .line 777
    .line 778
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->connectionStateMonitor:Lorg/wikipedia/connectivity/ConnectionStateMonitor;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lorg/wikipedia/connectivity/ConnectionStateMonitor;->callbacks:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    sget-object v0, Lorg/wikipedia/richtext/CustomHtmlParser;->contextBmpMap:Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Iterable;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    .line 49
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lorg/wikipedia/richtext/CustomHtmlParser;->contextBmpMap:Ljava/util/LinkedHashMap;

    .line 66
    .line 67
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/util/Map;

    .line 72
    .line 73
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public onGoOffline()V
    .locals 0

    .line 1
    return-void
.end method

.method public onGoOnline()V
    .locals 0

    .line 1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x102002c

    .line 9
    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getAppSessionEvent()Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->persistSession()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 18
    .line 19
    iget-object v0, p0, Lorg/wikimedia/testkitchen/TestKitchenClient;->sessionController:Lorg/wikimedia/testkitchen/SessionController;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/wikimedia/testkitchen/SessionController;->touchSession()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lorg/wikimedia/testkitchen/TestKitchenClient;->eventProcessor:Lokhttp3/Request$Builder;

    .line 25
    .line 26
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->sendEnqueuedEvents()V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->STREAM_CONFIGS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INITIAL_QUEUE:Ljava/util/ArrayList;

    .line 38
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lorg/wikipedia/analytics/eventplatform/Event;

    .line 61
    .line 62
    sget-object v2, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 63
    .line 64
    invoke-static {v1}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->doSubmit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    sget-object v0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INITIAL_QUEUE:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    :cond_1
    monitor-exit p0

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    monitor-exit p0

    .line 78
    throw v0

    .line 79
    :cond_2
    :goto_2
    invoke-static {}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient$OutputBuffer;->sendAllScheduled()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public onResume()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->getAppSessionEvent()Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/wikipedia/analytics/eventplatform/AppSessionEvent;->touchSession()V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lorg/wikipedia/analytics/testkitchen/TestKitchenAdapter;->client:Lorg/wikimedia/testkitchen/TestKitchenClient;

    .line 18
    .line 19
    iget-object v1, v0, Lorg/wikimedia/testkitchen/TestKitchenClient;->sessionController:Lorg/wikimedia/testkitchen/SessionController;

    .line 20
    .line 21
    invoke-virtual {v1}, Lorg/wikimedia/testkitchen/SessionController;->touchSession()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {p0, v1}, Lorg/wikipedia/analytics/eventplatform/BreadCrumbLogEvent$Companion;->logScreenShown(Landroid/content/Context;Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 34
    .line 35
    const-string v1, "apps-open"

    .line 36
    .line 37
    invoke-direct {v2, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Ljava/lang/String;Lorg/wikimedia/testkitchen/TestKitchenClient;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/4 v8, 0x0

    .line 49
    const/16 v9, 0xf8

    .line 50
    .line 51
    const-string v3, "app_open"

    .line 52
    .line 53
    const-string v4, "background"

    .line 54
    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/activity/BaseActivity;->notificationPermissionLauncher:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sget-wide v3, Lorg/wikipedia/notifications/NotificationPresenter;->lastPermissionRequestTime:J

    .line 14
    .line 15
    sub-long/2addr v1, v3

    .line 16
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v4, 0x21

    .line 19
    .line 20
    if-lt v3, v4, :cond_1

    .line 21
    .line 22
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isInitialOnboardingEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const-wide/32 v3, 0x36ee80

    .line 37
    .line 38
    .line 39
    cmp-long v3, v1, v3

    .line 40
    .line 41
    if-gtz v3, :cond_0

    .line 42
    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    cmp-long v1, v1, v3

    .line 46
    .line 47
    if-gez v1, :cond_1

    .line 48
    .line 49
    :cond_0
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 50
    .line 51
    invoke-static {p0, v1}, Lorg/wikipedia/util/FileUtil;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    invoke-virtual {v0, v1, p0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    sput-wide v0, Lorg/wikipedia/notifications/NotificationPresenter;->lastPermissionRequestTime:J

    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public onUnreadNotification()V
    .locals 0

    .line 1
    return-void
.end method

.method public final setNavigationBarColor(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x1a

    .line 11
    .line 12
    if-lt v0, v1, :cond_5

    .line 13
    .line 14
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 15
    .line 16
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->isDark()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const/high16 v0, -0x1000000

    .line 30
    .line 31
    if-ne p1, v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v0, v2

    .line 37
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v3, Landroidx/paging/HintHandler;

    .line 45
    .line 46
    invoke-direct {v3, p1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v4, 0x23

    .line 52
    .line 53
    if-lt p1, v4, :cond_2

    .line 54
    .line 55
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 56
    .line 57
    invoke-direct {p1, p0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/16 v4, 0x1e

    .line 62
    .line 63
    if-lt p1, v4, :cond_3

    .line 64
    .line 65
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 66
    .line 67
    invoke-direct {p1, p0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    if-lt p1, v1, :cond_4

    .line 72
    .line 73
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 74
    .line 75
    invoke-direct {p1, p0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_4
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 80
    .line 81
    invoke-direct {p1, p0, v3}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    xor-int/lit8 p0, v0, 0x1

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Lcoil3/util/UtilsKt;->setAppearanceLightNavigationBars(Z)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method public final setStatusBarColor(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setTheme()V
    .locals 2

    .line 1
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 8
    .line 9
    sget-object v1, Lorg/wikipedia/theme/Theme;->LIGHT:Lorg/wikipedia/theme/Theme;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lorg/wikipedia/WikipediaApp;->currentTheme:Lorg/wikipedia/theme/Theme;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/wikipedia/theme/Theme;->getResourceId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
