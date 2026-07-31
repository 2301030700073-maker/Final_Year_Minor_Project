.class public final Landroidx/appcompat/widget/SearchView$4;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/SearchView$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/appcompat/widget/SearchView$4;->this$0:Ljava/lang/Object;

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
    .locals 0

    .line 1
    iget p1, p0, Landroidx/appcompat/widget/SearchView$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    throw p0

    .line 8
    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/SearchView$4;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 13
    .line 14
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    const/4 p4, 0x1

    .line 21
    if-le p3, p4, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iget-object p5, p0, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {p5}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result p5

    .line 37
    new-instance p6, Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .line 41
    .line 42
    sget-boolean p7, Landroidx/appcompat/widget/ViewUtils;->sInitComputeFitSystemWindowsMethod:Z

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 45
    .line 46
    .line 47
    move-result p7

    .line 48
    const/4 p8, 0x0

    .line 49
    if-ne p7, p4, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move p4, p8

    .line 53
    :goto_0
    iget-boolean p0, p0, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    .line 54
    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    const p0, 0x7f070029

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    const p7, 0x7f07002a

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    add-int p8, p3, p0

    .line 72
    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0, p6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 78
    .line 79
    .line 80
    iget p0, p6, Landroid/graphics/Rect;->left:I

    .line 81
    .line 82
    if-eqz p4, :cond_2

    .line 83
    .line 84
    neg-int p0, p0

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    add-int/2addr p0, p8

    .line 87
    sub-int p0, p5, p0

    .line 88
    .line 89
    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    iget p2, p6, Landroid/graphics/Rect;->left:I

    .line 97
    .line 98
    add-int/2addr p0, p2

    .line 99
    iget p2, p6, Landroid/graphics/Rect;->right:I

    .line 100
    .line 101
    add-int/2addr p0, p2

    .line 102
    add-int/2addr p0, p8

    .line 103
    sub-int/2addr p0, p5

    .line 104
    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
