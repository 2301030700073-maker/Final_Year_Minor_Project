.class public final Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic this$0:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;->this$0:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;->this$0:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 6
    .line 7
    iget-object v3, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    const/high16 v7, -0x80000000

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    instance-of v0, p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$1;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p2

    .line 25
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$1;

    .line 26
    .line 27
    iget v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$1;->label:I

    .line 28
    .line 29
    and-int v10, v9, v7

    .line 30
    .line 31
    if-eqz v10, :cond_0

    .line 32
    .line 33
    sub-int/2addr v9, v7

    .line 34
    iput v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$1;->label:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$1;

    .line 38
    .line 39
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 43
    .line 44
    iget p2, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$1;->label:I

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    if-ne p2, v8, :cond_1

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object v1, v4

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;

    .line 63
    .line 64
    const/4 p2, 0x2

    .line 65
    invoke-direct {p0, p1, v2, p2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V

    .line 66
    .line 67
    .line 68
    iput v8, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$1;->label:I

    .line 69
    .line 70
    invoke-interface {v3, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    if-ne p0, v6, :cond_3

    .line 75
    .line 76
    move-object v1, v6

    .line 77
    :cond_3
    :goto_1
    return-object v1

    .line 78
    :pswitch_0
    instance-of v0, p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1;

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    move-object v0, p2

    .line 83
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1;

    .line 84
    .line 85
    iget v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1;->label:I

    .line 86
    .line 87
    and-int v10, v9, v7

    .line 88
    .line 89
    if-eqz v10, :cond_4

    .line 90
    .line 91
    sub-int/2addr v9, v7

    .line 92
    iput v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1;->label:I

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1;

    .line 96
    .line 97
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;Lkotlin/coroutines/Continuation;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object p0, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 101
    .line 102
    iget p2, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1;->label:I

    .line 103
    .line 104
    if-eqz p2, :cond_6

    .line 105
    .line 106
    if-ne p2, v8, :cond_5

    .line 107
    .line 108
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_5
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    move-object v1, v4

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    new-instance p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;

    .line 121
    .line 122
    invoke-direct {p0, p1, v2, v8}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V

    .line 123
    .line 124
    .line 125
    iput v8, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1;->label:I

    .line 126
    .line 127
    invoke-interface {v3, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    if-ne p0, v6, :cond_7

    .line 132
    .line 133
    move-object v1, v6

    .line 134
    :cond_7
    :goto_3
    return-object v1

    .line 135
    :pswitch_1
    instance-of v0, p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$1;

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    move-object v0, p2

    .line 140
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$1;

    .line 141
    .line 142
    iget v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$1;->label:I

    .line 143
    .line 144
    and-int v10, v9, v7

    .line 145
    .line 146
    if-eqz v10, :cond_8

    .line 147
    .line 148
    sub-int/2addr v9, v7

    .line 149
    iput v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$1;->label:I

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$1;

    .line 153
    .line 154
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1;Lkotlin/coroutines/Continuation;)V

    .line 155
    .line 156
    .line 157
    :goto_4
    iget-object p0, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$1;->result:Ljava/lang/Object;

    .line 158
    .line 159
    iget p2, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$1;->label:I

    .line 160
    .line 161
    if-eqz p2, :cond_a

    .line 162
    .line 163
    if-ne p2, v8, :cond_9

    .line 164
    .line 165
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_9
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    move-object v1, v4

    .line 173
    goto :goto_5

    .line 174
    :cond_a
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    new-instance p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;

    .line 178
    .line 179
    const/4 p2, 0x0

    .line 180
    invoke-direct {p0, p1, v2, p2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V

    .line 181
    .line 182
    .line 183
    iput v8, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$1;->label:I

    .line 184
    .line 185
    invoke-interface {v3, p0, v0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    if-ne p0, v6, :cond_b

    .line 190
    .line 191
    move-object v1, v6

    .line 192
    :cond_b
    :goto_5
    return-object v1

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
