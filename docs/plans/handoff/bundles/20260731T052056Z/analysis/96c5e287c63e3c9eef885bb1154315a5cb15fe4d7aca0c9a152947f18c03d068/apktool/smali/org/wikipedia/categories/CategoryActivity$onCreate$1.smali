.class public final Lorg/wikipedia/categories/CategoryActivity$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/categories/CategoryActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->this$0:Lorg/wikipedia/categories/CategoryActivity;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->this$0:Lorg/wikipedia/categories/CategoryActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->this$0:Lorg/wikipedia/categories/CategoryActivity;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v6, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 17
    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    if-ne v6, v4, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v2, Lorg/wikipedia/categories/CategoryActivity;->subcategoriesAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 35
    .line 36
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 37
    .line 38
    new-instance v3, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 39
    .line 40
    const/4 v6, 0x4

    .line 41
    invoke-direct {v3, v2, v5, v6}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 42
    .line 43
    .line 44
    iput v4, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 45
    .line 46
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-ne p0, v0, :cond_2

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    :cond_2
    :goto_0
    return-object v1

    .line 54
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 55
    .line 56
    iget v6, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 57
    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    if-ne v6, v4, :cond_3

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    move-object v1, v5

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, v2, Lorg/wikipedia/categories/CategoryActivity;->categoryMembersAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 75
    .line 76
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 77
    .line 78
    new-instance v3, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 79
    .line 80
    const/4 v6, 0x3

    .line 81
    invoke-direct {v3, v2, v5, v6}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 82
    .line 83
    .line 84
    iput v4, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 85
    .line 86
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-ne p0, v0, :cond_5

    .line 91
    .line 92
    move-object v1, v0

    .line 93
    :cond_5
    :goto_1
    return-object v1

    .line 94
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 95
    .line 96
    iget v6, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 97
    .line 98
    if-eqz v6, :cond_7

    .line 99
    .line 100
    if-ne v6, v4, :cond_6

    .line 101
    .line 102
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object v1, v5

    .line 110
    goto :goto_2

    .line 111
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    sget p1, Lorg/wikipedia/categories/CategoryActivity;->$r8$clinit:I

    .line 115
    .line 116
    invoke-virtual {v2}, Lorg/wikipedia/categories/CategoryActivity;->getViewModel()Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivityViewModel;->subcategoriesFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 121
    .line 122
    new-instance v3, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 123
    .line 124
    const/4 v6, 0x2

    .line 125
    invoke-direct {v3, v2, v5, v6}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 126
    .line 127
    .line 128
    iput v4, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 129
    .line 130
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-ne p0, v0, :cond_8

    .line 135
    .line 136
    move-object v1, v0

    .line 137
    :cond_8
    :goto_2
    return-object v1

    .line 138
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 139
    .line 140
    iget v6, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 141
    .line 142
    if-eqz v6, :cond_a

    .line 143
    .line 144
    if-ne v6, v4, :cond_9

    .line 145
    .line 146
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_9
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    move-object v1, v5

    .line 154
    goto :goto_3

    .line 155
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    sget p1, Lorg/wikipedia/categories/CategoryActivity;->$r8$clinit:I

    .line 159
    .line 160
    invoke-virtual {v2}, Lorg/wikipedia/categories/CategoryActivity;->getViewModel()Lorg/wikipedia/categories/CategoryActivityViewModel;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p1, p1, Lorg/wikipedia/categories/CategoryActivityViewModel;->categoryMembersFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 165
    .line 166
    new-instance v3, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 167
    .line 168
    invoke-direct {v3, v2, v5, v4}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 169
    .line 170
    .line 171
    iput v4, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 172
    .line 173
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowKt;->collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    if-ne p0, v0, :cond_b

    .line 178
    .line 179
    move-object v1, v0

    .line 180
    :cond_b
    :goto_3
    return-object v1

    .line 181
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 182
    .line 183
    iget v6, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 184
    .line 185
    if-eqz v6, :cond_d

    .line 186
    .line 187
    if-ne v6, v4, :cond_c

    .line 188
    .line 189
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_c
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    move-object v1, v5

    .line 197
    goto :goto_4

    .line 198
    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 202
    .line 203
    new-instance v3, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;

    .line 204
    .line 205
    const/4 v6, 0x0

    .line 206
    invoke-direct {v3, v2, v5, v6}, Lorg/wikipedia/categories/CategoryActivity$onCreate$1$1;-><init>(Lorg/wikipedia/categories/CategoryActivity;Lkotlin/coroutines/Continuation;I)V

    .line 207
    .line 208
    .line 209
    iput v4, p0, Lorg/wikipedia/categories/CategoryActivity$onCreate$1;->label:I

    .line 210
    .line 211
    invoke-static {v2, p1, v3, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    if-ne p0, v0, :cond_e

    .line 216
    .line 217
    move-object v1, v0

    .line 218
    :cond_e
    :goto_4
    return-object v1

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
