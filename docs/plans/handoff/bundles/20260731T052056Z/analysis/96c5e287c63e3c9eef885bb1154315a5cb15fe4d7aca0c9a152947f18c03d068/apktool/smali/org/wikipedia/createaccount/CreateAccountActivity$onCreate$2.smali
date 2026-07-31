.class public final Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

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
    iget p1, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_3
    new-instance p1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->this$0:Lorg/wikipedia/createaccount/CreateAccountActivity;

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
    iget v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-eq v5, v3, :cond_0

    .line 19
    .line 20
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    invoke-virtual {v2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getViewModel()Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p1, p1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->verifyUserNameState:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 38
    .line 39
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    invoke-direct {v1, v2, v5}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 43
    .line 44
    .line 45
    iput v3, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 46
    .line 47
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlySharedFlow;->$$delegate_0:Lkotlinx/coroutines/flow/SharedFlow;

    .line 48
    .line 49
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-ne p0, v0, :cond_2

    .line 54
    .line 55
    move-object v4, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 58
    .line 59
    .line 60
    :goto_1
    return-object v4

    .line 61
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 62
    .line 63
    iget v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 64
    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    if-eq v5, v3, :cond_3

    .line 68
    .line 69
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    .line 82
    invoke-virtual {v2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getViewModel()Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object p1, p1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->doCreateAccountState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 87
    .line 88
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;

    .line 89
    .line 90
    const/4 v5, 0x2

    .line 91
    invoke-direct {v1, v2, v5}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 92
    .line 93
    .line 94
    iput v3, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 95
    .line 96
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 97
    .line 98
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-ne p0, v0, :cond_5

    .line 103
    .line 104
    move-object v4, v0

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 107
    .line 108
    .line 109
    :goto_3
    return-object v4

    .line 110
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 111
    .line 112
    iget v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 113
    .line 114
    if-eqz v5, :cond_7

    .line 115
    .line 116
    if-eq v5, v3, :cond_6

    .line 117
    .line 118
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 130
    .line 131
    invoke-virtual {v2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getViewModel()Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object p1, p1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->createAccountInfoState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 136
    .line 137
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;

    .line 138
    .line 139
    invoke-direct {v1, v2, v3}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 140
    .line 141
    .line 142
    iput v3, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 143
    .line 144
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 145
    .line 146
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    if-ne p0, v0, :cond_8

    .line 151
    .line 152
    move-object v4, v0

    .line 153
    goto :goto_5

    .line 154
    :cond_8
    :goto_4
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 155
    .line 156
    .line 157
    :goto_5
    return-object v4

    .line 158
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 159
    .line 160
    iget v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 161
    .line 162
    if-eqz v5, :cond_a

    .line 163
    .line 164
    if-eq v5, v3, :cond_9

    .line 165
    .line 166
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    sget-object p1, Lorg/wikipedia/createaccount/CreateAccountActivity;->USERNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 178
    .line 179
    invoke-virtual {v2}, Lorg/wikipedia/createaccount/CreateAccountActivity;->getViewModel()Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object p1, p1, Lorg/wikipedia/createaccount/CreateAccountActivityViewModel;->authManagerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 184
    .line 185
    new-instance v1, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;

    .line 186
    .line 187
    const/4 v5, 0x0

    .line 188
    invoke-direct {v1, v2, v5}, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2$1$1$1;-><init>(Lorg/wikipedia/createaccount/CreateAccountActivity;I)V

    .line 189
    .line 190
    .line 191
    iput v3, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 192
    .line 193
    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 194
    .line 195
    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    if-ne p0, v0, :cond_b

    .line 200
    .line 201
    move-object v4, v0

    .line 202
    goto :goto_7

    .line 203
    :cond_b
    :goto_6
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 204
    .line 205
    .line 206
    :goto_7
    return-object v4

    .line 207
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 208
    .line 209
    iget v5, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 210
    .line 211
    if-eqz v5, :cond_d

    .line 212
    .line 213
    if-ne v5, v3, :cond_c

    .line 214
    .line 215
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    goto :goto_8

    .line 219
    :cond_c
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    goto :goto_9

    .line 223
    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 227
    .line 228
    new-instance v1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 229
    .line 230
    const/16 v5, 0xe

    .line 231
    .line 232
    invoke-direct {v1, v5, v2, v4}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 233
    .line 234
    .line 235
    iput v3, p0, Lorg/wikipedia/createaccount/CreateAccountActivity$onCreate$2;->label:I

    .line 236
    .line 237
    invoke-static {v2, p1, v1, p0}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    if-ne p0, v0, :cond_e

    .line 242
    .line 243
    move-object v4, v0

    .line 244
    goto :goto_9

    .line 245
    :cond_e
    :goto_8
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 246
    .line 247
    :goto_9
    return-object v4

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
