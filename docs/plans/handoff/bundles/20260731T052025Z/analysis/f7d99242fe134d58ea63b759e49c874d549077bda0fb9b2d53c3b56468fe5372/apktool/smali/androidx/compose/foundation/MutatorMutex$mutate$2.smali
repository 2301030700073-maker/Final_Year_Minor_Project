.class public final Landroidx/compose/foundation/MutatorMutex$mutate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $priority:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroidx/loader/content/Loader$ForceLoadContentObserver;Lkotlinx/coroutines/channels/BufferedChannel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$3:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$priority:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$block:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/MutatePriority;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 18
    iput p5, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$priority:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$block:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$block:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$priority:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroidx/compose/foundation/MutatorMutex$mutate$2;

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v5, v0

    .line 17
    check-cast v5, Landroid/content/ContentResolver;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$3:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v6, p0

    .line 22
    check-cast v6, Landroid/net/Uri;

    .line 23
    .line 24
    move-object v7, v3

    .line 25
    check-cast v7, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 26
    .line 27
    move-object v8, v2

    .line 28
    check-cast v8, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 29
    .line 30
    move-object v9, v1

    .line 31
    check-cast v9, Landroid/content/Context;

    .line 32
    .line 33
    move-object v10, p2

    .line 34
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/MutatorMutex$mutate$2;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroidx/loader/content/Loader$ForceLoadContentObserver;Lkotlinx/coroutines/channels/BufferedChannel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, v4, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 38
    .line 39
    return-object v4

    .line 40
    :pswitch_0
    move-object v9, p2

    .line 41
    new-instance v5, Landroidx/compose/foundation/MutatorMutex$mutate$2;

    .line 42
    .line 43
    move-object v6, v2

    .line 44
    check-cast v6, Landroidx/compose/foundation/MutatePriority;

    .line 45
    .line 46
    move-object v7, v3

    .line 47
    check-cast v7, Landroidx/compose/material3/internal/InternalMutatorMutex;

    .line 48
    .line 49
    move-object v8, v1

    .line 50
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    const/4 v10, 0x1

    .line 53
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/MutatorMutex$mutate$2;-><init>(Landroidx/compose/foundation/MutatePriority;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V

    .line 54
    .line 55
    .line 56
    iput-object p1, v5, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    return-object v5

    .line 59
    :pswitch_1
    move-object v9, p2

    .line 60
    new-instance v5, Landroidx/compose/foundation/MutatorMutex$mutate$2;

    .line 61
    .line 62
    move-object v6, v2

    .line 63
    check-cast v6, Landroidx/compose/foundation/MutatePriority;

    .line 64
    .line 65
    move-object v7, v3

    .line 66
    check-cast v7, Landroidx/compose/foundation/MutatorMutex;

    .line 67
    .line 68
    move-object v8, v1

    .line 69
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-direct/range {v5 .. v10}, Landroidx/compose/foundation/MutatorMutex$mutate$2;-><init>(Landroidx/compose/foundation/MutatePriority;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)V

    .line 73
    .line 74
    .line 75
    iput-object p1, v5, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    return-object v5

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MutatorMutex$mutate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/MutatorMutex$mutate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MutatorMutex$mutate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/MutatorMutex$mutate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MutatorMutex$mutate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/MutatorMutex$mutate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$block:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->$priority:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v6, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroid/content/ContentResolver;

    .line 26
    .line 27
    iget v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->label:I

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    if-eq v1, v7, :cond_2

    .line 32
    .line 33
    if-ne v1, v8, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_0
    move-object p1, v3

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v5, v9

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 59
    .line 60
    iget-object v3, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 63
    .line 64
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 74
    .line 75
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$3:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Landroid/net/Uri;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    invoke-virtual {v0, v1, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    .line 82
    .line 83
    :try_start_2
    check-cast v3, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 84
    .line 85
    new-instance v1, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;

    .line 86
    .line 87
    invoke-direct {v1, v3}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;-><init>(Lkotlinx/coroutines/channels/BufferedChannel;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 93
    .line 94
    iput v7, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->label:I

    .line 95
    .line 96
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->hasNext(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-ne v3, v5, :cond_4

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    move-object v13, v3

    .line 104
    move-object v3, p1

    .line 105
    move-object p1, v13

    .line 106
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-object p1, v2

    .line 118
    check-cast p1, Landroid/content/Context;

    .line 119
    .line 120
    sget-object v4, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->animationScale:Landroidx/collection/MutableScatterMap;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v4, "animator_duration_scale"

    .line 127
    .line 128
    const/high16 v9, 0x3f800000    # 1.0f

    .line 129
    .line 130
    invoke-static {p1, v4, v9}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    new-instance v4, Ljava/lang/Float;

    .line 135
    .line 136
    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    .line 137
    .line 138
    .line 139
    iput-object v3, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 142
    .line 143
    iput v8, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->label:I

    .line 144
    .line 145
    invoke-interface {v3, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    if-ne p1, v5, :cond_0

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    .line 154
    .line 155
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 156
    .line 157
    :goto_2
    return-object v5

    .line 158
    :goto_3
    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 159
    .line 160
    .line 161
    throw p0

    .line 162
    :pswitch_0
    move-object v0, v6

    .line 163
    check-cast v0, Landroidx/compose/material3/internal/InternalMutatorMutex;

    .line 164
    .line 165
    iget v6, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->label:I

    .line 166
    .line 167
    if-eqz v6, :cond_8

    .line 168
    .line 169
    if-eq v6, v7, :cond_7

    .line 170
    .line 171
    if-ne v6, v8, :cond_6

    .line 172
    .line 173
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v0, Landroidx/compose/material3/internal/InternalMutatorMutex;

    .line 176
    .line 177
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 180
    .line 181
    iget-object p0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p0, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;

    .line 184
    .line 185
    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    .line 187
    .line 188
    goto/16 :goto_7

    .line 189
    .line 190
    :catchall_1
    move-exception p1

    .line 191
    goto/16 :goto_a

    .line 192
    .line 193
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    move-object v5, v9

    .line 197
    goto/16 :goto_9

    .line 198
    .line 199
    :cond_7
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$3:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Landroidx/compose/material3/internal/InternalMutatorMutex;

    .line 202
    .line 203
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 206
    .line 207
    iget-object v2, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    .line 210
    .line 211
    iget-object v3, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v3, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;

    .line 214
    .line 215
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    move-object p1, v2

    .line 219
    goto :goto_6

    .line 220
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 226
    .line 227
    new-instance v10, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;

    .line 228
    .line 229
    check-cast v3, Landroidx/compose/foundation/MutatePriority;

    .line 230
    .line 231
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-interface {p1, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 243
    .line 244
    invoke-direct {v10, v3, p1}, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;-><init>(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V

    .line 245
    .line 246
    .line 247
    iget-object v11, v0, Landroidx/compose/material3/internal/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 248
    .line 249
    :goto_4
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    move-object v12, p1

    .line 254
    check-cast v12, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;

    .line 255
    .line 256
    if-eqz v12, :cond_a

    .line 257
    .line 258
    iget-object p1, v10, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;->priority:Landroidx/compose/foundation/MutatePriority;

    .line 259
    .line 260
    iget-object v1, v12, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;->priority:Landroidx/compose/foundation/MutatePriority;

    .line 261
    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-ltz p1, :cond_9

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_9
    new-instance p0, Ljava/util/concurrent/CancellationException;

    .line 270
    .line 271
    const-string p1, "Current mutation had a higher priority"

    .line 272
    .line 273
    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw p0

    .line 277
    :cond_a
    :goto_5
    invoke-virtual {v11, v12, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_11

    .line 282
    .line 283
    if-eqz v12, :cond_b

    .line 284
    .line 285
    iget-object p1, v12, Landroidx/compose/material3/internal/InternalMutatorMutex$Mutator;->job:Lkotlinx/coroutines/Job;

    .line 286
    .line 287
    invoke-interface {p1, v9}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 288
    .line 289
    .line 290
    :cond_b
    iget-object p1, v0, Landroidx/compose/material3/internal/InternalMutatorMutex;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 291
    .line 292
    move-object v1, v2

    .line 293
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 294
    .line 295
    iput-object v10, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 296
    .line 297
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 298
    .line 299
    iput-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 300
    .line 301
    iput-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$3:Ljava/lang/Object;

    .line 302
    .line 303
    iput v7, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->label:I

    .line 304
    .line 305
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    if-ne v2, v5, :cond_c

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_c
    move-object v3, v10

    .line 313
    :goto_6
    :try_start_4
    iput-object v3, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 314
    .line 315
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 316
    .line 317
    iput-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 318
    .line 319
    iput-object v9, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$3:Ljava/lang/Object;

    .line 320
    .line 321
    iput v8, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->label:I

    .line 322
    .line 323
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 327
    if-ne p0, v5, :cond_d

    .line 328
    .line 329
    goto :goto_9

    .line 330
    :cond_d
    move-object v1, p1

    .line 331
    move-object p1, p0

    .line 332
    move-object p0, v3

    .line 333
    :goto_7
    :try_start_5
    iget-object v0, v0, Landroidx/compose/material3/internal/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 334
    .line 335
    :cond_e
    invoke-virtual {v0, p0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_f

    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 346
    if-eq v2, p0, :cond_e

    .line 347
    .line 348
    :goto_8
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    move-object v5, p1

    .line 352
    :goto_9
    return-object v5

    .line 353
    :catchall_2
    move-exception p0

    .line 354
    goto :goto_c

    .line 355
    :catchall_3
    move-exception p0

    .line 356
    move-object v1, p1

    .line 357
    move-object p1, p0

    .line 358
    move-object p0, v3

    .line 359
    :goto_a
    :try_start_6
    iget-object v0, v0, Landroidx/compose/material3/internal/InternalMutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 360
    .line 361
    :goto_b
    invoke-virtual {v0, p0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    if-nez v2, :cond_10

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    if-ne v2, p0, :cond_10

    .line 372
    .line 373
    goto :goto_b

    .line 374
    :cond_10
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 375
    :goto_c
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    throw p0

    .line 379
    :cond_11
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    if-eq p1, v12, :cond_a

    .line 384
    .line 385
    goto/16 :goto_4

    .line 386
    .line 387
    :pswitch_1
    check-cast v6, Landroidx/compose/foundation/MutatorMutex;

    .line 388
    .line 389
    iget v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->label:I

    .line 390
    .line 391
    if-eqz v0, :cond_14

    .line 392
    .line 393
    if-eq v0, v7, :cond_13

    .line 394
    .line 395
    if-ne v0, v8, :cond_12

    .line 396
    .line 397
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast v0, Landroidx/compose/foundation/MutatorMutex;

    .line 400
    .line 401
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 404
    .line 405
    iget-object p0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast p0, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 408
    .line 409
    :try_start_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 410
    .line 411
    .line 412
    goto/16 :goto_e

    .line 413
    .line 414
    :catchall_4
    move-exception p1

    .line 415
    goto/16 :goto_11

    .line 416
    .line 417
    :cond_12
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    move-object v5, v9

    .line 421
    goto/16 :goto_10

    .line 422
    .line 423
    :cond_13
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$3:Ljava/lang/Object;

    .line 424
    .line 425
    move-object v6, v0

    .line 426
    check-cast v6, Landroidx/compose/foundation/MutatorMutex;

    .line 427
    .line 428
    iget-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 431
    .line 432
    iget-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 433
    .line 434
    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    .line 435
    .line 436
    iget-object v2, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 437
    .line 438
    check-cast v2, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 439
    .line 440
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    move-object p1, v1

    .line 444
    move-object v1, v0

    .line 445
    move-object v0, v2

    .line 446
    goto :goto_d

    .line 447
    :cond_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    iget-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 453
    .line 454
    new-instance v0, Landroidx/compose/foundation/MutatorMutex$Mutator;

    .line 455
    .line 456
    check-cast v3, Landroidx/compose/foundation/MutatePriority;

    .line 457
    .line 458
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-interface {p1, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    check-cast p1, Lkotlinx/coroutines/Job;

    .line 470
    .line 471
    invoke-direct {v0, v3, p1}, Landroidx/compose/foundation/MutatorMutex$Mutator;-><init>(Landroidx/compose/foundation/MutatePriority;Lkotlinx/coroutines/Job;)V

    .line 472
    .line 473
    .line 474
    invoke-static {v6, v0}, Landroidx/compose/foundation/MutatorMutex;->access$tryMutateOrCancel(Landroidx/compose/foundation/MutatorMutex;Landroidx/compose/foundation/MutatorMutex$Mutator;)V

    .line 475
    .line 476
    .line 477
    iget-object p1, v6, Landroidx/compose/foundation/MutatorMutex;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 478
    .line 479
    move-object v1, v2

    .line 480
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 481
    .line 482
    iput-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 483
    .line 484
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 485
    .line 486
    iput-object v1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 487
    .line 488
    iput-object v6, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$3:Ljava/lang/Object;

    .line 489
    .line 490
    iput v7, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->label:I

    .line 491
    .line 492
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    if-ne v2, v5, :cond_15

    .line 497
    .line 498
    goto :goto_10

    .line 499
    :cond_15
    :goto_d
    :try_start_8
    iput-object v0, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$0:Ljava/lang/Object;

    .line 500
    .line 501
    iput-object p1, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$1:Ljava/lang/Object;

    .line 502
    .line 503
    iput-object v6, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$2:Ljava/lang/Object;

    .line 504
    .line 505
    iput-object v9, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->L$3:Ljava/lang/Object;

    .line 506
    .line 507
    iput v8, p0, Landroidx/compose/foundation/MutatorMutex$mutate$2;->label:I

    .line 508
    .line 509
    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 513
    if-ne p0, v5, :cond_16

    .line 514
    .line 515
    goto :goto_10

    .line 516
    :cond_16
    move-object v1, p1

    .line 517
    move-object p1, p0

    .line 518
    move-object p0, v0

    .line 519
    move-object v0, v6

    .line 520
    :goto_e
    :try_start_9
    iget-object v0, v0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 521
    .line 522
    :cond_17
    invoke-virtual {v0, p0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-eqz v2, :cond_18

    .line 527
    .line 528
    goto :goto_f

    .line 529
    :cond_18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 533
    if-eq v2, p0, :cond_17

    .line 534
    .line 535
    :goto_f
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 536
    .line 537
    .line 538
    move-object v5, p1

    .line 539
    :goto_10
    return-object v5

    .line 540
    :catchall_5
    move-exception p0

    .line 541
    goto :goto_13

    .line 542
    :catchall_6
    move-exception p0

    .line 543
    move-object v1, p1

    .line 544
    move-object p1, p0

    .line 545
    move-object p0, v0

    .line 546
    move-object v0, v6

    .line 547
    :goto_11
    :try_start_a
    iget-object v0, v0, Landroidx/compose/foundation/MutatorMutex;->currentMutator:Ljava/util/concurrent/atomic/AtomicReference;

    .line 548
    .line 549
    :goto_12
    invoke-virtual {v0, p0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    if-nez v2, :cond_19

    .line 554
    .line 555
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    if-ne v2, p0, :cond_19

    .line 560
    .line 561
    goto :goto_12

    .line 562
    :cond_19
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 563
    :goto_13
    invoke-interface {v1, v9}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    throw p0

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
