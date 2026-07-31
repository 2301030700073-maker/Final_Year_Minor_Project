.class public final Landroidx/transition/Transition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :sswitch_0
    check-cast v1, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;

    .line 13
    .line 14
    iget-object p0, v1, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :sswitch_1
    check-cast v1, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 23
    .line 24
    iget-object p0, v1, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :sswitch_2
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 31
    .line 32
    .line 33
    check-cast v1, Lcom/google/android/material/focus/FocusRingDrawable;

    .line 34
    .line 35
    const/high16 p0, 0x3f800000    # 1.0f

    .line 36
    .line 37
    iput p0, v1, Lcom/google/android/material/focus/FocusRingDrawable;->interpolation:F

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :sswitch_3
    check-cast v1, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationCancel()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :sswitch_4
    check-cast v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    iput-object p0, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    iput-boolean p0, v1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_3
        0x6 -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    check-cast v4, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;

    .line 16
    .line 17
    iget-object p0, v4, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapGestureDetector;->dispatchCameraIdle()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    check-cast v4, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 24
    .line 25
    invoke-virtual {v4}, Lorg/maplibre/android/maps/MapGestureDetector;->dispatchCameraIdle()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_3
    check-cast v4, Lorg/maplibre/android/location/MapLibreAnimator;

    .line 30
    .line 31
    iget-boolean p0, v4, Lorg/maplibre/android/location/MapLibreAnimator;->invalid:Z

    .line 32
    .line 33
    if-nez p0, :cond_0

    .line 34
    .line 35
    iget-object p0, v4, Lorg/maplibre/android/location/MapLibreAnimator;->updateListener:Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;

    .line 36
    .line 37
    iget-object p1, v4, Lorg/maplibre/android/location/MapLibreAnimator;->animatedValue:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-interface {p0, p1}, Lorg/maplibre/android/location/MapLibreAnimator$AnimationsValueChangeListener;->onNewAnimationValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 47
    .line 48
    .line 49
    check-cast v4, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/skydoves/balloon/Balloon$$ExternalSyntheticLambda3;->invoke()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_5
    check-cast v4, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;

    .line 56
    .line 57
    iget-object p0, v4, Lcom/hcaptcha/sdk/HCaptchaDialogFragment;->loadingContainer:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    if-eqz p0, :cond_1

    .line 60
    .line 61
    const/16 p1, 0x8

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :pswitch_6
    check-cast v4, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    .line 68
    .line 69
    iput-object v3, v4, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_7
    check-cast v4, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 75
    .line 76
    .line 77
    iget-object p0, v4, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_8
    check-cast v4, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 84
    .line 85
    invoke-virtual {v4, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    .line 86
    .line 87
    .line 88
    iget-object p0, v4, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 89
    .line 90
    if-eqz p0, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    if-eqz p0, :cond_2

    .line 97
    .line 98
    iget-object p0, v4, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void

    .line 110
    :pswitch_9
    check-cast v4, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;

    .line 111
    .line 112
    iget-object p0, v4, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, p1}, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->updateBackProgress(F)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_a
    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 123
    .line 124
    iput v2, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 125
    .line 126
    iput-object v3, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_b
    check-cast v4, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationEnd()V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_c
    check-cast v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 136
    .line 137
    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 138
    .line 139
    .line 140
    iget-object p0, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 141
    .line 142
    if-eqz p0, :cond_3

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    if-eqz p0, :cond_3

    .line 149
    .line 150
    iget-object p0, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast p0, Landroid/view/View;

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 159
    .line 160
    .line 161
    :cond_3
    return-void

    .line 162
    :pswitch_d
    new-instance p0, Ljava/util/ArrayList;

    .line 163
    .line 164
    check-cast v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 165
    .line 166
    iget-object p1, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    :goto_0
    if-ge v2, p1, :cond_4

    .line 176
    .line 177
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 182
    .line 183
    invoke-virtual {v0, v4}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_4
    return-void

    .line 190
    :pswitch_e
    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 191
    .line 192
    iput-object v3, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    .line 193
    .line 194
    iput-boolean v2, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 195
    .line 196
    return-void

    .line 197
    :pswitch_f
    check-cast v4, Landroidx/transition/Transition;

    .line 198
    .line 199
    invoke-virtual {v4}, Landroidx/transition/Transition;->end()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    .line 16
    .line 17
    iget p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->newIndicatorColorIndex:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    add-int/2addr p1, v0

    .line 21
    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->indicatorColors:[I

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    rem-int/2addr p1, v1

    .line 27
    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->newIndicatorColorIndex:I

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->dirtyColors:Z

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :sswitch_0
    check-cast v3, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;

    .line 15
    .line 16
    iget-object p0, v3, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 17
    .line 18
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 21
    .line 22
    .line 23
    iget-object p0, v3, Lorg/maplibre/android/maps/MapGestureDetector$RotateGestureListener;->this$0:Lorg/maplibre/android/maps/MapGestureDetector;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :sswitch_1
    check-cast v3, Lorg/maplibre/android/maps/MapGestureDetector;

    .line 32
    .line 33
    iget-object p0, v3, Lorg/maplibre/android/maps/MapGestureDetector;->transform:Lorg/maplibre/android/maps/Transform;

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    .line 36
    .line 37
    .line 38
    iget-object p0, v3, Lorg/maplibre/android/maps/MapGestureDetector;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 39
    .line 40
    invoke-virtual {p0, v2}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onCameraMoveStarted(I)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :sswitch_2
    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 45
    .line 46
    iget-object p0, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 47
    .line 48
    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x2

    .line 52
    iput p0, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 53
    .line 54
    iput-object p1, v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 55
    .line 56
    return-void

    .line 57
    :sswitch_3
    check-cast v3, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Lcom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationStart(Landroid/animation/Animator;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :sswitch_4
    new-instance p0, Ljava/util/ArrayList;

    .line 64
    .line 65
    check-cast v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 66
    .line 67
    iget-object p1, v3, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    :goto_0
    if-ge v1, p1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    return-void

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
