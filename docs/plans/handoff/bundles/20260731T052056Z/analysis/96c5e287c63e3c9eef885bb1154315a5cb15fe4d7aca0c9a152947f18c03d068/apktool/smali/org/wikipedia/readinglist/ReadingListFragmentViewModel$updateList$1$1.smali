.class public final Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $throwable:Ljava/lang/Throwable;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->$throwable:Ljava/lang/Throwable;

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
    iget p1, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->$throwable:Ljava/lang/Throwable;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_1
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;I)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_2
    new-instance p1, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->$throwable:Ljava/lang/Throwable;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->this$0:Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iget v7, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->label:I

    .line 19
    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    if-ne v7, v6, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move-object v1, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v3, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_updateListByIdFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 37
    .line 38
    new-instance v3, Lorg/wikipedia/util/Resource$Error;

    .line 39
    .line 40
    invoke-direct {v3, v2}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    iput v6, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->label:I

    .line 44
    .line 45
    invoke-virtual {p1, v3, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-ne p0, v0, :cond_2

    .line 50
    .line 51
    move-object v1, v0

    .line 52
    :cond_2
    :goto_0
    return-object v1

    .line 53
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 54
    .line 55
    iget v7, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->label:I

    .line 56
    .line 57
    if-eqz v7, :cond_4

    .line 58
    .line 59
    if-ne v7, v6, :cond_3

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move-object v1, v4

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v3, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_saveReadingListFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 74
    .line 75
    new-instance v3, Lorg/wikipedia/util/Resource$Error;

    .line 76
    .line 77
    invoke-direct {v3, v2}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    iput v6, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->label:I

    .line 81
    .line 82
    invoke-virtual {p1, v3, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-ne p0, v0, :cond_5

    .line 87
    .line 88
    move-object v1, v0

    .line 89
    :cond_5
    :goto_1
    return-object v1

    .line 90
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 91
    .line 92
    iget v7, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->label:I

    .line 93
    .line 94
    if-eqz v7, :cond_7

    .line 95
    .line 96
    if-ne v7, v6, :cond_6

    .line 97
    .line 98
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move-object v1, v4

    .line 106
    goto :goto_2

    .line 107
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, v3, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_deleteSelectedPagesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 111
    .line 112
    new-instance v3, Lorg/wikipedia/util/Resource$Error;

    .line 113
    .line 114
    invoke-direct {v3, v2}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    iput v6, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->label:I

    .line 118
    .line 119
    invoke-virtual {p1, v3, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    if-ne p0, v0, :cond_8

    .line 124
    .line 125
    move-object v1, v0

    .line 126
    :cond_8
    :goto_2
    return-object v1

    .line 127
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 128
    .line 129
    iget v7, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->label:I

    .line 130
    .line 131
    if-eqz v7, :cond_a

    .line 132
    .line 133
    if-ne v7, v6, :cond_9

    .line 134
    .line 135
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_9
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    move-object v1, v4

    .line 143
    goto :goto_3

    .line 144
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, v3, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel;->_updateListFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 148
    .line 149
    new-instance v3, Lorg/wikipedia/util/Resource$Error;

    .line 150
    .line 151
    invoke-direct {v3, v2}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    iput v6, p0, Lorg/wikipedia/readinglist/ReadingListFragmentViewModel$updateList$1$1;->label:I

    .line 155
    .line 156
    invoke-virtual {p1, v3, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    if-ne p0, v0, :cond_b

    .line 161
    .line 162
    move-object v1, v0

    .line 163
    :cond_b
    :goto_3
    return-object v1

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
