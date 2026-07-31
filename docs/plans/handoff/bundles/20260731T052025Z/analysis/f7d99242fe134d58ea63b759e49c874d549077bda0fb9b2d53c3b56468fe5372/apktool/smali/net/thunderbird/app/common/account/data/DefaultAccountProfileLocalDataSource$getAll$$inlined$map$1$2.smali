.class public final Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;I)V
    .locals 0

    .line 1
    iput p3, p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    iput-object p2, p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;->this$0:Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

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
    iget v0, p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;->this$0:Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;

    .line 6
    .line 7
    iget-object v3, p0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

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
    instance-of v0, p2, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    move-object v0, p2

    .line 25
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1;

    .line 26
    .line 27
    iget v9, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1;->label:I

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
    iput v9, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1;->label:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1;

    .line 38
    .line 39
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p0, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 43
    .line 44
    iget p2, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1;->label:I

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
    check-cast p1, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iget-object p0, v2, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;->dataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;

    .line 67
    .line 68
    iget-object p1, p1, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 69
    .line 70
    new-instance v8, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 71
    .line 72
    iget-object p2, p1, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 73
    .line 74
    iget-object v2, p1, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->name:Ljava/lang/String;

    .line 75
    .line 76
    iget v4, p1, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->color:I

    .line 77
    .line 78
    iget-object p0, p0, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;->avatarMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 79
    .line 80
    iget-object p1, p1, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->avatar:Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;->toDomain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 87
    .line 88
    invoke-direct {v8, p2, v2, v4, p0}, Lnet/thunderbird/feature/account/profile/AccountProfile;-><init>(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iput v7, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1;->label:I

    .line 92
    .line 93
    invoke-interface {v3, v8, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    if-ne p0, v5, :cond_4

    .line 98
    .line 99
    move-object v1, v5

    .line 100
    :cond_4
    :goto_1
    return-object v1

    .line 101
    :pswitch_0
    instance-of v0, p2, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1;

    .line 102
    .line 103
    if-eqz v0, :cond_5

    .line 104
    .line 105
    move-object v0, p2

    .line 106
    check-cast v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1;

    .line 107
    .line 108
    iget v9, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1;->label:I

    .line 109
    .line 110
    and-int v10, v9, v6

    .line 111
    .line 112
    if-eqz v10, :cond_5

    .line 113
    .line 114
    sub-int/2addr v9, v6

    .line 115
    iput v9, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1;->label:I

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    new-instance v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1;

    .line 119
    .line 120
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1;-><init>(Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    iget-object p0, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 124
    .line 125
    iget p2, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1;->label:I

    .line 126
    .line 127
    if-eqz p2, :cond_7

    .line 128
    .line 129
    if-ne p2, v7, :cond_6

    .line 130
    .line 131
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_6
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    move-object v1, v8

    .line 139
    goto :goto_4

    .line 140
    :cond_7
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    check-cast p1, Ljava/util/List;

    .line 144
    .line 145
    new-instance p0, Ljava/util/ArrayList;

    .line 146
    .line 147
    const/16 p2, 0xa

    .line 148
    .line 149
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-eqz p2, :cond_8

    .line 165
    .line 166
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    check-cast p2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 171
    .line 172
    iget-object v4, v2, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource;->dataMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;

    .line 173
    .line 174
    iget-object p2, p2, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 175
    .line 176
    new-instance v6, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 177
    .line 178
    iget-object v8, p2, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 179
    .line 180
    iget-object v9, p2, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->name:Ljava/lang/String;

    .line 181
    .line 182
    iget v10, p2, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->color:I

    .line 183
    .line 184
    iget-object v4, v4, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAccountProfileDataMapper;->avatarMapper:Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;

    .line 185
    .line 186
    iget-object p2, p2, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->avatar:Lnet/thunderbird/feature/account/storage/profile/AvatarDto;

    .line 187
    .line 188
    invoke-virtual {v4, p2}, Lnet/thunderbird/feature/account/storage/legacy/mapper/DefaultAvatarDataMapper;->toDomain(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 193
    .line 194
    invoke-direct {v6, v8, v9, v10, p2}, Lnet/thunderbird/feature/account/profile/AccountProfile;-><init>(Lnet/thunderbird/feature/account/AccountId;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_8
    iput v7, v0, Lnet/thunderbird/app/common/account/data/DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1;->label:I

    .line 202
    .line 203
    invoke-interface {v3, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    if-ne p0, v5, :cond_9

    .line 208
    .line 209
    move-object v1, v5

    .line 210
    :cond_9
    :goto_4
    return-object v1

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
