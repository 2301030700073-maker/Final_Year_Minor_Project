.class public Landroidx/transition/Transition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p2, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    iput-object p1, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iput v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :sswitch_0
    check-cast v2, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 14
    .line 15
    iget-object p0, v2, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 16
    .line 17
    iget-object p1, v2, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 18
    .line 19
    iget-object p1, p1, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v2, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 27
    .line 28
    iget-object p0, v2, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 29
    .line 30
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 31
    .line 32
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :sswitch_1
    check-cast v2, Lorg/schabi/newpipe/player/helper/AudioReactor;

    .line 37
    .line 38
    iget-object p0, v2, Lorg/schabi/newpipe/player/helper/AudioReactor;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 39
    .line 40
    const/high16 p1, 0x3f800000    # 1.0f

    .line 41
    .line 42
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :sswitch_2
    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 47
    .line 48
    iput-object v1, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    iput-boolean p0, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
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
    check-cast v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;

    .line 12
    .line 13
    iget-object p0, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->windowManager:Landroid/view/WindowManager;

    .line 14
    .line 15
    iget-object p1, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 16
    .line 17
    iget-object p1, p1, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iput-object v3, v4, Lorg/schabi/newpipe/player/ui/PopupPlayerUi;->closeOverlayBinding:Lorg/jsoup/parser/TokenData;

    .line 25
    .line 26
    iget-object p0, v4, Lorg/schabi/newpipe/player/ui/PlayerUi;->player:Lorg/schabi/newpipe/player/Player;

    .line 27
    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/player/Player;->service:Lorg/schabi/newpipe/player/PlayerService;

    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/PlayerService;->destroyPlayerAndStopService()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    check-cast v4, Lorg/schabi/newpipe/player/helper/AudioReactor;

    .line 35
    .line 36
    iget-object p0, v4, Lorg/schabi/newpipe/player/helper/AudioReactor;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 37
    .line 38
    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    check-cast v4, Ljava/lang/Runnable;

    .line 48
    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :pswitch_2
    check-cast v4, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;

    .line 56
    .line 57
    iput-object v3, v4, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_3
    check-cast v4, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 63
    .line 64
    .line 65
    iget-object p0, v4, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_4
    check-cast v4, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 72
    .line 73
    invoke-virtual {v4, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    .line 74
    .line 75
    .line 76
    iget-object p0, v4, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    if-eqz p0, :cond_1

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    .line 86
    iget-object p0, v4, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void

    .line 98
    :pswitch_5
    check-cast v4, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;

    .line 99
    .line 100
    iget-object p0, v4, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, p1}, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->updateBackProgress(F)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_6
    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 111
    .line 112
    iput v2, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 113
    .line 114
    iput-object v3, v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_7
    check-cast v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 118
    .line 119
    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 120
    .line 121
    .line 122
    iget-object p0, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 123
    .line 124
    if-eqz p0, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    if-eqz p0, :cond_2

    .line 131
    .line 132
    iget-object p0, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Landroid/view/View;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 141
    .line 142
    .line 143
    :cond_2
    return-void

    .line 144
    :pswitch_8
    check-cast v4, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 145
    .line 146
    iput-object v3, v4, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_9
    new-instance p0, Ljava/util/ArrayList;

    .line 150
    .line 151
    check-cast v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 152
    .line 153
    iget-object p1, v4, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    :goto_0
    if-ge v2, p1, :cond_4

    .line 163
    .line 164
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;->this$0:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 171
    .line 172
    iget-object v0, v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    .line 173
    .line 174
    if-eqz v0, :cond_3

    .line 175
    .line 176
    invoke-virtual {v4, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 177
    .line 178
    .line 179
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_4
    return-void

    .line 183
    :pswitch_a
    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 184
    .line 185
    iput-object v3, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    .line 186
    .line 187
    iput-boolean v2, v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 188
    .line 189
    return-void

    .line 190
    :pswitch_b
    check-cast v4, Landroidx/transition/Transition;

    .line 191
    .line 192
    invoke-virtual {v4}, Landroidx/transition/Transition;->end()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :sswitch_0
    check-cast v2, Lorg/schabi/newpipe/player/helper/AudioReactor;

    .line 14
    .line 15
    iget-object p0, v2, Lorg/schabi/newpipe/player/helper/AudioReactor;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 16
    .line 17
    const p1, 0x3e4ccccd    # 0.2f

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/Player;->setVolume(F)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :sswitch_1
    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 25
    .line 26
    iget-object p0, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v1}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x2

    .line 32
    iput p0, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->animState:I

    .line 33
    .line 34
    iput-object p1, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->currentAnimator:Landroid/animation/Animator;

    .line 35
    .line 36
    return-void

    .line 37
    :sswitch_2
    new-instance p0, Ljava/util/ArrayList;

    .line 38
    .line 39
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 40
    .line 41
    iget-object p1, v2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    :goto_0
    if-ge v1, p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox$1;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method
