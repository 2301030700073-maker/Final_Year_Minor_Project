.class public abstract Landroidx/compose/ui/unit/DpKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;
    .locals 2

    .line 1
    and-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move p0, v1

    .line 7
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 12
    .line 13
    :cond_1
    const/4 p1, -0x2

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p0, p1, :cond_8

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    if-eq p0, p1, :cond_6

    .line 19
    .line 20
    if-eqz p0, :cond_4

    .line 21
    .line 22
    const p1, 0x7fffffff

    .line 23
    .line 24
    .line 25
    if-eq p0, p1, :cond_3

    .line 26
    .line 27
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 28
    .line 29
    if-ne p2, p1, :cond_2

    .line 30
    .line 31
    new-instance p1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(I)V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_2
    new-instance p1, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 38
    .line 39
    invoke-direct {p1, p0, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_3
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 44
    .line 45
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(I)V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_4
    sget-object p0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 50
    .line 51
    if-ne p2, p0, :cond_5

    .line 52
    .line 53
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 54
    .line 55
    invoke-direct {p0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(I)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_5
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 60
    .line 61
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 62
    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_6
    sget-object p0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 66
    .line 67
    if-ne p2, p0, :cond_7

    .line 68
    .line 69
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 70
    .line 71
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 72
    .line 73
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_7
    const-string p0, "CONFLATED capacity cannot be used with non-default onBufferOverflow"

    .line 78
    .line 79
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    return-object p0

    .line 84
    :cond_8
    sget-object p0, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 85
    .line 86
    if-ne p2, p0, :cond_9

    .line 87
    .line 88
    new-instance p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 89
    .line 90
    sget-object p1, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget p1, Lkotlinx/coroutines/channels/Channel$Factory;->CHANNEL_DEFAULT_CAPACITY:I

    .line 96
    .line 97
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(I)V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_9
    new-instance p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;

    .line 102
    .line 103
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;)V

    .line 104
    .line 105
    .line 106
    return-object p0
.end method

.method public static final DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/GapComposer;I)V
    .locals 18

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    const v0, 0x118f13d0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    or-int/2addr v0, v7

    .line 24
    and-int/lit8 v0, v0, 0x3

    .line 25
    .line 26
    const/16 v8, 0x19

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_7

    .line 41
    .line 42
    :cond_2
    :goto_1
    invoke-static {v6}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Landroidx/navigation/NavController$NavControllerNavigatorState;->backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 51
    .line 52
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-static {v0, v1, v6, v9, v9}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/runtime/MutableState;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/util/List;

    .line 66
    .line 67
    sget-object v4, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 68
    .line 69
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 88
    .line 89
    if-nez v5, :cond_3

    .line 90
    .line 91
    if-ne v10, v11, :cond_7

    .line 92
    .line 93
    :cond_3
    new-instance v10, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 94
    .line 95
    invoke-direct {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v5, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-eqz v12, :cond_6

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    move-object v13, v12

    .line 118
    check-cast v13, Landroidx/navigation/NavBackStackEntry;

    .line 119
    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    const/4 v13, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_5
    iget-object v13, v13, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 125
    .line 126
    iget-object v13, v13, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 127
    .line 128
    iget-object v13, v13, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 129
    .line 130
    sget-object v14, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    .line 131
    .line 132
    invoke-virtual {v13, v14}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    .line 133
    .line 134
    .line 135
    move-result v13

    .line 136
    :goto_3
    if-eqz v13, :cond_4

    .line 137
    .line 138
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_7
    check-cast v10, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 149
    .line 150
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/util/List;

    .line 155
    .line 156
    invoke-static {v10, v0, v6, v9}, Landroidx/compose/ui/unit/DpKt;->PopulateVisibleList(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/GapComposer;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v0, v0, Landroidx/navigation/NavController$NavControllerNavigatorState;->transitionsInProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 164
    .line 165
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v0, v1, v6, v9, v9}, Landroidx/compose/runtime/Updater;->collectAsState(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Landroidx/compose/runtime/GapComposer;II)Landroidx/compose/runtime/MutableState;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-ne v0, v11, :cond_8

    .line 178
    .line 179
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 180
    .line 181
    invoke-direct {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    move-object v4, v0

    .line 188
    check-cast v4, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 189
    .line 190
    const v0, -0x15e65d02

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    :goto_4
    move-object v0, v10

    .line 201
    check-cast v0, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 202
    .line 203
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_b

    .line 208
    .line 209
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    move-object v1, v0

    .line 214
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 215
    .line 216
    iget-object v0, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    move-object v5, v0

    .line 222
    check-cast v5, Landroidx/navigation/compose/DialogNavigator$Destination;

    .line 223
    .line 224
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    or-int/2addr v0, v13

    .line 233
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v13

    .line 237
    if-nez v0, :cond_9

    .line 238
    .line 239
    if-ne v13, v11, :cond_a

    .line 240
    .line 241
    :cond_9
    new-instance v13, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 242
    .line 243
    invoke-direct {v13, v8, v2, v1}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_a
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 250
    .line 251
    iget-object v14, v5, Landroidx/navigation/compose/DialogNavigator$Destination;->dialogProperties:Landroidx/compose/ui/window/DialogProperties;

    .line 252
    .line 253
    new-instance v0, Landroidx/compose/material3/ListItemKt$ListItem$2;

    .line 254
    .line 255
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ListItemKt$ListItem$2;-><init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/navigation/compose/DialogNavigator$Destination;)V

    .line 256
    .line 257
    .line 258
    move-object v15, v2

    .line 259
    move-object/from16 v16, v3

    .line 260
    .line 261
    move-object/from16 v17, v4

    .line 262
    .line 263
    const v1, 0x43541ebc

    .line 264
    .line 265
    .line 266
    invoke-static {v1, v0, v6}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    const/16 v4, 0x180

    .line 271
    .line 272
    const/4 v5, 0x0

    .line 273
    move-object v3, v6

    .line 274
    move-object v0, v13

    .line 275
    move-object v1, v14

    .line 276
    invoke-static/range {v0 .. v5}, Lcoil3/util/UtilsKt;->Dialog(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 277
    .line 278
    .line 279
    move-object v2, v15

    .line 280
    move-object/from16 v3, v16

    .line 281
    .line 282
    move-object/from16 v4, v17

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_b
    move-object v15, v2

    .line 286
    move-object/from16 v17, v4

    .line 287
    .line 288
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    move-object v9, v0

    .line 296
    check-cast v9, Ljava/util/Set;

    .line 297
    .line 298
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    or-int/2addr v0, v1

    .line 307
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    if-nez v0, :cond_d

    .line 312
    .line 313
    if-ne v1, v11, :cond_c

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_c
    move-object v2, v15

    .line 317
    move-object/from16 v3, v17

    .line 318
    .line 319
    goto :goto_6

    .line 320
    :cond_d
    :goto_5
    new-instance v0, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 321
    .line 322
    const/4 v5, 0x3

    .line 323
    const/4 v4, 0x0

    .line 324
    move-object v1, v12

    .line 325
    move-object v2, v15

    .line 326
    move-object/from16 v3, v17

    .line 327
    .line 328
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    move-object v1, v0

    .line 335
    :goto_6
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 336
    .line 337
    invoke-static {v9, v3, v1, v6}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;)V

    .line 338
    .line 339
    .line 340
    :goto_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-eqz v0, :cond_e

    .line 345
    .line 346
    new-instance v1, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 347
    .line 348
    invoke-direct {v1, v7, v8, v2}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 352
    .line 353
    :cond_e
    return-void
.end method

.method public static final DpSize-YgX7TsA(FF)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    int-to-long p0, p0

    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    shl-long/2addr v0, v2

    .line 14
    const-wide v2, 0xffffffffL

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    and-long/2addr p0, v2

    .line 20
    or-long/2addr p0, v0

    .line 21
    return-wide p0
.end method

.method public static final HorizontalPager--8jOkeI(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;ILandroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v13, p12

    .line 4
    .line 5
    move/from16 v0, p13

    .line 6
    .line 7
    const v2, 0x6eeaae29

    .line 8
    .line 9
    .line 10
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v4, 0x4

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    move v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x2

    .line 23
    :goto_0
    or-int/2addr v2, v0

    .line 24
    and-int/lit8 v5, p14, 0x2

    .line 25
    .line 26
    if-eqz v5, :cond_2

    .line 27
    .line 28
    or-int/lit8 v2, v2, 0x30

    .line 29
    .line 30
    :cond_1
    move-object/from16 v6, p1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    and-int/lit8 v6, v0, 0x30

    .line 34
    .line 35
    if-nez v6, :cond_1

    .line 36
    .line 37
    move-object/from16 v6, p1

    .line 38
    .line 39
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_3

    .line 44
    .line 45
    const/16 v7, 0x20

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    const/16 v7, 0x10

    .line 49
    .line 50
    :goto_1
    or-int/2addr v2, v7

    .line 51
    :goto_2
    and-int/lit8 v7, p14, 0x4

    .line 52
    .line 53
    if-eqz v7, :cond_5

    .line 54
    .line 55
    or-int/lit16 v2, v2, 0x180

    .line 56
    .line 57
    :cond_4
    move-object/from16 v8, p2

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_5
    and-int/lit16 v8, v0, 0x180

    .line 61
    .line 62
    if-nez v8, :cond_4

    .line 63
    .line 64
    move-object/from16 v8, p2

    .line 65
    .line 66
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-eqz v9, :cond_6

    .line 71
    .line 72
    const/16 v9, 0x100

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_6
    const/16 v9, 0x80

    .line 76
    .line 77
    :goto_3
    or-int/2addr v2, v9

    .line 78
    :goto_4
    or-int/lit16 v9, v2, 0xc00

    .line 79
    .line 80
    and-int/lit8 v10, p14, 0x10

    .line 81
    .line 82
    if-eqz v10, :cond_8

    .line 83
    .line 84
    or-int/lit16 v9, v2, 0x6c00

    .line 85
    .line 86
    :cond_7
    move/from16 v2, p4

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_8
    and-int/lit16 v2, v0, 0x6000

    .line 90
    .line 91
    if-nez v2, :cond_7

    .line 92
    .line 93
    move/from16 v2, p4

    .line 94
    .line 95
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-eqz v11, :cond_9

    .line 100
    .line 101
    const/16 v11, 0x4000

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_9
    const/16 v11, 0x2000

    .line 105
    .line 106
    :goto_5
    or-int/2addr v9, v11

    .line 107
    :goto_6
    const/high16 v11, 0x30000

    .line 108
    .line 109
    or-int v12, v9, v11

    .line 110
    .line 111
    and-int/lit8 v14, p14, 0x40

    .line 112
    .line 113
    if-eqz v14, :cond_b

    .line 114
    .line 115
    const/high16 v12, 0x1b0000

    .line 116
    .line 117
    or-int/2addr v12, v9

    .line 118
    :cond_a
    move-object/from16 v9, p5

    .line 119
    .line 120
    goto :goto_8

    .line 121
    :cond_b
    const/high16 v9, 0x180000

    .line 122
    .line 123
    and-int/2addr v9, v0

    .line 124
    if-nez v9, :cond_a

    .line 125
    .line 126
    move-object/from16 v9, p5

    .line 127
    .line 128
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    if-eqz v15, :cond_c

    .line 133
    .line 134
    const/high16 v15, 0x100000

    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_c
    const/high16 v15, 0x80000

    .line 138
    .line 139
    :goto_7
    or-int/2addr v12, v15

    .line 140
    :goto_8
    const/high16 v15, 0x36400000

    .line 141
    .line 142
    or-int/2addr v12, v15

    .line 143
    const v15, 0x12492493

    .line 144
    .line 145
    .line 146
    and-int/2addr v15, v12

    .line 147
    move/from16 v16, v11

    .line 148
    .line 149
    const v11, 0x12492492

    .line 150
    .line 151
    .line 152
    const/4 v3, 0x1

    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    if-ne v15, v11, :cond_d

    .line 156
    .line 157
    move/from16 v11, v17

    .line 158
    .line 159
    goto :goto_9

    .line 160
    :cond_d
    move v11, v3

    .line 161
    :goto_9
    and-int/lit8 v15, v12, 0x1

    .line 162
    .line 163
    invoke-virtual {v13, v15, v11}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    if-eqz v11, :cond_1e

    .line 168
    .line 169
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->startDefaults()V

    .line 170
    .line 171
    .line 172
    and-int/lit8 v11, v0, 0x1

    .line 173
    .line 174
    const v15, -0x1c00001

    .line 175
    .line 176
    .line 177
    if-eqz v11, :cond_f

    .line 178
    .line 179
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->getDefaultsInvalid()Z

    .line 180
    .line 181
    .line 182
    move-result v11

    .line 183
    if-eqz v11, :cond_e

    .line 184
    .line 185
    goto :goto_a

    .line 186
    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 187
    .line 188
    .line 189
    and-int v3, v12, v15

    .line 190
    .line 191
    move-object/from16 v4, p6

    .line 192
    .line 193
    move/from16 v19, p7

    .line 194
    .line 195
    move-object/from16 v11, p9

    .line 196
    .line 197
    move v7, v2

    .line 198
    move-object v5, v6

    .line 199
    move-object v2, v8

    .line 200
    move-object v10, v9

    .line 201
    move-object/from16 v8, p3

    .line 202
    .line 203
    move-object/from16 v9, p8

    .line 204
    .line 205
    move-object/from16 v6, p10

    .line 206
    .line 207
    goto/16 :goto_f

    .line 208
    .line 209
    :cond_f
    :goto_a
    if-eqz v5, :cond_10

    .line 210
    .line 211
    sget-object v5, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 212
    .line 213
    goto :goto_b

    .line 214
    :cond_10
    move-object v5, v6

    .line 215
    :goto_b
    const/4 v6, 0x0

    .line 216
    if-eqz v7, :cond_11

    .line 217
    .line 218
    new-instance v7, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 219
    .line 220
    invoke-direct {v7, v6, v6, v6, v6}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 221
    .line 222
    .line 223
    goto :goto_c

    .line 224
    :cond_11
    move-object v7, v8

    .line 225
    :goto_c
    if-eqz v10, :cond_12

    .line 226
    .line 227
    move/from16 v2, v17

    .line 228
    .line 229
    :cond_12
    if-eqz v14, :cond_13

    .line 230
    .line 231
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->CenterVertically:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 232
    .line 233
    goto :goto_d

    .line 234
    :cond_13
    move-object v8, v9

    .line 235
    :goto_d
    and-int/lit8 v9, v12, 0xe

    .line 236
    .line 237
    or-int v9, v9, v16

    .line 238
    .line 239
    new-instance v10, Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;

    .line 240
    .line 241
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-static {v13}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->rememberSplineBasedDecay(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    sget-object v14, Landroidx/compose/animation/core/VisibilityThresholdsKt;->VisibilityThresholdMap:Ljava/util/Map;

    .line 249
    .line 250
    const/high16 v14, 0x3f800000    # 1.0f

    .line 251
    .line 252
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    move/from16 v16, v15

    .line 257
    .line 258
    const/high16 v15, 0x43c80000    # 400.0f

    .line 259
    .line 260
    invoke-static {v6, v15, v14, v3}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    sget-object v14, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 265
    .line 266
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 271
    .line 272
    sget-object v15, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 273
    .line 274
    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 279
    .line 280
    and-int/lit8 v18, v9, 0xe

    .line 281
    .line 282
    xor-int/lit8 v3, v18, 0x6

    .line 283
    .line 284
    if-le v3, v4, :cond_14

    .line 285
    .line 286
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    if-nez v3, :cond_15

    .line 291
    .line 292
    :cond_14
    and-int/lit8 v3, v9, 0x6

    .line 293
    .line 294
    if-ne v3, v4, :cond_16

    .line 295
    .line 296
    :cond_15
    const/4 v3, 0x1

    .line 297
    goto :goto_e

    .line 298
    :cond_16
    move/from16 v3, v17

    .line 299
    .line 300
    :goto_e
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    or-int/2addr v3, v9

    .line 305
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v9

    .line 309
    or-int/2addr v3, v9

    .line 310
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    or-int/2addr v3, v9

    .line 315
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    or-int/2addr v3, v9

    .line 320
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 321
    .line 322
    .line 323
    move-result v9

    .line 324
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->changed(I)Z

    .line 325
    .line 326
    .line 327
    move-result v9

    .line 328
    or-int/2addr v3, v9

    .line 329
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 334
    .line 335
    if-nez v3, :cond_17

    .line 336
    .line 337
    if-ne v9, v14, :cond_18

    .line 338
    .line 339
    :cond_17
    new-instance v3, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;

    .line 340
    .line 341
    const/4 v9, 0x2

    .line 342
    invoke-direct {v3, v9, v1, v15}, Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    new-instance v9, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 346
    .line 347
    invoke-direct {v9, v1, v3, v10}, Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lcoil3/compose/SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;Landroidx/compose/foundation/pager/PagerSnapDistanceMaxPages;)V

    .line 348
    .line 349
    .line 350
    new-instance v3, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 351
    .line 352
    invoke-direct {v3, v9, v11, v6}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;-><init>(Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;Landroidx/compose/animation/core/DecayAnimationSpecImpl;Landroidx/compose/animation/core/SpringSpec;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    move-object v9, v3

    .line 359
    :cond_18
    move-object v3, v9

    .line 360
    check-cast v3, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 361
    .line 362
    and-int v6, v12, v16

    .line 363
    .line 364
    sget-object v9, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 365
    .line 366
    and-int/lit8 v10, v12, 0xe

    .line 367
    .line 368
    or-int/lit16 v10, v10, 0x1b0

    .line 369
    .line 370
    and-int/lit8 v11, v10, 0xe

    .line 371
    .line 372
    xor-int/lit8 v11, v11, 0x6

    .line 373
    .line 374
    if-le v11, v4, :cond_19

    .line 375
    .line 376
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v11

    .line 380
    if-nez v11, :cond_1a

    .line 381
    .line 382
    :cond_19
    and-int/lit8 v10, v10, 0x6

    .line 383
    .line 384
    if-ne v10, v4, :cond_1b

    .line 385
    .line 386
    :cond_1a
    const/16 v17, 0x1

    .line 387
    .line 388
    :cond_1b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    if-nez v17, :cond_1c

    .line 393
    .line 394
    if-ne v4, v14, :cond_1d

    .line 395
    .line 396
    :cond_1c
    new-instance v4, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;

    .line 397
    .line 398
    invoke-direct {v4, v1, v9}, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    :cond_1d
    check-cast v4, Landroidx/compose/foundation/pager/DefaultPagerNestedScrollConnection;

    .line 405
    .line 406
    sget-object v9, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->INSTANCE:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 407
    .line 408
    invoke-static {v13}, Landroidx/compose/foundation/OverscrollKt;->rememberOverscrollEffect(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 409
    .line 410
    .line 411
    move-result-object v10

    .line 412
    sget-object v11, Landroidx/compose/foundation/pager/PageSize$Fill;->INSTANCE:Landroidx/compose/foundation/pager/PageSize$Fill;

    .line 413
    .line 414
    move-object/from16 v19, v7

    .line 415
    .line 416
    move v7, v2

    .line 417
    move-object/from16 v2, v19

    .line 418
    .line 419
    move-object/from16 v19, v4

    .line 420
    .line 421
    move-object v4, v3

    .line 422
    move v3, v6

    .line 423
    move-object v6, v10

    .line 424
    move-object v10, v8

    .line 425
    move-object v8, v11

    .line 426
    move-object v11, v9

    .line 427
    move-object/from16 v9, v19

    .line 428
    .line 429
    const/16 v19, 0x1

    .line 430
    .line 431
    :goto_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->endDefaults()V

    .line 432
    .line 433
    .line 434
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 435
    .line 436
    shr-int/lit8 v14, v3, 0x3

    .line 437
    .line 438
    and-int/lit8 v14, v14, 0xe

    .line 439
    .line 440
    or-int/lit16 v14, v14, 0x6000

    .line 441
    .line 442
    shl-int/lit8 v15, v3, 0x3

    .line 443
    .line 444
    and-int/lit8 v15, v15, 0x70

    .line 445
    .line 446
    or-int/2addr v14, v15

    .line 447
    and-int/lit16 v15, v3, 0x380

    .line 448
    .line 449
    or-int/2addr v14, v15

    .line 450
    shr-int/lit8 v15, v3, 0x6

    .line 451
    .line 452
    const v16, 0x180c00

    .line 453
    .line 454
    .line 455
    or-int v14, v14, v16

    .line 456
    .line 457
    shl-int/lit8 v3, v3, 0xc

    .line 458
    .line 459
    const/high16 v16, 0xe000000

    .line 460
    .line 461
    and-int v3, v3, v16

    .line 462
    .line 463
    or-int/2addr v3, v14

    .line 464
    const/high16 v14, 0x30000000

    .line 465
    .line 466
    or-int/2addr v14, v3

    .line 467
    const v3, 0xe000

    .line 468
    .line 469
    .line 470
    and-int/2addr v3, v15

    .line 471
    const v15, 0x1b0d86

    .line 472
    .line 473
    .line 474
    or-int/2addr v15, v3

    .line 475
    move-object v0, v5

    .line 476
    move-object v3, v12

    .line 477
    move/from16 v5, v19

    .line 478
    .line 479
    move-object/from16 v12, p11

    .line 480
    .line 481
    invoke-static/range {v0 .. v15}, Lkotlin/uuid/UuidKt;->Pager-eLwUrMk(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;ILandroidx/compose/foundation/pager/PageSize$Fill;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/GapComposer;II)V

    .line 482
    .line 483
    .line 484
    move v3, v7

    .line 485
    move-object v7, v4

    .line 486
    move-object v4, v8

    .line 487
    move v8, v5

    .line 488
    move v5, v3

    .line 489
    move-object v3, v11

    .line 490
    move-object v11, v6

    .line 491
    move-object v6, v10

    .line 492
    move-object v10, v3

    .line 493
    move-object v3, v2

    .line 494
    move-object v2, v0

    .line 495
    goto :goto_10

    .line 496
    :cond_1e
    invoke-virtual/range {p12 .. p12}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 497
    .line 498
    .line 499
    move-object/from16 v4, p3

    .line 500
    .line 501
    move-object/from16 v7, p6

    .line 502
    .line 503
    move-object/from16 v10, p9

    .line 504
    .line 505
    move-object/from16 v11, p10

    .line 506
    .line 507
    move v5, v2

    .line 508
    move-object v2, v6

    .line 509
    move-object v3, v8

    .line 510
    move-object v6, v9

    .line 511
    move/from16 v8, p7

    .line 512
    .line 513
    move-object/from16 v9, p8

    .line 514
    .line 515
    :goto_10
    invoke-virtual/range {p12 .. p12}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 516
    .line 517
    .line 518
    move-result-object v15

    .line 519
    if-eqz v15, :cond_1f

    .line 520
    .line 521
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;

    .line 522
    .line 523
    move-object/from16 v1, p0

    .line 524
    .line 525
    move-object/from16 v12, p11

    .line 526
    .line 527
    move/from16 v13, p13

    .line 528
    .line 529
    move/from16 v14, p14

    .line 530
    .line 531
    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/pager/PagerKt$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize$Fill;ILandroidx/compose/ui/BiasAlignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 532
    .line 533
    .line 534
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 535
    .line 536
    :cond_1f
    return-void
.end method

.method public static final PopulateVisibleList(Ljava/util/List;Ljava/util/Collection;Landroidx/compose/runtime/GapComposer;I)V
    .locals 6

    .line 1
    const v0, 0x5baa69c3

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    :goto_0
    or-int/2addr v0, p3

    .line 17
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_1
    or-int/2addr v0, v1

    .line 29
    and-int/lit8 v0, v0, 0x13

    .line 30
    .line 31
    const/16 v1, 0x12

    .line 32
    .line 33
    if-ne v0, v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 43
    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_3
    :goto_2
    sget-object v0, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Boolean;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_6

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 76
    .line 77
    iget-object v3, v2, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 78
    .line 79
    iget-object v3, v3, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 80
    .line 81
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->changed(Z)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    or-int/2addr v4, v5

    .line 90
    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    or-int/2addr v4, v5

    .line 95
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    if-nez v4, :cond_4

    .line 100
    .line 101
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 102
    .line 103
    if-ne v5, v4, :cond_5

    .line 104
    .line 105
    :cond_4
    new-instance v5, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;

    .line 106
    .line 107
    invoke-direct {v5, v2, p0, v0}, Landroidx/navigation/compose/DialogHostKt$$ExternalSyntheticLambda2;-><init>(Landroidx/navigation/NavBackStackEntry;Ljava/util/List;Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 114
    .line 115
    invoke-static {v3, v5, p2}, Landroidx/compose/runtime/Updater;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/GapComposer;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    if-eqz p2, :cond_7

    .line 124
    .line 125
    new-instance v0, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;

    .line 126
    .line 127
    const/16 v1, 0x11

    .line 128
    .line 129
    invoke-direct {v0, p0, p1, p3, v1}, Lorg/wikipedia/feed/HomeScreenKt$$ExternalSyntheticLambda17;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 130
    .line 131
    .line 132
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 133
    .line 134
    :cond_7
    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v2, v2, v0

    .line 17
    .line 18
    :goto_1
    if-nez v2, :cond_2

    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_2
    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 27
    .line 28
    invoke-virtual {v3, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_3
    if-eq v2, p2, :cond_4

    .line 33
    .line 34
    new-instance v3, Landroidx/collection/MutableScatterSet;

    .line 35
    .line 36
    invoke-direct {v3}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-object p2, v3

    .line 46
    goto :goto_3

    .line 47
    :cond_4
    :goto_2
    move-object p2, v2

    .line 48
    :goto_3
    if-eqz v1, :cond_5

    .line 49
    .line 50
    not-int v0, v0

    .line 51
    iget-object v1, p0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 52
    .line 53
    aput-object p1, v1, v0

    .line 54
    .line 55
    iget-object p0, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p2, p0, v0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_5
    iget-object p0, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 61
    .line 62
    aput-object p2, p0, v0

    .line 63
    .line 64
    return-void
.end method

.method public static addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1, p2}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Landroidx/activity/OnBackPressedCallbackInfo;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-direct {p1, v0, p2}, Landroidx/activity/OnBackPressedCallbackInfo;-><init>(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;

    .line 23
    .line 24
    invoke-direct {p2, v0, p1}, Landroidx/activity/OnBackPressedCallback$OnBackPressedEventHandler;-><init>(Landroidx/fragment/app/FragmentManager$1;Landroidx/activity/OnBackPressedCallbackInfo;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Landroidx/fragment/app/FragmentManager$1;->eventHandlers:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->getEventInput()Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput;->dispatcher:Lcoil3/ImageLoader$Builder;

    .line 37
    .line 38
    invoke-static {p0, p2}, Lcoil3/ImageLoader$Builder;->addHandler$default(Lcoil3/ImageLoader$Builder;Landroidx/navigationevent/NavigationEventHandler;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static final callPoolingContainerOnRelease(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v2, p0, v1}, Landroidx/core/view/ViewKt$allViews$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/compose/ui/unit/DpKt;->getPoolingContainerListenerHolder(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v0, v0, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;->listeners:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/lit8 v1, v1, -0x1

    .line 38
    .line 39
    :goto_0
    const/4 v2, -0x1

    .line 40
    if-ge v2, v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    iget-object v2, v2, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/platform/AbstractComposeView;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AbstractComposeView;->disposeComposition()V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, -0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method public static final compatTransactionCoroutineExecute(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpenInternal$room_runtime()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Landroidx/room/RoomExternalOperationElement;->INSTANCE:Landroidx/room/RoomExternalOperationElement;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/unit/DpKt;->withTransactionContext(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static configureShadow-FoewPVk$default(Landroidx/compose/ui/graphics/AndroidPaint;Landroid/graphics/BlurMaskFilter;I)Landroidx/compose/ui/graphics/AndroidPaint;
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x8

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x1

    .line 10
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/graphics/AndroidPaint;->setColor-8_81llA(J)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/AndroidPaint;->setBlendMode-s9anfk8(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroidx/compose/ui/graphics/AndroidPaint;->setStyle-k9PVt8s(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorKt;->getNativePaint(Landroidx/compose/ui/graphics/AndroidPaint;)Landroid/graphics/Paint;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public static constructor-impl$default()Landroidx/collection/MutableScatterMap;
    .locals 1

    .line 1
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    .line 2
    .line 3
    new-instance v0, Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/collection/MutableScatterMap;-><init>()V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final createAnnotationInstance(Ljava/lang/Class;Ljava/util/Map;Ljava/util/List;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    .line 8
    .line 9
    const/16 v1, 0x1b

    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v6, Lkotlin/SynchronizedLazyImpl;

    .line 15
    .line 16
    invoke-direct {v6, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    .line 20
    .line 21
    const/16 v1, 0xd

    .line 22
    .line 23
    invoke-direct {v0, v1, p0, p1}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lkotlin/SynchronizedLazyImpl;

    .line 27
    .line 28
    invoke-direct {v5, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x1

    .line 36
    new-array v1, v1, [Ljava/lang/Class;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    aput-object p0, v1, v2

    .line 40
    .line 41
    new-instance v2, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;

    .line 42
    .line 43
    move-object v3, p0

    .line 44
    move-object v4, p1

    .line 45
    move-object v7, p2

    .line 46
    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/calls/AnnotationConstructorCallerKt$$Lambda$0;-><init>(Ljava/lang/Class;Ljava/util/Map;Lkotlin/SynchronizedLazyImpl;Lkotlin/SynchronizedLazyImpl;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    return-object p0
.end method

.method public static createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/os/HandlerCompat$Api28Impl;->createAsync$1(Landroid/os/Looper;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :try_start_0
    const-class v1, Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    new-array v3, v2, [Ljava/lang/Class;

    .line 17
    .line 18
    const-class v4, Landroid/os/Looper;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v4, v3, v5

    .line 22
    .line 23
    const-class v4, Landroid/os/Handler$Callback;

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    aput-object v4, v3, v6

    .line 27
    .line 28
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v7, 0x2

    .line 31
    aput-object v4, v3, v7

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p0, v2, v5

    .line 40
    .line 41
    aput-object v0, v2, v6

    .line 42
    .line 43
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    aput-object v3, v2, v7

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    return-object v1

    .line 54
    :catch_0
    move-exception p0

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :catch_2
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :catch_3
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :goto_0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    instance-of v1, p0, Ljava/lang/RuntimeException;

    .line 67
    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    instance-of v1, p0, Ljava/lang/Error;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_1
    check-cast p0, Ljava/lang/Error;

    .line 79
    .line 80
    throw p0

    .line 81
    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    throw p0

    .line 84
    :goto_1
    const-string v1, "HandlerCompat"

    .line 85
    .line 86
    const-string v2, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    .line 87
    .line 88
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    new-instance v0, Landroid/os/Handler;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method public static final createFlow(Landroidx/room/RoomDatabase;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, [Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v0, Lkotlin/collections/builders/SetBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    array-length v1, p1

    .line 23
    const/4 v7, 0x0

    .line 24
    move v3, v7

    .line 25
    :goto_0
    if-ge v3, v1, :cond_1

    .line 26
    .line 27
    aget-object v4, p1, v3

    .line 28
    .line 29
    iget-object v5, v2, Landroidx/room/TriggerBasedInvalidationTracker;->viewTables:Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/util/Set;

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    check-cast v5, Ljava/util/Collection;

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Lkotlin/collections/builders/SetBuilder;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v0, v4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v0}, Lkotlin/uuid/UuidKt;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-array v0, v7, [Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, [Ljava/lang/String;

    .line 71
    .line 72
    array-length v0, p1

    .line 73
    new-array v1, v0, [I

    .line 74
    .line 75
    move v3, v7

    .line 76
    :goto_2
    if-ge v3, v0, :cond_3

    .line 77
    .line 78
    aget-object v4, p1, v3

    .line 79
    .line 80
    iget-object v5, v2, Landroidx/room/TriggerBasedInvalidationTracker;->tableIdLookup:Ljava/util/LinkedHashMap;

    .line 81
    .line 82
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 83
    .line 84
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ljava/lang/Integer;

    .line 96
    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    aput v4, v1, v3

    .line 104
    .line 105
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    const-string p1, "There is no table with name "

    .line 109
    .line 110
    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const/4 p1, 0x0

    .line 118
    goto :goto_3

    .line 119
    :cond_3
    new-instance v0, Lkotlin/Pair;

    .line 120
    .line 121
    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    move-object p1, v0

    .line 125
    :goto_3
    iget-object v0, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 126
    .line 127
    move-object v4, v0

    .line 128
    check-cast v4, [Ljava/lang/String;

    .line 129
    .line 130
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 131
    .line 132
    move-object v3, p1

    .line 133
    check-cast v3, [I

    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance v1, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 142
    .line 143
    const/4 v5, 0x0

    .line 144
    const/16 v6, 0x17

    .line 145
    .line 146
    invoke-direct/range {v1 .. v6}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 150
    .line 151
    invoke-direct {p1, v7, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const/4 v0, -0x1

    .line 155
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/StateFlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 160
    .line 161
    invoke-direct {v0, p1, p0, p2, v7}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/Function;I)V

    .line 162
    .line 163
    .line 164
    return-object v0
.end method

.method public static final dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const/16 p0, 0x20

    .line 16
    .line 17
    shr-long/2addr v0, p0

    .line 18
    long-to-int p0, v0

    .line 19
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getUpDownDifference-F1C5BW0$foundation()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide v2, 0xffffffffL

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v0, v2

    .line 34
    long-to-int p0, v0

    .line 35
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public static final fillMaxSize(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/unit/DpKt;->fillMaxWidth(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/glance/layout/HeightModifier;

    .line 6
    .line 7
    sget-object v1, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static final fillMaxWidth(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/layout/WidthModifier;

    .line 2
    .line 3
    sget-object v1, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0, v0}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final getAndroidTypefaceStyle-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)I
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->W600:Landroidx/compose/ui/text/font/FontWeight;

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 4
    .line 5
    iget v0, v0, Landroidx/compose/ui/text/font/FontWeight;->weight:I

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ltz p0, :cond_0

    .line 14
    .line 15
    move p0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p0, v0

    .line 18
    :goto_0
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    move p1, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move p1, v0

    .line 23
    :goto_1
    if-eqz p1, :cond_2

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    return p0

    .line 29
    :cond_2
    if-eqz p0, :cond_3

    .line 30
    .line 31
    return v1

    .line 32
    :cond_3
    if-eqz p1, :cond_4

    .line 33
    .line 34
    const/4 p0, 0x2

    .line 35
    return p0

    .line 36
    :cond_4
    return v0
.end method

.method public static final getInt-impl(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ne v1, v0, :cond_1

    .line 8
    .line 9
    const v0, 0x7fffffff

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1}, Landroidx/work/Operation$State;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    return v1
.end method

.method public static getLegacyControlPoint([Ljava/lang/String;I)F
    .locals 2

    .line 1
    aget-object p0, p0, p1

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x0

    .line 8
    cmpg-float p1, p0, p1

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float p1, p0, p1

    .line 15
    .line 16
    if-gtz p1, :cond_0

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Motion easing control point value must be between 0 and 1; instead got: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public static getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Lcom/hcaptcha/sdk/HCaptchaCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method

.method public static final getPoolingContainerListenerHolder(Landroid/view/View;)Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;
    .locals 2

    .line 1
    const v0, 0x7f090506

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;

    .line 13
    .line 14
    invoke-direct {v1}, Landroidx/customview/poolingcontainer/PoolingContainerListenerHolder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v1
.end method

.method public static final getSavedState-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1}, Landroidx/work/Operation$State;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public static final getValue(Lkotlin/reflect/jvm/internal/impl/storage/NotNullLazyValue;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final height-3ABfNKs(Landroidx/glance/GlanceModifier;F)Landroidx/glance/GlanceModifier;
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/layout/HeightModifier;

    .line 2
    .line 3
    new-instance v1, Landroidx/glance/unit/Dimension$Dp;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/glance/layout/HeightModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final isJavaField(Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, ")"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static final isNull-impl(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static final isScrollingForward(Landroidx/compose/foundation/pager/PagerState;F)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->isNotGestureAction$foundation()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    neg-float p0, p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/unit/DpKt;->dragGestureDelta(Landroidx/compose/foundation/pager/PagerState;)F

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    :goto_0
    const/4 p1, 0x0

    .line 21
    cmpl-float p0, p0, p1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    const/4 v0, 0x1

    .line 25
    if-lez p0, :cond_1

    .line 26
    .line 27
    move p0, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move p0, p1

    .line 30
    :goto_1
    if-nez p0, :cond_2

    .line 31
    .line 32
    return v0

    .line 33
    :cond_2
    return p1
.end method

.method public static launchFuture$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, v0, p1, v2}, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroidx/room/Room;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static final readBuffer(Lcoil3/network/SourceResponseBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p1, Lcoil3/network/internal/UtilsKt$readBuffer$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;

    .line 7
    .line 8
    iget v1, v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x0

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;->L$1:Lokio/Buffer;

    .line 38
    .line 39
    iget-object v0, v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;->L$0:Lcoil3/network/SourceResponseBody;

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_3

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :try_start_1
    new-instance p1, Lokio/Buffer;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p0, v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;->L$0:Lcoil3/network/SourceResponseBody;

    .line 62
    .line 63
    iput-object p1, v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;->L$1:Lokio/Buffer;

    .line 64
    .line 65
    iput v3, v0, Lcoil3/network/internal/UtilsKt$readBuffer$1;->label:I

    .line 66
    .line 67
    iget-object v0, p0, Lcoil3/network/SourceResponseBody;->source:Lokio/BufferedSource;

    .line 68
    .line 69
    invoke-interface {v0, p1}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 70
    .line 71
    .line 72
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    if-ne v0, v1, :cond_3

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    move-object v0, p0

    .line 78
    move-object p0, p1

    .line 79
    :goto_1
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    return-object p0

    .line 83
    :goto_2
    move-object v0, p0

    .line 84
    move-object p0, p1

    .line 85
    goto :goto_3

    .line 86
    :catchall_1
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :goto_3
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 89
    :catchall_2
    move-exception p1

    .line 90
    invoke-static {v0, p0}, Lkotlin/TuplesKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw p1
.end method

.method public static final remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    return v1

    .line 9
    :cond_0
    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    return p2

    .line 31
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_3
    return v1
.end method

.method public static final removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x2

    .line 5
    .line 6
    if-ltz v1, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    aget-wide v4, v0, v3

    .line 11
    .line 12
    not-long v6, v4

    .line 13
    const/4 v8, 0x7

    .line 14
    shl-long/2addr v6, v8

    .line 15
    and-long/2addr v6, v4

    .line 16
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v6, v8

    .line 22
    cmp-long v6, v6, v8

    .line 23
    .line 24
    if-eqz v6, :cond_4

    .line 25
    .line 26
    sub-int v6, v3, v1

    .line 27
    .line 28
    not-int v6, v6

    .line 29
    ushr-int/lit8 v6, v6, 0x1f

    .line 30
    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    rsub-int/lit8 v6, v6, 0x8

    .line 34
    .line 35
    move v8, v2

    .line 36
    :goto_1
    if-ge v8, v6, :cond_3

    .line 37
    .line 38
    const-wide/16 v9, 0xff

    .line 39
    .line 40
    and-long/2addr v9, v4

    .line 41
    const-wide/16 v11, 0x80

    .line 42
    .line 43
    cmp-long v9, v9, v11

    .line 44
    .line 45
    if-gez v9, :cond_2

    .line 46
    .line 47
    shl-int/lit8 v9, v3, 0x3

    .line 48
    .line 49
    add-int/2addr v9, v8

    .line 50
    iget-object v10, p0, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 51
    .line 52
    aget-object v10, v10, v9

    .line 53
    .line 54
    iget-object v10, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 55
    .line 56
    aget-object v10, v10, v9

    .line 57
    .line 58
    instance-of v11, v10, Landroidx/collection/MutableScatterSet;

    .line 59
    .line 60
    if-eqz v11, :cond_0

    .line 61
    .line 62
    check-cast v10, Landroidx/collection/MutableScatterSet;

    .line 63
    .line 64
    invoke-virtual {v10, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    goto :goto_2

    .line 72
    :cond_0
    if-ne v10, p1, :cond_1

    .line 73
    .line 74
    const/4 v10, 0x1

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    move v10, v2

    .line 77
    :goto_2
    if-eqz v10, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, v9}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_2
    shr-long/2addr v4, v7

    .line 83
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-ne v6, v7, :cond_5

    .line 87
    .line 88
    :cond_4
    if-eq v3, v1, :cond_5

    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    return-void
.end method

.method public static final resetRange([Ljava/lang/Object;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :goto_0
    if-ge p1, p2, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aput-object v0, p0, p1

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method public static resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 6

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    const/4 v1, 0x3

    .line 22
    if-ne p1, v1, :cond_6

    .line 23
    .line 24
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v3, "cubic-bezier"

    .line 31
    .line 32
    invoke-static {p1, v3}, Landroidx/compose/ui/unit/DpKt;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const-string v5, "path"

    .line 37
    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    invoke-static {p1, v5}, Landroidx/compose/ui/unit/DpKt;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 48
    .line 49
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    :goto_0
    invoke-static {p1, v3}, Landroidx/compose/ui/unit/DpKt;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    sub-int/2addr p0, v2

    .line 65
    const/16 v0, 0xd

    .line 66
    .line 67
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, ","

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    array-length p1, p0

    .line 78
    const/4 v0, 0x4

    .line 79
    if-ne p1, v0, :cond_3

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpKt;->getLegacyControlPoint([Ljava/lang/String;I)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p0, v2}, Landroidx/compose/ui/unit/DpKt;->getLegacyControlPoint([Ljava/lang/String;I)F

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    const/4 v0, 0x2

    .line 91
    invoke-static {p0, v0}, Landroidx/compose/ui/unit/DpKt;->getLegacyControlPoint([Ljava/lang/String;I)F

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {p0, v1}, Landroidx/compose/ui/unit/DpKt;->getLegacyControlPoint([Ljava/lang/String;I)F

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    new-instance v1, Landroid/view/animation/PathInterpolator;

    .line 100
    .line 101
    invoke-direct {v1, p1, p2, v0, p0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 102
    .line 103
    .line 104
    return-object v1

    .line 105
    :cond_3
    const-string p1, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    .line 106
    .line 107
    array-length p0, p0

    .line 108
    invoke-static {p0, p1}, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;->m(ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object p2

    .line 112
    :cond_4
    invoke-static {p1, v5}, Landroidx/compose/ui/unit/DpKt;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    sub-int/2addr p0, v2

    .line 123
    const/4 v0, 0x5

    .line 124
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    new-instance p1, Landroid/view/animation/PathInterpolator;

    .line 129
    .line 130
    new-instance v0, Landroid/graphics/Path;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {p0}, Lcoil3/util/ContextsKt;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    :try_start_0
    invoke-static {v1, v0}, Lcoil3/util/ContextsKt;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    invoke-direct {p1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :catch_0
    move-exception p1

    .line 147
    const-string v0, "Error in parsing "

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0, p1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    return-object p2

    .line 157
    :cond_5
    const-string p0, "Invalid motion easing type: "

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object p2

    .line 167
    :cond_6
    const-string p0, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    .line 168
    .line 169
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-object p2
.end method

.method public static resolveThemeSpringForce(Landroid/content/Context;)Landroidx/dynamicanimation/animation/SpringForce;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0404b1

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/work/Operation$State;->resolve(Landroid/content/res/Resources$Theme;I)Landroid/util/TypedValue;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialSpring:[I

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const v3, 0x7f1301c5

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 27
    .line 28
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    .line 33
    .line 34
    invoke-direct {v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x1

    .line 39
    :try_start_0
    invoke-virtual {p0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    cmpl-float v4, v3, v2

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    cmpl-float v2, v1, v2

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    const-string v1, "A MaterialSpring style must have a damping value."

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string v1, "A MaterialSpring style must have stiffness value."

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public static final returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lokhttp3/Dispatcher$promoteAndExecute$Effects;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v1, v0, 0x8

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const/16 v1, 0x10

    .line 19
    .line 20
    and-int/2addr v0, v1

    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->returnTypeId_:I

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1
    const-string p0, "No returnType in ProtoBuf.Function"

    .line 31
    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static final returnType(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;Lokhttp3/Dispatcher$promoteAndExecute$Effects;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 3

    .line 37
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->bitField0_:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 38
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->returnType_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 40
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->returnTypeId_:I

    .line 41
    invoke-virtual {p1, p0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object p0

    return-object p0

    .line 42
    :cond_1
    const-string p0, "No returnType in ProtoBuf.Property"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final setChildren(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    add-int/lit8 v2, v0, 0x1

    .line 23
    .line 24
    if-ltz v0, :cond_0

    .line 25
    .line 26
    check-cast v1, Landroidx/glance/Emittable;

    .line 27
    .line 28
    invoke-virtual {p1, p2, v0}, Landroidx/glance/appwidget/TranslationContext;->forChild(Landroidx/glance/appwidget/InsertedViewInfo;I)Landroidx/glance/appwidget/TranslationContext;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/unit/DpKt;->translateChild(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/Emittable;)V

    .line 33
    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    throw p0

    .line 42
    :cond_1
    return-void
.end method

.method public static final size-3ABfNKs(F)Landroidx/glance/GlanceModifier;
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/layout/WidthModifier;

    .line 2
    .line 3
    new-instance v1, Landroidx/glance/unit/Dimension$Dp;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/DpKt;->height-3ABfNKs(Landroidx/glance/GlanceModifier;F)Landroidx/glance/GlanceModifier;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final subarrayContentToString([Ljava/lang/Object;IILkotlin/collections/AbstractMutableList;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    mul-int/lit8 v1, p2, 0x3

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x2

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v1, "["

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, p2, :cond_2

    .line 17
    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    const-string v2, ", "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int v2, p1, v1

    .line 26
    .line 27
    aget-object v2, p0, v2

    .line 28
    .line 29
    if-ne v2, p3, :cond_1

    .line 30
    .line 31
    const-string v2, "(this Collection)"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string p0, "]"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static final synthetic takeIfNotNoIntValue(I)Ljava/lang/Integer;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, -0x80000000

    .line 6
    .line 7
    if-eq p0, v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public static toActivityTransitResId(Landroid/content/Context;I)I
    .locals 1

    .line 1
    const v0, 0x1030001

    .line 2
    .line 3
    .line 4
    filled-new-array {p1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    .line 20
    .line 21
    return p1
.end method

.method public static final toGravity(Landroidx/glance/layout/Alignment;)I
    .locals 7

    .line 1
    iget v0, p0, Landroidx/glance/layout/Alignment;->horizontal:I

    .line 2
    .line 3
    const-string v1, "GlanceAppWidget"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const v4, 0x800003

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    const v4, 0x800005

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-ne v0, v3, :cond_2

    .line 20
    .line 21
    move v4, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v6, "Unknown horizontal alignment: "

    .line 26
    .line 27
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/glance/layout/Alignment$Horizontal;->toString-impl(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    iget p0, p0, Landroidx/glance/layout/Alignment;->vertical:I

    .line 45
    .line 46
    const/16 v0, 0x30

    .line 47
    .line 48
    if-nez p0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    if-ne p0, v2, :cond_4

    .line 52
    .line 53
    const/16 v0, 0x50

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    if-ne p0, v3, :cond_5

    .line 57
    .line 58
    const/16 v0, 0x10

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "Unknown vertical alignment: "

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Landroidx/glance/layout/Alignment$Vertical;->toString-impl(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :goto_1
    or-int p0, v4, v0

    .line 83
    .line 84
    return p0
.end method

.method public static final translateChild(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/Emittable;)V
    .locals 30

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v10, v0, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v11, Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;->INSTANCE:Landroidx/glance/appwidget/RadioButtonKt$isSelectableGroup$1;

    .line 8
    .line 9
    instance-of v2, v1, Landroidx/glance/layout/EmittableBox;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    check-cast v7, Landroidx/glance/layout/EmittableBox;

    .line 15
    .line 16
    iget-object v8, v7, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 17
    .line 18
    sget-object v2, Landroidx/glance/appwidget/LayoutType;->Box:Landroidx/glance/appwidget/LayoutType;

    .line 19
    .line 20
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget-object v4, v7, Landroidx/glance/layout/EmittableBox;->modifier:Landroidx/glance/GlanceModifier;

    .line 25
    .line 26
    iget-object v1, v7, Landroidx/glance/layout/EmittableBox;->contentAlignment:Landroidx/glance/layout/Alignment;

    .line 27
    .line 28
    iget v5, v1, Landroidx/glance/layout/Alignment;->horizontal:I

    .line 29
    .line 30
    new-instance v6, Landroidx/glance/layout/Alignment$Horizontal;

    .line 31
    .line 32
    invoke-direct {v6, v5}, Landroidx/glance/layout/Alignment$Horizontal;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iget v1, v1, Landroidx/glance/layout/Alignment;->vertical:I

    .line 36
    .line 37
    move-object v5, v6

    .line 38
    new-instance v6, Landroidx/glance/layout/Alignment$Vertical;

    .line 39
    .line 40
    invoke-direct {v6, v1}, Landroidx/glance/layout/Alignment$Vertical;-><init>(I)V

    .line 41
    .line 42
    .line 43
    move-object v1, v0

    .line 44
    move-object/from16 v0, p0

    .line 45
    .line 46
    invoke-static/range {v0 .. v6}, Landroidx/glance/appwidget/LayoutSelectionKt;->insertContainerView-nVsUan0(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/LayoutType;ILandroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment$Horizontal;Landroidx/glance/layout/Alignment$Vertical;)Landroidx/glance/appwidget/InsertedViewInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    move-object v3, v1

    .line 51
    iget-object v1, v7, Landroidx/glance/layout/EmittableBox;->modifier:Landroidx/glance/GlanceModifier;

    .line 52
    .line 53
    invoke-static {v3, v0, v1, v2}, Lcoil3/util/UtilsKt;->applyModifiers(Landroidx/glance/appwidget/TranslationContext;Landroid/widget/RemoteViews;Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/InsertedViewInfo;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroidx/glance/Emittable;

    .line 71
    .line 72
    invoke-interface {v4}, Landroidx/glance/Emittable;->getModifier()Landroidx/glance/GlanceModifier;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    new-instance v6, Landroidx/glance/appwidget/AlignmentModifier;

    .line 77
    .line 78
    iget-object v9, v7, Landroidx/glance/layout/EmittableBox;->contentAlignment:Landroidx/glance/layout/Alignment;

    .line 79
    .line 80
    invoke-direct {v6, v9}, Landroidx/glance/appwidget/AlignmentModifier;-><init>(Landroidx/glance/layout/Alignment;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v5, v6}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-interface {v4, v5}, Landroidx/glance/Emittable;->setModifier(Landroidx/glance/GlanceModifier;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-static {v0, v3, v2, v8}, Landroidx/compose/ui/unit/DpKt;->setChildren(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/ArrayList;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    move-object v3, v0

    .line 96
    move-object/from16 v0, p0

    .line 97
    .line 98
    instance-of v2, v1, Landroidx/glance/layout/EmittableRow;

    .line 99
    .line 100
    const-string v7, "setGravity"

    .line 101
    .line 102
    const/16 v4, 0x1f

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    move-object v10, v1

    .line 107
    check-cast v10, Landroidx/glance/layout/EmittableRow;

    .line 108
    .line 109
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    .line 111
    if-lt v1, v4, :cond_2

    .line 112
    .line 113
    iget-object v1, v10, Landroidx/glance/layout/EmittableRow;->modifier:Landroidx/glance/GlanceModifier;

    .line 114
    .line 115
    invoke-interface {v1, v11}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    sget-object v1, Landroidx/glance/appwidget/LayoutType;->RadioRow:Landroidx/glance/appwidget/LayoutType;

    .line 122
    .line 123
    :goto_1
    move-object v2, v1

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    sget-object v1, Landroidx/glance/appwidget/LayoutType;->Row:Landroidx/glance/appwidget/LayoutType;

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :goto_2
    iget-object v12, v10, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    iget-object v4, v10, Landroidx/glance/layout/EmittableRow;->modifier:Landroidx/glance/GlanceModifier;

    .line 135
    .line 136
    iget v1, v10, Landroidx/glance/layout/EmittableRow;->verticalAlignment:I

    .line 137
    .line 138
    new-instance v6, Landroidx/glance/layout/Alignment$Vertical;

    .line 139
    .line 140
    invoke-direct {v6, v1}, Landroidx/glance/layout/Alignment$Vertical;-><init>(I)V

    .line 141
    .line 142
    .line 143
    const/4 v5, 0x0

    .line 144
    move-object/from16 v1, p1

    .line 145
    .line 146
    invoke-static/range {v0 .. v6}, Landroidx/glance/appwidget/LayoutSelectionKt;->insertContainerView-nVsUan0(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/LayoutType;ILandroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment$Horizontal;Landroidx/glance/layout/Alignment$Vertical;)Landroidx/glance/appwidget/InsertedViewInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    move-object v14, v0

    .line 151
    iget v0, v13, Landroidx/glance/appwidget/InsertedViewInfo;->mainViewId:I

    .line 152
    .line 153
    new-instance v1, Landroidx/glance/layout/Alignment;

    .line 154
    .line 155
    iget v2, v10, Landroidx/glance/layout/EmittableRow;->horizontalAlignment:I

    .line 156
    .line 157
    iget v3, v10, Landroidx/glance/layout/EmittableRow;->verticalAlignment:I

    .line 158
    .line 159
    invoke-direct {v1, v2, v3}, Landroidx/glance/layout/Alignment;-><init>(II)V

    .line 160
    .line 161
    .line 162
    invoke-static {v1}, Landroidx/compose/ui/unit/DpKt;->toGravity(Landroidx/glance/layout/Alignment;)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {v14, v0, v7, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 167
    .line 168
    .line 169
    const/4 v8, 0x0

    .line 170
    const/16 v9, 0x6fff

    .line 171
    .line 172
    const/4 v1, 0x0

    .line 173
    const/4 v2, 0x0

    .line 174
    const/4 v3, 0x0

    .line 175
    const/4 v4, 0x0

    .line 176
    const-wide/16 v5, 0x0

    .line 177
    .line 178
    const/4 v7, 0x0

    .line 179
    move-object/from16 v0, p1

    .line 180
    .line 181
    invoke-static/range {v0 .. v9}, Landroidx/glance/appwidget/TranslationContext;->copy-tbIExKY$default(Landroidx/glance/appwidget/TranslationContext;ILjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JILjava/lang/Integer;I)Landroidx/glance/appwidget/TranslationContext;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    iget-object v2, v10, Landroidx/glance/layout/EmittableRow;->modifier:Landroidx/glance/GlanceModifier;

    .line 186
    .line 187
    invoke-static {v1, v14, v2, v13}, Lcoil3/util/UtilsKt;->applyModifiers(Landroidx/glance/appwidget/TranslationContext;Landroid/widget/RemoteViews;Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/InsertedViewInfo;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v14, v0, v13, v12}, Landroidx/compose/ui/unit/DpKt;->setChildren(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/ArrayList;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v10, Landroidx/glance/layout/EmittableRow;->modifier:Landroidx/glance/GlanceModifier;

    .line 194
    .line 195
    invoke-interface {v0, v11}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_2f

    .line 200
    .line 201
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_3

    .line 206
    .line 207
    goto/16 :goto_15

    .line 208
    .line 209
    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_2f

    .line 218
    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Landroidx/glance/Emittable;

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_4
    move-object v14, v0

    .line 227
    move-object v0, v3

    .line 228
    instance-of v2, v1, Landroidx/glance/layout/EmittableColumn;

    .line 229
    .line 230
    if-eqz v2, :cond_7

    .line 231
    .line 232
    move-object v10, v1

    .line 233
    check-cast v10, Landroidx/glance/layout/EmittableColumn;

    .line 234
    .line 235
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 236
    .line 237
    if-lt v1, v4, :cond_5

    .line 238
    .line 239
    iget-object v1, v10, Landroidx/glance/layout/EmittableColumn;->modifier:Landroidx/glance/GlanceModifier;

    .line 240
    .line 241
    invoke-interface {v1, v11}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_5

    .line 246
    .line 247
    sget-object v1, Landroidx/glance/appwidget/LayoutType;->RadioColumn:Landroidx/glance/appwidget/LayoutType;

    .line 248
    .line 249
    :goto_4
    move-object v2, v1

    .line 250
    goto :goto_5

    .line 251
    :cond_5
    sget-object v1, Landroidx/glance/appwidget/LayoutType;->Column:Landroidx/glance/appwidget/LayoutType;

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :goto_5
    iget-object v12, v10, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    iget-object v4, v10, Landroidx/glance/layout/EmittableColumn;->modifier:Landroidx/glance/GlanceModifier;

    .line 261
    .line 262
    iget v1, v10, Landroidx/glance/layout/EmittableColumn;->horizontalAlignment:I

    .line 263
    .line 264
    new-instance v5, Landroidx/glance/layout/Alignment$Horizontal;

    .line 265
    .line 266
    invoke-direct {v5, v1}, Landroidx/glance/layout/Alignment$Horizontal;-><init>(I)V

    .line 267
    .line 268
    .line 269
    const/4 v6, 0x0

    .line 270
    move-object v1, v0

    .line 271
    move-object v0, v14

    .line 272
    invoke-static/range {v0 .. v6}, Landroidx/glance/appwidget/LayoutSelectionKt;->insertContainerView-nVsUan0(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/LayoutType;ILandroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment$Horizontal;Landroidx/glance/layout/Alignment$Vertical;)Landroidx/glance/appwidget/InsertedViewInfo;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    iget v0, v13, Landroidx/glance/appwidget/InsertedViewInfo;->mainViewId:I

    .line 277
    .line 278
    new-instance v1, Landroidx/glance/layout/Alignment;

    .line 279
    .line 280
    iget v2, v10, Landroidx/glance/layout/EmittableColumn;->horizontalAlignment:I

    .line 281
    .line 282
    iget v3, v10, Landroidx/glance/layout/EmittableColumn;->verticalAlignment:I

    .line 283
    .line 284
    invoke-direct {v1, v2, v3}, Landroidx/glance/layout/Alignment;-><init>(II)V

    .line 285
    .line 286
    .line 287
    invoke-static {v1}, Landroidx/compose/ui/unit/DpKt;->toGravity(Landroidx/glance/layout/Alignment;)I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    invoke-virtual {v14, v0, v7, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    const/4 v8, 0x0

    .line 295
    const/16 v9, 0x6fff

    .line 296
    .line 297
    const/4 v1, 0x0

    .line 298
    const/4 v2, 0x0

    .line 299
    const/4 v3, 0x0

    .line 300
    const/4 v4, 0x0

    .line 301
    const-wide/16 v5, 0x0

    .line 302
    .line 303
    const/4 v7, 0x0

    .line 304
    move-object/from16 v0, p1

    .line 305
    .line 306
    invoke-static/range {v0 .. v9}, Landroidx/glance/appwidget/TranslationContext;->copy-tbIExKY$default(Landroidx/glance/appwidget/TranslationContext;ILjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JILjava/lang/Integer;I)Landroidx/glance/appwidget/TranslationContext;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    iget-object v2, v10, Landroidx/glance/layout/EmittableColumn;->modifier:Landroidx/glance/GlanceModifier;

    .line 311
    .line 312
    invoke-static {v1, v14, v2, v13}, Lcoil3/util/UtilsKt;->applyModifiers(Landroidx/glance/appwidget/TranslationContext;Landroid/widget/RemoteViews;Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/InsertedViewInfo;)V

    .line 313
    .line 314
    .line 315
    invoke-static {v14, v0, v13, v12}, Landroidx/compose/ui/unit/DpKt;->setChildren(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/ArrayList;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, v10, Landroidx/glance/layout/EmittableColumn;->modifier:Landroidx/glance/GlanceModifier;

    .line 319
    .line 320
    invoke-interface {v0, v11}, Landroidx/glance/GlanceModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_2f

    .line 325
    .line 326
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_6

    .line 331
    .line 332
    goto/16 :goto_15

    .line 333
    .line 334
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_2f

    .line 343
    .line 344
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    check-cast v1, Landroidx/glance/Emittable;

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_7
    instance-of v2, v1, Landroidx/glance/text/EmittableText;

    .line 352
    .line 353
    const-string v3, "GlanceAppWidget"

    .line 354
    .line 355
    const/4 v5, 0x2

    .line 356
    const/4 v11, 0x0

    .line 357
    if-eqz v2, :cond_13

    .line 358
    .line 359
    check-cast v1, Landroidx/glance/text/EmittableText;

    .line 360
    .line 361
    sget-object v2, Landroidx/glance/appwidget/LayoutType;->Text:Landroidx/glance/appwidget/LayoutType;

    .line 362
    .line 363
    iget-object v6, v1, Landroidx/glance/text/EmittableText;->modifier:Landroidx/glance/GlanceModifier;

    .line 364
    .line 365
    invoke-static {v14, v0, v2, v6}, Landroidx/glance/appwidget/LayoutSelectionKt;->insertView(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/LayoutType;Landroidx/glance/GlanceModifier;)Landroidx/glance/appwidget/InsertedViewInfo;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    iget v6, v2, Landroidx/glance/appwidget/InsertedViewInfo;->mainViewId:I

    .line 370
    .line 371
    iget-object v7, v1, Landroidx/glance/text/EmittableText;->text:Ljava/lang/String;

    .line 372
    .line 373
    iget-object v8, v1, Landroidx/glance/text/EmittableText;->style:Landroidx/glance/text/TextStyle;

    .line 374
    .line 375
    iget v9, v1, Landroidx/glance/text/EmittableText;->maxLines:I

    .line 376
    .line 377
    const v12, 0x7fffffff

    .line 378
    .line 379
    .line 380
    if-eq v9, v12, :cond_8

    .line 381
    .line 382
    const-string v12, "setMaxLines"

    .line 383
    .line 384
    invoke-virtual {v14, v6, v12, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 385
    .line 386
    .line 387
    :cond_8
    if-nez v8, :cond_9

    .line 388
    .line 389
    invoke-virtual {v14, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_9

    .line 393
    .line 394
    :cond_9
    new-instance v9, Landroid/text/SpannableString;

    .line 395
    .line 396
    invoke-direct {v9, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    iget-object v12, v8, Landroidx/glance/text/TextStyle;->fontSize:Landroidx/compose/ui/unit/TextUnit;

    .line 404
    .line 405
    if-eqz v12, :cond_b

    .line 406
    .line 407
    iget-wide v12, v12, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 408
    .line 409
    const-wide v15, 0xff00000000L

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    and-long/2addr v15, v12

    .line 415
    const-wide v17, 0x100000000L

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    cmp-long v15, v15, v17

    .line 421
    .line 422
    if-nez v15, :cond_a

    .line 423
    .line 424
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 425
    .line 426
    .line 427
    move-result v12

    .line 428
    invoke-virtual {v14, v6, v5, v12}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 429
    .line 430
    .line 431
    goto :goto_7

    .line 432
    :cond_a
    const-string v0, "Only Sp is currently supported for font sizes"

    .line 433
    .line 434
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :cond_b
    :goto_7
    new-instance v5, Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .line 442
    .line 443
    iget-object v12, v8, Landroidx/glance/text/TextStyle;->fontWeight:Landroidx/glance/text/FontWeight;

    .line 444
    .line 445
    if-eqz v12, :cond_c

    .line 446
    .line 447
    new-instance v12, Landroid/text/style/TextAppearanceSpan;

    .line 448
    .line 449
    const v13, 0x7f130182

    .line 450
    .line 451
    .line 452
    invoke-direct {v12, v10, v13}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    :cond_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 463
    .line 464
    .line 465
    move-result v12

    .line 466
    if-eqz v12, :cond_d

    .line 467
    .line 468
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v12

    .line 472
    check-cast v12, Landroid/text/ParcelableSpan;

    .line 473
    .line 474
    const/16 v13, 0x11

    .line 475
    .line 476
    invoke-virtual {v9, v12, v11, v7, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 477
    .line 478
    .line 479
    goto :goto_8

    .line 480
    :cond_d
    invoke-virtual {v14, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 481
    .line 482
    .line 483
    iget-object v5, v8, Landroidx/glance/text/TextStyle;->color:Landroidx/glance/unit/ColorProvider;

    .line 484
    .line 485
    instance-of v7, v5, Landroidx/glance/unit/FixedColorProvider;

    .line 486
    .line 487
    if-eqz v7, :cond_e

    .line 488
    .line 489
    check-cast v5, Landroidx/glance/unit/FixedColorProvider;

    .line 490
    .line 491
    iget-wide v3, v5, Landroidx/glance/unit/FixedColorProvider;->color:J

    .line 492
    .line 493
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 494
    .line 495
    .line 496
    move-result v3

    .line 497
    invoke-virtual {v14, v6, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 498
    .line 499
    .line 500
    goto :goto_9

    .line 501
    :cond_e
    instance-of v7, v5, Landroidx/glance/unit/ResourceColorProvider;

    .line 502
    .line 503
    const-string v8, "setTextColor"

    .line 504
    .line 505
    if-eqz v7, :cond_10

    .line 506
    .line 507
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 508
    .line 509
    if-lt v3, v4, :cond_f

    .line 510
    .line 511
    check-cast v5, Landroidx/glance/unit/ResourceColorProvider;

    .line 512
    .line 513
    iget v3, v5, Landroidx/glance/unit/ResourceColorProvider;->resId:I

    .line 514
    .line 515
    invoke-static {v14, v6, v8, v3}, Landroidx/core/widget/RemoteViewsCompat$Api31Impl;->setColorStateList(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    .line 516
    .line 517
    .line 518
    goto :goto_9

    .line 519
    :cond_f
    check-cast v5, Landroidx/glance/unit/ResourceColorProvider;

    .line 520
    .line 521
    invoke-virtual {v5, v10}, Landroidx/glance/unit/ResourceColorProvider;->getColor-vNxB06k(Landroid/content/Context;)J

    .line 522
    .line 523
    .line 524
    move-result-wide v3

    .line 525
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    invoke-virtual {v14, v6, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 530
    .line 531
    .line 532
    goto :goto_9

    .line 533
    :cond_10
    instance-of v7, v5, Landroidx/glance/color/DayNightColorProvider;

    .line 534
    .line 535
    if-eqz v7, :cond_12

    .line 536
    .line 537
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 538
    .line 539
    if-lt v3, v4, :cond_11

    .line 540
    .line 541
    check-cast v5, Landroidx/glance/color/DayNightColorProvider;

    .line 542
    .line 543
    iget-wide v3, v5, Landroidx/glance/color/DayNightColorProvider;->day:J

    .line 544
    .line 545
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    iget-wide v4, v5, Landroidx/glance/color/DayNightColorProvider;->night:J

    .line 550
    .line 551
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    invoke-static {v14, v6, v8, v3, v4}, Landroidx/core/widget/RemoteViewsCompat$Api31Impl;->setColorInt(Landroid/widget/RemoteViews;ILjava/lang/String;II)V

    .line 556
    .line 557
    .line 558
    goto :goto_9

    .line 559
    :cond_11
    check-cast v5, Landroidx/glance/color/DayNightColorProvider;

    .line 560
    .line 561
    invoke-virtual {v5, v10}, Landroidx/glance/color/DayNightColorProvider;->getColor-vNxB06k(Landroid/content/Context;)J

    .line 562
    .line 563
    .line 564
    move-result-wide v3

    .line 565
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    invoke-virtual {v14, v6, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 570
    .line 571
    .line 572
    goto :goto_9

    .line 573
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    const-string v6, "Unexpected text color: "

    .line 576
    .line 577
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    :goto_9
    iget-object v1, v1, Landroidx/glance/text/EmittableText;->modifier:Landroidx/glance/GlanceModifier;

    .line 591
    .line 592
    invoke-static {v0, v14, v1, v2}, Lcoil3/util/UtilsKt;->applyModifiers(Landroidx/glance/appwidget/TranslationContext;Landroid/widget/RemoteViews;Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/InsertedViewInfo;)V

    .line 593
    .line 594
    .line 595
    return-void

    .line 596
    :cond_13
    instance-of v2, v1, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 597
    .line 598
    const/4 v12, 0x1

    .line 599
    if-eqz v2, :cond_15

    .line 600
    .line 601
    check-cast v1, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 602
    .line 603
    iget-object v2, v1, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    if-ne v3, v12, :cond_14

    .line 610
    .line 611
    iget-object v1, v1, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;->alignment:Landroidx/glance/layout/Alignment;

    .line 612
    .line 613
    sget-object v3, Landroidx/glance/layout/Alignment;->CenterStart:Landroidx/glance/layout/Alignment;

    .line 614
    .line 615
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v1

    .line 619
    if-eqz v1, :cond_14

    .line 620
    .line 621
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v1

    .line 625
    check-cast v1, Landroidx/glance/Emittable;

    .line 626
    .line 627
    invoke-static {v14, v0, v1}, Landroidx/compose/ui/unit/DpKt;->translateChild(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/Emittable;)V

    .line 628
    .line 629
    .line 630
    return-void

    .line 631
    :cond_14
    const-string v0, "Lazy list items can only have a single child align at the center start of the view. The normalization of the composition tree failed."

    .line 632
    .line 633
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    return-void

    .line 637
    :cond_15
    instance-of v2, v1, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;

    .line 638
    .line 639
    const/4 v13, 0x0

    .line 640
    if-eqz v2, :cond_1e

    .line 641
    .line 642
    move-object v15, v1

    .line 643
    check-cast v15, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;

    .line 644
    .line 645
    sget-object v1, Landroidx/glance/appwidget/LayoutType;->List:Landroidx/glance/appwidget/LayoutType;

    .line 646
    .line 647
    iget-object v2, v15, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;->modifier:Landroidx/glance/GlanceModifier;

    .line 648
    .line 649
    invoke-static {v14, v0, v1, v2}, Landroidx/glance/appwidget/LayoutSelectionKt;->insertView(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/LayoutType;Landroidx/glance/GlanceModifier;)Landroidx/glance/appwidget/InsertedViewInfo;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    iget v7, v1, Landroidx/glance/appwidget/InsertedViewInfo;->mainViewId:I

    .line 654
    .line 655
    iget-boolean v2, v0, Landroidx/glance/appwidget/TranslationContext;->isLazyCollectionDescendant:Z

    .line 656
    .line 657
    if-nez v2, :cond_1d

    .line 658
    .line 659
    new-instance v2, Landroid/content/Intent;

    .line 660
    .line 661
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 662
    .line 663
    .line 664
    const v3, 0xb000008

    .line 665
    .line 666
    .line 667
    invoke-static {v10, v11, v2, v3, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 668
    .line 669
    .line 670
    move-result-object v2

    .line 671
    invoke-virtual {v14, v7, v2}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 672
    .line 673
    .line 674
    new-instance v2, Ljava/util/ArrayList;

    .line 675
    .line 676
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .line 678
    .line 679
    new-instance v3, Ljava/util/ArrayList;

    .line 680
    .line 681
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .line 683
    .line 684
    const/4 v8, 0x0

    .line 685
    const/16 v9, 0x7bdf

    .line 686
    .line 687
    move-object v4, v1

    .line 688
    const/4 v1, 0x0

    .line 689
    move-object v5, v2

    .line 690
    const/4 v2, 0x0

    .line 691
    move-object v6, v3

    .line 692
    const/4 v3, 0x0

    .line 693
    move-object/from16 v16, v4

    .line 694
    .line 695
    const/4 v4, 0x0

    .line 696
    move-object/from16 v17, v5

    .line 697
    .line 698
    move-object/from16 v18, v6

    .line 699
    .line 700
    const-wide/16 v5, 0x0

    .line 701
    .line 702
    move-object/from16 v19, v13

    .line 703
    .line 704
    move-object/from16 v13, v16

    .line 705
    .line 706
    move-object/from16 v11, v17

    .line 707
    .line 708
    move-object/from16 v12, v18

    .line 709
    .line 710
    invoke-static/range {v0 .. v9}, Landroidx/glance/appwidget/TranslationContext;->copy-tbIExKY$default(Landroidx/glance/appwidget/TranslationContext;ILjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JILjava/lang/Integer;I)Landroidx/glance/appwidget/TranslationContext;

    .line 711
    .line 712
    .line 713
    move-result-object v20

    .line 714
    move-object v6, v0

    .line 715
    iget-object v0, v15, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 716
    .line 717
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 718
    .line 719
    .line 720
    move-result-object v0

    .line 721
    const/4 v1, 0x0

    .line 722
    const/16 v27, 0x0

    .line 723
    .line 724
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    if-eqz v2, :cond_19

    .line 729
    .line 730
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    add-int/lit8 v3, v27, 0x1

    .line 735
    .line 736
    if-ltz v27, :cond_18

    .line 737
    .line 738
    check-cast v2, Landroidx/glance/Emittable;

    .line 739
    .line 740
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 741
    .line 742
    .line 743
    move-object v4, v2

    .line 744
    check-cast v4, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;

    .line 745
    .line 746
    iget-wide v4, v4, Landroidx/glance/appwidget/lazy/EmittableLazyListItem;->itemId:J

    .line 747
    .line 748
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 749
    .line 750
    const/high16 v8, 0x100000

    .line 751
    .line 752
    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 753
    .line 754
    .line 755
    const/16 v28, 0x0

    .line 756
    .line 757
    const/16 v29, 0x7bbf

    .line 758
    .line 759
    const/16 v21, 0x0

    .line 760
    .line 761
    const/16 v23, 0x0

    .line 762
    .line 763
    const/16 v24, 0x0

    .line 764
    .line 765
    const-wide/16 v25, 0x0

    .line 766
    .line 767
    move-object/from16 v22, v7

    .line 768
    .line 769
    invoke-static/range {v20 .. v29}, Landroidx/glance/appwidget/TranslationContext;->copy-tbIExKY$default(Landroidx/glance/appwidget/TranslationContext;ILjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JILjava/lang/Integer;I)Landroidx/glance/appwidget/TranslationContext;

    .line 770
    .line 771
    .line 772
    move-result-object v7

    .line 773
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 774
    .line 775
    .line 776
    move-result-object v8

    .line 777
    iget-object v9, v6, Landroidx/glance/appwidget/TranslationContext;->layoutConfiguration:Landroidx/glance/appwidget/LayoutConfiguration;

    .line 778
    .line 779
    invoke-virtual {v9, v2}, Landroidx/glance/appwidget/LayoutConfiguration;->addLayout(Landroidx/glance/Emittable;)I

    .line 780
    .line 781
    .line 782
    move-result v2

    .line 783
    invoke-static {v7, v8, v2}, Landroidx/compose/ui/unit/DpKt;->translateComposition(Landroidx/glance/appwidget/TranslationContext;Ljava/util/List;I)Landroid/widget/RemoteViews;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 788
    .line 789
    .line 790
    move-result-object v7

    .line 791
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    if-nez v1, :cond_17

    .line 798
    .line 799
    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    .line 800
    .line 801
    cmp-long v1, v4, v1

    .line 802
    .line 803
    if-lez v1, :cond_16

    .line 804
    .line 805
    goto :goto_b

    .line 806
    :cond_16
    const/4 v1, 0x0

    .line 807
    goto :goto_c

    .line 808
    :cond_17
    :goto_b
    const/4 v1, 0x1

    .line 809
    :goto_c
    move/from16 v27, v3

    .line 810
    .line 811
    goto :goto_a

    .line 812
    :cond_18
    invoke-static {}, Landroidx/room/Room;->throwIndexOverflow()V

    .line 813
    .line 814
    .line 815
    throw v19

    .line 816
    :cond_19
    sget v0, Landroidx/glance/appwidget/LayoutSelectionKt;->TopLevelLayoutsCount:I

    .line 817
    .line 818
    const/4 v2, 0x1

    .line 819
    if-ge v0, v2, :cond_1b

    .line 820
    .line 821
    new-instance v0, Ljava/util/ArrayList;

    .line 822
    .line 823
    const/16 v2, 0xa

    .line 824
    .line 825
    invoke-static {v12, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 826
    .line 827
    .line 828
    move-result v2

    .line 829
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    if-eqz v3, :cond_1a

    .line 841
    .line 842
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    check-cast v3, Landroid/widget/RemoteViews;

    .line 847
    .line 848
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 849
    .line 850
    .line 851
    move-result v3

    .line 852
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 853
    .line 854
    .line 855
    move-result-object v3

    .line 856
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    goto :goto_d

    .line 860
    :cond_1a
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    :cond_1b
    new-instance v5, Landroidx/glance/appwidget/RemoteCollectionItems;

    .line 873
    .line 874
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/List;)[J

    .line 875
    .line 876
    .line 877
    move-result-object v2

    .line 878
    const/4 v7, 0x0

    .line 879
    new-array v3, v7, [Landroid/widget/RemoteViews;

    .line 880
    .line 881
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object v3

    .line 885
    check-cast v3, [Landroid/widget/RemoteViews;

    .line 886
    .line 887
    const/4 v4, 0x1

    .line 888
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 889
    .line 890
    .line 891
    move-result v0

    .line 892
    invoke-direct {v5, v2, v3, v1, v0}, Landroidx/glance/appwidget/RemoteCollectionItems;-><init>([J[Landroid/widget/RemoteViews;ZI)V

    .line 893
    .line 894
    .line 895
    iget v2, v6, Landroidx/glance/appwidget/TranslationContext;->appWidgetId:I

    .line 896
    .line 897
    iget v3, v13, Landroidx/glance/appwidget/InsertedViewInfo;->mainViewId:I

    .line 898
    .line 899
    iget-wide v0, v6, Landroidx/glance/appwidget/TranslationContext;->layoutSize:J

    .line 900
    .line 901
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    cmp-long v4, v0, v7

    .line 907
    .line 908
    if-eqz v4, :cond_1c

    .line 909
    .line 910
    new-instance v4, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .line 914
    .line 915
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 916
    .line 917
    .line 918
    move-result v7

    .line 919
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v7

    .line 923
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    const/16 v7, 0x78

    .line 927
    .line 928
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 932
    .line 933
    .line 934
    move-result v0

    .line 935
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    :goto_e
    move-object v4, v0

    .line 947
    move-object v1, v10

    .line 948
    move-object v0, v14

    .line 949
    goto :goto_f

    .line 950
    :cond_1c
    const-string v0, "Unspecified"

    .line 951
    .line 952
    goto :goto_e

    .line 953
    :goto_f
    invoke-static/range {v0 .. v5}, Landroidx/glance/appwidget/GlanceRemoteViewsServiceKt;->setRemoteAdapter(Landroid/widget/RemoteViews;Landroid/content/Context;IILjava/lang/String;Landroidx/glance/appwidget/RemoteCollectionItems;)V

    .line 954
    .line 955
    .line 956
    iget-object v1, v15, Landroidx/glance/appwidget/lazy/EmittableLazyColumn;->modifier:Landroidx/glance/GlanceModifier;

    .line 957
    .line 958
    invoke-static {v6, v0, v1, v13}, Lcoil3/util/UtilsKt;->applyModifiers(Landroidx/glance/appwidget/TranslationContext;Landroid/widget/RemoteViews;Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/InsertedViewInfo;)V

    .line 959
    .line 960
    .line 961
    return-void

    .line 962
    :cond_1d
    const-string v0, "Glance does not support nested list views."

    .line 963
    .line 964
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 965
    .line 966
    .line 967
    return-void

    .line 968
    :cond_1e
    move-object v6, v0

    .line 969
    move-object v2, v10

    .line 970
    move v7, v11

    .line 971
    move-object/from16 v19, v13

    .line 972
    .line 973
    move-object v0, v14

    .line 974
    instance-of v8, v1, Landroidx/glance/layout/EmittableSpacer;

    .line 975
    .line 976
    if-eqz v8, :cond_1f

    .line 977
    .line 978
    check-cast v1, Landroidx/glance/layout/EmittableSpacer;

    .line 979
    .line 980
    sget-object v2, Landroidx/glance/appwidget/LayoutType;->Frame:Landroidx/glance/appwidget/LayoutType;

    .line 981
    .line 982
    iget-object v3, v1, Landroidx/glance/layout/EmittableSpacer;->modifier:Landroidx/glance/GlanceModifier;

    .line 983
    .line 984
    invoke-static {v0, v6, v2, v3}, Landroidx/glance/appwidget/LayoutSelectionKt;->insertView(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/LayoutType;Landroidx/glance/GlanceModifier;)Landroidx/glance/appwidget/InsertedViewInfo;

    .line 985
    .line 986
    .line 987
    move-result-object v2

    .line 988
    iget-object v1, v1, Landroidx/glance/layout/EmittableSpacer;->modifier:Landroidx/glance/GlanceModifier;

    .line 989
    .line 990
    invoke-static {v6, v0, v1, v2}, Lcoil3/util/UtilsKt;->applyModifiers(Landroidx/glance/appwidget/TranslationContext;Landroid/widget/RemoteViews;Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/InsertedViewInfo;)V

    .line 991
    .line 992
    .line 993
    return-void

    .line 994
    :cond_1f
    instance-of v8, v1, Landroidx/glance/EmittableImage;

    .line 995
    .line 996
    if-eqz v8, :cond_2e

    .line 997
    .line 998
    check-cast v1, Landroidx/glance/EmittableImage;

    .line 999
    .line 1000
    invoke-static {v1}, Lcoil3/util/ContextsKt;->isDecorative(Landroidx/glance/EmittableImage;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v8

    .line 1004
    iget v9, v1, Landroidx/glance/EmittableImage;->contentScale:I

    .line 1005
    .line 1006
    if-nez v9, :cond_21

    .line 1007
    .line 1008
    if-eqz v8, :cond_20

    .line 1009
    .line 1010
    sget-object v3, Landroidx/glance/appwidget/LayoutType;->ImageCropDecorative:Landroidx/glance/appwidget/LayoutType;

    .line 1011
    .line 1012
    goto :goto_10

    .line 1013
    :cond_20
    sget-object v3, Landroidx/glance/appwidget/LayoutType;->ImageCrop:Landroidx/glance/appwidget/LayoutType;

    .line 1014
    .line 1015
    goto :goto_10

    .line 1016
    :cond_21
    const/4 v10, 0x1

    .line 1017
    if-ne v9, v10, :cond_23

    .line 1018
    .line 1019
    if-eqz v8, :cond_22

    .line 1020
    .line 1021
    sget-object v3, Landroidx/glance/appwidget/LayoutType;->ImageFitDecorative:Landroidx/glance/appwidget/LayoutType;

    .line 1022
    .line 1023
    goto :goto_10

    .line 1024
    :cond_22
    sget-object v3, Landroidx/glance/appwidget/LayoutType;->ImageFit:Landroidx/glance/appwidget/LayoutType;

    .line 1025
    .line 1026
    goto :goto_10

    .line 1027
    :cond_23
    if-ne v9, v5, :cond_25

    .line 1028
    .line 1029
    if-eqz v8, :cond_24

    .line 1030
    .line 1031
    sget-object v3, Landroidx/glance/appwidget/LayoutType;->ImageFillBoundsDecorative:Landroidx/glance/appwidget/LayoutType;

    .line 1032
    .line 1033
    goto :goto_10

    .line 1034
    :cond_24
    sget-object v3, Landroidx/glance/appwidget/LayoutType;->ImageFillBounds:Landroidx/glance/appwidget/LayoutType;

    .line 1035
    .line 1036
    goto :goto_10

    .line 1037
    :cond_25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    const-string v8, "Unsupported ContentScale user: "

    .line 1040
    .line 1041
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    iget v8, v1, Landroidx/glance/EmittableImage;->contentScale:I

    .line 1045
    .line 1046
    invoke-static {v8}, Landroidx/glance/layout/ContentScale;->toString-impl(I)Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v8

    .line 1050
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v5

    .line 1057
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    sget-object v3, Landroidx/glance/appwidget/LayoutType;->ImageFit:Landroidx/glance/appwidget/LayoutType;

    .line 1061
    .line 1062
    :goto_10
    iget-object v5, v1, Landroidx/glance/EmittableImage;->modifier:Landroidx/glance/GlanceModifier;

    .line 1063
    .line 1064
    invoke-static {v0, v6, v3, v5}, Landroidx/glance/appwidget/LayoutSelectionKt;->insertView(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/LayoutType;Landroidx/glance/GlanceModifier;)Landroidx/glance/appwidget/InsertedViewInfo;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v3

    .line 1068
    iget v5, v3, Landroidx/glance/appwidget/InsertedViewInfo;->mainViewId:I

    .line 1069
    .line 1070
    iget-object v8, v1, Landroidx/glance/EmittableImage;->provider:Landroidx/glance/AndroidResourceImageProvider;

    .line 1071
    .line 1072
    instance-of v9, v8, Landroidx/glance/AndroidResourceImageProvider;

    .line 1073
    .line 1074
    if-eqz v9, :cond_2d

    .line 1075
    .line 1076
    iget v8, v8, Landroidx/glance/AndroidResourceImageProvider;->resId:I

    .line 1077
    .line 1078
    invoke-virtual {v0, v5, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1079
    .line 1080
    .line 1081
    iget-object v8, v1, Landroidx/glance/EmittableImage;->colorFilterParams:Landroidx/glance/TintColorFilterParams;

    .line 1082
    .line 1083
    if-eqz v8, :cond_28

    .line 1084
    .line 1085
    instance-of v9, v8, Landroidx/glance/TintColorFilterParams;

    .line 1086
    .line 1087
    if-eqz v9, :cond_27

    .line 1088
    .line 1089
    iget-object v8, v8, Landroidx/glance/TintColorFilterParams;->colorProvider:Landroidx/glance/unit/ColorProvider;

    .line 1090
    .line 1091
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1092
    .line 1093
    if-lt v9, v4, :cond_26

    .line 1094
    .line 1095
    sget-object v2, Landroidx/glance/appwidget/translators/ImageTranslatorApi31Impl;->INSTANCE:Landroidx/glance/appwidget/translators/ImageTranslatorApi31Impl;

    .line 1096
    .line 1097
    invoke-virtual {v2, v6, v0, v8, v5}, Landroidx/glance/appwidget/translators/ImageTranslatorApi31Impl;->applyTintColorFilter(Landroidx/glance/appwidget/TranslationContext;Landroid/widget/RemoteViews;Landroidx/glance/unit/ColorProvider;I)V

    .line 1098
    .line 1099
    .line 1100
    goto :goto_11

    .line 1101
    :cond_26
    invoke-interface {v8, v2}, Landroidx/glance/unit/ColorProvider;->getColor-vNxB06k(Landroid/content/Context;)J

    .line 1102
    .line 1103
    .line 1104
    move-result-wide v8

    .line 1105
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 1106
    .line 1107
    .line 1108
    move-result v2

    .line 1109
    const-string v4, "setColorFilter"

    .line 1110
    .line 1111
    invoke-virtual {v0, v5, v4, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1112
    .line 1113
    .line 1114
    goto :goto_11

    .line 1115
    :cond_27
    const-string v0, "An unsupported ColorFilter was used."

    .line 1116
    .line 1117
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    return-void

    .line 1121
    :cond_28
    :goto_11
    iget-object v2, v1, Landroidx/glance/EmittableImage;->modifier:Landroidx/glance/GlanceModifier;

    .line 1122
    .line 1123
    invoke-static {v6, v0, v2, v3}, Lcoil3/util/UtilsKt;->applyModifiers(Landroidx/glance/appwidget/TranslationContext;Landroid/widget/RemoteViews;Landroidx/glance/GlanceModifier;Landroidx/glance/appwidget/InsertedViewInfo;)V

    .line 1124
    .line 1125
    .line 1126
    iget v2, v1, Landroidx/glance/EmittableImage;->contentScale:I

    .line 1127
    .line 1128
    const/4 v4, 0x1

    .line 1129
    if-ne v2, v4, :cond_2c

    .line 1130
    .line 1131
    iget-object v2, v1, Landroidx/glance/EmittableImage;->modifier:Landroidx/glance/GlanceModifier;

    .line 1132
    .line 1133
    sget-object v3, Landroidx/glance/appwidget/translators/ImageTranslatorKt$translateEmittableImage$$inlined$findModifier$1;->INSTANCE:Landroidx/glance/appwidget/translators/ImageTranslatorKt$translateEmittableImage$$inlined$findModifier$1;

    .line 1134
    .line 1135
    move-object/from16 v4, v19

    .line 1136
    .line 1137
    invoke-interface {v2, v4, v3}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    check-cast v2, Landroidx/glance/layout/WidthModifier;

    .line 1142
    .line 1143
    if-eqz v2, :cond_29

    .line 1144
    .line 1145
    iget-object v2, v2, Landroidx/glance/layout/WidthModifier;->width:Landroidx/glance/unit/Dimension;

    .line 1146
    .line 1147
    goto :goto_12

    .line 1148
    :cond_29
    move-object v2, v4

    .line 1149
    :goto_12
    sget-object v3, Landroidx/glance/unit/Dimension$Wrap;->INSTANCE:Landroidx/glance/unit/Dimension$Wrap;

    .line 1150
    .line 1151
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1152
    .line 1153
    .line 1154
    move-result v2

    .line 1155
    if-nez v2, :cond_2b

    .line 1156
    .line 1157
    iget-object v1, v1, Landroidx/glance/EmittableImage;->modifier:Landroidx/glance/GlanceModifier;

    .line 1158
    .line 1159
    sget-object v2, Landroidx/glance/appwidget/translators/ImageTranslatorKt$translateEmittableImage$$inlined$findModifier$1;->INSTANCE$1:Landroidx/glance/appwidget/translators/ImageTranslatorKt$translateEmittableImage$$inlined$findModifier$1;

    .line 1160
    .line 1161
    invoke-interface {v1, v4, v2}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    check-cast v1, Landroidx/glance/layout/HeightModifier;

    .line 1166
    .line 1167
    if-eqz v1, :cond_2a

    .line 1168
    .line 1169
    iget-object v13, v1, Landroidx/glance/layout/HeightModifier;->height:Landroidx/glance/unit/Dimension;

    .line 1170
    .line 1171
    goto :goto_13

    .line 1172
    :cond_2a
    move-object v13, v4

    .line 1173
    :goto_13
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1174
    .line 1175
    .line 1176
    move-result v1

    .line 1177
    if-eqz v1, :cond_2c

    .line 1178
    .line 1179
    :cond_2b
    const/4 v11, 0x1

    .line 1180
    goto :goto_14

    .line 1181
    :cond_2c
    move v11, v7

    .line 1182
    :goto_14
    const-string v1, "setAdjustViewBounds"

    .line 1183
    .line 1184
    invoke-virtual {v0, v5, v1, v11}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 1185
    .line 1186
    .line 1187
    return-void

    .line 1188
    :cond_2d
    const-string v0, "An unsupported ImageProvider type was used."

    .line 1189
    .line 1190
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 1191
    .line 1192
    .line 1193
    return-void

    .line 1194
    :cond_2e
    instance-of v2, v1, Landroidx/glance/appwidget/EmittableSizeBox;

    .line 1195
    .line 1196
    if-eqz v2, :cond_31

    .line 1197
    .line 1198
    check-cast v1, Landroidx/glance/appwidget/EmittableSizeBox;

    .line 1199
    .line 1200
    iget-object v1, v1, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 1201
    .line 1202
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1203
    .line 1204
    .line 1205
    move-result v2

    .line 1206
    const/4 v4, 0x1

    .line 1207
    if-gt v2, v4, :cond_30

    .line 1208
    .line 1209
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    check-cast v1, Landroidx/glance/Emittable;

    .line 1214
    .line 1215
    if-eqz v1, :cond_2f

    .line 1216
    .line 1217
    invoke-static {v0, v6, v1}, Landroidx/compose/ui/unit/DpKt;->translateChild(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/Emittable;)V

    .line 1218
    .line 1219
    .line 1220
    :cond_2f
    :goto_15
    return-void

    .line 1221
    :cond_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1222
    .line 1223
    .line 1224
    move-result v0

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    const-string v2, "Size boxes can only have at most one child "

    .line 1228
    .line 1229
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    const-string v0, ". The normalization of the composition tree failed."

    .line 1236
    .line 1237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1245
    .line 1246
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    throw v1

    .line 1254
    :cond_31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v0

    .line 1262
    const-string v1, "Unknown element type "

    .line 1263
    .line 1264
    invoke-static {v1, v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1265
    .line 1266
    .line 1267
    return-void
.end method

.method public static final translateComposition(Landroidx/glance/appwidget/TranslationContext;Ljava/util/List;I)Landroid/widget/RemoteViews;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroidx/glance/Emittable;

    .line 29
    .line 30
    instance-of v5, v5, Landroidx/glance/appwidget/EmittableSizeBox;

    .line 31
    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroidx/glance/Emittable;

    .line 39
    .line 40
    invoke-interface {v2}, Landroidx/glance/Emittable;->getModifier()Landroidx/glance/GlanceModifier;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-static {v0, v5, v1}, Landroidx/glance/appwidget/LayoutSelectionKt;->createRootView(Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/GlanceModifier;I)Landroidx/glance/appwidget/RemoteViewsInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v5, v1, Landroidx/glance/appwidget/RemoteViewsInfo;->remoteViews:Landroid/widget/RemoteViews;

    .line 49
    .line 50
    iget-object v1, v1, Landroidx/glance/appwidget/RemoteViewsInfo;->view:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v3}, Landroidx/glance/appwidget/TranslationContext;->forChild(Landroidx/glance/appwidget/InsertedViewInfo;I)Landroidx/glance/appwidget/TranslationContext;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    invoke-direct {v10, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 59
    .line 60
    .line 61
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    .line 63
    invoke-direct {v8, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 64
    .line 65
    .line 66
    const/4 v14, 0x0

    .line 67
    const/16 v15, 0x7ebf

    .line 68
    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    const-wide/16 v11, 0x0

    .line 72
    .line 73
    const/4 v13, 0x0

    .line 74
    invoke-static/range {v6 .. v15}, Landroidx/glance/appwidget/TranslationContext;->copy-tbIExKY$default(Landroidx/glance/appwidget/TranslationContext;ILjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JILjava/lang/Integer;I)Landroidx/glance/appwidget/TranslationContext;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v5, v0, v2}, Landroidx/compose/ui/unit/DpKt;->translateChild(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/Emittable;)V

    .line 79
    .line 80
    .line 81
    return-object v5

    .line 82
    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    check-cast v2, Landroidx/glance/appwidget/EmittableSizeBox;

    .line 90
    .line 91
    iget-object v2, v2, Landroidx/glance/appwidget/EmittableSizeBox;->sizeMode:Landroidx/glance/appwidget/SizeMode;

    .line 92
    .line 93
    new-instance v5, Ljava/util/ArrayList;

    .line 94
    .line 95
    const/16 v6, 0xa

    .line 96
    .line 97
    move-object/from16 v7, p1

    .line 98
    .line 99
    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_3

    .line 115
    .line 116
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    check-cast v8, Landroidx/glance/Emittable;

    .line 121
    .line 122
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-object v9, v8

    .line 126
    check-cast v9, Landroidx/glance/appwidget/EmittableSizeBox;

    .line 127
    .line 128
    iget-wide v9, v9, Landroidx/glance/appwidget/EmittableSizeBox;->size:J

    .line 129
    .line 130
    invoke-interface {v8}, Landroidx/glance/Emittable;->getModifier()Landroidx/glance/GlanceModifier;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    invoke-static {v0, v11, v1}, Landroidx/glance/appwidget/LayoutSelectionKt;->createRootView(Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/GlanceModifier;I)Landroidx/glance/appwidget/RemoteViewsInfo;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    iget-object v12, v11, Landroidx/glance/appwidget/RemoteViewsInfo;->remoteViews:Landroid/widget/RemoteViews;

    .line 139
    .line 140
    iget-object v11, v11, Landroidx/glance/appwidget/RemoteViewsInfo;->view:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 141
    .line 142
    invoke-virtual {v0, v11, v3}, Landroidx/glance/appwidget/TranslationContext;->forChild(Landroidx/glance/appwidget/InsertedViewInfo;I)Landroidx/glance/appwidget/TranslationContext;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    .line 148
    invoke-direct {v14, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 149
    .line 150
    .line 151
    move-object v13, v12

    .line 152
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    .line 154
    invoke-direct {v12, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 155
    .line 156
    .line 157
    const/16 v18, 0x0

    .line 158
    .line 159
    const/16 v19, 0x7cbf

    .line 160
    .line 161
    move-wide v15, v9

    .line 162
    move-object v10, v11

    .line 163
    const/4 v11, 0x0

    .line 164
    move-object v9, v13

    .line 165
    const/4 v13, 0x0

    .line 166
    const/16 v17, 0x0

    .line 167
    .line 168
    invoke-static/range {v10 .. v19}, Landroidx/glance/appwidget/TranslationContext;->copy-tbIExKY$default(Landroidx/glance/appwidget/TranslationContext;ILjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JILjava/lang/Integer;I)Landroidx/glance/appwidget/TranslationContext;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-static {v9, v10, v8}, Landroidx/compose/ui/unit/DpKt;->translateChild(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/Emittable;)V

    .line 173
    .line 174
    .line 175
    new-instance v8, Landroid/util/SizeF;

    .line 176
    .line 177
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    .line 178
    .line 179
    .line 180
    move-result v10

    .line 181
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    invoke-direct {v8, v10, v11}, Landroid/util/SizeF;-><init>(FF)V

    .line 186
    .line 187
    .line 188
    new-instance v10, Lkotlin/Pair;

    .line 189
    .line 190
    invoke-direct {v10, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_3
    instance-of v0, v2, Landroidx/glance/appwidget/SizeMode$Single;

    .line 198
    .line 199
    if-eqz v0, :cond_4

    .line 200
    .line 201
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lkotlin/Pair;

    .line 206
    .line 207
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, Landroid/widget/RemoteViews;

    .line 210
    .line 211
    return-object v0

    .line 212
    :cond_4
    sget-object v0, Landroidx/glance/appwidget/SizeMode$Exact;->INSTANCE:Landroidx/glance/appwidget/SizeMode$Exact;

    .line 213
    .line 214
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    const/4 v1, 0x0

    .line 219
    if-eqz v0, :cond_b

    .line 220
    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 222
    .line 223
    const/16 v2, 0x1f

    .line 224
    .line 225
    if-lt v0, v2, :cond_5

    .line 226
    .line 227
    sget-object v0, Landroidx/glance/appwidget/Api31Impl;->INSTANCE:Landroidx/glance/appwidget/Api31Impl;

    .line 228
    .line 229
    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/Api31Impl;->createRemoteViews(Ljava/util/Map;)Landroid/widget/RemoteViews;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    return-object v0

    .line 238
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    const/4 v2, 0x2

    .line 243
    if-eq v0, v4, :cond_7

    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-ne v0, v2, :cond_6

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_6
    const-string/jumbo v0, "unsupported views size"

    .line 253
    .line 254
    .line 255
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return-object v1

    .line 259
    :cond_7
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 262
    .line 263
    .line 264
    move-result v6

    .line 265
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 273
    .line 274
    .line 275
    move-result v6

    .line 276
    if-eqz v6, :cond_8

    .line 277
    .line 278
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    check-cast v6, Lkotlin/Pair;

    .line 283
    .line 284
    iget-object v6, v6, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v6, Landroid/widget/RemoteViews;

    .line 287
    .line 288
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-eq v5, v4, :cond_a

    .line 297
    .line 298
    if-ne v5, v2, :cond_9

    .line 299
    .line 300
    new-instance v1, Landroid/widget/RemoteViews;

    .line 301
    .line 302
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    check-cast v2, Landroid/widget/RemoteViews;

    .line 307
    .line 308
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Landroid/widget/RemoteViews;

    .line 313
    .line 314
    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 315
    .line 316
    .line 317
    return-object v1

    .line 318
    :cond_9
    const-string v0, "There must be between 1 and 2 views."

    .line 319
    .line 320
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    return-object v1

    .line 324
    :cond_a
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    check-cast v0, Landroid/widget/RemoteViews;

    .line 329
    .line 330
    return-object v0

    .line 331
    :cond_b
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 332
    .line 333
    .line 334
    return-object v1
.end method

.method public static final translateComposition-KpG6l20(Landroid/content/Context;ILandroidx/glance/appwidget/RemoteViewsRoot;Landroidx/glance/appwidget/LayoutConfiguration;ILandroid/content/ComponentName;)Landroid/widget/RemoteViews;
    .locals 16

    .line 1
    new-instance v0, Landroidx/glance/appwidget/TranslationContext;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    move v1, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v2

    .line 22
    :goto_0
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-direct {v7, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v8, Landroidx/glance/appwidget/InsertedViewInfo;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x7

    .line 31
    invoke-direct {v8, v2, v2, v3, v4}, Landroidx/glance/appwidget/InsertedViewInfo;-><init>(IILjava/util/Map;I)V

    .line 32
    .line 33
    .line 34
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    const/4 v12, -0x1

    .line 40
    const/4 v13, 0x0

    .line 41
    const/4 v5, -0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    const-wide v10, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    const/4 v14, 0x0

    .line 49
    move/from16 v2, p1

    .line 50
    .line 51
    move-object/from16 v4, p3

    .line 52
    .line 53
    move-object/from16 v15, p5

    .line 54
    .line 55
    move v3, v1

    .line 56
    move-object/from16 v1, p0

    .line 57
    .line 58
    invoke-direct/range {v0 .. v15}, Landroidx/glance/appwidget/TranslationContext;-><init>(Landroid/content/Context;IZLandroidx/glance/appwidget/LayoutConfiguration;IZLjava/util/concurrent/atomic/AtomicInteger;Landroidx/glance/appwidget/InsertedViewInfo;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;Landroid/content/ComponentName;)V

    .line 59
    .line 60
    .line 61
    move-object v1, v0

    .line 62
    move-object/from16 v0, p2

    .line 63
    .line 64
    iget-object v0, v0, Landroidx/glance/EmittableWithChildren;->children:Ljava/util/ArrayList;

    .line 65
    .line 66
    move/from16 v2, p4

    .line 67
    .line 68
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/unit/DpKt;->translateComposition(Landroidx/glance/appwidget/TranslationContext;Ljava/util/List;I)Landroid/widget/RemoteViews;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0
.end method

.method public static final tryAttachComposeStackTrace(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/internal/jdk7/JDK7PlatformImplementations$ReflectSdkVersion;->sdkVersion:Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v2, 0x13

    .line 14
    .line 15
    if-lt v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lkotlin/internal/PlatformImplementations$ReflectThrowable;->getSuppressed:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast v0, [Ljava/lang/Throwable;

    .line 29
    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x0

    .line 60
    move v4, v3

    .line 61
    :goto_2
    if-ge v4, v2, :cond_4

    .line 62
    .line 63
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/Throwable;

    .line 68
    .line 69
    instance-of v5, v5, Landroidx/compose/runtime/tooling/DiagnosticComposeException;

    .line 70
    .line 71
    if-eqz v5, :cond_3

    .line 72
    .line 73
    return v3

    .line 74
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 82
    .line 83
    if-eqz p1, :cond_6

    .line 84
    .line 85
    iget-boolean v0, p1, Landroidx/compose/runtime/tooling/ComposeStackTrace;->hasSourceInformation:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    iget-object v2, p1, Landroidx/compose/runtime/tooling/ComposeStackTrace;->frames:Ljava/util/List;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    move v4, v3

    .line 96
    :goto_3
    if-ge v4, v0, :cond_6

    .line 97
    .line 98
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    :cond_6
    if-eqz v3, :cond_7

    .line 120
    .line 121
    new-instance v1, Landroidx/compose/runtime/tooling/DiagnosticComposeException;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-direct {v1, p1}, Landroidx/compose/runtime/tooling/DiagnosticComposeException;-><init>(Landroidx/compose/runtime/tooling/ComposeStackTrace;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_5

    .line 130
    :goto_4
    move-object v1, p1

    .line 131
    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    .line 132
    .line 133
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    return v3
.end method

.method public static final type(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;Lokhttp3/Dispatcher$promoteAndExecute$Effects;)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v1, v0, 0x4

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->type_:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const/16 v1, 0x8

    .line 18
    .line 19
    and-int/2addr v0, v1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$ValueParameter;->typeId_:I

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    const-string p0, "No type in ProtoBuf.ValueParameter"

    .line 30
    .line 31
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public static final width-3ABfNKs(Landroidx/glance/GlanceModifier;F)Landroidx/glance/GlanceModifier;
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/layout/WidthModifier;

    .line 2
    .line 3
    new-instance v1, Landroidx/glance/unit/Dimension$Dp;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/glance/layout/WidthModifier;-><init>(Landroidx/glance/unit/Dimension;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Landroidx/glance/GlanceModifier;->then(Landroidx/glance/GlanceModifier;)Landroidx/glance/GlanceModifier;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final withTransactionContext(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p2, v1}, Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v2, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    .line 12
    .line 13
    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroidx/room/TransactionElement;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p2, Landroidx/room/TransactionElement;->transactionDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object p2, v1

    .line 25
    :goto_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-static {p2, v0, p1}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/ExceptionsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {p2, v2, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 43
    .line 44
    .line 45
    :try_start_0
    iget-object p1, p0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Landroidx/room/TransactionExecutor;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    new-instance v1, Landroidx/core/provider/RequestExecutor$ReplyRunnable;

    .line 50
    .line 51
    invoke-direct {v1, p2, p0, v0}, Landroidx/core/provider/RequestExecutor$ReplyRunnable;-><init>(Lkotlinx/coroutines/CancellableContinuationImpl;Landroidx/room/RoomDatabase;Landroidx/room/RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroidx/room/TransactionExecutor;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception p0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string p0, "internalTransactionExecutor"

    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    const-string v0, "Unable to acquire a thread to perform the database transaction."

    .line 69
    .line 70
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    .line 74
    .line 75
    .line 76
    :goto_2
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method


# virtual methods
.method public doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public abstract processText(Ljava/lang/String;)V
.end method
