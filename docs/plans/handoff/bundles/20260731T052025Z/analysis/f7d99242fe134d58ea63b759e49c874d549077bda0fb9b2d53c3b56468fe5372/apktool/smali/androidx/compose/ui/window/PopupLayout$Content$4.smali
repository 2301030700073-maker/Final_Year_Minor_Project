.class public final Landroidx/compose/ui/window/PopupLayout$Content$4;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $tmp0_rcvr:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/window/PopupLayout$Content$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/window/PopupLayout$Content$4;->$tmp0_rcvr:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/platform/AbstractComposeView;II)V
    .locals 0

    .line 10
    iput p3, p0, Landroidx/compose/ui/window/PopupLayout$Content$4;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/window/PopupLayout$Content$4;->$tmp0_rcvr:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Landroidx/compose/ui/window/PopupLayout$Content$4;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object p0, p0, Landroidx/compose/ui/window/PopupLayout$Content$4;->$tmp0_rcvr:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 14
    .line 15
    check-cast p2, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    check-cast p0, Landroidx/compose/ui/window/DialogLayout;

    .line 21
    .line 22
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/window/DialogLayout;->Content(Landroidx/compose/runtime/Composer;I)V

    .line 27
    .line 28
    .line 29
    return-object v3

    .line 30
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 31
    .line 32
    check-cast p2, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    and-int/lit8 v0, p2, 0x3

    .line 39
    .line 40
    if-eq v0, v1, :cond_0

    .line 41
    .line 42
    move v0, v4

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v0, v2

    .line 45
    :goto_0
    and-int/2addr p2, v4

    .line 46
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 59
    .line 60
    if-ne p2, v0, :cond_1

    .line 61
    .line 62
    sget-object p2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1$1;->INSTANCE$1:Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1$1;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    new-instance v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 70
    .line 71
    invoke-direct {v0, p2, v2}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 72
    .line 73
    .line 74
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 75
    .line 76
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 81
    .line 82
    invoke-static {v0, p0, p1, v2}, Landroidx/core/util/DebugUtils;->access$DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-object v3

    .line 90
    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 91
    .line 92
    check-cast p2, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 95
    .line 96
    .line 97
    check-cast p0, Landroidx/compose/ui/platform/ComposeView;

    .line 98
    .line 99
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/ComposeView;->Content(Landroidx/compose/runtime/Composer;I)V

    .line 104
    .line 105
    .line 106
    return-object v3

    .line 107
    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 108
    .line 109
    check-cast p2, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    and-int/lit8 v0, p2, 0x3

    .line 116
    .line 117
    if-eq v0, v1, :cond_3

    .line 118
    .line 119
    move v0, v4

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    move v0, v2

    .line 122
    :goto_2
    and-int/2addr p2, v4

    .line 123
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 124
    .line 125
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_4

    .line 130
    .line 131
    check-cast p0, Landroidx/compose/ui/platform/AbstractComposeView;

    .line 132
    .line 133
    invoke-virtual {p0, p1, v2}, Landroidx/compose/ui/platform/AbstractComposeView;->Content(Landroidx/compose/runtime/Composer;I)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 138
    .line 139
    .line 140
    :goto_3
    return-object v3

    .line 141
    :pswitch_3
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 142
    .line 143
    check-cast p2, Ljava/lang/Number;

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    and-int/lit8 v0, p2, 0x3

    .line 150
    .line 151
    if-eq v0, v1, :cond_5

    .line 152
    .line 153
    move v0, v4

    .line 154
    goto :goto_4

    .line 155
    :cond_5
    move v0, v2

    .line 156
    :goto_4
    and-int/2addr p2, v4

    .line 157
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 158
    .line 159
    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_7

    .line 164
    .line 165
    check-cast p0, Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    move v0, v2

    .line 172
    :goto_5
    if-ge v0, p2, :cond_8

    .line 173
    .line 174
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 179
    .line 180
    iget-wide v5, p1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 181
    .line 182
    const/16 v7, 0x20

    .line 183
    .line 184
    ushr-long v7, v5, v7

    .line 185
    .line 186
    xor-long/2addr v5, v7

    .line 187
    long-to-int v5, v5

    .line 188
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->VirtualConstructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 194
    .line 195
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 196
    .line 197
    .line 198
    iget-boolean v7, p1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 199
    .line 200
    if-eqz v7, :cond_6

    .line 201
    .line 202
    invoke-virtual {p1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 207
    .line 208
    .line 209
    :goto_6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 214
    .line 215
    invoke-static {p1, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 216
    .line 217
    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-interface {v1, p1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 226
    .line 227
    .line 228
    add-int/lit8 v0, v0, 0x1

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 232
    .line 233
    .line 234
    :cond_8
    return-object v3

    .line 235
    :pswitch_4
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 236
    .line 237
    check-cast p2, Landroidx/compose/ui/Modifier$Element;

    .line 238
    .line 239
    check-cast p0, Landroidx/compose/runtime/Composer;

    .line 240
    .line 241
    instance-of v0, p2, Landroidx/compose/ui/ComposedModifier;

    .line 242
    .line 243
    if-eqz v0, :cond_9

    .line 244
    .line 245
    check-cast p2, Landroidx/compose/ui/ComposedModifier;

    .line 246
    .line 247
    iget-object p2, p2, Landroidx/compose/ui/ComposedModifier;->factory:Lkotlin/jvm/functions/Function3;

    .line 248
    .line 249
    const/4 v0, 0x3

    .line 250
    invoke-static {v0, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 254
    .line 255
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-interface {p2, v0, p0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p2

    .line 263
    check-cast p2, Landroidx/compose/ui/Modifier;

    .line 264
    .line 265
    invoke-static {p0, p2}, Landroidx/compose/ui/AbsoluteAlignment;->materializeImpl(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    :cond_9
    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0

    .line 274
    :pswitch_5
    check-cast p1, Landroidx/compose/animation/EnterExitState;

    .line 275
    .line 276
    check-cast p2, Landroidx/compose/animation/EnterExitState;

    .line 277
    .line 278
    sget-object v0, Landroidx/compose/animation/EnterExitState;->PostExit:Landroidx/compose/animation/EnterExitState;

    .line 279
    .line 280
    if-ne p1, v0, :cond_a

    .line 281
    .line 282
    if-ne p2, v0, :cond_a

    .line 283
    .line 284
    check-cast p0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 285
    .line 286
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    .line 287
    .line 288
    iget-boolean p0, p0, Landroidx/compose/animation/TransitionData;->hold:Z

    .line 289
    .line 290
    if-nez p0, :cond_a

    .line 291
    .line 292
    move v2, v4

    .line 293
    :cond_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    return-object p0

    .line 298
    :pswitch_6
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 299
    .line 300
    check-cast p2, Ljava/lang/Number;

    .line 301
    .line 302
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 303
    .line 304
    .line 305
    check-cast p0, Landroidx/compose/ui/window/PopupLayout;

    .line 306
    .line 307
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/window/PopupLayout;->Content(Landroidx/compose/runtime/Composer;I)V

    .line 312
    .line 313
    .line 314
    return-object v3

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
