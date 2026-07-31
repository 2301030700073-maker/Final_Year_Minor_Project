.class public final Landroidx/navigation/compose/NavHostKt$NavHost$33$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $backStackEntry:Landroidx/navigation/NavBackStackEntry;

.field public final synthetic $composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

.field public final synthetic $navController:Landroidx/navigation/NavHostController;

.field public final synthetic $transition:Landroidx/compose/animation/core/Transition;

.field public final synthetic $visibleEntries$delegate:Landroidx/compose/runtime/State;

.field public final synthetic $zIndices:Landroidx/collection/MutableObjectFloatMap;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/navigation/NavHostController;Landroidx/navigation/NavBackStackEntry;Landroidx/collection/MutableObjectFloatMap;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$navController:Landroidx/navigation/NavHostController;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$backStackEntry:Landroidx/navigation/NavBackStackEntry;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$zIndices:Landroidx/collection/MutableObjectFloatMap;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$visibleEntries$delegate:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;

    .line 2
    .line 3
    iget-object v5, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$visibleEntries$delegate:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    iget-object v6, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$navController:Landroidx/navigation/NavHostController;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$backStackEntry:Landroidx/navigation/NavBackStackEntry;

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$zIndices:Landroidx/collection/MutableObjectFloatMap;

    .line 14
    .line 15
    move-object v7, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/navigation/NavHostController;Landroidx/navigation/NavBackStackEntry;Landroidx/collection/MutableObjectFloatMap;Landroidx/compose/runtime/State;Landroidx/navigation/compose/ComposeNavigator;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 7
    .line 8
    iget-object v2, v1, Landroidx/compose/animation/core/Transition;->transitionState:Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 9
    .line 10
    invoke-virtual {v2}, Lorg/wikipedia/settings/BasePreferenceLoader;->getCurrentState()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v1, v1, Landroidx/compose/animation/core/Transition;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    iget-object v2, v0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$navController:Landroidx/navigation/NavHostController;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 31
    .line 32
    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, v0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$backStackEntry:Landroidx/navigation/NavBackStackEntry;

    .line 45
    .line 46
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    :cond_0
    iget-object v2, v0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$visibleEntries$delegate:Landroidx/compose/runtime/State;

    .line 53
    .line 54
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 75
    .line 76
    iget-object v4, v0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    .line 77
    .line 78
    invoke-virtual {v4}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4, v3}, Landroidx/navigation/NavController$NavControllerNavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, v0, Landroidx/navigation/compose/NavHostKt$NavHost$33$1;->$zIndices:Landroidx/collection/MutableObjectFloatMap;

    .line 87
    .line 88
    iget-object v2, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 89
    .line 90
    array-length v3, v2

    .line 91
    add-int/lit8 v3, v3, -0x2

    .line 92
    .line 93
    if-ltz v3, :cond_5

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    :goto_1
    aget-wide v6, v2, v5

    .line 97
    .line 98
    not-long v8, v6

    .line 99
    const/4 v10, 0x7

    .line 100
    shl-long/2addr v8, v10

    .line 101
    and-long/2addr v8, v6

    .line 102
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    and-long/2addr v8, v11

    .line 108
    cmp-long v8, v8, v11

    .line 109
    .line 110
    if-eqz v8, :cond_4

    .line 111
    .line 112
    sub-int v8, v5, v3

    .line 113
    .line 114
    not-int v8, v8

    .line 115
    ushr-int/lit8 v8, v8, 0x1f

    .line 116
    .line 117
    const/16 v9, 0x8

    .line 118
    .line 119
    rsub-int/lit8 v8, v8, 0x8

    .line 120
    .line 121
    const/4 v11, 0x0

    .line 122
    :goto_2
    if-ge v11, v8, :cond_3

    .line 123
    .line 124
    const-wide/16 v12, 0xff

    .line 125
    .line 126
    and-long v14, v6, v12

    .line 127
    .line 128
    const-wide/16 v16, 0x80

    .line 129
    .line 130
    cmp-long v14, v14, v16

    .line 131
    .line 132
    if-gez v14, :cond_2

    .line 133
    .line 134
    shl-int/lit8 v14, v5, 0x3

    .line 135
    .line 136
    add-int/2addr v14, v11

    .line 137
    iget-object v15, v0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 138
    .line 139
    aget-object v15, v15, v14

    .line 140
    .line 141
    iget-object v4, v0, Landroidx/collection/MutableObjectFloatMap;->values:[F

    .line 142
    .line 143
    aget v4, v4, v14

    .line 144
    .line 145
    check-cast v15, Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 152
    .line 153
    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-nez v4, :cond_2

    .line 160
    .line 161
    iget v4, v0, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 162
    .line 163
    add-int/lit8 v4, v4, -0x1

    .line 164
    .line 165
    iput v4, v0, Landroidx/collection/MutableObjectFloatMap;->_size:I

    .line 166
    .line 167
    iget-object v4, v0, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    .line 168
    .line 169
    iget v15, v0, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    .line 170
    .line 171
    shr-int/lit8 v16, v14, 0x3

    .line 172
    .line 173
    and-int/lit8 v17, v14, 0x7

    .line 174
    .line 175
    shl-int/lit8 v17, v17, 0x3

    .line 176
    .line 177
    aget-wide v18, v4, v16

    .line 178
    .line 179
    shl-long v12, v12, v17

    .line 180
    .line 181
    not-long v12, v12

    .line 182
    and-long v12, v18, v12

    .line 183
    .line 184
    const-wide/16 v18, 0xfe

    .line 185
    .line 186
    shl-long v17, v18, v17

    .line 187
    .line 188
    or-long v12, v12, v17

    .line 189
    .line 190
    aput-wide v12, v4, v16

    .line 191
    .line 192
    add-int/lit8 v16, v14, -0x7

    .line 193
    .line 194
    and-int v16, v16, v15

    .line 195
    .line 196
    and-int/2addr v15, v10

    .line 197
    add-int v16, v16, v15

    .line 198
    .line 199
    shr-int/lit8 v15, v16, 0x3

    .line 200
    .line 201
    aput-wide v12, v4, v15

    .line 202
    .line 203
    iget-object v4, v0, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    .line 204
    .line 205
    const/4 v12, 0x0

    .line 206
    aput-object v12, v4, v14

    .line 207
    .line 208
    :cond_2
    shr-long/2addr v6, v9

    .line 209
    add-int/lit8 v11, v11, 0x1

    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_3
    if-ne v8, v9, :cond_5

    .line 213
    .line 214
    :cond_4
    if-eq v5, v3, :cond_5

    .line 215
    .line 216
    add-int/lit8 v5, v5, 0x1

    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 220
    .line 221
    return-object v0
.end method
