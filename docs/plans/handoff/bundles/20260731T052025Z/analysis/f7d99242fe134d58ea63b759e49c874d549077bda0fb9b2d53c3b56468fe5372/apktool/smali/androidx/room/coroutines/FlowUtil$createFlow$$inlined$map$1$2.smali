.class public final Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $block$inlined:Ljava/lang/Object;

.field public final synthetic $db$inlined:Ljava/lang/Object;

.field public final synthetic $inTransaction$inlined:Z

.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/room/RoomDatabase;ZLkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$db$inlined:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$inTransaction$inlined:Z

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$block$inlined:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;Lnet/thunderbird/core/common/action/SwipeActions;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$r8$classId:I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$db$inlined:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$block$inlined:Ljava/lang/Object;

    iput-boolean p4, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$inTransaction$inlined:Z

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    const/high16 v5, -0x80000000

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    iget-object v7, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$db$inlined:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v8, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$block$inlined:Ljava/lang/Object;

    .line 17
    .line 18
    iget-boolean v9, p0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;->$inTransaction$inlined:Z

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    check-cast v8, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 25
    .line 26
    check-cast v7, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;

    .line 27
    .line 28
    instance-of v0, p2, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$2$1;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    move-object v0, p2

    .line 33
    check-cast v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$2$1;

    .line 34
    .line 35
    iget v11, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 36
    .line 37
    and-int v12, v11, v5

    .line 38
    .line 39
    if-eqz v12, :cond_0

    .line 40
    .line 41
    sub-int/2addr v11, v5

    .line 42
    iput v11, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$2$1;

    .line 46
    .line 47
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$2$1;-><init>(Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p0, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 51
    .line 52
    iget p2, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 53
    .line 54
    if-eqz p2, :cond_2

    .line 55
    .line 56
    if-ne p2, v6, :cond_1

    .line 57
    .line 58
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object v1, v10

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    check-cast p1, Ljava/util/List;

    .line 71
    .line 72
    const/16 p0, 0xa

    .line 73
    .line 74
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-static {p0}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    const/16 p2, 0x10

    .line 83
    .line 84
    if-ge p0, p2, :cond_3

    .line 85
    .line 86
    move p0, p2

    .line 87
    :cond_3
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 88
    .line 89
    invoke-direct {p2, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 107
    .line 108
    iget-object v3, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 109
    .line 110
    new-instance v5, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 111
    .line 112
    iget-object v10, v8, Lnet/thunderbird/core/common/action/SwipeActions;->leftAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 113
    .line 114
    invoke-static {v7, p1, v10, v9}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;->access$buildSwipeAction(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/core/common/action/SwipeAction;Z)Lnet/thunderbird/core/common/action/SwipeAction;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    iget-object v11, v8, Lnet/thunderbird/core/common/action/SwipeActions;->rightAction:Lnet/thunderbird/core/common/action/SwipeAction;

    .line 119
    .line 120
    invoke-static {v7, p1, v11, v9}, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;->access$buildSwipeAction(Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions;Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/core/common/action/SwipeAction;Z)Lnet/thunderbird/core/common/action/SwipeAction;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {v5, v10, p1}, Lnet/thunderbird/core/common/action/SwipeActions;-><init>(Lnet/thunderbird/core/common/action/SwipeAction;Lnet/thunderbird/core/common/action/SwipeAction;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    iput v6, v0, Lnet/thunderbird/feature/mail/message/list/internal/domain/usecase/BuildSwipeActions$swipeActions$1$invokeSuspend$$inlined$map$1$2$1;->label:I

    .line 132
    .line 133
    invoke-interface {v2, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    if-ne p0, v4, :cond_5

    .line 138
    .line 139
    move-object v1, v4

    .line 140
    :cond_5
    :goto_2
    return-object v1

    .line 141
    :pswitch_0
    instance-of v0, p2, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    .line 142
    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    move-object v0, p2

    .line 146
    check-cast v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    .line 147
    .line 148
    iget v11, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 149
    .line 150
    and-int v12, v11, v5

    .line 151
    .line 152
    if-eqz v12, :cond_6

    .line 153
    .line 154
    sub-int/2addr v11, v5

    .line 155
    iput v11, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    new-instance v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;

    .line 159
    .line 160
    invoke-direct {v0, p0, p2}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;-><init>(Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 161
    .line 162
    .line 163
    :goto_3
    iget-object p0, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 164
    .line 165
    iget p2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 166
    .line 167
    const/4 v5, 0x2

    .line 168
    if-eqz p2, :cond_9

    .line 169
    .line 170
    if-eq p2, v6, :cond_8

    .line 171
    .line 172
    if-ne p2, v5, :cond_7

    .line 173
    .line 174
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_7
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    move-object v1, v10

    .line 182
    goto :goto_6

    .line 183
    :cond_8
    iget-object v2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 184
    .line 185
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_9
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    check-cast p1, Ljava/util/Set;

    .line 193
    .line 194
    check-cast v7, Landroidx/room/RoomDatabase;

    .line 195
    .line 196
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 197
    .line 198
    iput-object v2, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 199
    .line 200
    iput v6, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 201
    .line 202
    invoke-static {v7, v6, v9, v8, v0}, Landroidx/room/util/DBUtil;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    if-ne p0, v4, :cond_a

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_a
    :goto_4
    iput-object v10, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 210
    .line 211
    iput v5, v0, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1$2$1;->label:I

    .line 212
    .line 213
    invoke-interface {v2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    if-ne p0, v4, :cond_b

    .line 218
    .line 219
    :goto_5
    move-object v1, v4

    .line 220
    :cond_b
    :goto_6
    return-object v1

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
