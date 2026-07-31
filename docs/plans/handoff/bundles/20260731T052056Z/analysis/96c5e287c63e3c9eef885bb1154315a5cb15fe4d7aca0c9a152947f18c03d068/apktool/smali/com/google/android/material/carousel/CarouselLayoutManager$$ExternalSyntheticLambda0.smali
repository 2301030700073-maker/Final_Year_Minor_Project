.class public final synthetic Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorView:Landroid/view/View;

    .line 11
    .line 12
    iget-object p6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->icon:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {p6}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result p7

    .line 18
    if-nez p7, :cond_0

    .line 19
    .line 20
    iget-object p7, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    .line 21
    .line 22
    if-eqz p7, :cond_0

    .line 23
    .line 24
    new-instance p8, Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-direct {p8}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p6, p8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p7, p8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 33
    .line 34
    .line 35
    const/4 p8, 0x0

    .line 36
    invoke-virtual {p7, p6, p8}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object p6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->innerContentContainer:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object p6

    .line 45
    check-cast p6, Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    .line 47
    sub-int/2addr p4, p2

    .line 48
    iget p2, p6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 49
    .line 50
    add-int/2addr p4, p2

    .line 51
    iget p2, p6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 52
    .line 53
    add-int/2addr p4, p2

    .line 54
    sub-int/2addr p5, p3

    .line 55
    iget p2, p6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 56
    .line 57
    add-int/2addr p5, p2

    .line 58
    iget p2, p6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 59
    .line 60
    add-int/2addr p5, p2

    .line 61
    iget p2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->itemIconGravity:I

    .line 62
    .line 63
    const/4 p3, 0x1

    .line 64
    if-ne p2, p3, :cond_3

    .line 65
    .line 66
    iget p2, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorExpandedDesiredWidth:I

    .line 67
    .line 68
    const/4 p6, -0x2

    .line 69
    if-ne p2, p6, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    .line 77
    iget p7, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorExpandedDesiredWidth:I

    .line 78
    .line 79
    if-ne p7, p6, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result p6

    .line 85
    if-eq p6, p4, :cond_1

    .line 86
    .line 87
    iget p6, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorDesiredWidth:I

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 90
    .line 91
    .line 92
    move-result p7

    .line 93
    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarItemView;->activeIndicatorMarginHorizontal:I

    .line 94
    .line 95
    mul-int/lit8 p0, p0, 0x2

    .line 96
    .line 97
    sub-int/2addr p7, p0

    .line 98
    invoke-static {p6, p7}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 107
    .line 108
    move p0, p3

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const/4 p0, 0x0

    .line 111
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 112
    .line 113
    .line 114
    move-result p4

    .line 115
    if-ge p4, p5, :cond_2

    .line 116
    .line 117
    iput p5, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_2
    move p3, p0

    .line 121
    :goto_1
    if-eqz p3, :cond_3

    .line 122
    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void

    .line 127
    :pswitch_0
    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    .line 128
    .line 129
    sub-int/2addr p4, p2

    .line 130
    sub-int/2addr p8, p6

    .line 131
    if-ne p4, p8, :cond_4

    .line 132
    .line 133
    sub-int/2addr p5, p3

    .line 134
    sub-int/2addr p9, p7

    .line 135
    if-eq p5, p9, :cond_5

    .line 136
    .line 137
    :cond_4
    new-instance p2, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    const/16 p3, 0x16

    .line 140
    .line 141
    invoke-direct {p2, p3, p0}, Lcom/hcaptcha/sdk/tasks/Task$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    :cond_5
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
