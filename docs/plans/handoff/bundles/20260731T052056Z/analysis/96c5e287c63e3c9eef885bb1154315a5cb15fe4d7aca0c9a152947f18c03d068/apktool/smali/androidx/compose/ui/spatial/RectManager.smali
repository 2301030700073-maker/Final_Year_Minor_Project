.class public final Landroidx/compose/ui/spatial/RectManager;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final cachedRect:Lcom/caverock/androidsvg/SVG$Box;

.field public final callbacks:Landroidx/collection/MutableObjectList;

.field public final dispatchLambda:Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

.field public dispatchToken:Lorg/wikipedia/views/ViewAnimations$$ExternalSyntheticLambda0;

.field public final executeDelayed:Landroidx/compose/ui/platform/AndroidComposeView;

.field public isDirty:Z

.field public isFragmented:Z

.field public isScreenOrWindowDirty:Z

.field public final rects:Lokhttp3/internal/http/StatusLine;

.field public scheduledDispatchDeadline:J

.field public final throttledCallbacks:Landroidx/compose/ui/spatial/ThrottledCallbacks;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->executeDelayed:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    new-instance p1, Lokhttp3/internal/http/StatusLine;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lokhttp3/internal/http/StatusLine;-><init>(IZ)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0xc0

    .line 15
    .line 16
    new-array v1, v0, [J

    .line 17
    .line 18
    iput-object v1, p1, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 19
    .line 20
    new-array v0, v0, [J

    .line 21
    .line 22
    iput-object v0, p1, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->rects:Lokhttp3/internal/http/StatusLine;

    .line 25
    .line 26
    new-instance p1, Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 27
    .line 28
    invoke-direct {p1}, Landroidx/compose/ui/spatial/ThrottledCallbacks;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->throttledCallbacks:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 32
    .line 33
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 34
    .line 35
    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->callbacks:Landroidx/collection/MutableObjectList;

    .line 39
    .line 40
    const-wide/16 v0, -0x1

    .line 41
    .line 42
    iput-wide v0, p0, Landroidx/compose/ui/spatial/RectManager;->scheduledDispatchDeadline:J

    .line 43
    .line 44
    new-instance p1, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 45
    .line 46
    const/16 v0, 0xc

    .line 47
    .line 48
    invoke-direct {p1, v0, p0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->dispatchLambda:Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 52
    .line 53
    new-instance p1, Lcom/caverock/androidsvg/SVG$Box;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/caverock/androidsvg/SVG$Box;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Landroidx/compose/ui/spatial/RectManager;->cachedRect:Lcom/caverock/androidsvg/SVG$Box;

    .line 59
    .line 60
    return-void
.end method

.method public static hasPositionalLayerTransformations(Landroidx/compose/ui/node/NodeCoordinator;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->isIdentity-58bKbWc([F)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static outerToInnerOffset-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Landroidx/compose/ui/spatial/RectManager;->hasPositionalLayerTransformations(Landroidx/compose/ui/node/NodeCoordinator;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const-wide v0, 0x7fffffff7fffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    return-wide v0

    .line 29
    :cond_0
    iget-wide v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    .line 30
    .line 31
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-wide v1
.end method

.method public static resetHasPositionalLayerTransformationsForSubtreeIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->hasPositionalLayerTransformationsInOffsetFromRoot:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/spatial/RectManager;->hasPositionalLayerTransformations(Landroidx/compose/ui/node/NodeCoordinator;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->hasPositionalLayerTransformationsInOffsetFromRoot:Z

    .line 19
    .line 20
    iget-boolean v1, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/compose/ui/spatial/RectManager;->outerToInnerOffset-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffset:J

    .line 29
    .line 30
    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    .line 31
    .line 32
    :cond_0
    iget-wide v1, p0, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffset:J

    .line 33
    .line 34
    const-wide v3, 0x7fffffff7fffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object v1, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 50
    .line 51
    iget p0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 52
    .line 53
    :goto_0
    if-ge v0, p0, :cond_1

    .line 54
    .line 55
    aget-object v2, v1, v0

    .line 56
    .line 57
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 58
    .line 59
    invoke-static {v2}, Landroidx/compose/ui/spatial/RectManager;->resetHasPositionalLayerTransformationsForSubtreeIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public final dispatchCallbacks()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->dispatchToken:Lorg/wikipedia/views/ViewAnimations$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v1, v3

    .line 16
    :goto_0
    if-nez v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/spatial/RectManager;->executeDelayed:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    :goto_1
    iput-object v3, v0, Landroidx/compose/ui/spatial/RectManager;->dispatchToken:Lorg/wikipedia/views/ViewAnimations$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v11

    .line 30
    iget-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->isDirty:Z

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-nez v1, :cond_4

    .line 35
    .line 36
    iget-boolean v4, v0, Landroidx/compose/ui/spatial/RectManager;->isScreenOrWindowDirty:Z

    .line 37
    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    move v13, v3

    .line 42
    goto :goto_3

    .line 43
    :cond_4
    :goto_2
    move v13, v2

    .line 44
    :goto_3
    iget-object v4, v0, Landroidx/compose/ui/spatial/RectManager;->rects:Lokhttp3/internal/http/StatusLine;

    .line 45
    .line 46
    iget-object v5, v0, Landroidx/compose/ui/spatial/RectManager;->throttledCallbacks:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 47
    .line 48
    if-eqz v1, :cond_b

    .line 49
    .line 50
    iput-boolean v3, v0, Landroidx/compose/ui/spatial/RectManager;->isDirty:Z

    .line 51
    .line 52
    iget-object v1, v0, Landroidx/compose/ui/spatial/RectManager;->callbacks:Landroidx/collection/MutableObjectList;

    .line 53
    .line 54
    iget-object v6, v1, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 55
    .line 56
    iget v1, v1, Landroidx/collection/MutableObjectList;->_size:I

    .line 57
    .line 58
    move v7, v3

    .line 59
    :goto_4
    if-ge v7, v1, :cond_5

    .line 60
    .line 61
    aget-object v8, v6, v7

    .line 62
    .line 63
    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 64
    .line 65
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_5
    iget-object v1, v4, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, [J

    .line 74
    .line 75
    iget v6, v4, Lokhttp3/internal/http/StatusLine;->code:I

    .line 76
    .line 77
    move v7, v3

    .line 78
    :goto_5
    array-length v8, v1

    .line 79
    add-int/lit8 v8, v8, -0x2

    .line 80
    .line 81
    if-ge v7, v8, :cond_a

    .line 82
    .line 83
    if-ge v7, v6, :cond_a

    .line 84
    .line 85
    add-int/lit8 v8, v7, 0x2

    .line 86
    .line 87
    aget-wide v8, v1, v8

    .line 88
    .line 89
    const/16 v10, 0x3c

    .line 90
    .line 91
    const-wide/16 v16, 0x0

    .line 92
    .line 93
    shr-long v14, v8, v10

    .line 94
    .line 95
    long-to-int v10, v14

    .line 96
    and-int/2addr v10, v2

    .line 97
    if-eqz v10, :cond_9

    .line 98
    .line 99
    aget-wide v14, v1, v7

    .line 100
    .line 101
    add-int/lit8 v10, v7, 0x1

    .line 102
    .line 103
    aget-wide v2, v1, v10

    .line 104
    .line 105
    long-to-int v8, v8

    .line 106
    const v9, 0x1ffffff

    .line 107
    .line 108
    .line 109
    and-int/2addr v8, v9

    .line 110
    iget-object v9, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .line 111
    .line 112
    invoke-virtual {v9, v8}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 117
    .line 118
    :goto_6
    if-eqz v8, :cond_9

    .line 119
    .line 120
    iget-object v9, v8, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->next:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 121
    .line 122
    move v10, v6

    .line 123
    move/from16 v29, v7

    .line 124
    .line 125
    iget-wide v6, v8, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->lastInvokeMillis:J

    .line 126
    .line 127
    sub-long v18, v11, v6

    .line 128
    .line 129
    cmp-long v18, v18, v16

    .line 130
    .line 131
    if-gez v18, :cond_7

    .line 132
    .line 133
    const-wide/high16 v18, -0x8000000000000000L

    .line 134
    .line 135
    cmp-long v6, v6, v18

    .line 136
    .line 137
    if-nez v6, :cond_6

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_6
    const/4 v6, 0x0

    .line 141
    goto :goto_8

    .line 142
    :cond_7
    :goto_7
    const/4 v6, 0x1

    .line 143
    :goto_8
    iput-wide v14, v8, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->topLeft:J

    .line 144
    .line 145
    iput-wide v2, v8, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->bottomRight:J

    .line 146
    .line 147
    if-eqz v6, :cond_8

    .line 148
    .line 149
    iput-wide v11, v8, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->lastInvokeMillis:J

    .line 150
    .line 151
    iget-wide v6, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    .line 152
    .line 153
    move-object/from16 v30, v1

    .line 154
    .line 155
    move-wide/from16 v21, v2

    .line 156
    .line 157
    iget-wide v1, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    .line 158
    .line 159
    iget-object v3, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    .line 160
    .line 161
    move-wide/from16 v25, v1

    .line 162
    .line 163
    move-object/from16 v27, v3

    .line 164
    .line 165
    move-wide/from16 v23, v6

    .line 166
    .line 167
    move-object/from16 v18, v8

    .line 168
    .line 169
    move-wide/from16 v19, v14

    .line 170
    .line 171
    invoke-virtual/range {v18 .. v27}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->fire-9b-9wPM(JJJJ[F)V

    .line 172
    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_8
    move-object/from16 v30, v1

    .line 176
    .line 177
    move-wide/from16 v21, v2

    .line 178
    .line 179
    move-wide/from16 v19, v14

    .line 180
    .line 181
    :goto_9
    move-object v8, v9

    .line 182
    move v6, v10

    .line 183
    move-wide/from16 v14, v19

    .line 184
    .line 185
    move-wide/from16 v2, v21

    .line 186
    .line 187
    move/from16 v7, v29

    .line 188
    .line 189
    move-object/from16 v1, v30

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_9
    move-object/from16 v30, v1

    .line 193
    .line 194
    move v10, v6

    .line 195
    move/from16 v29, v7

    .line 196
    .line 197
    add-int/lit8 v7, v29, 0x3

    .line 198
    .line 199
    move v6, v10

    .line 200
    move-object/from16 v1, v30

    .line 201
    .line 202
    const/4 v2, 0x1

    .line 203
    const/4 v3, 0x0

    .line 204
    goto :goto_5

    .line 205
    :cond_a
    const-wide/16 v16, 0x0

    .line 206
    .line 207
    iget-object v1, v4, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v1, [J

    .line 210
    .line 211
    iget v2, v4, Lokhttp3/internal/http/StatusLine;->code:I

    .line 212
    .line 213
    const/4 v3, 0x0

    .line 214
    :goto_a
    array-length v6, v1

    .line 215
    add-int/lit8 v6, v6, -0x2

    .line 216
    .line 217
    if-ge v3, v6, :cond_c

    .line 218
    .line 219
    if-ge v3, v2, :cond_c

    .line 220
    .line 221
    add-int/lit8 v6, v3, 0x2

    .line 222
    .line 223
    aget-wide v7, v1, v6

    .line 224
    .line 225
    const-wide v9, -0x1000000000000001L    # -3.1050361846014175E231

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    and-long/2addr v7, v9

    .line 231
    aput-wide v7, v1, v6

    .line 232
    .line 233
    add-int/lit8 v3, v3, 0x3

    .line 234
    .line 235
    goto :goto_a

    .line 236
    :cond_b
    const-wide/16 v16, 0x0

    .line 237
    .line 238
    :cond_c
    iget-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->isScreenOrWindowDirty:Z

    .line 239
    .line 240
    const/16 v18, 0x7

    .line 241
    .line 242
    const/16 v6, 0x8

    .line 243
    .line 244
    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    if-eqz v1, :cond_11

    .line 250
    .line 251
    const/4 v1, 0x0

    .line 252
    iput-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->isScreenOrWindowDirty:Z

    .line 253
    .line 254
    move v1, v6

    .line 255
    iget-wide v6, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    .line 256
    .line 257
    iget-wide v8, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    .line 258
    .line 259
    iget-object v10, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    .line 260
    .line 261
    move/from16 v21, v1

    .line 262
    .line 263
    iget-object v1, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .line 264
    .line 265
    const-wide/16 v22, 0x80

    .line 266
    .line 267
    iget-object v2, v1, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 268
    .line 269
    iget-object v1, v1, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 270
    .line 271
    array-length v3, v1

    .line 272
    add-int/lit8 v3, v3, -0x2

    .line 273
    .line 274
    if-ltz v3, :cond_10

    .line 275
    .line 276
    move-object v15, v4

    .line 277
    move-object/from16 v26, v5

    .line 278
    .line 279
    const/4 v14, 0x0

    .line 280
    const-wide/16 v24, 0xff

    .line 281
    .line 282
    :goto_b
    aget-wide v4, v1, v14

    .line 283
    .line 284
    move-object/from16 v28, v1

    .line 285
    .line 286
    move-object/from16 v27, v2

    .line 287
    .line 288
    not-long v1, v4

    .line 289
    shl-long v1, v1, v18

    .line 290
    .line 291
    and-long/2addr v1, v4

    .line 292
    and-long v1, v1, v19

    .line 293
    .line 294
    cmp-long v1, v1, v19

    .line 295
    .line 296
    if-eqz v1, :cond_f

    .line 297
    .line 298
    sub-int v1, v14, v3

    .line 299
    .line 300
    not-int v1, v1

    .line 301
    ushr-int/lit8 v1, v1, 0x1f

    .line 302
    .line 303
    rsub-int/lit8 v1, v1, 0x8

    .line 304
    .line 305
    move-wide/from16 v29, v4

    .line 306
    .line 307
    const/4 v2, 0x0

    .line 308
    :goto_c
    if-ge v2, v1, :cond_e

    .line 309
    .line 310
    and-long v4, v29, v24

    .line 311
    .line 312
    cmp-long v4, v4, v22

    .line 313
    .line 314
    if-gez v4, :cond_d

    .line 315
    .line 316
    shl-int/lit8 v4, v14, 0x3

    .line 317
    .line 318
    add-int/2addr v4, v2

    .line 319
    aget-object v4, v27, v4

    .line 320
    .line 321
    check-cast v4, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 322
    .line 323
    move-object v5, v4

    .line 324
    :goto_d
    if-eqz v5, :cond_d

    .line 325
    .line 326
    move-object/from16 v31, v15

    .line 327
    .line 328
    move/from16 v15, v21

    .line 329
    .line 330
    move-object/from16 v4, v26

    .line 331
    .line 332
    invoke-virtual/range {v4 .. v12}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->fire-WY9HvpM(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V

    .line 333
    .line 334
    .line 335
    iget-object v5, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->next:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 336
    .line 337
    move-object/from16 v15, v31

    .line 338
    .line 339
    goto :goto_d

    .line 340
    :cond_d
    move-object/from16 v31, v15

    .line 341
    .line 342
    move/from16 v15, v21

    .line 343
    .line 344
    move-object/from16 v4, v26

    .line 345
    .line 346
    shr-long v29, v29, v15

    .line 347
    .line 348
    add-int/lit8 v2, v2, 0x1

    .line 349
    .line 350
    move-object/from16 v26, v4

    .line 351
    .line 352
    move/from16 v21, v15

    .line 353
    .line 354
    move-object/from16 v15, v31

    .line 355
    .line 356
    goto :goto_c

    .line 357
    :cond_e
    move-object/from16 v31, v15

    .line 358
    .line 359
    move/from16 v15, v21

    .line 360
    .line 361
    move-object/from16 v4, v26

    .line 362
    .line 363
    if-ne v1, v15, :cond_12

    .line 364
    .line 365
    goto :goto_e

    .line 366
    :cond_f
    move-object/from16 v31, v15

    .line 367
    .line 368
    move/from16 v15, v21

    .line 369
    .line 370
    move-object/from16 v4, v26

    .line 371
    .line 372
    :goto_e
    if-eq v14, v3, :cond_12

    .line 373
    .line 374
    add-int/lit8 v14, v14, 0x1

    .line 375
    .line 376
    move-object/from16 v26, v4

    .line 377
    .line 378
    move/from16 v21, v15

    .line 379
    .line 380
    move-object/from16 v2, v27

    .line 381
    .line 382
    move-object/from16 v1, v28

    .line 383
    .line 384
    move-object/from16 v15, v31

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_10
    move-object/from16 v31, v4

    .line 388
    .line 389
    move-object v4, v5

    .line 390
    move/from16 v15, v21

    .line 391
    .line 392
    goto :goto_f

    .line 393
    :cond_11
    move-object/from16 v31, v4

    .line 394
    .line 395
    move-object v4, v5

    .line 396
    move v15, v6

    .line 397
    const-wide/16 v22, 0x80

    .line 398
    .line 399
    :goto_f
    const-wide/16 v24, 0xff

    .line 400
    .line 401
    :cond_12
    if-eqz v13, :cond_13

    .line 402
    .line 403
    iget-wide v6, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks;->windowOffset:J

    .line 404
    .line 405
    iget-wide v8, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks;->screenOffset:J

    .line 406
    .line 407
    iget-object v10, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks;->viewToWindowMatrix:[F

    .line 408
    .line 409
    iget-object v1, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 410
    .line 411
    if-eqz v1, :cond_13

    .line 412
    .line 413
    move-object v5, v1

    .line 414
    :goto_10
    if-eqz v5, :cond_13

    .line 415
    .line 416
    iget-object v1, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->node:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    .line 417
    .line 418
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 427
    .line 428
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-virtual {v2, v1}, Landroidx/compose/ui/spatial/RectManager;->getOffsetFromRectListFor-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J

    .line 433
    .line 434
    .line 435
    move-result-wide v2

    .line 436
    iput-wide v2, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->topLeft:J

    .line 437
    .line 438
    const/16 v21, 0x20

    .line 439
    .line 440
    shr-long v13, v2, v21

    .line 441
    .line 442
    long-to-int v13, v13

    .line 443
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 444
    .line 445
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 446
    .line 447
    iget v14, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    .line 448
    .line 449
    add-int/2addr v14, v13

    .line 450
    const-wide v26, 0xffffffffL

    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    and-long v2, v2, v26

    .line 456
    .line 457
    long-to-int v2, v2

    .line 458
    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->height:I

    .line 459
    .line 460
    add-int/2addr v1, v2

    .line 461
    int-to-long v2, v14

    .line 462
    shl-long v2, v2, v21

    .line 463
    .line 464
    int-to-long v13, v1

    .line 465
    and-long v13, v13, v26

    .line 466
    .line 467
    or-long/2addr v2, v13

    .line 468
    iput-wide v2, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->bottomRight:J

    .line 469
    .line 470
    invoke-virtual/range {v4 .. v12}, Landroidx/compose/ui/spatial/ThrottledCallbacks;->fire-WY9HvpM(Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;JJ[FJ)V

    .line 471
    .line 472
    .line 473
    iget-object v5, v5, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->next:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 474
    .line 475
    goto :goto_10

    .line 476
    :cond_13
    iget-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->isFragmented:Z

    .line 477
    .line 478
    if-eqz v1, :cond_16

    .line 479
    .line 480
    const/4 v1, 0x0

    .line 481
    iput-boolean v1, v0, Landroidx/compose/ui/spatial/RectManager;->isFragmented:Z

    .line 482
    .line 483
    move-object/from16 v2, v31

    .line 484
    .line 485
    iget-object v3, v2, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v3, [J

    .line 488
    .line 489
    iget v5, v2, Lokhttp3/internal/http/StatusLine;->code:I

    .line 490
    .line 491
    iget-object v6, v2, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v6, [J

    .line 494
    .line 495
    move v7, v1

    .line 496
    move v8, v7

    .line 497
    :goto_11
    array-length v9, v3

    .line 498
    add-int/lit8 v9, v9, -0x2

    .line 499
    .line 500
    if-ge v7, v9, :cond_15

    .line 501
    .line 502
    array-length v9, v6

    .line 503
    add-int/lit8 v9, v9, -0x2

    .line 504
    .line 505
    if-ge v8, v9, :cond_15

    .line 506
    .line 507
    if-ge v7, v5, :cond_15

    .line 508
    .line 509
    add-int/lit8 v9, v7, 0x2

    .line 510
    .line 511
    aget-wide v13, v3, v9

    .line 512
    .line 513
    sget-wide v26, Landroidx/compose/ui/spatial/RectListKt;->TombStone:J

    .line 514
    .line 515
    cmp-long v10, v13, v26

    .line 516
    .line 517
    if-eqz v10, :cond_14

    .line 518
    .line 519
    aget-wide v13, v3, v7

    .line 520
    .line 521
    aput-wide v13, v6, v8

    .line 522
    .line 523
    add-int/lit8 v10, v8, 0x1

    .line 524
    .line 525
    add-int/lit8 v13, v7, 0x1

    .line 526
    .line 527
    aget-wide v13, v3, v13

    .line 528
    .line 529
    aput-wide v13, v6, v10

    .line 530
    .line 531
    add-int/lit8 v10, v8, 0x2

    .line 532
    .line 533
    aget-wide v13, v3, v9

    .line 534
    .line 535
    aput-wide v13, v6, v10

    .line 536
    .line 537
    add-int/lit8 v8, v8, 0x3

    .line 538
    .line 539
    :cond_14
    add-int/lit8 v7, v7, 0x3

    .line 540
    .line 541
    goto :goto_11

    .line 542
    :cond_15
    iput v8, v2, Lokhttp3/internal/http/StatusLine;->code:I

    .line 543
    .line 544
    iput-object v6, v2, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 545
    .line 546
    iput-object v3, v2, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/Object;

    .line 547
    .line 548
    goto :goto_12

    .line 549
    :cond_16
    const/4 v1, 0x0

    .line 550
    :goto_12
    iget-wide v2, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    .line 551
    .line 552
    cmp-long v5, v2, v11

    .line 553
    .line 554
    if-lez v5, :cond_17

    .line 555
    .line 556
    goto :goto_17

    .line 557
    :cond_17
    iget-object v2, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .line 558
    .line 559
    iget-object v3, v2, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 560
    .line 561
    iget-object v2, v2, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 562
    .line 563
    array-length v5, v2

    .line 564
    add-int/lit8 v5, v5, -0x2

    .line 565
    .line 566
    if-ltz v5, :cond_1b

    .line 567
    .line 568
    move v6, v1

    .line 569
    :goto_13
    aget-wide v7, v2, v6

    .line 570
    .line 571
    not-long v9, v7

    .line 572
    shl-long v9, v9, v18

    .line 573
    .line 574
    and-long/2addr v9, v7

    .line 575
    and-long v9, v9, v19

    .line 576
    .line 577
    cmp-long v9, v9, v19

    .line 578
    .line 579
    if-eqz v9, :cond_1a

    .line 580
    .line 581
    sub-int v9, v6, v5

    .line 582
    .line 583
    not-int v9, v9

    .line 584
    ushr-int/lit8 v9, v9, 0x1f

    .line 585
    .line 586
    rsub-int/lit8 v9, v9, 0x8

    .line 587
    .line 588
    move-wide v10, v7

    .line 589
    move v7, v1

    .line 590
    :goto_14
    if-ge v7, v9, :cond_19

    .line 591
    .line 592
    and-long v12, v10, v24

    .line 593
    .line 594
    cmp-long v8, v12, v22

    .line 595
    .line 596
    if-gez v8, :cond_18

    .line 597
    .line 598
    shl-int/lit8 v8, v6, 0x3

    .line 599
    .line 600
    add-int/2addr v8, v7

    .line 601
    aget-object v8, v3, v8

    .line 602
    .line 603
    check-cast v8, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 604
    .line 605
    :goto_15
    if-eqz v8, :cond_18

    .line 606
    .line 607
    iget-object v8, v8, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->next:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 608
    .line 609
    goto :goto_15

    .line 610
    :cond_18
    shr-long/2addr v10, v15

    .line 611
    add-int/lit8 v7, v7, 0x1

    .line 612
    .line 613
    goto :goto_14

    .line 614
    :cond_19
    if-ne v9, v15, :cond_1b

    .line 615
    .line 616
    :cond_1a
    if-eq v6, v5, :cond_1b

    .line 617
    .line 618
    add-int/lit8 v6, v6, 0x1

    .line 619
    .line 620
    goto :goto_13

    .line 621
    :cond_1b
    iget-object v1, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks;->globalChangeEntries:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 622
    .line 623
    if-eqz v1, :cond_1c

    .line 624
    .line 625
    :goto_16
    if-eqz v1, :cond_1c

    .line 626
    .line 627
    iget-object v1, v1, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->next:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 628
    .line 629
    goto :goto_16

    .line 630
    :cond_1c
    const-wide/16 v2, -0x1

    .line 631
    .line 632
    iput-wide v2, v4, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    .line 633
    .line 634
    :goto_17
    cmp-long v1, v2, v16

    .line 635
    .line 636
    if-lez v1, :cond_1d

    .line 637
    .line 638
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->scheduleDebounceCallback()V

    .line 639
    .line 640
    .line 641
    :cond_1d
    return-void
.end method

.method public final getOffsetFromRectListFor-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J
    .locals 8

    .line 1
    iget p1, p1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 2
    .line 3
    const v0, 0x1ffffff

    .line 4
    .line 5
    .line 6
    and-int/2addr p1, v0

    .line 7
    iget-object p0, p0, Landroidx/compose/ui/spatial/RectManager;->rects:Lokhttp3/internal/http/StatusLine;

    .line 8
    .line 9
    iget-object v1, p0, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, [J

    .line 12
    .line 13
    iget p0, p0, Lokhttp3/internal/http/StatusLine;->code:I

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    array-length v3, v1

    .line 17
    add-int/lit8 v3, v3, -0x2

    .line 18
    .line 19
    const-wide v4, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    .line 26
    if-ge v2, p0, :cond_1

    .line 27
    .line 28
    add-int/lit8 v3, v2, 0x2

    .line 29
    .line 30
    aget-wide v6, v1, v3

    .line 31
    .line 32
    long-to-int v3, v6

    .line 33
    and-int/2addr v3, v0

    .line 34
    if-ne v3, p1, :cond_0

    .line 35
    .line 36
    aget-wide p0, v1, v2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-wide p0, v4

    .line 43
    :goto_1
    cmp-long v0, p0, v4

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const-wide p0, 0x7fffffff7fffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    return-wide p0

    .line 53
    :cond_2
    const/16 v0, 0x20

    .line 54
    .line 55
    shr-long v1, p0, v0

    .line 56
    .line 57
    long-to-int v1, v1

    .line 58
    long-to-int p0, p0

    .line 59
    int-to-long v1, v1

    .line 60
    shl-long v0, v1, v0

    .line 61
    .line 62
    int-to-long p0, p0

    .line 63
    const-wide v2, 0xffffffffL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    and-long/2addr p0, v2

    .line 69
    or-long/2addr p0, v0

    .line 70
    return-wide p0
.end method

.method public final insertOrUpdateTransformedNodeSubhierarchy(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->hasPositionalLayerTransformationsInOffsetFromRoot:Z

    .line 7
    .line 8
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 9
    .line 10
    iget-object v4, v3, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v4, Landroidx/compose/ui/node/NodeCoordinator;

    .line 13
    .line 14
    iget-object v5, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 15
    .line 16
    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 17
    .line 18
    invoke-virtual {v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    invoke-virtual {v5}, Landroidx/compose/ui/node/MeasurePassDelegate;->getMeasuredHeight()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    int-to-float v6, v6

    .line 27
    int-to-float v5, v5

    .line 28
    iget-object v7, v0, Landroidx/compose/ui/spatial/RectManager;->cachedRect:Lcom/caverock/androidsvg/SVG$Box;

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    iput v8, v7, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 32
    .line 33
    iput v8, v7, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 34
    .line 35
    iput v6, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 36
    .line 37
    iput v5, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 38
    .line 39
    :goto_0
    const-wide v5, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/16 v8, 0x20

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    iget-object v9, v4, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    iget-object v10, v9, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 51
    .line 52
    iget-object v10, v10, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v10, Landroidx/compose/ui/node/NodeCoordinator;

    .line 55
    .line 56
    if-ne v4, v10, :cond_0

    .line 57
    .line 58
    iget-boolean v10, v9, Landroidx/compose/ui/node/LayoutNode;->hasPositionalLayerTransformationsInOffsetFromRoot:Z

    .line 59
    .line 60
    if-nez v10, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v9}, Landroidx/compose/ui/spatial/RectManager;->getOffsetFromRectListFor-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v9

    .line 66
    const-wide v11, 0x7fffffff7fffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-nez v11, :cond_0

    .line 76
    .line 77
    shr-long v11, v9, v8

    .line 78
    .line 79
    long-to-int v4, v11

    .line 80
    int-to-float v4, v4

    .line 81
    and-long/2addr v9, v5

    .line 82
    long-to-int v9, v9

    .line 83
    int-to-float v9, v9

    .line 84
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    int-to-long v10, v4

    .line 89
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    int-to-long v12, v4

    .line 94
    shl-long v9, v10, v8

    .line 95
    .line 96
    and-long/2addr v12, v5

    .line 97
    or-long/2addr v9, v12

    .line 98
    invoke-virtual {v7, v9, v10}, Lcom/caverock/androidsvg/SVG$Box;->translate-k-4lQ0M(J)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_0
    iget-object v9, v4, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 103
    .line 104
    if-eqz v9, :cond_1

    .line 105
    .line 106
    check-cast v9, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 107
    .line 108
    invoke-virtual {v9}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    invoke-static {v9}, Landroidx/compose/ui/graphics/ColorKt;->isIdentity-58bKbWc([F)Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-nez v10, :cond_1

    .line 117
    .line 118
    invoke-static {v9, v7}, Landroidx/compose/ui/graphics/Matrix;->map-impl([FLcom/caverock/androidsvg/SVG$Box;)V

    .line 119
    .line 120
    .line 121
    :cond_1
    iget-wide v9, v4, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    .line 122
    .line 123
    shr-long v11, v9, v8

    .line 124
    .line 125
    long-to-int v11, v11

    .line 126
    int-to-float v11, v11

    .line 127
    and-long/2addr v9, v5

    .line 128
    long-to-int v9, v9

    .line 129
    int-to-float v9, v9

    .line 130
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 131
    .line 132
    .line 133
    move-result v10

    .line 134
    int-to-long v10, v10

    .line 135
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    int-to-long v12, v9

    .line 140
    shl-long v8, v10, v8

    .line 141
    .line 142
    and-long/2addr v5, v12

    .line 143
    or-long/2addr v5, v8

    .line 144
    invoke-virtual {v7, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;->translate-k-4lQ0M(J)V

    .line 145
    .line 146
    .line 147
    iget-object v4, v4, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    :goto_1
    iget v4, v7, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 151
    .line 152
    float-to-int v11, v4

    .line 153
    iget v4, v7, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 154
    .line 155
    float-to-int v12, v4

    .line 156
    iget v4, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 157
    .line 158
    float-to-int v13, v4

    .line 159
    iget v4, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 160
    .line 161
    float-to-int v14, v4

    .line 162
    iget v10, v1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 163
    .line 164
    iget-boolean v4, v1, Landroidx/compose/ui/node/LayoutNode;->addedToRectList:Z

    .line 165
    .line 166
    iput-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->addedToRectList:Z

    .line 167
    .line 168
    iget-object v9, v0, Landroidx/compose/ui/spatial/RectManager;->rects:Lokhttp3/internal/http/StatusLine;

    .line 169
    .line 170
    if-eqz v4, :cond_4

    .line 171
    .line 172
    const v4, 0x1ffffff

    .line 173
    .line 174
    .line 175
    and-int v15, v10, v4

    .line 176
    .line 177
    move/from16 v16, v4

    .line 178
    .line 179
    iget-object v4, v9, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v4, [J

    .line 182
    .line 183
    move-wide/from16 v17, v5

    .line 184
    .line 185
    iget v5, v9, Lokhttp3/internal/http/StatusLine;->code:I

    .line 186
    .line 187
    move/from16 v19, v8

    .line 188
    .line 189
    const/4 v6, 0x0

    .line 190
    :goto_2
    array-length v8, v4

    .line 191
    add-int/lit8 v8, v8, -0x2

    .line 192
    .line 193
    if-ge v6, v8, :cond_4

    .line 194
    .line 195
    if-ge v6, v5, :cond_4

    .line 196
    .line 197
    add-int/lit8 v8, v6, 0x2

    .line 198
    .line 199
    move/from16 v20, v8

    .line 200
    .line 201
    aget-wide v7, v4, v20

    .line 202
    .line 203
    move/from16 v21, v2

    .line 204
    .line 205
    long-to-int v2, v7

    .line 206
    and-int v2, v2, v16

    .line 207
    .line 208
    if-ne v2, v15, :cond_3

    .line 209
    .line 210
    int-to-long v2, v11

    .line 211
    shl-long v2, v2, v19

    .line 212
    .line 213
    int-to-long v9, v12

    .line 214
    and-long v9, v9, v17

    .line 215
    .line 216
    or-long/2addr v2, v9

    .line 217
    aput-wide v2, v4, v6

    .line 218
    .line 219
    add-int/lit8 v6, v6, 0x1

    .line 220
    .line 221
    int-to-long v2, v13

    .line 222
    shl-long v2, v2, v19

    .line 223
    .line 224
    int-to-long v9, v14

    .line 225
    and-long v9, v9, v17

    .line 226
    .line 227
    or-long/2addr v2, v9

    .line 228
    aput-wide v2, v4, v6

    .line 229
    .line 230
    const/16 v2, 0x3f

    .line 231
    .line 232
    shr-long v2, v7, v2

    .line 233
    .line 234
    const-wide/16 v5, 0x1

    .line 235
    .line 236
    and-long/2addr v2, v5

    .line 237
    const/16 v5, 0x3c

    .line 238
    .line 239
    shl-long/2addr v2, v5

    .line 240
    or-long/2addr v2, v7

    .line 241
    aput-wide v2, v4, v20

    .line 242
    .line 243
    :goto_3
    const/4 v2, 0x0

    .line 244
    goto :goto_6

    .line 245
    :cond_3
    add-int/lit8 v6, v6, 0x3

    .line 246
    .line 247
    move/from16 v2, v21

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_4
    move/from16 v21, v2

    .line 251
    .line 252
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    if-eqz v2, :cond_5

    .line 257
    .line 258
    iget v2, v2, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 259
    .line 260
    :goto_4
    move v15, v2

    .line 261
    goto :goto_5

    .line 262
    :cond_5
    const/4 v2, -0x1

    .line 263
    goto :goto_4

    .line 264
    :goto_5
    const/16 v2, 0x400

    .line 265
    .line 266
    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    .line 267
    .line 268
    .line 269
    move-result v16

    .line 270
    const/16 v2, 0x10

    .line 271
    .line 272
    invoke-virtual {v3, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    .line 273
    .line 274
    .line 275
    move-result v17

    .line 276
    iget-object v2, v0, Landroidx/compose/ui/spatial/RectManager;->throttledCallbacks:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 277
    .line 278
    iget-object v2, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .line 279
    .line 280
    invoke-virtual {v2, v10}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 281
    .line 282
    .line 283
    move-result v18

    .line 284
    const/16 v19, 0x200

    .line 285
    .line 286
    invoke-static/range {v9 .. v19}, Lokhttp3/internal/http/StatusLine;->insert$default(Lokhttp3/internal/http/StatusLine;IIIIIIZZZI)V

    .line 287
    .line 288
    .line 289
    goto :goto_3

    .line 290
    :goto_6
    iput-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->rectInParentDirty:Z

    .line 291
    .line 292
    move/from16 v3, v21

    .line 293
    .line 294
    iput-boolean v3, v0, Landroidx/compose/ui/spatial/RectManager;->isDirty:Z

    .line 295
    .line 296
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui()Landroidx/compose/runtime/collection/MutableVector;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    iget-object v3, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 301
    .line 302
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 303
    .line 304
    move v7, v2

    .line 305
    :goto_7
    if-ge v7, v1, :cond_7

    .line 306
    .line 307
    aget-object v2, v3, v7

    .line 308
    .line 309
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 310
    .line 311
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_6

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Landroidx/compose/ui/spatial/RectManager;->insertOrUpdateTransformedNodeSubhierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    .line 318
    .line 319
    .line 320
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_7
    return-void
.end method

.method public final recalculateRectIfDirty(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 10
    .line 11
    if-eqz v2, :cond_11

    .line 12
    .line 13
    iget-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->rectInParentDirty:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_9

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-wide v4, 0x7fffffff7fffffffL

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-boolean v7, v2, Landroidx/compose/ui/node/LayoutNode;->hasPositionalLayerTransformationsInOffsetFromRoot:Z

    .line 32
    .line 33
    if-nez v7, :cond_2

    .line 34
    .line 35
    iget-boolean v7, v2, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    .line 36
    .line 37
    if-eqz v7, :cond_1

    .line 38
    .line 39
    iput-boolean v6, v2, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffsetDirty:Z

    .line 40
    .line 41
    invoke-static {v2}, Landroidx/compose/ui/spatial/RectManager;->outerToInnerOffset-Bjo55l4(Landroidx/compose/ui/node/LayoutNode;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    iput-wide v7, v2, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffset:J

    .line 46
    .line 47
    :cond_1
    iget-wide v7, v2, Landroidx/compose/ui/node/LayoutNode;->outerToInnerOffset:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    if-nez v2, :cond_3

    .line 51
    .line 52
    const-wide/16 v7, 0x0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move-wide v7, v4

    .line 56
    :goto_0
    iget-object v9, v3, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v9, Landroidx/compose/ui/node/NodeCoordinator;

    .line 59
    .line 60
    invoke-static {v7, v8, v4, v5}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_10

    .line 65
    .line 66
    invoke-static {v9}, Landroidx/compose/ui/spatial/RectManager;->hasPositionalLayerTransformations(Landroidx/compose/ui/node/NodeCoordinator;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_10

    .line 71
    .line 72
    iget-boolean v4, v1, Landroidx/compose/ui/node/LayoutNode;->hasPositionalLayerTransformationsInOffsetFromRoot:Z

    .line 73
    .line 74
    if-nez v4, :cond_f

    .line 75
    .line 76
    iget-wide v9, v9, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    .line 77
    .line 78
    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v7

    .line 82
    iget-object v4, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 83
    .line 84
    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroidx/compose/ui/node/MeasurePassDelegate;->getMeasuredWidth()I

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    invoke-virtual {v4}, Landroidx/compose/ui/node/MeasurePassDelegate;->getMeasuredHeight()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    iget v11, v1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 95
    .line 96
    iget-boolean v10, v1, Landroidx/compose/ui/node/LayoutNode;->addedToRectList:Z

    .line 97
    .line 98
    iget-object v12, v0, Landroidx/compose/ui/spatial/RectManager;->rects:Lokhttp3/internal/http/StatusLine;

    .line 99
    .line 100
    const v13, 0x1ffffff

    .line 101
    .line 102
    .line 103
    const-wide v14, 0xffffffffL

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    const/16 v16, 0x20

    .line 109
    .line 110
    if-eqz v10, :cond_c

    .line 111
    .line 112
    const-wide v17, -0x3fffffe000001L

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    const-wide/16 v19, 0x1

    .line 118
    .line 119
    const/16 v21, 0x3f

    .line 120
    .line 121
    if-eqz v2, :cond_8

    .line 122
    .line 123
    iget v2, v2, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 124
    .line 125
    move/from16 v22, v4

    .line 126
    .line 127
    const/16 v23, 0x19

    .line 128
    .line 129
    shr-long v3, v7, v16

    .line 130
    .line 131
    long-to-int v3, v3

    .line 132
    and-long/2addr v7, v14

    .line 133
    long-to-int v4, v7

    .line 134
    and-int v7, v11, v13

    .line 135
    .line 136
    iget-object v8, v12, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v8, [J

    .line 139
    .line 140
    iget v11, v12, Lokhttp3/internal/http/StatusLine;->code:I

    .line 141
    .line 142
    move v10, v6

    .line 143
    move/from16 v25, v13

    .line 144
    .line 145
    const/16 v24, 0x3c

    .line 146
    .line 147
    :goto_1
    array-length v13, v8

    .line 148
    add-int/lit8 v13, v13, -0x2

    .line 149
    .line 150
    if-ge v10, v13, :cond_7

    .line 151
    .line 152
    if-ge v10, v11, :cond_7

    .line 153
    .line 154
    add-int/lit8 v13, v10, 0x2

    .line 155
    .line 156
    move-wide/from16 v26, v14

    .line 157
    .line 158
    aget-wide v14, v8, v13

    .line 159
    .line 160
    long-to-int v13, v14

    .line 161
    and-int v13, v13, v25

    .line 162
    .line 163
    if-ne v13, v2, :cond_6

    .line 164
    .line 165
    aget-wide v13, v8, v10

    .line 166
    .line 167
    shr-long v5, v13, v16

    .line 168
    .line 169
    long-to-int v5, v5

    .line 170
    long-to-int v6, v13

    .line 171
    add-int/2addr v5, v3

    .line 172
    add-int/2addr v6, v4

    .line 173
    add-int v13, v5, v9

    .line 174
    .line 175
    add-int v14, v6, v22

    .line 176
    .line 177
    add-int/lit8 v10, v10, 0x3

    .line 178
    .line 179
    :goto_2
    array-length v15, v8

    .line 180
    add-int/lit8 v15, v15, -0x2

    .line 181
    .line 182
    if-ge v10, v15, :cond_6

    .line 183
    .line 184
    if-ge v10, v11, :cond_6

    .line 185
    .line 186
    add-int/lit8 v15, v10, 0x2

    .line 187
    .line 188
    move/from16 v28, v2

    .line 189
    .line 190
    move/from16 v29, v3

    .line 191
    .line 192
    aget-wide v2, v8, v15

    .line 193
    .line 194
    move/from16 v30, v4

    .line 195
    .line 196
    long-to-int v4, v2

    .line 197
    and-int v4, v4, v25

    .line 198
    .line 199
    if-ne v4, v7, :cond_5

    .line 200
    .line 201
    move-wide/from16 v31, v2

    .line 202
    .line 203
    aget-wide v2, v8, v10

    .line 204
    .line 205
    move-object v4, v8

    .line 206
    shr-long v7, v2, v16

    .line 207
    .line 208
    long-to-int v7, v7

    .line 209
    long-to-int v2, v2

    .line 210
    sub-int v3, v5, v7

    .line 211
    .line 212
    sub-int v2, v6, v2

    .line 213
    .line 214
    int-to-long v7, v5

    .line 215
    shl-long v7, v7, v16

    .line 216
    .line 217
    int-to-long v5, v6

    .line 218
    and-long v5, v5, v26

    .line 219
    .line 220
    or-long/2addr v5, v7

    .line 221
    aput-wide v5, v4, v10

    .line 222
    .line 223
    add-int/lit8 v5, v10, 0x1

    .line 224
    .line 225
    int-to-long v6, v13

    .line 226
    shl-long v6, v6, v16

    .line 227
    .line 228
    int-to-long v8, v14

    .line 229
    and-long v8, v8, v26

    .line 230
    .line 231
    or-long/2addr v6, v8

    .line 232
    aput-wide v6, v4, v5

    .line 233
    .line 234
    shr-long v5, v31, v21

    .line 235
    .line 236
    and-long v5, v5, v19

    .line 237
    .line 238
    shl-long v5, v5, v24

    .line 239
    .line 240
    or-long v5, v31, v5

    .line 241
    .line 242
    aput-wide v5, v4, v15

    .line 243
    .line 244
    if-nez v3, :cond_4

    .line 245
    .line 246
    if-eqz v2, :cond_7

    .line 247
    .line 248
    :cond_4
    add-int/lit8 v10, v10, 0x3

    .line 249
    .line 250
    sget v4, Landroidx/compose/ui/spatial/RectListKt;->$r8$clinit:I

    .line 251
    .line 252
    and-long v4, v31, v17

    .line 253
    .line 254
    and-int v6, v10, v25

    .line 255
    .line 256
    int-to-long v6, v6

    .line 257
    shl-long v6, v6, v23

    .line 258
    .line 259
    or-long/2addr v4, v6

    .line 260
    invoke-virtual {v12, v3, v2, v4, v5}, Lokhttp3/internal/http/StatusLine;->updateSubhierarchy(IIJ)V

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_5
    move-object v4, v8

    .line 265
    add-int/lit8 v10, v10, 0x3

    .line 266
    .line 267
    move/from16 v2, v28

    .line 268
    .line 269
    move/from16 v3, v29

    .line 270
    .line 271
    move/from16 v4, v30

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_6
    move/from16 v28, v2

    .line 275
    .line 276
    move/from16 v29, v3

    .line 277
    .line 278
    move/from16 v30, v4

    .line 279
    .line 280
    move-object v4, v8

    .line 281
    add-int/lit8 v10, v10, 0x3

    .line 282
    .line 283
    move-object v8, v4

    .line 284
    move-wide/from16 v14, v26

    .line 285
    .line 286
    move/from16 v2, v28

    .line 287
    .line 288
    move/from16 v3, v29

    .line 289
    .line 290
    move/from16 v4, v30

    .line 291
    .line 292
    const/4 v6, 0x0

    .line 293
    goto/16 :goto_1

    .line 294
    .line 295
    :cond_7
    :goto_3
    const/4 v2, 0x0

    .line 296
    goto/16 :goto_8

    .line 297
    .line 298
    :cond_8
    move/from16 v22, v4

    .line 299
    .line 300
    move/from16 v25, v13

    .line 301
    .line 302
    move-wide/from16 v26, v14

    .line 303
    .line 304
    const/16 v23, 0x19

    .line 305
    .line 306
    const/16 v24, 0x3c

    .line 307
    .line 308
    shr-long v2, v7, v16

    .line 309
    .line 310
    long-to-int v2, v2

    .line 311
    and-long v3, v7, v26

    .line 312
    .line 313
    long-to-int v3, v3

    .line 314
    add-int/2addr v9, v2

    .line 315
    add-int v4, v3, v22

    .line 316
    .line 317
    and-int v5, v11, v25

    .line 318
    .line 319
    iget-object v6, v12, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v6, [J

    .line 322
    .line 323
    iget v7, v12, Lokhttp3/internal/http/StatusLine;->code:I

    .line 324
    .line 325
    const/4 v8, 0x0

    .line 326
    :goto_4
    array-length v10, v6

    .line 327
    add-int/lit8 v10, v10, -0x2

    .line 328
    .line 329
    if-ge v8, v10, :cond_7

    .line 330
    .line 331
    if-ge v8, v7, :cond_7

    .line 332
    .line 333
    add-int/lit8 v10, v8, 0x2

    .line 334
    .line 335
    aget-wide v13, v6, v10

    .line 336
    .line 337
    long-to-int v11, v13

    .line 338
    and-int v11, v11, v25

    .line 339
    .line 340
    if-ne v11, v5, :cond_b

    .line 341
    .line 342
    move-object v11, v6

    .line 343
    aget-wide v5, v11, v8

    .line 344
    .line 345
    move v15, v8

    .line 346
    int-to-long v7, v2

    .line 347
    shl-long v7, v7, v16

    .line 348
    .line 349
    move-wide/from16 v28, v7

    .line 350
    .line 351
    int-to-long v7, v3

    .line 352
    and-long v7, v7, v26

    .line 353
    .line 354
    or-long v7, v28, v7

    .line 355
    .line 356
    aput-wide v7, v11, v15

    .line 357
    .line 358
    add-int/lit8 v8, v15, 0x1

    .line 359
    .line 360
    move/from16 v28, v2

    .line 361
    .line 362
    move/from16 v29, v3

    .line 363
    .line 364
    int-to-long v2, v9

    .line 365
    shl-long v2, v2, v16

    .line 366
    .line 367
    move-wide/from16 v30, v2

    .line 368
    .line 369
    int-to-long v2, v4

    .line 370
    and-long v2, v2, v26

    .line 371
    .line 372
    or-long v2, v30, v2

    .line 373
    .line 374
    aput-wide v2, v11, v8

    .line 375
    .line 376
    shr-long v2, v13, v21

    .line 377
    .line 378
    and-long v2, v2, v19

    .line 379
    .line 380
    shl-long v2, v2, v24

    .line 381
    .line 382
    or-long/2addr v2, v13

    .line 383
    aput-wide v2, v11, v10

    .line 384
    .line 385
    shr-long v2, v5, v16

    .line 386
    .line 387
    long-to-int v2, v2

    .line 388
    sub-int v2, v28, v2

    .line 389
    .line 390
    long-to-int v3, v5

    .line 391
    sub-int v3, v29, v3

    .line 392
    .line 393
    if-eqz v2, :cond_9

    .line 394
    .line 395
    const/4 v4, 0x1

    .line 396
    goto :goto_5

    .line 397
    :cond_9
    const/4 v4, 0x0

    .line 398
    :goto_5
    if-eqz v3, :cond_a

    .line 399
    .line 400
    const/4 v5, 0x1

    .line 401
    goto :goto_6

    .line 402
    :cond_a
    const/4 v5, 0x0

    .line 403
    :goto_6
    or-int/2addr v4, v5

    .line 404
    if-eqz v4, :cond_7

    .line 405
    .line 406
    add-int/lit8 v8, v15, 0x3

    .line 407
    .line 408
    sget v4, Landroidx/compose/ui/spatial/RectListKt;->$r8$clinit:I

    .line 409
    .line 410
    and-long v4, v13, v17

    .line 411
    .line 412
    and-int v6, v8, v25

    .line 413
    .line 414
    int-to-long v6, v6

    .line 415
    shl-long v6, v6, v23

    .line 416
    .line 417
    or-long/2addr v4, v6

    .line 418
    invoke-virtual {v12, v2, v3, v4, v5}, Lokhttp3/internal/http/StatusLine;->updateSubhierarchy(IIJ)V

    .line 419
    .line 420
    .line 421
    goto :goto_3

    .line 422
    :cond_b
    move/from16 v28, v2

    .line 423
    .line 424
    move/from16 v29, v3

    .line 425
    .line 426
    move-object v11, v6

    .line 427
    move v15, v8

    .line 428
    add-int/lit8 v8, v15, 0x3

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :cond_c
    move/from16 v22, v4

    .line 432
    .line 433
    move/from16 v25, v13

    .line 434
    .line 435
    move-wide/from16 v26, v14

    .line 436
    .line 437
    const/4 v4, 0x1

    .line 438
    iput-boolean v4, v1, Landroidx/compose/ui/node/LayoutNode;->addedToRectList:Z

    .line 439
    .line 440
    const/16 v4, 0x400

    .line 441
    .line 442
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    .line 443
    .line 444
    .line 445
    move-result v17

    .line 446
    const/16 v4, 0x10

    .line 447
    .line 448
    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui(I)Z

    .line 449
    .line 450
    .line 451
    move-result v18

    .line 452
    iget-object v3, v0, Landroidx/compose/ui/spatial/RectManager;->throttledCallbacks:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 453
    .line 454
    iget-object v3, v3, Landroidx/compose/ui/spatial/ThrottledCallbacks;->rectChangedMap:Landroidx/collection/MutableIntObjectMap;

    .line 455
    .line 456
    invoke-virtual {v3, v11}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    .line 457
    .line 458
    .line 459
    move-result v19

    .line 460
    if-eqz v2, :cond_e

    .line 461
    .line 462
    iget v2, v2, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 463
    .line 464
    shr-long v3, v7, v16

    .line 465
    .line 466
    long-to-int v3, v3

    .line 467
    and-long v4, v7, v26

    .line 468
    .line 469
    long-to-int v4, v4

    .line 470
    and-int v13, v11, v25

    .line 471
    .line 472
    iget-object v5, v12, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v5, [J

    .line 475
    .line 476
    iget v6, v12, Lokhttp3/internal/http/StatusLine;->code:I

    .line 477
    .line 478
    add-int/lit8 v6, v6, -0x3

    .line 479
    .line 480
    :goto_7
    if-ltz v6, :cond_7

    .line 481
    .line 482
    add-int/lit8 v7, v6, 0x2

    .line 483
    .line 484
    aget-wide v7, v5, v7

    .line 485
    .line 486
    long-to-int v7, v7

    .line 487
    and-int v7, v7, v25

    .line 488
    .line 489
    if-ne v7, v2, :cond_d

    .line 490
    .line 491
    aget-wide v7, v5, v6

    .line 492
    .line 493
    shr-long v10, v7, v16

    .line 494
    .line 495
    long-to-int v5, v10

    .line 496
    long-to-int v7, v7

    .line 497
    add-int v14, v5, v3

    .line 498
    .line 499
    add-int v15, v7, v4

    .line 500
    .line 501
    add-int v16, v14, v9

    .line 502
    .line 503
    add-int v4, v15, v22

    .line 504
    .line 505
    move/from16 v22, v6

    .line 506
    .line 507
    move/from16 v20, v18

    .line 508
    .line 509
    move/from16 v21, v19

    .line 510
    .line 511
    move/from16 v18, v2

    .line 512
    .line 513
    move/from16 v19, v17

    .line 514
    .line 515
    move/from16 v17, v4

    .line 516
    .line 517
    invoke-virtual/range {v12 .. v22}, Lokhttp3/internal/http/StatusLine;->insert(IIIIIIZZZI)V

    .line 518
    .line 519
    .line 520
    goto/16 :goto_3

    .line 521
    .line 522
    :cond_d
    move-object v10, v12

    .line 523
    add-int/lit8 v6, v6, -0x3

    .line 524
    .line 525
    goto :goto_7

    .line 526
    :cond_e
    move-object v10, v12

    .line 527
    shr-long v2, v7, v16

    .line 528
    .line 529
    long-to-int v12, v2

    .line 530
    and-long v2, v7, v26

    .line 531
    .line 532
    long-to-int v13, v2

    .line 533
    add-int v14, v12, v9

    .line 534
    .line 535
    add-int v15, v13, v22

    .line 536
    .line 537
    const/16 v16, 0x0

    .line 538
    .line 539
    const/16 v20, 0x220

    .line 540
    .line 541
    invoke-static/range {v10 .. v20}, Lokhttp3/internal/http/StatusLine;->insert$default(Lokhttp3/internal/http/StatusLine;IIIIIIZZZI)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_3

    .line 545
    .line 546
    :cond_f
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/spatial/RectManager;->insertOrUpdateTransformedNodeSubhierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    .line 547
    .line 548
    .line 549
    invoke-static {v1}, Landroidx/compose/ui/spatial/RectManager;->resetHasPositionalLayerTransformationsForSubtreeIfNeeded(Landroidx/compose/ui/node/LayoutNode;)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_3

    .line 553
    .line 554
    :cond_10
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/ui/spatial/RectManager;->insertOrUpdateTransformedNodeSubhierarchy(Landroidx/compose/ui/node/LayoutNode;)V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_3

    .line 558
    .line 559
    :goto_8
    iput-boolean v2, v1, Landroidx/compose/ui/node/LayoutNode;->rectInParentDirty:Z

    .line 560
    .line 561
    const/4 v4, 0x1

    .line 562
    iput-boolean v4, v0, Landroidx/compose/ui/spatial/RectManager;->isDirty:Z

    .line 563
    .line 564
    invoke-virtual {v0}, Landroidx/compose/ui/spatial/RectManager;->scheduleDebounceCallback()V

    .line 565
    .line 566
    .line 567
    :cond_11
    :goto_9
    return-void
.end method

.method public final remove(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 10

    .line 1
    iget-boolean v0, p1, Landroidx/compose/ui/node/LayoutNode;->addedToRectList:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, p1, Landroidx/compose/ui/node/LayoutNode;->semanticsId:I

    .line 6
    .line 7
    const v1, 0x1ffffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, v1

    .line 11
    iget-object v2, p0, Landroidx/compose/ui/spatial/RectManager;->rects:Lokhttp3/internal/http/StatusLine;

    .line 12
    .line 13
    iget-object v3, v2, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, [J

    .line 16
    .line 17
    iget v2, v2, Lokhttp3/internal/http/StatusLine;->code:I

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    move v5, v4

    .line 21
    :goto_0
    array-length v6, v3

    .line 22
    add-int/lit8 v6, v6, -0x2

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    if-ge v5, v6, :cond_1

    .line 26
    .line 27
    if-ge v5, v2, :cond_1

    .line 28
    .line 29
    add-int/lit8 v6, v5, 0x2

    .line 30
    .line 31
    aget-wide v8, v3, v6

    .line 32
    .line 33
    long-to-int v8, v8

    .line 34
    and-int/2addr v8, v1

    .line 35
    if-ne v8, v0, :cond_0

    .line 36
    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    aput-wide v0, v3, v5

    .line 40
    .line 41
    add-int/2addr v5, v7

    .line 42
    aput-wide v0, v3, v5

    .line 43
    .line 44
    sget-wide v0, Landroidx/compose/ui/spatial/RectListKt;->TombStone:J

    .line 45
    .line 46
    aput-wide v0, v3, v6

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v5, v5, 0x3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_1
    iput-boolean v4, p1, Landroidx/compose/ui/node/LayoutNode;->addedToRectList:Z

    .line 53
    .line 54
    iput-boolean v7, p1, Landroidx/compose/ui/node/LayoutNode;->rectInParentDirty:Z

    .line 55
    .line 56
    iput-boolean v7, p0, Landroidx/compose/ui/spatial/RectManager;->isDirty:Z

    .line 57
    .line 58
    iput-boolean v7, p0, Landroidx/compose/ui/spatial/RectManager;->isFragmented:Z

    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public final scheduleDebounceCallback()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->dispatchToken:Lorg/wikipedia/views/ViewAnimations$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Landroidx/compose/ui/spatial/RectManager;->throttledCallbacks:Landroidx/compose/ui/spatial/ThrottledCallbacks;

    .line 9
    .line 10
    iget-wide v2, v2, Landroidx/compose/ui/spatial/ThrottledCallbacks;->minDebounceDeadline:J

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v4, v2, v4

    .line 15
    .line 16
    if-gez v4, :cond_1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-wide v4, p0, Landroidx/compose/ui/spatial/RectManager;->scheduledDispatchDeadline:J

    .line 22
    .line 23
    cmp-long v4, v4, v2

    .line 24
    .line 25
    if-nez v4, :cond_2

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    :goto_1
    return-void

    .line 30
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/spatial/RectManager;->executeDelayed:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 31
    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    const/4 v0, 0x0

    .line 42
    :goto_2
    if-nez v0, :cond_4

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_5
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    const-wide/16 v6, 0x10

    .line 53
    .line 54
    add-long/2addr v6, v4

    .line 55
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    iput-wide v2, p0, Landroidx/compose/ui/spatial/RectManager;->scheduledDispatchDeadline:J

    .line 60
    .line 61
    sub-long/2addr v2, v4

    .line 62
    new-instance v0, Lorg/wikipedia/views/ViewAnimations$$ExternalSyntheticLambda0;

    .line 63
    .line 64
    const/4 v4, 0x2

    .line 65
    iget-object v5, p0, Landroidx/compose/ui/spatial/RectManager;->dispatchLambda:Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 66
    .line 67
    invoke-direct {v0, v4, v5}, Lorg/wikipedia/views/ViewAnimations$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Landroidx/compose/ui/spatial/RectManager;->dispatchToken:Lorg/wikipedia/views/ViewAnimations$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    return-void
.end method
