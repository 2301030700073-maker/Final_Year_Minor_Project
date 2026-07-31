.class public final Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field public final lightStatusBar:Z

.field public final lightToolbar:Z

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;

.field public final topInset:I

.field public final windowInsetsController:Landroidx/fragment/app/Fragment$7;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment$7;Landroidx/appcompat/widget/Toolbar;ILcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->windowInsetsController:Landroidx/fragment/app/Fragment$7;

    .line 11
    .line 12
    iput-object p2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 13
    .line 14
    iput p3, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->topInset:I

    .line 15
    .line 16
    iput-object p4, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lkotlin/math/MathKt;

    .line 21
    .line 22
    invoke-virtual {p1}, Lkotlin/math/MathKt;->isAppearanceLightStatusBars()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput-boolean p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->lightStatusBar:Z

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    instance-of p4, p3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 33
    .line 34
    if-eqz p4, :cond_0

    .line 35
    .line 36
    check-cast p3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 37
    .line 38
    iget-object p3, p3, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    .line 39
    .line 40
    iget-object p3, p3, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object p3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    :goto_0
    if-eqz p3, :cond_1

    .line 50
    .line 51
    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Landroidx/work/Data$Companion;->isColorLight(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    .line 65
    .line 66
    if-eqz p3, :cond_2

    .line 67
    .line 68
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-static {p1}, Landroidx/work/Data$Companion;->isColorLight(I)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->lightToolbar:Z

    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final handleToolbarVisibility(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    check-cast v1, Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    div-int/lit8 v1, v1, 0x2

    .line 19
    .line 20
    iget v2, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->topInset:I

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    iget-object v4, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-ge v0, v1, :cond_6

    .line 27
    .line 28
    iget-object v6, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 29
    .line 30
    invoke-virtual {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-lez v7, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    sub-int/2addr v7, v8

    .line 46
    add-int v8, v7, v2

    .line 47
    .line 48
    sub-int v9, v1, v0

    .line 49
    .line 50
    int-to-float v9, v9

    .line 51
    invoke-virtual {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    sub-int/2addr v1, v10

    .line 56
    int-to-float v1, v1

    .line 57
    div-float/2addr v9, v1

    .line 58
    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    .line 60
    cmpl-float v10, v9, v1

    .line 61
    .line 62
    if-lez v10, :cond_1

    .line 63
    .line 64
    move v9, v1

    .line 65
    :cond_1
    int-to-float v1, v8

    .line 66
    mul-float/2addr v1, v9

    .line 67
    float-to-int v1, v1

    .line 68
    if-gez v1, :cond_2

    .line 69
    .line 70
    move v1, v5

    .line 71
    :cond_2
    invoke-virtual {p1, v5, v1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    .line 73
    .line 74
    sub-int v0, v7, v0

    .line 75
    .line 76
    int-to-float v0, v0

    .line 77
    invoke-virtual {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    sub-int v6, v7, v6

    .line 82
    .line 83
    int-to-float v6, v6

    .line 84
    div-float/2addr v0, v6

    .line 85
    const/4 v6, 0x0

    .line 86
    cmpg-float v8, v0, v6

    .line 87
    .line 88
    if-gez v8, :cond_3

    .line 89
    .line 90
    move v0, v6

    .line 91
    :cond_3
    cmpl-float v6, v0, v6

    .line 92
    .line 93
    if-lez v6, :cond_5

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    sub-int v3, v1, v7

    .line 99
    .line 100
    if-gez v3, :cond_4

    .line 101
    .line 102
    move v3, v5

    .line 103
    :cond_4
    invoke-virtual {v4, v5, v3, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    .line 105
    .line 106
    int-to-float v1, v1

    .line 107
    neg-float v1, v1

    .line 108
    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 123
    .line 124
    .line 125
    :goto_1
    div-int/lit8 v2, v2, 0x2

    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iget-object v1, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->windowInsetsController:Landroidx/fragment/app/Fragment$7;

    .line 132
    .line 133
    if-ge v0, v2, :cond_7

    .line 134
    .line 135
    iget-boolean p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->lightToolbar:Z

    .line 136
    .line 137
    invoke-virtual {v1, p0}, Landroidx/fragment/app/Fragment$7;->setAppearanceLightStatusBars(Z)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    iget-boolean p0, p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->lightStatusBar:Z

    .line 148
    .line 149
    invoke-virtual {v1, p0}, Landroidx/fragment/app/Fragment$7;->setAppearanceLightStatusBars(Z)V

    .line 150
    .line 151
    .line 152
    :cond_8
    return-void
.end method

.method public final onSlide(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->handleToolbarVisibility(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStateChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog$ToolbarVisibilityCallback;->handleToolbarVisibility(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
