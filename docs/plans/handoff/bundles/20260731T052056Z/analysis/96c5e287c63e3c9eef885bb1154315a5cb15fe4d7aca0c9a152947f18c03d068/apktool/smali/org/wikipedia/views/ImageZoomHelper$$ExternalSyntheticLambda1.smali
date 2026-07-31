.class public final synthetic Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/views/ImageZoomHelper;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:Ljava/lang/Integer;

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/ImageZoomHelper;FFLjava/lang/Integer;Ljava/lang/Integer;IILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/views/ImageZoomHelper;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$2:F

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Integer;

    .line 13
    .line 14
    iput p6, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$7:I

    .line 15
    .line 16
    iput p7, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$8:I

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$9:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Landroid/animation/Animator;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/views/ImageZoomHelper;

    .line 7
    .line 8
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewFrameLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object p1, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Integer;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    .line 35
    .line 36
    iget v2, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$1:F

    .line 37
    .line 38
    iget v3, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$2:F

    .line 39
    .line 40
    iget v6, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$7:I

    .line 41
    .line 42
    iget v7, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$8:I

    .line 43
    .line 44
    invoke-virtual/range {v0 .. v7}, Lorg/wikipedia/views/ImageZoomHelper;->updateZoomableView(FFFIIII)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomListeners:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x0

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_1

    .line 65
    .line 66
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :cond_1
    throw v2

    .line 71
    :cond_2
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    check-cast p1, Landroid/view/ViewGroup;

    .line 92
    .line 93
    iget-object v3, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 94
    .line 95
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->parentOfZoomableView:Landroid/view/ViewGroup;

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget-object v3, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 103
    .line 104
    iget v4, v0, Lorg/wikipedia/views/ImageZoomHelper;->viewIndex:I

    .line 105
    .line 106
    iget-object v5, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableViewLP:Landroid/view/ViewGroup$LayoutParams;

    .line 107
    .line 108
    if-eqz v5, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const-string/jumbo p0, "zoomableViewLP"

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v2

    .line 121
    :cond_4
    const-string p0, "parentOfZoomableView"

    .line 122
    .line 123
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v2

    .line 127
    :cond_5
    :goto_0
    iput-object v2, v0, Lorg/wikipedia/views/ImageZoomHelper;->darkView:Landroid/view/View;

    .line 128
    .line 129
    iget-object p1, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 134
    .line 135
    .line 136
    iput-object v2, v0, Lorg/wikipedia/views/ImageZoomHelper;->zoomableView:Landroid/view/View;

    .line 137
    .line 138
    :cond_6
    iput-boolean v1, v0, Lorg/wikipedia/views/ImageZoomHelper;->isAnimatingDismiss:Z

    .line 139
    .line 140
    iget-object p0, p0, Lorg/wikipedia/views/ImageZoomHelper$$ExternalSyntheticLambda1;->f$9:Landroid/animation/ValueAnimator;

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 146
    .line 147
    .line 148
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 149
    .line 150
    return-object p0
.end method
