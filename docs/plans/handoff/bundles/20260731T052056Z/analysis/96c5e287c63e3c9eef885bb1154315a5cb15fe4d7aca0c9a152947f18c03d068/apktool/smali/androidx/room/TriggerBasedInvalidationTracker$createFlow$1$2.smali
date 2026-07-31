.class public final Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$flow:Ljava/lang/Object;

.field public final synthetic $currentVersions:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $resolvedTableNames:Ljava/lang/Object;

.field public final synthetic $tableIds:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    iget-object v6, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move-object v0, p2

    .line 22
    check-cast v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;

    .line 23
    .line 24
    iget v1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    .line 25
    .line 26
    const/high16 v2, -0x80000000

    .line 27
    .line 28
    and-int v3, v1, v2

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;

    .line 37
    .line 38
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->result:Ljava/lang/Object;

    .line 42
    .line 43
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    iget v2, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    if-ne v2, v4, :cond_1

    .line 51
    .line 52
    iget-object p1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$1:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p0, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    .line 55
    .line 56
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v5, v3

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object p2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p2, Lkotlinx/coroutines/Job;

    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    new-instance v2, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    .line 79
    .line 80
    const-string v6, "Child of the scoped flow was cancelled"

    .line 81
    .line 82
    invoke-direct {v2, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p2, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 86
    .line 87
    .line 88
    iput-object p0, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    .line 89
    .line 90
    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$1:Ljava/lang/Object;

    .line 91
    .line 92
    iput v4, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    .line 93
    .line 94
    invoke-interface {p2, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-ne p2, v1, :cond_3

    .line 99
    .line 100
    move-object v5, v1

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    :goto_1
    iget-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 105
    .line 106
    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 109
    .line 110
    sget-object v1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 111
    .line 112
    new-instance v2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;

    .line 113
    .line 114
    iget-object v6, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v6, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 117
    .line 118
    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 121
    .line 122
    invoke-direct {v2, v6, p0, p1, v3}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;-><init>(Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v0, v3, v1, v2, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 130
    .line 131
    :goto_2
    return-object v5

    .line 132
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    check-cast v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 139
    .line 140
    check-cast v6, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 141
    .line 142
    if-eqz p0, :cond_4

    .line 143
    .line 144
    invoke-virtual {v6}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-eqz p0, :cond_4

    .line 149
    .line 150
    check-cast v2, Landroidx/compose/ui/text/input/TextInputService;

    .line 151
    .line 152
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    check-cast v1, Landroidx/compose/ui/text/input/ImeOptions;

    .line 157
    .line 158
    iget-object p1, v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 159
    .line 160
    invoke-static {v2, v6, p0, v1, p1}, Landroidx/compose/foundation/text/BasicTextKt;->startInputSession(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_4
    invoke-static {v6}, Landroidx/compose/foundation/text/BasicTextKt;->endInputSession(Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    .line 165
    .line 166
    .line 167
    :goto_3
    return-object v5

    .line 168
    :pswitch_1
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 169
    .line 170
    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 171
    .line 172
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 173
    .line 174
    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    .line 175
    .line 176
    instance-of p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 177
    .line 178
    if-eqz p0, :cond_5

    .line 179
    .line 180
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 181
    .line 182
    add-int/2addr p0, v4

    .line 183
    iput p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_5
    instance-of p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 187
    .line 188
    if-eqz p0, :cond_6

    .line 189
    .line 190
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 191
    .line 192
    add-int/lit8 p0, p0, -0x1

    .line 193
    .line 194
    iput p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_6
    instance-of p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 198
    .line 199
    if-eqz p0, :cond_7

    .line 200
    .line 201
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 202
    .line 203
    add-int/lit8 p0, p0, -0x1

    .line 204
    .line 205
    iput p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_7
    instance-of p0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 209
    .line 210
    if-eqz p0, :cond_8

    .line 211
    .line 212
    iget p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 213
    .line 214
    add-int/2addr p0, v4

    .line 215
    iput p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_8
    instance-of p0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 219
    .line 220
    if-eqz p0, :cond_9

    .line 221
    .line 222
    iget p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 223
    .line 224
    add-int/lit8 p0, p0, -0x1

    .line 225
    .line 226
    iput p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_9
    instance-of p0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 230
    .line 231
    if-eqz p0, :cond_a

    .line 232
    .line 233
    iget p0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 234
    .line 235
    add-int/2addr p0, v4

    .line 236
    iput p0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_a
    instance-of p0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 240
    .line 241
    if-eqz p0, :cond_b

    .line 242
    .line 243
    iget p0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 244
    .line 245
    add-int/lit8 p0, p0, -0x1

    .line 246
    .line 247
    iput p0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 248
    .line 249
    :cond_b
    :goto_4
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 250
    .line 251
    const/4 p1, 0x0

    .line 252
    if-lez p0, :cond_c

    .line 253
    .line 254
    move p0, v4

    .line 255
    goto :goto_5

    .line 256
    :cond_c
    move p0, p1

    .line 257
    :goto_5
    iget p2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 258
    .line 259
    if-lez p2, :cond_d

    .line 260
    .line 261
    move p2, v4

    .line 262
    goto :goto_6

    .line 263
    :cond_d
    move p2, p1

    .line 264
    :goto_6
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 265
    .line 266
    if-lez v0, :cond_e

    .line 267
    .line 268
    move v0, v4

    .line 269
    goto :goto_7

    .line 270
    :cond_e
    move v0, p1

    .line 271
    :goto_7
    check-cast v1, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    .line 272
    .line 273
    iget-boolean v2, v1, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Z

    .line 274
    .line 275
    if-eq v2, p0, :cond_f

    .line 276
    .line 277
    iput-boolean p0, v1, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Z

    .line 278
    .line 279
    move p1, v4

    .line 280
    :cond_f
    iget-boolean p0, v1, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Z

    .line 281
    .line 282
    if-eq p0, p2, :cond_10

    .line 283
    .line 284
    iput-boolean p2, v1, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Z

    .line 285
    .line 286
    move p1, v4

    .line 287
    :cond_10
    iget-boolean p0, v1, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Z

    .line 288
    .line 289
    if-eq p0, v0, :cond_11

    .line 290
    .line 291
    iput-boolean v0, v1, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Z

    .line 292
    .line 293
    goto :goto_8

    .line 294
    :cond_11
    move v4, p1

    .line 295
    :goto_8
    if-eqz v4, :cond_12

    .line 296
    .line 297
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 298
    .line 299
    .line 300
    :cond_12
    return-object v5

    .line 301
    :pswitch_2
    check-cast p1, [I

    .line 302
    .line 303
    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->emit([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    return-object p0

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emit([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    instance-of v3, p2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    if-eqz v3, :cond_0

    move-object v3, p2

    check-cast v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    iget v4, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    invoke-direct {v3, p0, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->result:Ljava/lang/Object;

    .line 309
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 310
    iget v5, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    return-object v6

    :cond_2
    :goto_1
    iget-object p1, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$0:[I

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 311
    iget-object p2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p2, :cond_4

    .line 312
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iput-object p1, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$0:[I

    iput v8, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    invoke-interface {v1, p0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v4, :cond_8

    goto :goto_3

    .line 313
    :cond_4
    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    check-cast p0, [I

    .line 314
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 315
    array-length v5, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    if-ge v8, v5, :cond_7

    aget-object v10, v0, v8

    add-int/lit8 v11, v9, 0x1

    .line 316
    iget-object v12, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v12, :cond_6

    check-cast v12, [I

    aget v9, p0, v9

    aget v12, v12, v9

    .line 317
    aget v9, p1, v9

    if-eq v12, v9, :cond_5

    .line 318
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_2

    .line 319
    :cond_6
    const-string p0, "Required value was null."

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    return-object v6

    .line 320
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    .line 321
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    iput-object p1, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$0:[I

    iput v7, v3, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    invoke-interface {v1, p0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v4, :cond_8

    :goto_3
    return-object v4

    .line 322
    :cond_8
    :goto_4
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 323
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
