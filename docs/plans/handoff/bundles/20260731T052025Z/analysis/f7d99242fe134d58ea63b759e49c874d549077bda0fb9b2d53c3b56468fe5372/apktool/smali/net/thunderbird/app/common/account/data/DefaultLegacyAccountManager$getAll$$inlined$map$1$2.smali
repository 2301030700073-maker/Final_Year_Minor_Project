.class public final Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;->this$0:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;->this$0:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 6
    .line 7
    iget-object v3, p0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    const/high16 v6, -0x80000000

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    instance-of v0, p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$2$1;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p2

    .line 25
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$2$1;

    .line 26
    .line 27
    iget v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$2$1;->label:I

    .line 28
    .line 29
    and-int v10, v9, v6

    .line 30
    .line 31
    if-eqz v10, :cond_0

    .line 32
    .line 33
    sub-int/2addr v9, v6

    .line 34
    iput v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$2$1;->label:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$2$1;

    .line 38
    .line 39
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$2$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 43
    .line 44
    iget p2, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$2$1;->label:I

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    if-ne p2, v7, :cond_1

    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object v1, v8

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-object p0, v2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDomain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    move-object v8, p0

    .line 73
    check-cast v8, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 74
    .line 75
    :cond_3
    iput v7, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getById$$inlined$map$1$2$1;->label:I

    .line 76
    .line 77
    invoke-interface {v3, v8, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-ne p0, v5, :cond_4

    .line 82
    .line 83
    move-object v1, v5

    .line 84
    :cond_4
    :goto_1
    return-object v1

    .line 85
    :pswitch_0
    instance-of v0, p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1;

    .line 86
    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    move-object v0, p2

    .line 90
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1;

    .line 91
    .line 92
    iget v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1;->label:I

    .line 93
    .line 94
    and-int v10, v9, v6

    .line 95
    .line 96
    if-eqz v10, :cond_5

    .line 97
    .line 98
    sub-int/2addr v9, v6

    .line 99
    iput v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1;->label:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1;

    .line 103
    .line 104
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 105
    .line 106
    .line 107
    :goto_2
    iget-object p0, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 108
    .line 109
    iget p2, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1;->label:I

    .line 110
    .line 111
    if-eqz p2, :cond_7

    .line 112
    .line 113
    if-ne p2, v7, :cond_6

    .line 114
    .line 115
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move-object v1, v8

    .line 123
    goto :goto_3

    .line 124
    :cond_7
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 128
    .line 129
    if-eqz p1, :cond_8

    .line 130
    .line 131
    iget-object p0, v2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDomain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    move-object v8, p0

    .line 138
    check-cast v8, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 139
    .line 140
    :cond_8
    iput v7, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1;->label:I

    .line 141
    .line 142
    invoke-interface {v3, v8, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    if-ne p0, v5, :cond_9

    .line 147
    .line 148
    move-object v1, v5

    .line 149
    :cond_9
    :goto_3
    return-object v1

    .line 150
    :pswitch_1
    instance-of v0, p2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1;

    .line 151
    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    move-object v0, p2

    .line 155
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1;

    .line 156
    .line 157
    iget v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1;->label:I

    .line 158
    .line 159
    and-int v10, v9, v6

    .line 160
    .line 161
    if-eqz v10, :cond_a

    .line 162
    .line 163
    sub-int/2addr v9, v6

    .line 164
    iput v9, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1;->label:I

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_a
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1;

    .line 168
    .line 169
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 170
    .line 171
    .line 172
    :goto_4
    iget-object p0, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 173
    .line 174
    iget p2, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1;->label:I

    .line 175
    .line 176
    if-eqz p2, :cond_c

    .line 177
    .line 178
    if-ne p2, v7, :cond_b

    .line 179
    .line 180
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_b
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    move-object v1, v8

    .line 188
    goto :goto_6

    .line 189
    :cond_c
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    check-cast p1, Ljava/util/List;

    .line 193
    .line 194
    new-instance p0, Ljava/util/ArrayList;

    .line 195
    .line 196
    const/16 p2, 0xa

    .line 197
    .line 198
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .line 204
    .line 205
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_d

    .line 214
    .line 215
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    check-cast p2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 220
    .line 221
    iget-object v4, v2, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->accountDataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;

    .line 222
    .line 223
    invoke-virtual {v4, p2}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultLegacyAccountDataMapper;->toDomain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    check-cast p2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 228
    .line 229
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_d
    iput v7, v0, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager$getAll$$inlined$map$1$2$1;->label:I

    .line 234
    .line 235
    invoke-interface {v3, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    if-ne p0, v5, :cond_e

    .line 240
    .line 241
    move-object v1, v5

    .line 242
    :cond_e
    :goto_6
    return-object v1

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
