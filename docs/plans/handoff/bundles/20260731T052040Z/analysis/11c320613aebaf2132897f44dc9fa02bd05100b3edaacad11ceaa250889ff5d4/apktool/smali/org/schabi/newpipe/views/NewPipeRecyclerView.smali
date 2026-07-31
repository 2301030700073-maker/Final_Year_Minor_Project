.class public Lorg/schabi/newpipe/views/NewPipeRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public allowDpadScroll:Z

.field public final focusRect:Landroid/graphics/Rect;

.field public final tempFocus:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

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
    iput-object p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->focusRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    new-instance p1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->allowDpadScroll:Z

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 22
    .line 23
    .line 24
    const/high16 p1, 0x40000

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->focusRect:Landroid/graphics/Rect;

    .line 32
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->allowDpadScroll:Z

    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    const/high16 p1, 0x40000

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->focusRect:Landroid/graphics/Rect;

    .line 38
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->allowDpadScroll:Z

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    const/high16 p1, 0x40000

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method


# virtual methods
.method public final dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->tempFocus:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->focusRect:Landroid/graphics/Rect;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 34
    .line 35
    .line 36
    return v3

    .line 37
    :cond_2
    :goto_0
    const/16 v4, 0x11

    .line 38
    .line 39
    const/16 v5, 0x82

    .line 40
    .line 41
    const/16 v6, -0x64

    .line 42
    .line 43
    const/4 v7, -0x1

    .line 44
    const/4 v8, 0x0

    .line 45
    if-eq p2, v4, :cond_9

    .line 46
    .line 47
    const/16 v4, 0x21

    .line 48
    .line 49
    if-eq p2, v4, :cond_7

    .line 50
    .line 51
    const/16 v4, 0x42

    .line 52
    .line 53
    const/16 v6, 0x64

    .line 54
    .line 55
    if-eq p2, v4, :cond_5

    .line 56
    .line 57
    if-eq p2, v5, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    invoke-virtual {p0, v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :cond_5
    invoke-virtual {p0, v7}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_6

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_6
    invoke-virtual {p0, v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/View;->canScrollVertically(I)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_8

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_8
    invoke-virtual {p0, v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :cond_9
    invoke-virtual {p0, v7}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_11

    .line 101
    .line 102
    :goto_1
    if-eq p1, p0, :cond_a

    .line 103
    .line 104
    if-ne p2, v5, :cond_a

    .line 105
    .line 106
    iget-boolean v4, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->allowDpadScroll:Z

    .line 107
    .line 108
    if-nez v4, :cond_a

    .line 109
    .line 110
    const-string p0, "NewPipeRecyclerView"

    .line 111
    .line 112
    const-string p1, "Consuming downward scroll: content load in progress"

    .line 113
    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    return v3

    .line 118
    :cond_a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    .line 120
    const/16 v5, 0x1c

    .line 121
    .line 122
    if-lt v4, v5, :cond_b

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Landroid/view/ViewGroup;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, p0, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v5, v0, p2}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    if-eqz v6, :cond_d

    .line 146
    .line 147
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    if-nez v7, :cond_c

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_c
    invoke-virtual {v6, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_d
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Landroid/view/ViewGroup;

    .line 163
    .line 164
    :goto_3
    if-eq v6, v5, :cond_f

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, p0, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v6, v0, p2}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    if-eqz v7, :cond_e

    .line 177
    .line 178
    invoke-virtual {v7, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_e

    .line 183
    .line 184
    :goto_4
    return v3

    .line 185
    :cond_e
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    check-cast v6, Landroid/view/ViewGroup;

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_f
    :goto_5
    if-eqz v2, :cond_10

    .line 193
    .line 194
    invoke-virtual {v2, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 195
    .line 196
    .line 197
    return v3

    .line 198
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    return p0

    .line 203
    :cond_11
    invoke-virtual {p0, v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 204
    .line 205
    .line 206
    :goto_6
    return v3
.end method

.method public final focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final removeDetachedView(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setFocusScrollAllowed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/views/NewPipeRecyclerView;->allowDpadScroll:Z

    .line 2
    .line 3
    return-void
.end method
