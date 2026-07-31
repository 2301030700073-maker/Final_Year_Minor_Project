.class public final Landroidx/compose/ui/window/DialogLayout$1;
.super Landroidx/glance/appwidget/protobuf/CodedInputStream;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/ui/window/DialogLayout$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroid/view/ViewGroup;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 1
    iget p2, p0, Landroidx/compose/ui/window/DialogLayout$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroid/view/ViewGroup;

    .line 4
    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insetToLayoutPosition(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    check-cast p0, Landroidx/compose/ui/window/DialogLayout;

    .line 16
    .line 17
    iget-boolean p2, p0, Landroidx/compose/ui/window/DialogLayout;->decorFitsSystemWindows:Z

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sub-int/2addr v3, v4

    .line 52
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sub-int/2addr p0, v0

    .line 65
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-nez v1, :cond_1

    .line 70
    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    if-nez v3, :cond_1

    .line 74
    .line 75
    if-nez p0, :cond_1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 79
    .line 80
    invoke-virtual {p1, v1, v2, v3, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_0
    return-object p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/cardview/widget/CardView$1;)Landroidx/cardview/widget/CardView$1;
    .locals 13

    .line 1
    iget p1, p0, Landroidx/compose/ui/window/DialogLayout$1;->$r8$classId:I

    .line 2
    .line 3
    const/16 v0, 0x19

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroid/view/ViewGroup;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 22
    .line 23
    iget-boolean p1, p1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {v2, v3}, Landroidx/work/Operation$State;->round-k-4lQ0M(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    const/16 p1, 0x20

    .line 40
    .line 41
    shr-long v4, v2, p1

    .line 42
    .line 43
    long-to-int v4, v4

    .line 44
    if-gez v4, :cond_1

    .line 45
    .line 46
    move v4, v1

    .line 47
    :cond_1
    const-wide v5, 0xffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    and-long/2addr v2, v5

    .line 53
    long-to-int v2, v2

    .line 54
    if-gez v2, :cond_2

    .line 55
    .line 56
    move v2, v1

    .line 57
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/layout/RulerKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    shr-long v9, v7, p1

    .line 66
    .line 67
    long-to-int v3, v9

    .line 68
    and-long/2addr v7, v5

    .line 69
    long-to-int v7, v7

    .line 70
    iget-wide v8, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    .line 71
    .line 72
    shr-long v10, v8, p1

    .line 73
    .line 74
    long-to-int v10, v10

    .line 75
    and-long/2addr v8, v5

    .line 76
    long-to-int v8, v8

    .line 77
    int-to-float v9, v10

    .line 78
    int-to-float v8, v8

    .line 79
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    int-to-long v9, v9

    .line 84
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    int-to-long v11, v8

    .line 89
    shl-long v8, v9, p1

    .line 90
    .line 91
    and-long/2addr v11, v5

    .line 92
    or-long/2addr v8, v11

    .line 93
    invoke-virtual {p0, v8, v9}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v8

    .line 97
    invoke-static {v8, v9}, Landroidx/work/Operation$State;->round-k-4lQ0M(J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v8

    .line 101
    shr-long p0, v8, p1

    .line 102
    .line 103
    long-to-int p0, p0

    .line 104
    sub-int/2addr v3, p0

    .line 105
    if-gez v3, :cond_3

    .line 106
    .line 107
    move v3, v1

    .line 108
    :cond_3
    and-long p0, v8, v5

    .line 109
    .line 110
    long-to-int p0, p0

    .line 111
    sub-int/2addr v7, p0

    .line 112
    if-gez v7, :cond_4

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    move v1, v7

    .line 116
    :goto_0
    if-nez v4, :cond_5

    .line 117
    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    if-nez v3, :cond_5

    .line 121
    .line 122
    if-nez v1, :cond_5

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    new-instance p0, Landroidx/cardview/widget/CardView$1;

    .line 126
    .line 127
    iget-object p1, p2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p1, Landroidx/core/graphics/Insets;

    .line 130
    .line 131
    invoke-static {p1, v4, v2, v3, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->inset(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object p2, p2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p2, Landroidx/core/graphics/Insets;

    .line 138
    .line 139
    invoke-static {p2, v4, v2, v3, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->inset(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-direct {p0, v0, p1, p2}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    move-object p2, p0

    .line 147
    :goto_1
    return-object p2

    .line 148
    :pswitch_0
    check-cast p0, Landroidx/compose/ui/window/DialogLayout;

    .line 149
    .line 150
    iget-boolean p1, p0, Landroidx/compose/ui/window/DialogLayout;->decorFitsSystemWindows:Z

    .line 151
    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    sub-int/2addr v4, v5

    .line 184
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    sub-int/2addr p0, p1

    .line 197
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    if-nez v2, :cond_7

    .line 202
    .line 203
    if-nez v3, :cond_7

    .line 204
    .line 205
    if-nez v4, :cond_7

    .line 206
    .line 207
    if-nez p0, :cond_7

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_7
    invoke-static {v2, v3, v4, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    iget p1, p0, Landroidx/core/graphics/Insets;->left:I

    .line 215
    .line 216
    new-instance v1, Landroidx/cardview/widget/CardView$1;

    .line 217
    .line 218
    iget-object v2, p2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v2, Landroidx/core/graphics/Insets;

    .line 221
    .line 222
    iget v3, p0, Landroidx/core/graphics/Insets;->top:I

    .line 223
    .line 224
    iget v4, p0, Landroidx/core/graphics/Insets;->right:I

    .line 225
    .line 226
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    .line 227
    .line 228
    invoke-static {v2, p1, v3, v4, p0}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    iget-object p2, p2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p2, Landroidx/core/graphics/Insets;

    .line 235
    .line 236
    invoke-static {p2, p1, v3, v4, p0}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-direct {v1, v0, v2, p0}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    move-object p2, v1

    .line 244
    :goto_2
    return-object p2

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
