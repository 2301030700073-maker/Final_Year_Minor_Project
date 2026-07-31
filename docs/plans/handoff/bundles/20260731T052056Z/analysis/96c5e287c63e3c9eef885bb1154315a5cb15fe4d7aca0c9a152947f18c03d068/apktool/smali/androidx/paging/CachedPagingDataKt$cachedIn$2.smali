.class public final Landroidx/paging/CachedPagingDataKt$cachedIn$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public synthetic L$1:Ljava/lang/Object;

.field public label:I


# direct methods
.method public synthetic constructor <init>(IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 10
    iput p2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->$r8$classId:I

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x3

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 10
    .line 11
    check-cast p2, [Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    .line 15
    new-instance p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    .line 16
    .line 17
    invoke-direct {p0, v1, v1, p3}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    check-cast p1, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 30
    .line 31
    check-cast p2, Landroidx/glance/appwidget/AppWidgetSession;

    .line 32
    .line 33
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 34
    .line 35
    new-instance p1, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/lang/String;

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    invoke-direct {p1, v0, p0, p3}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p1, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_1
    check-cast p1, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 53
    .line 54
    check-cast p2, Landroidx/glance/appwidget/AppWidgetSession;

    .line 55
    .line 56
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    new-instance p1, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    .line 59
    .line 60
    iget-object p0, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Landroid/os/Bundle;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-direct {p1, v0, p0, p3}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p1, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :pswitch_2
    check-cast p1, Landroidx/paging/MulticastedPagingData;

    .line 76
    .line 77
    check-cast p2, Landroidx/paging/MulticastedPagingData;

    .line 78
    .line 79
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 80
    .line 81
    new-instance p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v1, v0, p3}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object p2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    iget v5, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-ne v5, v3, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object v1, v4

    .line 28
    goto :goto_3

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, [Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, [Landroidx/work/impl/constraints/ConstraintsState;

    .line 41
    .line 42
    array-length v5, v2

    .line 43
    const/4 v6, 0x0

    .line 44
    :goto_0
    sget-object v7, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->INSTANCE:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 45
    .line 46
    if-ge v6, v5, :cond_3

    .line 47
    .line 48
    aget-object v8, v2, v6

    .line 49
    .line 50
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    if-nez v9, :cond_2

    .line 55
    .line 56
    move-object v4, v8

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    :goto_1
    if-nez v4, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move-object v7, v4

    .line 65
    :goto_2
    iput v3, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    .line 66
    .line 67
    invoke-interface {p1, v7, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    if-ne p0, v0, :cond_5

    .line 72
    .line 73
    move-object v1, v0

    .line 74
    :cond_5
    :goto_3
    return-object v1

    .line 75
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 76
    .line 77
    iget v5, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    .line 78
    .line 79
    if-eqz v5, :cond_7

    .line 80
    .line 81
    if-ne v5, v3, :cond_6

    .line 82
    .line 83
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    move-object v1, v4

    .line 91
    goto :goto_5

    .line 92
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Landroidx/glance/appwidget/AppWidgetSession;

    .line 98
    .line 99
    iget-object v2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Ljava/lang/String;

    .line 102
    .line 103
    iput v3, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v3, Landroidx/glance/appwidget/AppWidgetSession$RunLambda;

    .line 109
    .line 110
    invoke-direct {v3, v2}, Landroidx/glance/appwidget/AppWidgetSession$RunLambda;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v3, p0}, Landroidx/glance/appwidget/AppWidgetSession;->sendEvent(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-ne p0, v0, :cond_8

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_8
    move-object p0, v1

    .line 121
    :goto_4
    if-ne p0, v0, :cond_9

    .line 122
    .line 123
    move-object v1, v0

    .line 124
    :cond_9
    :goto_5
    return-object v1

    .line 125
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 126
    .line 127
    iget v5, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    .line 128
    .line 129
    if-eqz v5, :cond_b

    .line 130
    .line 131
    if-ne v5, v3, :cond_a

    .line 132
    .line 133
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_7

    .line 137
    :cond_a
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move-object v1, v4

    .line 141
    goto :goto_7

    .line 142
    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast p1, Landroidx/glance/appwidget/AppWidgetSession;

    .line 148
    .line 149
    iget-object v2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v2, Landroid/os/Bundle;

    .line 152
    .line 153
    iput v3, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    new-instance v3, Landroidx/glance/appwidget/AppWidgetSession$UpdateAppWidgetOptions;

    .line 159
    .line 160
    invoke-direct {v3, v2}, Landroidx/glance/appwidget/AppWidgetSession$UpdateAppWidgetOptions;-><init>(Landroid/os/Bundle;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v3, p0}, Landroidx/glance/appwidget/AppWidgetSession;->sendEvent(Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    if-ne p0, v0, :cond_c

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_c
    move-object p0, v1

    .line 171
    :goto_6
    if-ne p0, v0, :cond_d

    .line 172
    .line 173
    move-object v1, v0

    .line 174
    :cond_d
    :goto_7
    return-object v1

    .line 175
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 176
    .line 177
    iget v5, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    .line 178
    .line 179
    if-eqz v5, :cond_f

    .line 180
    .line 181
    if-ne v5, v3, :cond_e

    .line 182
    .line 183
    iget-object p0, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 184
    .line 185
    move-object v4, p0

    .line 186
    check-cast v4, Landroidx/paging/MulticastedPagingData;

    .line 187
    .line 188
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_e
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p1, Landroidx/paging/MulticastedPagingData;

    .line 202
    .line 203
    iget-object v2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$1:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v2, Landroidx/paging/MulticastedPagingData;

    .line 206
    .line 207
    iput-object v2, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->L$0:Ljava/lang/Object;

    .line 208
    .line 209
    iput v3, p0, Landroidx/paging/CachedPagingDataKt$cachedIn$2;->label:I

    .line 210
    .line 211
    iget-object p0, p1, Landroidx/paging/MulticastedPagingData;->accumulated:Lokhttp3/Request$Builder;

    .line 212
    .line 213
    iget-object p0, p0, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p0, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 216
    .line 217
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 218
    .line 219
    .line 220
    if-ne v1, v0, :cond_10

    .line 221
    .line 222
    move-object v4, v0

    .line 223
    goto :goto_8

    .line 224
    :cond_10
    move-object v4, v2

    .line 225
    :goto_8
    return-object v4

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
