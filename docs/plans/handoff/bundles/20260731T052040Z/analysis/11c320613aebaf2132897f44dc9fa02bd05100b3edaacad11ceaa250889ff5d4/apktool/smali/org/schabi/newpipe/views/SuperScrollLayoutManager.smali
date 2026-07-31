.class public final Lorg/schabi/newpipe/views/SuperScrollLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final focusables:Ljava/util/ArrayList;

.field public final handy:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->handy:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->focusables:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onInterceptFocusSearch(ILandroid/view/View;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    const/4 v2, -0x1

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eq p1, v3, :cond_2

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq p1, v4, :cond_7

    .line 15
    .line 16
    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 17
    .line 18
    iget-boolean v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 19
    .line 20
    if-nez v4, :cond_4

    .line 21
    .line 22
    const/16 v4, 0x11

    .line 23
    .line 24
    if-eq p1, v4, :cond_3

    .line 25
    .line 26
    const/16 v4, 0x42

    .line 27
    .line 28
    if-eq p1, v4, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-eqz v5, :cond_7

    .line 32
    .line 33
    :cond_2
    :goto_0
    move v3, v2

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    if-eqz v5, :cond_2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_4
    const/16 v4, 0x21

    .line 39
    .line 40
    if-eq p1, v4, :cond_6

    .line 41
    .line 42
    const/16 v4, 0x82

    .line 43
    .line 44
    if-eq p1, v4, :cond_5

    .line 45
    .line 46
    :goto_1
    const/4 v3, 0x0

    .line 47
    goto :goto_2

    .line 48
    :cond_5
    if-eqz v5, :cond_7

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_6
    if-eqz v5, :cond_2

    .line 52
    .line 53
    :cond_7
    :goto_2
    if-nez v3, :cond_8

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_9

    .line 67
    .line 68
    if-gez v3, :cond_9

    .line 69
    .line 70
    :goto_3
    return-object v1

    .line 71
    :cond_9
    iget-object v6, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->focusables:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    invoke-virtual {v4, v6, p1, v7}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const v7, 0x7fffffff

    .line 88
    .line 89
    .line 90
    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_f

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Landroid/view/View;

    .line 101
    .line 102
    if-eq v8, p2, :cond_a

    .line 103
    .line 104
    if-ne v8, v4, :cond_b

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_b
    if-ne v8, v0, :cond_c

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_c
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    if-nez v9, :cond_d

    .line 115
    .line 116
    move v9, v2

    .line 117
    goto :goto_5

    .line 118
    :cond_d
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 119
    .line 120
    .line 121
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    sub-int/2addr v9, v5

    .line 123
    mul-int/2addr v9, v3

    .line 124
    :goto_5
    if-gez v9, :cond_e

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_e
    if-ge v9, v7, :cond_a

    .line 128
    .line 129
    move-object v1, v8

    .line 130
    move v7, v9

    .line 131
    goto :goto_4

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    goto :goto_6

    .line 134
    :cond_f
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 139
    .line 140
    .line 141
    throw p0
.end method

.method public final requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p5, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-ne v0, p2, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/views/SuperScrollLayoutManager;->handy:Landroid/graphics/Rect;

    .line 16
    .line 17
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, p4}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method
