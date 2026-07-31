.class public final synthetic Lcoil3/network/NetworkFetcher$fetch$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 1
    iput p7, p0, Lcoil3/network/NetworkFetcher$fetch$2;->$r8$classId:I

    .line 2
    .line 3
    move-object v0, p4

    .line 4
    move-object p4, p2

    .line 5
    move p2, p6

    .line 6
    move-object p6, p5

    .line 7
    move-object p5, v0

    .line 8
    invoke-direct/range {p0 .. p6}, Lkotlin/jvm/internal/FunctionReference;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/network/NetworkFetcher$fetch$2;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move-object/from16 v1, p1

    .line 12
    .line 13
    check-cast v1, Ljava/lang/Throwable;

    .line 14
    .line 15
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lkotlinx/coroutines/JobNode;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobNode;->invoke(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-object v3

    .line 23
    :pswitch_0
    move-object/from16 v1, p1

    .line 24
    .line 25
    check-cast v1, Ljava/util/Set;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Landroidx/room/InvalidationTracker;

    .line 33
    .line 34
    iget-object v1, v0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object v0, v0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/LinkedHashMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroidx/room/ObserverWrapper;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    throw v2

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :pswitch_1
    move-object/from16 v1, p1

    .line 81
    .line 82
    check-cast v1, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Landroidx/compose/foundation/AbstractClickableNode;

    .line 91
    .line 92
    iget-object v4, v0, Landroidx/compose/foundation/AbstractClickableNode;->currentKeyPressInteractions:Landroidx/collection/MutableLongObjectMap;

    .line 93
    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->initializeIndicationAndInteractionSourceIfNeeded()V

    .line 97
    .line 98
    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :cond_1
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    iget-object v1, v4, Landroidx/collection/MutableLongObjectMap;->values:[Ljava/lang/Object;

    .line 106
    .line 107
    iget-object v5, v4, Landroidx/collection/MutableLongObjectMap;->metadata:[J

    .line 108
    .line 109
    array-length v6, v5

    .line 110
    add-int/lit8 v6, v6, -0x2

    .line 111
    .line 112
    const/4 v7, 0x3

    .line 113
    if-ltz v6, :cond_5

    .line 114
    .line 115
    const/4 v9, 0x0

    .line 116
    :goto_0
    aget-wide v10, v5, v9

    .line 117
    .line 118
    not-long v12, v10

    .line 119
    const/4 v14, 0x7

    .line 120
    shl-long/2addr v12, v14

    .line 121
    and-long/2addr v12, v10

    .line 122
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    and-long/2addr v12, v14

    .line 128
    cmp-long v12, v12, v14

    .line 129
    .line 130
    if-eqz v12, :cond_4

    .line 131
    .line 132
    sub-int v12, v9, v6

    .line 133
    .line 134
    not-int v12, v12

    .line 135
    ushr-int/lit8 v12, v12, 0x1f

    .line 136
    .line 137
    const/16 v13, 0x8

    .line 138
    .line 139
    rsub-int/lit8 v12, v12, 0x8

    .line 140
    .line 141
    const/4 v14, 0x0

    .line 142
    :goto_1
    if-ge v14, v12, :cond_3

    .line 143
    .line 144
    const-wide/16 v15, 0xff

    .line 145
    .line 146
    and-long/2addr v15, v10

    .line 147
    const-wide/16 v17, 0x80

    .line 148
    .line 149
    cmp-long v15, v15, v17

    .line 150
    .line 151
    if-gez v15, :cond_2

    .line 152
    .line 153
    shl-int/lit8 v15, v9, 0x3

    .line 154
    .line 155
    add-int/2addr v15, v14

    .line 156
    aget-object v15, v1, v15

    .line 157
    .line 158
    check-cast v15, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    move/from16 p1, v13

    .line 165
    .line 166
    new-instance v13, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$1$1;

    .line 167
    .line 168
    invoke-direct {v13, v0, v15, v2}, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$1$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v8, v2, v2, v13, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_2
    move/from16 p1, v13

    .line 176
    .line 177
    :goto_2
    shr-long v10, v10, p1

    .line 178
    .line 179
    add-int/lit8 v14, v14, 0x1

    .line 180
    .line 181
    move/from16 v13, p1

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_3
    move v8, v13

    .line 185
    if-ne v12, v8, :cond_5

    .line 186
    .line 187
    :cond_4
    if-eq v9, v6, :cond_5

    .line 188
    .line 189
    add-int/lit8 v9, v9, 0x1

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_5
    iget-object v1, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 193
    .line 194
    if-eqz v1, :cond_6

    .line 195
    .line 196
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    new-instance v6, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$2$1;

    .line 201
    .line 202
    invoke-direct {v6, v0, v1, v2}, Landroidx/compose/foundation/AbstractClickableNode$onFocusChange$2$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v5, v2, v2, v6, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 206
    .line 207
    .line 208
    :cond_6
    invoke-virtual {v4}, Landroidx/collection/MutableLongObjectMap;->clear()V

    .line 209
    .line 210
    .line 211
    iput-object v2, v0, Landroidx/compose/foundation/AbstractClickableNode;->indirectPointerPressInteraction:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 212
    .line 213
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode;->onCancelKeyInput()V

    .line 214
    .line 215
    .line 216
    :goto_3
    return-object v3

    .line 217
    :pswitch_2
    move-object/from16 v1, p1

    .line 218
    .line 219
    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 220
    .line 221
    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Lcoil3/network/NetworkFetcher;

    .line 224
    .line 225
    invoke-static {v0, v1}, Lcoil3/network/NetworkFetcher;->access$doFetch(Lcoil3/network/NetworkFetcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    return-object v0

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
