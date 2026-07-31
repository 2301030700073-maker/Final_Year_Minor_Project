.class public final Lorg/wikipedia/views/DrawableItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final drawEnd:Z

.field public final drawStart:Z

.field public final drawable:Landroid/graphics/drawable/Drawable;

.field public final skipSearchBar:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZZI)V
    .locals 3

    and-int/lit8 v0, p4, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 v0, p4, 0x8

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move p3, v2

    :cond_1
    and-int/lit8 p4, p4, 0x10

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 52
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lorg/wikipedia/views/DrawableItemDecoration;->drawStart:Z

    .line 5
    .line 6
    iput-boolean p3, p0, Lorg/wikipedia/views/DrawableItemDecoration;->drawEnd:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lorg/wikipedia/views/DrawableItemDecoration;->skipSearchBar:Z

    .line 9
    .line 10
    new-instance p2, Landroid/util/TypedValue;

    .line 11
    .line 12
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const/4 p4, 0x1

    .line 20
    const v0, 0x7f04039c

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, v0, p2, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    const/4 p4, 0x0

    .line 28
    if-eqz p3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p2, p4

    .line 32
    :goto_0
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 35
    .line 36
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lorg/wikipedia/views/DrawableItemDecoration;->drawable:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const-string p0, "Attribute not found; ID=2130969500"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p4
.end method


# virtual methods
.method public final bounds(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Z)Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, v1, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    iget-object p0, p0, Lorg/wikipedia/views/DrawableItemDecoration;->drawable:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    sub-int/2addr p1, p0

    .line 48
    :goto_0
    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 49
    .line 50
    add-int/2addr p1, p0

    .line 51
    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    .line 52
    .line 53
    return-object v1
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/views/DrawableItemDecoration;->drawable:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p2, -0x1

    .line 33
    :goto_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    add-int/lit8 p3, p3, -0x1

    .line 38
    .line 39
    if-ne p2, p3, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_6

    .line 12
    .line 13
    iget-boolean p3, p0, Lorg/wikipedia/views/DrawableItemDecoration;->skipSearchBar:Z

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v3, 0x7f0905c0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    if-eqz p3, :cond_1

    .line 47
    .line 48
    move p3, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move p3, v2

    .line 51
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr v1, v0

    .line 56
    iget-boolean v3, p0, Lorg/wikipedia/views/DrawableItemDecoration;->drawStart:Z

    .line 57
    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    move v4, p3

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v4, p3, 0x1

    .line 63
    .line 64
    :goto_1
    iget-object v5, p0, Lorg/wikipedia/views/DrawableItemDecoration;->drawable:Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    if-ge v4, v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p2, v6, v0}, Lorg/wikipedia/views/DrawableItemDecoration;->bounds(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Z)Landroid/graphics/Rect;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v4, v4, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    if-nez v3, :cond_4

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    add-int/2addr p3, v0

    .line 95
    if-le v3, p3, :cond_5

    .line 96
    .line 97
    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p2, p3, v0}, Lorg/wikipedia/views/DrawableItemDecoration;->bounds(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Z)Landroid/graphics/Rect;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-virtual {v5, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-boolean p3, p0, Lorg/wikipedia/views/DrawableItemDecoration;->drawEnd:Z

    .line 115
    .line 116
    if-eqz p3, :cond_6

    .line 117
    .line 118
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p2, p3, v2}, Lorg/wikipedia/views/DrawableItemDecoration;->bounds(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Z)Landroid/graphics/Rect;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_2
    return-void
.end method
