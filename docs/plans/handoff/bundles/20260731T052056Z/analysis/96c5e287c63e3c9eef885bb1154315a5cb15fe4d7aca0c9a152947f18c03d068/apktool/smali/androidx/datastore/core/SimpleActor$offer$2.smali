.class public final Landroidx/datastore/core/SimpleActor$offer$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 12
    iput p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->$r8$classId:I

    iput-object p2, p0, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/datastore/core/SimpleActor$offer$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 9
    .line 10
    check-cast v1, Ljava/util/List;

    .line 11
    .line 12
    const/16 v0, 0x1d

    .line 13
    .line 14
    invoke-direct {p0, v0, v1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 21
    .line 22
    check-cast v1, Landroidx/compose/ui/window/PopupLayout;

    .line 23
    .line 24
    const/16 v0, 0x1c

    .line 25
    .line 26
    invoke-direct {p0, v0, v1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 37
    .line 38
    check-cast v1, Landroidx/compose/ui/geometry/Rect;

    .line 39
    .line 40
    const/16 v0, 0x1b

    .line 41
    .line 42
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_2
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    .line 51
    .line 52
    check-cast v1, Ljava/lang/Runnable;

    .line 53
    .line 54
    const/16 v0, 0x1a

    .line 55
    .line 56
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_3
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 61
    .line 62
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Landroidx/compose/runtime/Recomposer;

    .line 65
    .line 66
    check-cast v1, Landroid/view/View;

    .line 67
    .line 68
    const/16 v0, 0x19

    .line 69
    .line 70
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :pswitch_4
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 75
    .line 76
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Lkotlinx/coroutines/flow/StateFlow;

    .line 79
    .line 80
    check-cast v1, Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    .line 81
    .line 82
    const/16 v0, 0x18

    .line 83
    .line 84
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_5
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 89
    .line 90
    check-cast v1, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 91
    .line 92
    const/16 v0, 0x17

    .line 93
    .line 94
    invoke-direct {p0, v0, v1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_6
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 101
    .line 102
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 105
    .line 106
    check-cast v1, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 107
    .line 108
    const/16 v0, 0x16

    .line 109
    .line 110
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 111
    .line 112
    .line 113
    return-object p1

    .line 114
    :pswitch_7
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 115
    .line 116
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 119
    .line 120
    check-cast v1, Landroidx/compose/material3/TooltipStateImpl;

    .line 121
    .line 122
    const/16 v0, 0x15

    .line 123
    .line 124
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 125
    .line 126
    .line 127
    return-object p1

    .line 128
    :pswitch_8
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 129
    .line 130
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 133
    .line 134
    check-cast v1, Landroidx/compose/ui/platform/AccessibilityManager;

    .line 135
    .line 136
    const/16 v0, 0x14

    .line 137
    .line 138
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 139
    .line 140
    .line 141
    return-object p1

    .line 142
    :pswitch_9
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 143
    .line 144
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p0, Lokhttp3/Cache$RealCacheRequest;

    .line 147
    .line 148
    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    .line 149
    .line 150
    const/16 v0, 0x13

    .line 151
    .line 152
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 153
    .line 154
    .line 155
    return-object p1

    .line 156
    :pswitch_a
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 157
    .line 158
    check-cast v1, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 159
    .line 160
    const/16 v0, 0x12

    .line 161
    .line 162
    invoke-direct {p0, v0, v1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 163
    .line 164
    .line 165
    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_b
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 169
    .line 170
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p0, Landroidx/compose/ui/platform/Clipboard;

    .line 173
    .line 174
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 175
    .line 176
    const/16 v0, 0x11

    .line 177
    .line 178
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 179
    .line 180
    .line 181
    return-object p1

    .line 182
    :pswitch_c
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 183
    .line 184
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p0, Landroid/view/textclassifier/TextClassifier;

    .line 187
    .line 188
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 189
    .line 190
    const/16 v0, 0x10

    .line 191
    .line 192
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 193
    .line 194
    .line 195
    return-object p1

    .line 196
    :pswitch_d
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 197
    .line 198
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p0, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 201
    .line 202
    check-cast v1, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 203
    .line 204
    const/16 v0, 0xf

    .line 205
    .line 206
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 207
    .line 208
    .line 209
    return-object p1

    .line 210
    :pswitch_e
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 211
    .line 212
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 215
    .line 216
    check-cast v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 217
    .line 218
    const/16 v0, 0xe

    .line 219
    .line 220
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 221
    .line 222
    .line 223
    return-object p1

    .line 224
    :pswitch_f
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 225
    .line 226
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 229
    .line 230
    check-cast v1, Landroidx/cardview/widget/CardView$1;

    .line 231
    .line 232
    const/16 v0, 0xd

    .line 233
    .line 234
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 235
    .line 236
    .line 237
    return-object p1

    .line 238
    :pswitch_10
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 239
    .line 240
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 243
    .line 244
    check-cast v1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 245
    .line 246
    const/16 v0, 0xc

    .line 247
    .line 248
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 249
    .line 250
    .line 251
    return-object p1

    .line 252
    :pswitch_11
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 253
    .line 254
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 257
    .line 258
    check-cast v1, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 259
    .line 260
    const/16 v0, 0xb

    .line 261
    .line 262
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 263
    .line 264
    .line 265
    return-object p1

    .line 266
    :pswitch_12
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 267
    .line 268
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 271
    .line 272
    check-cast v1, Landroidx/compose/foundation/pager/PagerState;

    .line 273
    .line 274
    const/16 v0, 0xa

    .line 275
    .line 276
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 277
    .line 278
    .line 279
    return-object p1

    .line 280
    :pswitch_13
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 281
    .line 282
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 285
    .line 286
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 287
    .line 288
    const/16 v0, 0x9

    .line 289
    .line 290
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 291
    .line 292
    .line 293
    return-object p1

    .line 294
    :pswitch_14
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 295
    .line 296
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 299
    .line 300
    check-cast v1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 301
    .line 302
    const/16 v0, 0x8

    .line 303
    .line 304
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 305
    .line 306
    .line 307
    return-object p1

    .line 308
    :pswitch_15
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 309
    .line 310
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast p0, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 313
    .line 314
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 315
    .line 316
    const/4 v0, 0x7

    .line 317
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 318
    .line 319
    .line 320
    return-object p1

    .line 321
    :pswitch_16
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 322
    .line 323
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 324
    .line 325
    const/4 v0, 0x6

    .line 326
    invoke-direct {p0, v0, v1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 327
    .line 328
    .line 329
    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 330
    .line 331
    return-object p0

    .line 332
    :pswitch_17
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 333
    .line 334
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;

    .line 337
    .line 338
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 339
    .line 340
    const/4 v0, 0x5

    .line 341
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 342
    .line 343
    .line 344
    return-object p1

    .line 345
    :pswitch_18
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 346
    .line 347
    check-cast v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 348
    .line 349
    const/4 v0, 0x4

    .line 350
    invoke-direct {p0, v0, v1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 351
    .line 352
    .line 353
    iput-object p1, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 354
    .line 355
    return-object p0

    .line 356
    :pswitch_19
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 357
    .line 358
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 361
    .line 362
    check-cast v1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 363
    .line 364
    const/4 v0, 0x3

    .line 365
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 366
    .line 367
    .line 368
    return-object p1

    .line 369
    :pswitch_1a
    new-instance p1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 370
    .line 371
    iget-object p0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 374
    .line 375
    check-cast v1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 376
    .line 377
    const/4 v0, 0x2

    .line 378
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 379
    .line 380
    .line 381
    return-object p1

    .line 382
    :pswitch_1b
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 383
    .line 384
    check-cast v1, Landroidx/activity/compose/ComposePredictiveBackHandler;

    .line 385
    .line 386
    const/4 p1, 0x1

    .line 387
    invoke-direct {p0, p1, v1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 388
    .line 389
    .line 390
    return-object p0

    .line 391
    :pswitch_1c
    new-instance p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 392
    .line 393
    check-cast v1, Lcoil3/ImageLoader$Builder;

    .line 394
    .line 395
    const/4 p1, 0x0

    .line 396
    invoke-direct {p0, p1, v1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 397
    .line 398
    .line 399
    return-object p0

    .line 400
    nop

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/SimpleActor$offer$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_5
    check-cast p1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 129
    .line 130
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 144
    .line 145
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 159
    .line 160
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 174
    .line 175
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 176
    .line 177
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 182
    .line 183
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 189
    .line 190
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    return-object p0

    .line 203
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 204
    .line 205
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 206
    .line 207
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 212
    .line 213
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0

    .line 218
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 219
    .line 220
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 221
    .line 222
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 227
    .line 228
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0

    .line 233
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 234
    .line 235
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 236
    .line 237
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 242
    .line 243
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0

    .line 248
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 249
    .line 250
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 251
    .line 252
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 257
    .line 258
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    return-object p0

    .line 263
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 264
    .line 265
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 266
    .line 267
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 272
    .line 273
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    return-object p0

    .line 278
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 279
    .line 280
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 281
    .line 282
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 283
    .line 284
    .line 285
    move-result-object p0

    .line 286
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 287
    .line 288
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    return-object p0

    .line 293
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 294
    .line 295
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 296
    .line 297
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 302
    .line 303
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    return-object p0

    .line 308
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 309
    .line 310
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 311
    .line 312
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 317
    .line 318
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0

    .line 323
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 324
    .line 325
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 326
    .line 327
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 332
    .line 333
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    return-object p0

    .line 338
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 339
    .line 340
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 341
    .line 342
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 343
    .line 344
    .line 345
    move-result-object p0

    .line 346
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 347
    .line 348
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    return-object p0

    .line 353
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 354
    .line 355
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 356
    .line 357
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 362
    .line 363
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    return-object p0

    .line 368
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 369
    .line 370
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 371
    .line 372
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 373
    .line 374
    .line 375
    move-result-object p0

    .line 376
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 377
    .line 378
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    return-object p0

    .line 383
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 384
    .line 385
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 386
    .line 387
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 392
    .line 393
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    return-object p0

    .line 398
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 399
    .line 400
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 401
    .line 402
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 407
    .line 408
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    return-object p0

    .line 413
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 414
    .line 415
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 416
    .line 417
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 418
    .line 419
    .line 420
    move-result-object p0

    .line 421
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 422
    .line 423
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    return-object p0

    .line 428
    :pswitch_1b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 429
    .line 430
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 431
    .line 432
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 433
    .line 434
    .line 435
    move-result-object p0

    .line 436
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 437
    .line 438
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    return-object p0

    .line 443
    :pswitch_1c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 444
    .line 445
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 446
    .line 447
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SimpleActor$offer$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    check-cast p0, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 452
    .line 453
    invoke-virtual {p0, v1}, Landroidx/datastore/core/SimpleActor$offer$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object p0

    .line 457
    return-object p0

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    iget-object v2, v4, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    const/high16 v7, 0x3f800000    # 1.0f

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v8, 0x2

    .line 14
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    iget-object v10, v4, Landroidx/datastore/core/SimpleActor$offer$2;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    const-string v11, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    const/4 v12, 0x1

    .line 21
    const/4 v13, 0x0

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 26
    .line 27
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    if-ne v1, v12, :cond_0

    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v9, v13

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    .line 48
    .line 49
    check-cast v10, Ljava/util/List;

    .line 50
    .line 51
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 52
    .line 53
    sget-object v2, Landroidx/datastore/core/DataMigrationInitializer;->Companion:Landroidx/work/impl/AutoMigration_14_15;

    .line 54
    .line 55
    invoke-virtual {v2, v10, v1, v4}, Landroidx/work/impl/AutoMigration_14_15;->runMigrations(Ljava/util/List;Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-ne v1, v0, :cond_2

    .line 60
    .line 61
    move-object v9, v0

    .line 62
    :cond_2
    :goto_0
    return-object v9

    .line 63
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 64
    .line 65
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    if-ne v1, v12, :cond_3

    .line 70
    .line 71
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 74
    .line 75
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    move-object v9, v13

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 90
    .line 91
    :cond_5
    :goto_2
    invoke-static {v1}, Lkotlinx/coroutines/AwaitKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_a

    .line 96
    .line 97
    sget-object v3, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1$1;

    .line 98
    .line 99
    iput-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    sget-object v5, Landroidx/compose/ui/platform/AndroidFontResourceLoader;->$$INSTANCE:Landroidx/compose/ui/platform/AndroidFontResourceLoader;

    .line 107
    .line 108
    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    if-nez v5, :cond_9

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-interface {v5, v3, v4}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-ne v3, v0, :cond_6

    .line 126
    .line 127
    move-object v9, v0

    .line 128
    goto :goto_4

    .line 129
    :cond_6
    :goto_3
    move-object v3, v10

    .line 130
    check-cast v3, Landroidx/compose/ui/window/PopupLayout;

    .line 131
    .line 132
    iget-object v5, v3, Landroidx/compose/ui/window/PopupLayout;->locationOnScreen:[I

    .line 133
    .line 134
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-nez v7, :cond_7

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    aget v7, v5, v6

    .line 142
    .line 143
    aget v8, v5, v12

    .line 144
    .line 145
    iget-object v11, v3, Landroidx/compose/ui/window/PopupLayout;->composeView:Landroid/view/View;

    .line 146
    .line 147
    invoke-virtual {v11, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 148
    .line 149
    .line 150
    aget v11, v5, v6

    .line 151
    .line 152
    if-ne v7, v11, :cond_8

    .line 153
    .line 154
    aget v5, v5, v12

    .line 155
    .line 156
    if-eq v8, v5, :cond_5

    .line 157
    .line 158
    :cond_8
    invoke-virtual {v3}, Landroidx/compose/ui/window/PopupLayout;->updateParentBounds$ui()V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_9
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_a
    :goto_4
    return-object v9

    .line 167
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 168
    .line 169
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 170
    .line 171
    if-eqz v1, :cond_c

    .line 172
    .line 173
    if-ne v1, v12, :cond_b

    .line 174
    .line 175
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_b
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    move-object v9, v13

    .line 183
    goto :goto_5

    .line 184
    :cond_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v1, Landroidx/compose/ui/viewinterop/BringIntoViewNode;

    .line 190
    .line 191
    new-instance v2, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 192
    .line 193
    check-cast v10, Landroidx/compose/ui/geometry/Rect;

    .line 194
    .line 195
    const/16 v3, 0xf

    .line 196
    .line 197
    invoke-direct {v2, v3, v10}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 201
    .line 202
    invoke-static {v1, v2, v4}, Lkotlin/ResultKt;->bringIntoView(Landroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    if-ne v1, v0, :cond_d

    .line 207
    .line 208
    move-object v9, v0

    .line 209
    :cond_d
    :goto_5
    return-object v9

    .line 210
    :pswitch_2
    iget-object v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;

    .line 213
    .line 214
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 215
    .line 216
    iget v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 217
    .line 218
    if-eqz v2, :cond_f

    .line 219
    .line 220
    if-ne v2, v12, :cond_e

    .line 221
    .line 222
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_e
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    move-object v9, v13

    .line 230
    goto :goto_8

    .line 231
    :cond_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iget-object v2, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->scrollTracker:Landroidx/compose/ui/scrollcapture/RelativeScroller;

    .line 235
    .line 236
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 237
    .line 238
    iget v3, v2, Landroidx/compose/ui/scrollcapture/RelativeScroller;->scrollAmount:F

    .line 239
    .line 240
    sub-float/2addr v5, v3

    .line 241
    invoke-virtual {v2, v5, v4}, Landroidx/compose/ui/scrollcapture/RelativeScroller;->scrollBy(FLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    if-ne v2, v1, :cond_10

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_10
    move-object v2, v9

    .line 249
    :goto_6
    if-ne v2, v1, :cond_11

    .line 250
    .line 251
    move-object v9, v1

    .line 252
    goto :goto_8

    .line 253
    :cond_11
    :goto_7
    iget-object v0, v0, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback;->listener:Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 254
    .line 255
    iget-object v0, v0, Landroidx/compose/ui/scrollcapture/ScrollCapture;->scrollCaptureInProgress$delegate:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 258
    .line 259
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    check-cast v10, Ljava/lang/Runnable;

    .line 265
    .line 266
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 267
    .line 268
    .line 269
    :goto_8
    return-object v9

    .line 270
    :pswitch_3
    iget-object v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 271
    .line 272
    move-object v1, v0

    .line 273
    check-cast v1, Landroidx/compose/runtime/Recomposer;

    .line 274
    .line 275
    check-cast v10, Landroid/view/View;

    .line 276
    .line 277
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 278
    .line 279
    iget v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 280
    .line 281
    const v3, 0x7f090060

    .line 282
    .line 283
    .line 284
    if-eqz v2, :cond_13

    .line 285
    .line 286
    if-ne v2, v12, :cond_12

    .line 287
    .line 288
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .line 290
    .line 291
    goto :goto_a

    .line 292
    :catchall_0
    move-exception v0

    .line 293
    goto :goto_c

    .line 294
    :cond_12
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    move-object v9, v13

    .line 298
    goto :goto_b

    .line 299
    :cond_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :try_start_1
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 303
    .line 304
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 305
    .line 306
    new-instance v5, Landroidx/compose/runtime/Recomposer$join$2;

    .line 307
    .line 308
    invoke-direct {v5, v8, v6, v13}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 309
    .line 310
    .line 311
    invoke-static {v2, v5, v4}, Lkotlinx/coroutines/flow/StateFlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    if-ne v2, v0, :cond_14

    .line 316
    .line 317
    goto :goto_9

    .line 318
    :cond_14
    move-object v2, v9

    .line 319
    :goto_9
    if-ne v2, v0, :cond_15

    .line 320
    .line 321
    move-object v9, v0

    .line 322
    goto :goto_b

    .line 323
    :cond_15
    :goto_a
    invoke-static {v10}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-ne v0, v1, :cond_16

    .line 328
    .line 329
    invoke-virtual {v10, v3, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    :cond_16
    :goto_b
    return-object v9

    .line 333
    :goto_c
    invoke-static {v10}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->getCompositionContext(Landroid/view/View;)Landroidx/compose/runtime/CompositionContext;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    if-ne v2, v1, :cond_17

    .line 338
    .line 339
    invoke-virtual {v10, v3, v13}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 340
    .line 341
    .line 342
    :cond_17
    throw v0

    .line 343
    :pswitch_4
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 344
    .line 345
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 346
    .line 347
    if-eqz v1, :cond_19

    .line 348
    .line 349
    if-eq v1, v12, :cond_18

    .line 350
    .line 351
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    goto :goto_e

    .line 355
    :cond_18
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    goto :goto_d

    .line 359
    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v1, Lkotlinx/coroutines/flow/StateFlow;

    .line 365
    .line 366
    new-instance v2, Landroidx/paging/ChannelFlowCollector;

    .line 367
    .line 368
    check-cast v10, Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    .line 369
    .line 370
    invoke-direct {v2, v8, v10}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 374
    .line 375
    invoke-interface {v1, v2, v4}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    if-ne v1, v0, :cond_1a

    .line 380
    .line 381
    move-object v13, v0

    .line 382
    goto :goto_e

    .line 383
    :cond_1a
    :goto_d
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 384
    .line 385
    .line 386
    :goto_e
    return-object v13

    .line 387
    :pswitch_5
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 388
    .line 389
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 390
    .line 391
    if-eqz v1, :cond_1c

    .line 392
    .line 393
    if-eq v1, v12, :cond_1b

    .line 394
    .line 395
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    goto :goto_10

    .line 399
    :cond_1b
    iget-object v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v0, Landroidx/compose/ui/platform/InputMethodSession;

    .line 402
    .line 403
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    goto :goto_f

    .line 407
    :cond_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 413
    .line 414
    check-cast v10, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 415
    .line 416
    iput-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 417
    .line 418
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 419
    .line 420
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 421
    .line 422
    invoke-static {v4}, Lkotlin/ExceptionsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-direct {v2, v12, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 430
    .line 431
    .line 432
    iget-object v3, v10, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 433
    .line 434
    iget-object v4, v3, Landroidx/compose/ui/text/input/TextInputService;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 435
    .line 436
    invoke-interface {v4}, Landroidx/compose/ui/text/input/PlatformTextInputService;->startInput()V

    .line 437
    .line 438
    .line 439
    new-instance v5, Landroidx/compose/ui/text/input/TextInputSession;

    .line 440
    .line 441
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/text/input/TextInputSession;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 442
    .line 443
    .line 444
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 445
    .line 446
    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 447
    .line 448
    .line 449
    new-instance v3, Landroidx/datastore/core/SimpleActor$1;

    .line 450
    .line 451
    const/4 v4, 0x6

    .line 452
    invoke-direct {v3, v4, v1, v10}, Landroidx/datastore/core/SimpleActor$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    if-ne v1, v0, :cond_1d

    .line 463
    .line 464
    move-object v13, v0

    .line 465
    goto :goto_10

    .line 466
    :cond_1d
    :goto_f
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 467
    .line 468
    .line 469
    :goto_10
    return-object v13

    .line 470
    :pswitch_6
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 471
    .line 472
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 473
    .line 474
    if-eqz v1, :cond_1f

    .line 475
    .line 476
    if-ne v1, v12, :cond_1e

    .line 477
    .line 478
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    goto :goto_11

    .line 482
    :cond_1e
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    move-object v9, v13

    .line 486
    goto :goto_11

    .line 487
    :cond_1f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 491
    .line 492
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 493
    .line 494
    new-instance v2, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;

    .line 495
    .line 496
    check-cast v10, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 497
    .line 498
    invoke-direct {v2, v10, v8}, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;-><init>(Landroidx/compose/runtime/ProduceStateScopeImpl;I)V

    .line 499
    .line 500
    .line 501
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 502
    .line 503
    invoke-interface {v1, v2, v4}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    if-ne v1, v0, :cond_20

    .line 508
    .line 509
    move-object v9, v0

    .line 510
    :cond_20
    :goto_11
    return-object v9

    .line 511
    :pswitch_7
    iget-object v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 514
    .line 515
    check-cast v10, Landroidx/compose/material3/TooltipStateImpl;

    .line 516
    .line 517
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 518
    .line 519
    iget v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 520
    .line 521
    if-eqz v2, :cond_22

    .line 522
    .line 523
    if-ne v2, v12, :cond_21

    .line 524
    .line 525
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    goto :goto_12

    .line 529
    :cond_21
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    move-object v9, v13

    .line 533
    goto :goto_13

    .line 534
    :cond_22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-eqz v2, :cond_23

    .line 542
    .line 543
    sget-object v2, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    .line 544
    .line 545
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 546
    .line 547
    invoke-virtual {v10, v2, v4}, Landroidx/compose/material3/TooltipStateImpl;->show(Landroidx/compose/foundation/MutatePriority;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    if-ne v2, v1, :cond_23

    .line 552
    .line 553
    move-object v9, v1

    .line 554
    goto :goto_13

    .line 555
    :cond_23
    :goto_12
    invoke-virtual {v10}, Landroidx/compose/material3/TooltipStateImpl;->isVisible()Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-eqz v1, :cond_24

    .line 560
    .line 561
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-nez v0, :cond_24

    .line 566
    .line 567
    invoke-virtual {v10}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 568
    .line 569
    .line 570
    :cond_24
    :goto_13
    return-object v9

    .line 571
    :pswitch_8
    iget-object v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 572
    .line 573
    check-cast v0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    .line 574
    .line 575
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 576
    .line 577
    iget v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 578
    .line 579
    if-eqz v2, :cond_26

    .line 580
    .line 581
    if-ne v2, v12, :cond_25

    .line 582
    .line 583
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    goto/16 :goto_18

    .line 587
    .line 588
    :cond_25
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    :goto_14
    move-object v9, v13

    .line 592
    goto/16 :goto_19

    .line 593
    .line 594
    :cond_26
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    if-eqz v0, :cond_2f

    .line 598
    .line 599
    iget-object v2, v0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->visuals:Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;

    .line 600
    .line 601
    iget-object v2, v2, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    .line 602
    .line 603
    check-cast v10, Landroidx/compose/ui/platform/AccessibilityManager;

    .line 604
    .line 605
    sget-object v5, Landroidx/compose/material3/SnackbarHostKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    aget v2, v5, v2

    .line 612
    .line 613
    const-wide v5, 0x7fffffffffffffffL

    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    if-eq v2, v12, :cond_29

    .line 619
    .line 620
    if-eq v2, v8, :cond_28

    .line 621
    .line 622
    if-ne v2, v3, :cond_27

    .line 623
    .line 624
    const-wide/16 v7, 0xfa0

    .line 625
    .line 626
    goto :goto_15

    .line 627
    :cond_27
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 628
    .line 629
    .line 630
    goto :goto_14

    .line 631
    :cond_28
    const-wide/16 v7, 0x2710

    .line 632
    .line 633
    goto :goto_15

    .line 634
    :cond_29
    move-wide v7, v5

    .line 635
    :goto_15
    if-nez v10, :cond_2a

    .line 636
    .line 637
    goto :goto_16

    .line 638
    :cond_2a
    check-cast v10, Landroidx/compose/ui/platform/AndroidAccessibilityManager;

    .line 639
    .line 640
    iget-object v2, v10, Landroidx/compose/ui/platform/AndroidAccessibilityManager;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 641
    .line 642
    const-wide/32 v10, 0x7fffffff

    .line 643
    .line 644
    .line 645
    cmp-long v10, v7, v10

    .line 646
    .line 647
    if-ltz v10, :cond_2b

    .line 648
    .line 649
    goto :goto_16

    .line 650
    :cond_2b
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 651
    .line 652
    const/16 v11, 0x1d

    .line 653
    .line 654
    if-lt v10, v11, :cond_2d

    .line 655
    .line 656
    long-to-int v7, v7

    .line 657
    invoke-static {v2, v7, v3}, Landroidx/compose/ui/platform/Api29Impl;->getRecommendedTimeoutMillis(Landroid/view/accessibility/AccessibilityManager;II)I

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    const v3, 0x7fffffff

    .line 662
    .line 663
    .line 664
    if-ne v2, v3, :cond_2c

    .line 665
    .line 666
    goto :goto_17

    .line 667
    :cond_2c
    int-to-long v5, v2

    .line 668
    goto :goto_17

    .line 669
    :cond_2d
    :goto_16
    move-wide v5, v7

    .line 670
    :goto_17
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 671
    .line 672
    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    if-ne v2, v1, :cond_2e

    .line 677
    .line 678
    move-object v9, v1

    .line 679
    goto :goto_19

    .line 680
    :cond_2e
    :goto_18
    iget-object v0, v0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 681
    .line 682
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    instance-of v1, v1, Lkotlinx/coroutines/NotCompleted;

    .line 687
    .line 688
    if-eqz v1, :cond_2f

    .line 689
    .line 690
    sget-object v1, Landroidx/compose/material3/SnackbarResult;->Dismissed:Landroidx/compose/material3/SnackbarResult;

    .line 691
    .line 692
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    :cond_2f
    :goto_19
    return-object v9

    .line 696
    :pswitch_9
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 697
    .line 698
    iget v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 699
    .line 700
    if-eqz v0, :cond_31

    .line 701
    .line 702
    if-ne v0, v12, :cond_30

    .line 703
    .line 704
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 705
    .line 706
    .line 707
    goto :goto_1a

    .line 708
    :cond_30
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    move-object v9, v13

    .line 712
    goto :goto_1a

    .line 713
    :cond_31
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 714
    .line 715
    .line 716
    iget-object v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast v0, Lokhttp3/Cache$RealCacheRequest;

    .line 719
    .line 720
    iget-object v0, v0, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 723
    .line 724
    new-instance v1, Ljava/lang/Float;

    .line 725
    .line 726
    invoke-direct {v1, v5}, Ljava/lang/Float;-><init>(F)V

    .line 727
    .line 728
    .line 729
    move-object v2, v10

    .line 730
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    .line 731
    .line 732
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 733
    .line 734
    const/4 v3, 0x0

    .line 735
    const/16 v5, 0xc

    .line 736
    .line 737
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    if-ne v0, v6, :cond_32

    .line 742
    .line 743
    move-object v9, v6

    .line 744
    :cond_32
    :goto_1a
    return-object v9

    .line 745
    :pswitch_a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 746
    .line 747
    iget v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 748
    .line 749
    if-eqz v2, :cond_34

    .line 750
    .line 751
    if-ne v2, v12, :cond_33

    .line 752
    .line 753
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    goto :goto_1b

    .line 757
    :cond_33
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    move-object v9, v13

    .line 761
    goto :goto_1b

    .line 762
    :cond_34
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    iget-object v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 766
    .line 767
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 768
    .line 769
    check-cast v10, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 770
    .line 771
    iget-object v3, v10, Landroidx/compose/material/ripple/AndroidRippleNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 772
    .line 773
    iget-object v3, v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 774
    .line 775
    new-instance v5, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 776
    .line 777
    invoke-direct {v5, v1, v10, v2}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 781
    .line 782
    invoke-static {v3, v5, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    if-ne v1, v0, :cond_35

    .line 787
    .line 788
    move-object v9, v0

    .line 789
    :cond_35
    :goto_1b
    return-object v9

    .line 790
    :pswitch_b
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 791
    .line 792
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 793
    .line 794
    if-eqz v1, :cond_37

    .line 795
    .line 796
    if-ne v1, v12, :cond_36

    .line 797
    .line 798
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 799
    .line 800
    .line 801
    goto :goto_1c

    .line 802
    :cond_36
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    move-object v9, v13

    .line 806
    goto :goto_1c

    .line 807
    :cond_37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 808
    .line 809
    .line 810
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 811
    .line 812
    check-cast v1, Landroidx/compose/ui/platform/Clipboard;

    .line 813
    .line 814
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString;

    .line 815
    .line 816
    invoke-static {v10}, Landroidx/compose/foundation/internal/ClipboardUtils;->toClipEntry(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/platform/ClipEntry;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 821
    .line 822
    check-cast v1, Landroidx/compose/ui/platform/AndroidClipboard;

    .line 823
    .line 824
    invoke-virtual {v1, v2}, Landroidx/compose/ui/platform/AndroidClipboard;->setClipEntry(Landroidx/compose/ui/platform/ClipEntry;)V

    .line 825
    .line 826
    .line 827
    if-ne v9, v0, :cond_38

    .line 828
    .line 829
    move-object v9, v0

    .line 830
    :cond_38
    :goto_1c
    return-object v9

    .line 831
    :pswitch_c
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 832
    .line 833
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 834
    .line 835
    if-eqz v1, :cond_3a

    .line 836
    .line 837
    if-ne v1, v12, :cond_39

    .line 838
    .line 839
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 840
    .line 841
    .line 842
    move-object/from16 v13, p1

    .line 843
    .line 844
    goto :goto_1d

    .line 845
    :cond_39
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    goto :goto_1d

    .line 849
    :cond_3a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 850
    .line 851
    .line 852
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 853
    .line 854
    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    .line 855
    .line 856
    if-eqz v1, :cond_3c

    .line 857
    .line 858
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 859
    .line 860
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 861
    .line 862
    invoke-interface {v10, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    if-ne v1, v0, :cond_3b

    .line 867
    .line 868
    move-object v13, v0

    .line 869
    goto :goto_1d

    .line 870
    :cond_3b
    move-object v13, v1

    .line 871
    :cond_3c
    :goto_1d
    return-object v13

    .line 872
    :pswitch_d
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 873
    .line 874
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 875
    .line 876
    if-eqz v1, :cond_3e

    .line 877
    .line 878
    if-eq v1, v12, :cond_3d

    .line 879
    .line 880
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    goto :goto_1f

    .line 884
    :cond_3d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 885
    .line 886
    .line 887
    goto :goto_1e

    .line 888
    :cond_3e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 889
    .line 890
    .line 891
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 892
    .line 893
    check-cast v1, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 894
    .line 895
    check-cast v10, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 896
    .line 897
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 898
    .line 899
    invoke-static {v1, v10, v4}, Landroidx/compose/ui/platform/PlatformTextInputModifierNodeKt;->establishTextInputSession(Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;Landroidx/paging/FlowExtKt$simpleScan$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 900
    .line 901
    .line 902
    move-result-object v1

    .line 903
    if-ne v1, v0, :cond_3f

    .line 904
    .line 905
    move-object v13, v0

    .line 906
    goto :goto_1f

    .line 907
    :cond_3f
    :goto_1e
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 908
    .line 909
    .line 910
    :goto_1f
    return-object v13

    .line 911
    :pswitch_e
    check-cast v10, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 912
    .line 913
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 914
    .line 915
    iget v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 916
    .line 917
    const-wide/16 v14, 0x1f4

    .line 918
    .line 919
    if-eqz v2, :cond_44

    .line 920
    .line 921
    if-eq v2, v12, :cond_43

    .line 922
    .line 923
    if-eq v2, v8, :cond_42

    .line 924
    .line 925
    if-eq v2, v3, :cond_41

    .line 926
    .line 927
    if-ne v2, v1, :cond_40

    .line 928
    .line 929
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 930
    .line 931
    .line 932
    goto :goto_26

    .line 933
    :catchall_1
    move-exception v0

    .line 934
    goto :goto_27

    .line 935
    :cond_40
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 936
    .line 937
    .line 938
    goto :goto_25

    .line 939
    :cond_41
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 940
    .line 941
    .line 942
    goto :goto_23

    .line 943
    :cond_42
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 944
    .line 945
    .line 946
    goto :goto_21

    .line 947
    :cond_43
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 948
    .line 949
    .line 950
    goto :goto_20

    .line 951
    :cond_44
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 952
    .line 953
    .line 954
    iget-object v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 955
    .line 956
    check-cast v2, Lkotlinx/coroutines/Job;

    .line 957
    .line 958
    if-eqz v2, :cond_46

    .line 959
    .line 960
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 961
    .line 962
    invoke-interface {v2, v13}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 963
    .line 964
    .line 965
    invoke-interface {v2, v4}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    if-ne v2, v0, :cond_45

    .line 970
    .line 971
    move-object v9, v2

    .line 972
    :cond_45
    if-ne v9, v0, :cond_46

    .line 973
    .line 974
    goto :goto_24

    .line 975
    :cond_46
    :goto_20
    :try_start_4
    iget-object v2, v10, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cursorAlpha$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 976
    .line 977
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 978
    .line 979
    .line 980
    iget-boolean v2, v10, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->animate:Z

    .line 981
    .line 982
    if-nez v2, :cond_48

    .line 983
    .line 984
    iput v8, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 985
    .line 986
    invoke-static {v4}, Lkotlinx/coroutines/AwaitKt;->awaitCancellation(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    if-ne v1, v0, :cond_47

    .line 991
    .line 992
    goto :goto_24

    .line 993
    :cond_47
    :goto_21
    new-instance v0, Lcoil3/network/HttpException;

    .line 994
    .line 995
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 996
    .line 997
    .line 998
    throw v0

    .line 999
    :cond_48
    :goto_22
    iput v3, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1000
    .line 1001
    invoke-static {v14, v15, v4}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    if-ne v2, v0, :cond_49

    .line 1006
    .line 1007
    goto :goto_24

    .line 1008
    :cond_49
    :goto_23
    iget-object v2, v10, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cursorAlpha$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1009
    .line 1010
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 1011
    .line 1012
    .line 1013
    iput v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1014
    .line 1015
    invoke-static {v14, v15, v4}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v2

    .line 1019
    if-ne v2, v0, :cond_4a

    .line 1020
    .line 1021
    :goto_24
    move-object v13, v0

    .line 1022
    :goto_25
    return-object v13

    .line 1023
    :cond_4a
    :goto_26
    iget-object v2, v10, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cursorAlpha$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1024
    .line 1025
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1026
    .line 1027
    .line 1028
    goto :goto_22

    .line 1029
    :goto_27
    iget-object v1, v10, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cursorAlpha$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1030
    .line 1031
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 1032
    .line 1033
    .line 1034
    throw v0

    .line 1035
    :pswitch_f
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1036
    .line 1037
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1038
    .line 1039
    if-eqz v1, :cond_4d

    .line 1040
    .line 1041
    if-eq v1, v12, :cond_4c

    .line 1042
    .line 1043
    if-eq v1, v8, :cond_4b

    .line 1044
    .line 1045
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    :goto_28
    move-object v9, v13

    .line 1049
    goto :goto_2c

    .line 1050
    :cond_4b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1051
    .line 1052
    .line 1053
    goto :goto_2b

    .line 1054
    :cond_4c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    goto :goto_29

    .line 1058
    :cond_4d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1059
    .line 1060
    .line 1061
    new-instance v1, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;

    .line 1062
    .line 1063
    const/16 v3, 0x9

    .line 1064
    .line 1065
    invoke-direct {v1, v3}, Landroidx/compose/material3/ChipKt$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1066
    .line 1067
    .line 1068
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1069
    .line 1070
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1071
    .line 1072
    .line 1073
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v2

    .line 1077
    new-instance v3, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;

    .line 1078
    .line 1079
    invoke-direct {v3, v1, v6}, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1080
    .line 1081
    .line 1082
    invoke-interface {v2, v3, v4}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v1

    .line 1086
    if-ne v1, v0, :cond_4e

    .line 1087
    .line 1088
    goto :goto_2a

    .line 1089
    :cond_4e
    :goto_29
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1090
    .line 1091
    check-cast v1, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 1092
    .line 1093
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->getStylusHandwritingTrigger()Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v1

    .line 1097
    if-eqz v1, :cond_50

    .line 1098
    .line 1099
    new-instance v2, Landroidx/paging/ChannelFlowCollector;

    .line 1100
    .line 1101
    check-cast v10, Landroidx/cardview/widget/CardView$1;

    .line 1102
    .line 1103
    invoke-direct {v2, v12, v10}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 1104
    .line 1105
    .line 1106
    iput v8, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1107
    .line 1108
    check-cast v1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 1109
    .line 1110
    invoke-static {v1, v2, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v1

    .line 1114
    if-ne v1, v0, :cond_4f

    .line 1115
    .line 1116
    :goto_2a
    move-object v9, v0

    .line 1117
    goto :goto_2c

    .line 1118
    :cond_4f
    :goto_2b
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 1119
    .line 1120
    .line 1121
    goto :goto_28

    .line 1122
    :cond_50
    :goto_2c
    return-object v9

    .line 1123
    :pswitch_10
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1124
    .line 1125
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1126
    .line 1127
    if-eqz v1, :cond_52

    .line 1128
    .line 1129
    if-ne v1, v12, :cond_51

    .line 1130
    .line 1131
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1132
    .line 1133
    .line 1134
    goto :goto_2e

    .line 1135
    :cond_51
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    move-object v9, v13

    .line 1139
    goto :goto_2e

    .line 1140
    :cond_52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1141
    .line 1142
    .line 1143
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1144
    .line 1145
    move-object v14, v1

    .line 1146
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 1147
    .line 1148
    check-cast v10, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1149
    .line 1150
    new-instance v1, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;

    .line 1151
    .line 1152
    invoke-direct {v1, v10, v12}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 1153
    .line 1154
    .line 1155
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1156
    .line 1157
    sget-object v17, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->NoPressGesture:Landroidx/paging/CachedPagingDataKt$cachedIn$5;

    .line 1158
    .line 1159
    new-instance v13, Lorg/wikipedia/util/ShareUtil$shareImage$2;

    .line 1160
    .line 1161
    const/16 v19, 0x0

    .line 1162
    .line 1163
    const/4 v15, 0x0

    .line 1164
    const/16 v16, 0x0

    .line 1165
    .line 1166
    move-object/from16 v18, v1

    .line 1167
    .line 1168
    invoke-direct/range {v13 .. v19}, Lorg/wikipedia/util/ShareUtil$shareImage$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 1169
    .line 1170
    .line 1171
    invoke-static {v13, v4}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v1

    .line 1175
    if-ne v1, v0, :cond_53

    .line 1176
    .line 1177
    goto :goto_2d

    .line 1178
    :cond_53
    move-object v1, v9

    .line 1179
    :goto_2d
    if-ne v1, v0, :cond_54

    .line 1180
    .line 1181
    move-object v9, v0

    .line 1182
    :cond_54
    :goto_2e
    return-object v9

    .line 1183
    :pswitch_11
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1184
    .line 1185
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1186
    .line 1187
    if-eqz v1, :cond_56

    .line 1188
    .line 1189
    if-ne v1, v12, :cond_55

    .line 1190
    .line 1191
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1192
    .line 1193
    .line 1194
    goto :goto_2f

    .line 1195
    :cond_55
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    move-object v9, v13

    .line 1199
    goto :goto_2f

    .line 1200
    :cond_56
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1204
    .line 1205
    check-cast v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 1206
    .line 1207
    check-cast v10, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda29;

    .line 1208
    .line 1209
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1210
    .line 1211
    invoke-static {v1, v10, v4}, Lkotlin/ResultKt;->bringIntoView(Landroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v1

    .line 1215
    if-ne v1, v0, :cond_57

    .line 1216
    .line 1217
    move-object v9, v0

    .line 1218
    :cond_57
    :goto_2f
    return-object v9

    .line 1219
    :pswitch_12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1220
    .line 1221
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1222
    .line 1223
    if-eqz v1, :cond_59

    .line 1224
    .line 1225
    if-ne v1, v12, :cond_58

    .line 1226
    .line 1227
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1228
    .line 1229
    .line 1230
    goto :goto_30

    .line 1231
    :cond_58
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    move-object v9, v13

    .line 1235
    goto :goto_30

    .line 1236
    :cond_59
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1237
    .line 1238
    .line 1239
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1240
    .line 1241
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 1242
    .line 1243
    new-instance v2, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 1244
    .line 1245
    check-cast v10, Landroidx/compose/foundation/pager/PagerState;

    .line 1246
    .line 1247
    invoke-direct {v2, v12, v10, v13}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1248
    .line 1249
    .line 1250
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1251
    .line 1252
    invoke-static {v1, v2, v4}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v1

    .line 1256
    if-ne v1, v0, :cond_5a

    .line 1257
    .line 1258
    move-object v9, v0

    .line 1259
    :cond_5a
    :goto_30
    return-object v9

    .line 1260
    :pswitch_13
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1261
    .line 1262
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1263
    .line 1264
    if-eqz v1, :cond_5c

    .line 1265
    .line 1266
    if-ne v1, v12, :cond_5b

    .line 1267
    .line 1268
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1269
    .line 1270
    .line 1271
    goto :goto_31

    .line 1272
    :cond_5b
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    move-object v9, v13

    .line 1276
    goto :goto_31

    .line 1277
    :cond_5c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1278
    .line 1279
    .line 1280
    new-instance v1, Ljava/util/ArrayList;

    .line 1281
    .line 1282
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    .line 1284
    .line 1285
    iget-object v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1286
    .line 1287
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1288
    .line 1289
    iget-object v2, v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 1290
    .line 1291
    new-instance v3, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 1292
    .line 1293
    check-cast v10, Landroidx/compose/runtime/MutableState;

    .line 1294
    .line 1295
    invoke-direct {v3, v12, v1, v10}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1296
    .line 1297
    .line 1298
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1299
    .line 1300
    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v1

    .line 1304
    if-ne v1, v0, :cond_5d

    .line 1305
    .line 1306
    move-object v9, v0

    .line 1307
    :cond_5d
    :goto_31
    return-object v9

    .line 1308
    :pswitch_14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1309
    .line 1310
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1311
    .line 1312
    if-eqz v1, :cond_60

    .line 1313
    .line 1314
    if-eq v1, v12, :cond_5f

    .line 1315
    .line 1316
    if-ne v1, v8, :cond_5e

    .line 1317
    .line 1318
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1319
    .line 1320
    .line 1321
    goto :goto_34

    .line 1322
    :cond_5e
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    move-object v9, v13

    .line 1326
    goto :goto_34

    .line 1327
    :cond_5f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1328
    .line 1329
    .line 1330
    goto :goto_32

    .line 1331
    :cond_60
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1332
    .line 1333
    .line 1334
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1335
    .line 1336
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 1337
    .line 1338
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1339
    .line 1340
    invoke-interface {v1, v4}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v1

    .line 1344
    if-ne v1, v0, :cond_61

    .line 1345
    .line 1346
    goto :goto_33

    .line 1347
    :cond_61
    :goto_32
    check-cast v10, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 1348
    .line 1349
    iput v8, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1350
    .line 1351
    invoke-virtual {v10, v4}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->reset(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v1

    .line 1355
    if-ne v1, v0, :cond_62

    .line 1356
    .line 1357
    :goto_33
    move-object v9, v0

    .line 1358
    :cond_62
    :goto_34
    return-object v9

    .line 1359
    :pswitch_15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1360
    .line 1361
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1362
    .line 1363
    if-eqz v1, :cond_64

    .line 1364
    .line 1365
    if-ne v1, v12, :cond_63

    .line 1366
    .line 1367
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1368
    .line 1369
    .line 1370
    goto :goto_35

    .line 1371
    :cond_63
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    move-object v9, v13

    .line 1375
    goto :goto_35

    .line 1376
    :cond_64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1377
    .line 1378
    .line 1379
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1380
    .line 1381
    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 1382
    .line 1383
    iget-boolean v2, v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->isIndirectPointerEvent:Z

    .line 1384
    .line 1385
    if-eqz v2, :cond_65

    .line 1386
    .line 1387
    const/high16 v7, -0x40800000    # -1.0f

    .line 1388
    .line 1389
    :cond_65
    check-cast v10, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 1390
    .line 1391
    iget-object v2, v10, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1392
    .line 1393
    iget-wide v10, v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->velocity:J

    .line 1394
    .line 1395
    const/16 v1, 0x20

    .line 1396
    .line 1397
    shr-long v13, v10, v1

    .line 1398
    .line 1399
    long-to-int v3, v13

    .line 1400
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1401
    .line 1402
    .line 1403
    move-result v3

    .line 1404
    mul-float/2addr v3, v7

    .line 1405
    const-wide v13, 0xffffffffL

    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    and-long/2addr v10, v13

    .line 1411
    long-to-int v5, v10

    .line 1412
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1413
    .line 1414
    .line 1415
    move-result v5

    .line 1416
    mul-float/2addr v5, v7

    .line 1417
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1418
    .line 1419
    .line 1420
    move-result v3

    .line 1421
    int-to-long v7, v3

    .line 1422
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1423
    .line 1424
    .line 1425
    move-result v3

    .line 1426
    int-to-long v10, v3

    .line 1427
    shl-long/2addr v7, v1

    .line 1428
    and-long/2addr v10, v13

    .line 1429
    or-long/2addr v7, v10

    .line 1430
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1431
    .line 1432
    invoke-virtual {v2, v7, v8, v6, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->onScrollStopped-BMRW4eQ(JZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v1

    .line 1436
    if-ne v1, v0, :cond_66

    .line 1437
    .line 1438
    move-object v9, v0

    .line 1439
    :cond_66
    :goto_35
    return-object v9

    .line 1440
    :pswitch_16
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1441
    .line 1442
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1443
    .line 1444
    if-eqz v1, :cond_68

    .line 1445
    .line 1446
    if-ne v1, v12, :cond_67

    .line 1447
    .line 1448
    iget-object v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1449
    .line 1450
    move-object v1, v0

    .line 1451
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 1452
    .line 1453
    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1454
    .line 1455
    .line 1456
    move-object/from16 v2, p1

    .line 1457
    .line 1458
    goto :goto_36

    .line 1459
    :catchall_2
    move-exception v0

    .line 1460
    goto :goto_38

    .line 1461
    :cond_67
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1462
    .line 1463
    .line 1464
    goto :goto_37

    .line 1465
    :cond_68
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1466
    .line 1467
    .line 1468
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1469
    .line 1470
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1471
    .line 1472
    new-instance v2, Landroidx/paging/PageFetcher$flow$1$1;

    .line 1473
    .line 1474
    invoke-direct {v2, v8, v12, v13}, Landroidx/paging/PageFetcher$flow$1$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 1475
    .line 1476
    .line 1477
    invoke-static {v1, v13, v13, v2, v3}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v1

    .line 1481
    :try_start_6
    check-cast v10, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1482
    .line 1483
    iput-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1484
    .line 1485
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1486
    .line 1487
    invoke-virtual {v10, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1491
    if-ne v2, v0, :cond_69

    .line 1492
    .line 1493
    move-object v13, v0

    .line 1494
    goto :goto_37

    .line 1495
    :cond_69
    :goto_36
    invoke-interface {v1, v13}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1496
    .line 1497
    .line 1498
    move-object v13, v2

    .line 1499
    :goto_37
    return-object v13

    .line 1500
    :goto_38
    invoke-interface {v1, v13}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1501
    .line 1502
    .line 1503
    throw v0

    .line 1504
    :pswitch_17
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1505
    .line 1506
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1507
    .line 1508
    if-eqz v1, :cond_6b

    .line 1509
    .line 1510
    if-ne v1, v12, :cond_6a

    .line 1511
    .line 1512
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1513
    .line 1514
    .line 1515
    goto :goto_39

    .line 1516
    :cond_6a
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1517
    .line 1518
    .line 1519
    move-object v9, v13

    .line 1520
    goto :goto_39

    .line 1521
    :cond_6b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1522
    .line 1523
    .line 1524
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1525
    .line 1526
    check-cast v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;

    .line 1527
    .line 1528
    iget-object v1, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1529
    .line 1530
    sget-object v2, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    .line 1531
    .line 1532
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 1533
    .line 1534
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1535
    .line 1536
    invoke-virtual {v1, v2, v10, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v1

    .line 1540
    if-ne v1, v0, :cond_6c

    .line 1541
    .line 1542
    move-object v9, v0

    .line 1543
    :cond_6c
    :goto_39
    return-object v9

    .line 1544
    :pswitch_18
    move-object v1, v10

    .line 1545
    check-cast v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 1546
    .line 1547
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1548
    .line 1549
    iget v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1550
    .line 1551
    if-eqz v2, :cond_70

    .line 1552
    .line 1553
    if-eq v2, v12, :cond_6e

    .line 1554
    .line 1555
    if-ne v2, v8, :cond_6d

    .line 1556
    .line 1557
    iget-object v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1558
    .line 1559
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 1560
    .line 1561
    :try_start_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1562
    .line 1563
    .line 1564
    goto :goto_3a

    .line 1565
    :catchall_3
    move-exception v0

    .line 1566
    goto :goto_3e

    .line 1567
    :cond_6d
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1568
    .line 1569
    .line 1570
    move-object v9, v13

    .line 1571
    goto :goto_3d

    .line 1572
    :cond_6e
    iget-object v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1573
    .line 1574
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 1575
    .line 1576
    :try_start_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1577
    .line 1578
    .line 1579
    move-object/from16 v3, p1

    .line 1580
    .line 1581
    :cond_6f
    move-object v10, v2

    .line 1582
    goto :goto_3b

    .line 1583
    :cond_70
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1584
    .line 1585
    .line 1586
    iget-object v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1587
    .line 1588
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 1589
    .line 1590
    :goto_3a
    :try_start_9
    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v3

    .line 1594
    invoke-static {v3}, Lkotlinx/coroutines/AwaitKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    .line 1595
    .line 1596
    .line 1597
    move-result v3

    .line 1598
    if-eqz v3, :cond_72

    .line 1599
    .line 1600
    iget-object v3, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1601
    .line 1602
    iput-object v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1603
    .line 1604
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1605
    .line 1606
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1607
    .line 1608
    .line 1609
    move-result-object v3

    .line 1610
    if-ne v3, v0, :cond_6f

    .line 1611
    .line 1612
    goto :goto_3c

    .line 1613
    :goto_3b
    check-cast v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 1614
    .line 1615
    iget-object v2, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 1616
    .line 1617
    const/high16 v5, 0x40c00000    # 6.0f

    .line 1618
    .line 1619
    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 1620
    .line 1621
    .line 1622
    move-result v2

    .line 1623
    iget-object v5, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 1624
    .line 1625
    invoke-interface {v5, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 1626
    .line 1627
    .line 1628
    move-result v5

    .line 1629
    move v6, v2

    .line 1630
    iget-object v2, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1631
    .line 1632
    iput-object v10, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1633
    .line 1634
    iput v8, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1635
    .line 1636
    move/from16 v20, v6

    .line 1637
    .line 1638
    move-object v6, v4

    .line 1639
    move/from16 v4, v20

    .line 1640
    .line 1641
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1645
    move-object v4, v6

    .line 1646
    if-ne v2, v0, :cond_71

    .line 1647
    .line 1648
    :goto_3c
    move-object v9, v0

    .line 1649
    goto :goto_3d

    .line 1650
    :cond_71
    move-object v2, v10

    .line 1651
    goto :goto_3a

    .line 1652
    :cond_72
    iput-object v13, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->receivingMouseWheelEventsJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1653
    .line 1654
    :goto_3d
    return-object v9

    .line 1655
    :goto_3e
    iput-object v13, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->receivingMouseWheelEventsJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1656
    .line 1657
    throw v0

    .line 1658
    :pswitch_19
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1659
    .line 1660
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1661
    .line 1662
    if-eqz v1, :cond_74

    .line 1663
    .line 1664
    if-ne v1, v12, :cond_73

    .line 1665
    .line 1666
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1667
    .line 1668
    .line 1669
    goto :goto_3f

    .line 1670
    :cond_73
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1671
    .line 1672
    .line 1673
    move-object v9, v13

    .line 1674
    goto :goto_3f

    .line 1675
    :cond_74
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1676
    .line 1677
    .line 1678
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1679
    .line 1680
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1681
    .line 1682
    check-cast v10, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1683
    .line 1684
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1685
    .line 1686
    invoke-virtual {v1, v10, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v1

    .line 1690
    if-ne v1, v0, :cond_75

    .line 1691
    .line 1692
    move-object v9, v0

    .line 1693
    :cond_75
    :goto_3f
    return-object v9

    .line 1694
    :pswitch_1a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1695
    .line 1696
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1697
    .line 1698
    if-eqz v1, :cond_77

    .line 1699
    .line 1700
    if-ne v1, v12, :cond_76

    .line 1701
    .line 1702
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1703
    .line 1704
    .line 1705
    goto :goto_40

    .line 1706
    :cond_76
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1707
    .line 1708
    .line 1709
    move-object v9, v13

    .line 1710
    goto :goto_40

    .line 1711
    :cond_77
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1712
    .line 1713
    .line 1714
    iget-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1715
    .line 1716
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1717
    .line 1718
    check-cast v10, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1719
    .line 1720
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1721
    .line 1722
    invoke-virtual {v1, v10, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v1

    .line 1726
    if-ne v1, v0, :cond_78

    .line 1727
    .line 1728
    move-object v9, v0

    .line 1729
    :cond_78
    :goto_40
    return-object v9

    .line 1730
    :pswitch_1b
    check-cast v10, Landroidx/activity/compose/ComposePredictiveBackHandler;

    .line 1731
    .line 1732
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1733
    .line 1734
    iget v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1735
    .line 1736
    if-eqz v1, :cond_7a

    .line 1737
    .line 1738
    if-ne v1, v12, :cond_79

    .line 1739
    .line 1740
    iget-object v0, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1741
    .line 1742
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1743
    .line 1744
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1745
    .line 1746
    .line 1747
    goto :goto_42

    .line 1748
    :cond_79
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1749
    .line 1750
    .line 1751
    :goto_41
    move-object v9, v13

    .line 1752
    goto :goto_43

    .line 1753
    :cond_7a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1754
    .line 1755
    .line 1756
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->isBackEnabled()Z

    .line 1757
    .line 1758
    .line 1759
    move-result v1

    .line 1760
    if-eqz v1, :cond_7d

    .line 1761
    .line 1762
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1763
    .line 1764
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1765
    .line 1766
    .line 1767
    iget-object v2, v10, Landroidx/activity/compose/ComposePredictiveBackHandler;->currentOnBack:Lkotlin/jvm/functions/Function2;

    .line 1768
    .line 1769
    iget-object v3, v10, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1770
    .line 1771
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1772
    .line 1773
    .line 1774
    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->consumeAsFlow(Lkotlinx/coroutines/channels/BufferedChannel;)Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v3

    .line 1778
    new-instance v5, Landroidx/paging/MulticastedPagingData$asPagingData$2;

    .line 1779
    .line 1780
    invoke-direct {v5, v12, v1, v13}, Landroidx/paging/MulticastedPagingData$asPagingData$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1781
    .line 1782
    .line 1783
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

    .line 1784
    .line 1785
    invoke-direct {v6, v3, v5}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 1786
    .line 1787
    .line 1788
    iput-object v1, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1789
    .line 1790
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1791
    .line 1792
    invoke-interface {v2, v6, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v2

    .line 1796
    if-ne v2, v0, :cond_7b

    .line 1797
    .line 1798
    move-object v9, v0

    .line 1799
    goto :goto_43

    .line 1800
    :cond_7b
    move-object v0, v1

    .line 1801
    :goto_42
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1802
    .line 1803
    if-eqz v0, :cond_7c

    .line 1804
    .line 1805
    goto :goto_43

    .line 1806
    :cond_7c
    const-string v0, "You must collect the progress flow"

    .line 1807
    .line 1808
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1809
    .line 1810
    .line 1811
    goto :goto_41

    .line 1812
    :cond_7d
    :goto_43
    return-object v9

    .line 1813
    :pswitch_1c
    check-cast v10, Lcoil3/ImageLoader$Builder;

    .line 1814
    .line 1815
    iget-object v0, v10, Lcoil3/ImageLoader$Builder;->extras:Ljava/lang/Object;

    .line 1816
    .line 1817
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1818
    .line 1819
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1820
    .line 1821
    iget v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1822
    .line 1823
    if-eqz v2, :cond_80

    .line 1824
    .line 1825
    if-eq v2, v12, :cond_7f

    .line 1826
    .line 1827
    if-ne v2, v8, :cond_7e

    .line 1828
    .line 1829
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1830
    .line 1831
    .line 1832
    goto :goto_47

    .line 1833
    :cond_7e
    invoke-static {v11}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1834
    .line 1835
    .line 1836
    :goto_44
    move-object v9, v13

    .line 1837
    goto :goto_48

    .line 1838
    :cond_7f
    iget-object v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1839
    .line 1840
    check-cast v2, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    .line 1841
    .line 1842
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1843
    .line 1844
    .line 1845
    move-object/from16 v3, p1

    .line 1846
    .line 1847
    goto :goto_45

    .line 1848
    :cond_80
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1849
    .line 1850
    .line 1851
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 1852
    .line 1853
    .line 1854
    move-result v2

    .line 1855
    if-lez v2, :cond_84

    .line 1856
    .line 1857
    :cond_81
    iget-object v2, v10, Lcoil3/ImageLoader$Builder;->application:Ljava/lang/Object;

    .line 1858
    .line 1859
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 1860
    .line 1861
    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v2

    .line 1865
    invoke-static {v2}, Lkotlinx/coroutines/AwaitKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 1866
    .line 1867
    .line 1868
    iget-object v2, v10, Lcoil3/ImageLoader$Builder;->defaults:Ljava/lang/Object;

    .line 1869
    .line 1870
    check-cast v2, Landroidx/datastore/core/SingleProcessDataStore$data$1;

    .line 1871
    .line 1872
    iget-object v3, v10, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    .line 1873
    .line 1874
    check-cast v3, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1875
    .line 1876
    iput-object v2, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1877
    .line 1878
    iput v12, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1879
    .line 1880
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v3

    .line 1884
    if-ne v3, v1, :cond_82

    .line 1885
    .line 1886
    goto :goto_46

    .line 1887
    :cond_82
    :goto_45
    iput-object v13, v4, Landroidx/datastore/core/SimpleActor$offer$2;->L$0:Ljava/lang/Object;

    .line 1888
    .line 1889
    iput v8, v4, Landroidx/datastore/core/SimpleActor$offer$2;->label:I

    .line 1890
    .line 1891
    invoke-interface {v2, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v2

    .line 1895
    if-ne v2, v1, :cond_83

    .line 1896
    .line 1897
    :goto_46
    move-object v9, v1

    .line 1898
    goto :goto_48

    .line 1899
    :cond_83
    :goto_47
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1900
    .line 1901
    .line 1902
    move-result v2

    .line 1903
    if-nez v2, :cond_81

    .line 1904
    .line 1905
    goto :goto_48

    .line 1906
    :cond_84
    const-string v0, "Check failed."

    .line 1907
    .line 1908
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1909
    .line 1910
    .line 1911
    goto :goto_44

    .line 1912
    :goto_48
    return-object v9

    .line 1913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
