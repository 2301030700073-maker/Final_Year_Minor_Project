.class public final Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic $onExpandedChange:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;->$onExpandedChange:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget v2, v0, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;->$r8$classId:I

    .line 8
    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v0, v0, Landroidx/compose/material3/ExposedDropdownMenuKt$expandable$1;->$onExpandedChange:Ljava/lang/Object;

    .line 13
    .line 14
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    new-instance v2, Landroidx/camera/view/PreviewView$1;

    .line 22
    .line 23
    const/16 v5, 0x18

    .line 24
    .line 25
    invoke-direct {v2, v5}, Landroidx/camera/view/PreviewView$1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    check-cast v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    const-wide/16 v7, 0x0

    .line 40
    .line 41
    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/node/NodeCoordinator;->localToScreen-MK-Hz9U(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    iput-wide v6, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 46
    .line 47
    new-instance v6, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 48
    .line 49
    const/16 v7, 0x12

    .line 50
    .line 51
    invoke-direct {v6, v7, v0, v2}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    new-instance v7, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    invoke-direct {v7, v2, v1, v0, v4}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    move-object v4, v6

    .line 60
    new-instance v6, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 61
    .line 62
    invoke-direct {v6, v3, v0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {v3, v0}, Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;)V

    .line 68
    .line 69
    .line 70
    new-instance v8, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 71
    .line 72
    const/16 v12, 0x14

    .line 73
    .line 74
    invoke-direct {v8, v0, v5, v2, v12}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    move-object v2, v0

    .line 78
    new-instance v0, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;

    .line 79
    .line 80
    move-object v5, v8

    .line 81
    const/4 v8, 0x0

    .line 82
    invoke-direct/range {v0 .. v8}, Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;Lkotlin/coroutines/Continuation;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v0, v9}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-ne v0, v11, :cond_0

    .line 90
    .line 91
    move-object v10, v0

    .line 92
    :cond_0
    return-object v10

    .line 93
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 94
    .line 95
    new-instance v2, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    invoke-direct {v2, v3, v0}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v2, v9}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    if-ne v0, v11, :cond_1

    .line 105
    .line 106
    move-object v10, v0

    .line 107
    :cond_1
    return-object v10

    .line 108
    :pswitch_1
    check-cast v0, Landroidx/compose/foundation/text/TextDragObserver;

    .line 109
    .line 110
    new-instance v2, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;

    .line 111
    .line 112
    invoke-direct {v2, v1, v0, v5, v4}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$2$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v9}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-ne v0, v11, :cond_2

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    move-object v0, v10

    .line 123
    :goto_0
    if-ne v0, v11, :cond_3

    .line 124
    .line 125
    move-object v10, v0

    .line 126
    :cond_3
    return-object v10

    .line 127
    :pswitch_2
    new-instance v2, Landroidx/core/view/ViewKt$allViews$1;

    .line 128
    .line 129
    check-cast v0, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda1;

    .line 130
    .line 131
    const/4 v3, 0x3

    .line 132
    invoke-direct {v2, v0, v5, v3}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 133
    .line 134
    .line 135
    move-object v0, v1

    .line 136
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 137
    .line 138
    invoke-virtual {v0, v2, v9}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->awaitPointerEventScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    if-ne v0, v11, :cond_4

    .line 143
    .line 144
    move-object v10, v0

    .line 145
    :cond_4
    return-object v10

    .line 146
    :pswitch_3
    new-instance v2, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 147
    .line 148
    check-cast v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    .line 149
    .line 150
    invoke-direct {v2, v0, v5}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;Lkotlin/coroutines/Continuation;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v1, v2, v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-ne v0, v11, :cond_5

    .line 158
    .line 159
    move-object v10, v0

    .line 160
    :cond_5
    return-object v10

    .line 161
    :pswitch_4
    new-instance v12, Landroidx/room/InvalidationTracker$implementation$1;

    .line 162
    .line 163
    move-object v14, v0

    .line 164
    check-cast v14, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;

    .line 165
    .line 166
    const/16 v18, 0x0

    .line 167
    .line 168
    const/16 v19, 0x5

    .line 169
    .line 170
    const/4 v13, 0x1

    .line 171
    const-class v15, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureNode;

    .line 172
    .line 173
    const-string v16, "tryShowContextMenu"

    .line 174
    .line 175
    const-string v17, "tryShowContextMenu-k-4lQ0M(J)V"

    .line 176
    .line 177
    invoke-direct/range {v12 .. v19}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    .line 181
    .line 182
    const/4 v2, 0x2

    .line 183
    invoke-direct {v0, v12, v5, v2}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1, v0, v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-ne v0, v11, :cond_6

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_6
    move-object v0, v10

    .line 194
    :goto_1
    if-ne v0, v11, :cond_7

    .line 195
    .line 196
    move-object v10, v0

    .line 197
    :cond_7
    return-object v10

    .line 198
    :pswitch_5
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 199
    .line 200
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->mouseSelectionObserver:Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 201
    .line 202
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->touchSelectionObserver:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

    .line 203
    .line 204
    new-instance v3, Lde/cketti/changelog/XmlParser;

    .line 205
    .line 206
    move-object v4, v1

    .line 207
    check-cast v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    .line 217
    .line 218
    invoke-direct {v3, v4}, Lde/cketti/changelog/XmlParser;-><init>(Landroidx/compose/ui/platform/ViewConfiguration;)V

    .line 219
    .line 220
    .line 221
    new-instance v4, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 222
    .line 223
    invoke-direct {v4, v3, v2, v0, v5}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(Lde/cketti/changelog/XmlParser;Lcom/fsck/k9/mailstore/LocalFolder$12;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v4, v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-ne v0, v11, :cond_8

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_8
    move-object v0, v10

    .line 234
    :goto_2
    if-ne v0, v11, :cond_9

    .line 235
    .line 236
    move-object v10, v0

    .line 237
    :cond_9
    return-object v10

    .line 238
    :pswitch_6
    new-instance v2, Landroidx/core/view/ViewKt$allViews$1;

    .line 239
    .line 240
    check-cast v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 241
    .line 242
    invoke-direct {v2, v0, v5, v4}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v2, v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-ne v0, v11, :cond_a

    .line 250
    .line 251
    move-object v10, v0

    .line 252
    :cond_a
    return-object v10

    .line 253
    :pswitch_7
    new-instance v2, Landroidx/core/view/ViewKt$allViews$1;

    .line 254
    .line 255
    check-cast v0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;

    .line 256
    .line 257
    invoke-direct {v2, v0, v5, v3}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 258
    .line 259
    .line 260
    invoke-static {v1, v2, v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-ne v0, v11, :cond_b

    .line 265
    .line 266
    move-object v10, v0

    .line 267
    :cond_b
    return-object v10

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
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
