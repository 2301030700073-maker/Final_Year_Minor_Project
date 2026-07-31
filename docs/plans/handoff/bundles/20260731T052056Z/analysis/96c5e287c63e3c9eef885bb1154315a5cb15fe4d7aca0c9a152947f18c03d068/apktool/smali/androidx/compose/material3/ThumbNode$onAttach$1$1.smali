.class public final Landroidx/compose/material3/ThumbNode$onAttach$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $pressCount:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->$pressCount:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public emit(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;

    iget v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->result:Ljava/lang/Object;

    .line 1671
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1672
    iget v2, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-lez p1, :cond_3

    .line 1673
    iget-object p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->$pressCount:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p2, :cond_3

    .line 1674
    iput-boolean v4, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1675
    iget-object p0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    sget-object p1, Lkotlinx/coroutines/flow/SharingCommand;->START:Lkotlinx/coroutines/flow/SharingCommand;

    iput v4, v0, Lkotlinx/coroutines/flow/StartedLazily$command$1$1$emit$1;->label:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object v3
.end method

.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->$r8$classId:I

    .line 8
    .line 9
    const/4 v4, 0x5

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x3

    .line 13
    const-string v8, "call to \'resume\' before \'invoke\' with coroutine"

    .line 14
    .line 15
    const/high16 v9, -0x80000000

    .line 16
    .line 17
    const/4 v10, 0x2

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x1

    .line 20
    iget-object v13, v1, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    .line 21
    .line 22
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    iget-object v15, v1, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->$pressCount:Ljava/lang/Object;

    .line 25
    .line 26
    packed-switch v3, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    instance-of v3, v2, Lorg/wikipedia/usercontrib/UserContribListViewModel$special$$inlined$map$1$2$1;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    move-object v3, v2

    .line 34
    check-cast v3, Lorg/wikipedia/usercontrib/UserContribListViewModel$special$$inlined$map$1$2$1;

    .line 35
    .line 36
    iget v6, v3, Lorg/wikipedia/usercontrib/UserContribListViewModel$special$$inlined$map$1$2$1;->label:I

    .line 37
    .line 38
    and-int v16, v6, v9

    .line 39
    .line 40
    if-eqz v16, :cond_0

    .line 41
    .line 42
    sub-int/2addr v6, v9

    .line 43
    iput v6, v3, Lorg/wikipedia/usercontrib/UserContribListViewModel$special$$inlined$map$1$2$1;->label:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v3, Lorg/wikipedia/usercontrib/UserContribListViewModel$special$$inlined$map$1$2$1;

    .line 47
    .line 48
    invoke-direct {v3, v1, v2}, Lorg/wikipedia/usercontrib/UserContribListViewModel$special$$inlined$map$1$2$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v1, v3, Lorg/wikipedia/usercontrib/UserContribListViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 52
    .line 53
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 54
    .line 55
    iget v6, v3, Lorg/wikipedia/usercontrib/UserContribListViewModel$special$$inlined$map$1$2$1;->label:I

    .line 56
    .line 57
    if-eqz v6, :cond_2

    .line 58
    .line 59
    if-ne v6, v12, :cond_1

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    check-cast v15, Lkotlinx/coroutines/flow/FlowCollector;

    .line 73
    .line 74
    check-cast v0, Landroidx/paging/PagingData;

    .line 75
    .line 76
    new-instance v1, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;

    .line 77
    .line 78
    check-cast v13, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 79
    .line 80
    invoke-direct {v1, v5, v13, v11}, Lorg/wikipedia/talk/TalkTopicsActivity$onCreate$5$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->filter(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Landroidx/compose/runtime/Recomposer$join$2;

    .line 88
    .line 89
    const/4 v5, 0x7

    .line 90
    invoke-direct {v1, v10, v5, v11}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->map(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 98
    .line 99
    invoke-direct {v1, v7, v4, v11}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->insertSeparators$default(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function3;)Landroidx/paging/PagingData;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput v12, v3, Lorg/wikipedia/usercontrib/UserContribListViewModel$special$$inlined$map$1$2$1;->label:I

    .line 107
    .line 108
    invoke-interface {v15, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-ne v0, v2, :cond_3

    .line 113
    .line 114
    move-object v11, v2

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    :goto_1
    move-object v11, v14

    .line 117
    :goto_2
    return-object v11

    .line 118
    :pswitch_0
    instance-of v3, v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$special$$inlined$map$1$2$1;

    .line 119
    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    move-object v3, v2

    .line 123
    check-cast v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$special$$inlined$map$1$2$1;

    .line 124
    .line 125
    iget v4, v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$special$$inlined$map$1$2$1;->label:I

    .line 126
    .line 127
    and-int v6, v4, v9

    .line 128
    .line 129
    if-eqz v6, :cond_4

    .line 130
    .line 131
    sub-int/2addr v4, v9

    .line 132
    iput v4, v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$special$$inlined$map$1$2$1;->label:I

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$special$$inlined$map$1$2$1;

    .line 136
    .line 137
    invoke-direct {v3, v1, v2}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$special$$inlined$map$1$2$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    .line 138
    .line 139
    .line 140
    :goto_3
    iget-object v1, v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 141
    .line 142
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 143
    .line 144
    iget v4, v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$special$$inlined$map$1$2$1;->label:I

    .line 145
    .line 146
    if-eqz v4, :cond_6

    .line 147
    .line 148
    if-ne v4, v12, :cond_5

    .line 149
    .line 150
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    check-cast v15, Lkotlinx/coroutines/flow/FlowCollector;

    .line 162
    .line 163
    check-cast v0, Landroidx/paging/PagingData;

    .line 164
    .line 165
    new-instance v1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 166
    .line 167
    check-cast v13, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel;

    .line 168
    .line 169
    const/16 v4, 0x1d

    .line 170
    .line 171
    invoke-direct {v1, v4, v13, v11}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 172
    .line 173
    .line 174
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->filter(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v1, Landroidx/compose/runtime/Recomposer$join$2;

    .line 179
    .line 180
    const/4 v4, 0x6

    .line 181
    invoke-direct {v1, v10, v4, v11}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->map(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 189
    .line 190
    invoke-direct {v1, v7, v5, v11}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->insertSeparators$default(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function3;)Landroidx/paging/PagingData;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iput v12, v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsViewModel$special$$inlined$map$1$2$1;->label:I

    .line 198
    .line 199
    invoke-interface {v15, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-ne v0, v2, :cond_7

    .line 204
    .line 205
    move-object v11, v2

    .line 206
    goto :goto_5

    .line 207
    :cond_7
    :goto_4
    move-object v11, v14

    .line 208
    :goto_5
    return-object v11

    .line 209
    :pswitch_1
    instance-of v3, v2, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1$2$1;

    .line 210
    .line 211
    if-eqz v3, :cond_8

    .line 212
    .line 213
    move-object v3, v2

    .line 214
    check-cast v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1$2$1;

    .line 215
    .line 216
    iget v4, v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1$2$1;->label:I

    .line 217
    .line 218
    and-int v5, v4, v9

    .line 219
    .line 220
    if-eqz v5, :cond_8

    .line 221
    .line 222
    sub-int/2addr v4, v9

    .line 223
    iput v4, v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1$2$1;->label:I

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_8
    new-instance v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1$2$1;

    .line 227
    .line 228
    invoke-direct {v3, v1, v2}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1$2$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    .line 229
    .line 230
    .line 231
    :goto_6
    iget-object v1, v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    .line 232
    .line 233
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 234
    .line 235
    iget v4, v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1$2$1;->label:I

    .line 236
    .line 237
    if-eqz v4, :cond_a

    .line 238
    .line 239
    if-ne v4, v12, :cond_9

    .line 240
    .line 241
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_9
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_a
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    check-cast v15, Lkotlinx/coroutines/flow/FlowCollector;

    .line 253
    .line 254
    move-object v1, v0

    .line 255
    check-cast v1, Ljava/lang/String;

    .line 256
    .line 257
    check-cast v13, Ljava/util/Set;

    .line 258
    .line 259
    invoke-interface {v13, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-eqz v1, :cond_b

    .line 264
    .line 265
    iput v12, v3, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1$2$1;->label:I

    .line 266
    .line 267
    invoke-interface {v15, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-ne v0, v2, :cond_b

    .line 272
    .line 273
    move-object v11, v2

    .line 274
    goto :goto_8

    .line 275
    :cond_b
    :goto_7
    move-object v11, v14

    .line 276
    :goto_8
    return-object v11

    .line 277
    :pswitch_2
    instance-of v3, v2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$special$$inlined$map$1$2$1;

    .line 278
    .line 279
    if-eqz v3, :cond_c

    .line 280
    .line 281
    move-object v3, v2

    .line 282
    check-cast v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$special$$inlined$map$1$2$1;

    .line 283
    .line 284
    iget v5, v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$special$$inlined$map$1$2$1;->label:I

    .line 285
    .line 286
    and-int v6, v5, v9

    .line 287
    .line 288
    if-eqz v6, :cond_c

    .line 289
    .line 290
    sub-int/2addr v5, v9

    .line 291
    iput v5, v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$special$$inlined$map$1$2$1;->label:I

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_c
    new-instance v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$special$$inlined$map$1$2$1;

    .line 295
    .line 296
    invoke-direct {v3, v1, v2}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$special$$inlined$map$1$2$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    .line 297
    .line 298
    .line 299
    :goto_9
    iget-object v1, v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 300
    .line 301
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 302
    .line 303
    iget v5, v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$special$$inlined$map$1$2$1;->label:I

    .line 304
    .line 305
    if-eqz v5, :cond_e

    .line 306
    .line 307
    if-ne v5, v12, :cond_d

    .line 308
    .line 309
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    goto :goto_a

    .line 313
    :cond_d
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_b

    .line 317
    :cond_e
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    check-cast v15, Lkotlinx/coroutines/flow/FlowCollector;

    .line 321
    .line 322
    check-cast v0, Landroidx/paging/PagingData;

    .line 323
    .line 324
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 325
    .line 326
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditHistoryFilterType()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    const-string v5, "anonymous"

    .line 331
    .line 332
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getEditHistoryFilterType()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v5

    .line 340
    const-string v6, "editors"

    .line 341
    .line 342
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    new-instance v6, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 347
    .line 348
    invoke-direct {v6, v7, v10, v11}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 349
    .line 350
    .line 351
    invoke-static {v0, v6}, Landroidx/paging/FlowExtKt;->insertSeparators$default(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function3;)Landroidx/paging/PagingData;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    new-instance v6, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;

    .line 356
    .line 357
    invoke-direct {v6, v1, v5, v11}, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$editHistoryFlow$2$2;-><init>(ZZLkotlin/coroutines/Continuation;)V

    .line 358
    .line 359
    .line 360
    invoke-static {v0, v6}, Landroidx/paging/FlowExtKt;->filter(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    new-instance v1, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;

    .line 365
    .line 366
    check-cast v13, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel;

    .line 367
    .line 368
    const/16 v5, 0x14

    .line 369
    .line 370
    invoke-direct {v1, v5, v13, v11}, Lorg/wikipedia/donate/DonateDialog$onCreateView$3$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->filter(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    new-instance v1, Landroidx/compose/runtime/Recomposer$join$2;

    .line 378
    .line 379
    invoke-direct {v1, v10, v4, v11}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->map(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function2;)Landroidx/paging/PagingData;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    new-instance v1, Lorg/wikipedia/feed/HomeViewModel$2$1;

    .line 387
    .line 388
    invoke-direct {v1, v7, v7, v11}, Lorg/wikipedia/feed/HomeViewModel$2$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 389
    .line 390
    .line 391
    invoke-static {v0, v1}, Landroidx/paging/FlowExtKt;->insertSeparators$default(Landroidx/paging/PagingData;Lkotlin/jvm/functions/Function3;)Landroidx/paging/PagingData;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    iput v12, v3, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$special$$inlined$map$1$2$1;->label:I

    .line 396
    .line 397
    invoke-interface {v15, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    if-ne v0, v2, :cond_f

    .line 402
    .line 403
    move-object v11, v2

    .line 404
    goto :goto_b

    .line 405
    :cond_f
    :goto_a
    move-object v11, v14

    .line 406
    :goto_b
    return-object v11

    .line 407
    :pswitch_3
    check-cast v0, Lkotlin/Pair;

    .line 408
    .line 409
    iget-object v1, v0, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast v1, Ljava/lang/Number;

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 418
    .line 419
    check-cast v0, Ljava/lang/Boolean;

    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    check-cast v15, Ljava/util/List;

    .line 426
    .line 427
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    add-int/2addr v3, v12

    .line 432
    if-nez v0, :cond_10

    .line 433
    .line 434
    if-lt v1, v3, :cond_10

    .line 435
    .line 436
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListState;

    .line 437
    .line 438
    invoke-static {v13, v6, v2}, Landroidx/compose/foundation/lazy/LazyListState;->scrollToItem$default(Landroidx/compose/foundation/lazy/LazyListState;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 443
    .line 444
    if-ne v0, v1, :cond_10

    .line 445
    .line 446
    move-object v14, v0

    .line 447
    :cond_10
    return-object v14

    .line 448
    :pswitch_4
    check-cast v0, Lorg/wikipedia/util/Resource;

    .line 449
    .line 450
    check-cast v15, Lorg/wikipedia/descriptions/DescriptionEditFragment;

    .line 451
    .line 452
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Loading;

    .line 453
    .line 454
    if-eqz v1, :cond_11

    .line 455
    .line 456
    iget-object v0, v15, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 464
    .line 465
    invoke-virtual {v0, v6}, Lorg/wikipedia/descriptions/DescriptionEditView;->setEditAllowed(Z)V

    .line 466
    .line 467
    .line 468
    iget-object v0, v15, Lorg/wikipedia/descriptions/DescriptionEditFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 474
    .line 475
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditView;

    .line 476
    .line 477
    invoke-virtual {v0, v12}, Lorg/wikipedia/descriptions/DescriptionEditView;->showProgressBar(Z)V

    .line 478
    .line 479
    .line 480
    goto :goto_c

    .line 481
    :cond_11
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Success;

    .line 482
    .line 483
    if-eqz v1, :cond_12

    .line 484
    .line 485
    check-cast v13, Landroid/os/Bundle;

    .line 486
    .line 487
    invoke-virtual {v15, v13}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->setUpEditView(Landroid/os/Bundle;)V

    .line 488
    .line 489
    .line 490
    check-cast v0, Lorg/wikipedia/util/Resource$Success;

    .line 491
    .line 492
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 495
    .line 496
    if-eqz v0, :cond_13

    .line 497
    .line 498
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    new-instance v2, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 503
    .line 504
    invoke-direct {v2, v0}, Lorg/wikipedia/dataclient/mwapi/MwException;-><init>(Lorg/wikipedia/dataclient/mwapi/MwServiceError;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v15}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 512
    .line 513
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 514
    .line 515
    invoke-static {v1, v2, v0}, Lorg/wikipedia/util/ShareUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 516
    .line 517
    .line 518
    goto :goto_c

    .line 519
    :cond_12
    instance-of v1, v0, Lorg/wikipedia/util/Resource$Error;

    .line 520
    .line 521
    if-eqz v1, :cond_13

    .line 522
    .line 523
    invoke-virtual {v15}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    check-cast v0, Lorg/wikipedia/util/Resource$Error;

    .line 528
    .line 529
    iget-object v0, v0, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 530
    .line 531
    invoke-virtual {v15}, Lorg/wikipedia/descriptions/DescriptionEditFragment;->getViewModel$1()Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    iget-object v2, v2, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 536
    .line 537
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 538
    .line 539
    invoke-static {v1, v0, v2}, Lorg/wikipedia/util/ShareUtil;->showError(Landroid/app/Activity;Ljava/lang/Throwable;Lorg/wikipedia/dataclient/WikiSite;)V

    .line 540
    .line 541
    .line 542
    :cond_13
    :goto_c
    return-object v14

    .line 543
    :pswitch_5
    check-cast v0, Ljava/lang/Number;

    .line 544
    .line 545
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    invoke-virtual {v1, v0, v2}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->emit(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    return-object v0

    .line 554
    :pswitch_6
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;

    .line 555
    .line 556
    if-eqz v3, :cond_14

    .line 557
    .line 558
    move-object v3, v2

    .line 559
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;

    .line 560
    .line 561
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->label:I

    .line 562
    .line 563
    and-int v5, v4, v9

    .line 564
    .line 565
    if-eqz v5, :cond_14

    .line 566
    .line 567
    sub-int/2addr v4, v9

    .line 568
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->label:I

    .line 569
    .line 570
    goto :goto_d

    .line 571
    :cond_14
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;

    .line 572
    .line 573
    invoke-direct {v3, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    .line 574
    .line 575
    .line 576
    :goto_d
    iget-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->result:Ljava/lang/Object;

    .line 577
    .line 578
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 579
    .line 580
    iget v5, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->label:I

    .line 581
    .line 582
    if-eqz v5, :cond_17

    .line 583
    .line 584
    if-eq v5, v12, :cond_16

    .line 585
    .line 586
    if-ne v5, v10, :cond_15

    .line 587
    .line 588
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->L$0:Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 589
    .line 590
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    goto :goto_10

    .line 594
    :cond_15
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    goto :goto_11

    .line 598
    :cond_16
    iget-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->L$1:Ljava/lang/Object;

    .line 599
    .line 600
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->L$0:Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 601
    .line 602
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    goto :goto_e

    .line 606
    :cond_17
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    check-cast v15, Landroidx/compose/runtime/Recomposer$join$2;

    .line 610
    .line 611
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->L$0:Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 612
    .line 613
    iput-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->L$1:Ljava/lang/Object;

    .line 614
    .line 615
    iput v12, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->label:I

    .line 616
    .line 617
    invoke-virtual {v15, v0, v3}, Landroidx/compose/runtime/Recomposer$join$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    if-ne v2, v4, :cond_18

    .line 622
    .line 623
    goto :goto_f

    .line 624
    :cond_18
    :goto_e
    check-cast v2, Ljava/lang/Boolean;

    .line 625
    .line 626
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    if-eqz v2, :cond_1a

    .line 631
    .line 632
    iget-object v2, v1, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 635
    .line 636
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->L$0:Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 637
    .line 638
    iput-object v11, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->L$1:Ljava/lang/Object;

    .line 639
    .line 640
    iput v10, v3, Lkotlinx/coroutines/flow/FlowKt__LimitKt$takeWhile$lambda$6$$inlined$collectWhile$1$1;->label:I

    .line 641
    .line 642
    invoke-interface {v2, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    if-ne v0, v4, :cond_19

    .line 647
    .line 648
    :goto_f
    move-object v11, v4

    .line 649
    goto :goto_11

    .line 650
    :cond_19
    move-object v0, v1

    .line 651
    :goto_10
    move-object v1, v0

    .line 652
    move v6, v12

    .line 653
    :cond_1a
    if-eqz v6, :cond_1b

    .line 654
    .line 655
    move-object v11, v14

    .line 656
    :goto_11
    return-object v11

    .line 657
    :cond_1b
    new-instance v0, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    .line 658
    .line 659
    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 660
    .line 661
    .line 662
    throw v0

    .line 663
    :pswitch_7
    instance-of v3, v2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;

    .line 664
    .line 665
    if-eqz v3, :cond_1c

    .line 666
    .line 667
    move-object v3, v2

    .line 668
    check-cast v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;

    .line 669
    .line 670
    iget v4, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;->label:I

    .line 671
    .line 672
    and-int v5, v4, v9

    .line 673
    .line 674
    if-eqz v5, :cond_1c

    .line 675
    .line 676
    sub-int/2addr v4, v9

    .line 677
    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;->label:I

    .line 678
    .line 679
    goto :goto_12

    .line 680
    :cond_1c
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;

    .line 681
    .line 682
    invoke-direct {v3, v1, v2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    .line 683
    .line 684
    .line 685
    :goto_12
    iget-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;->result:Ljava/lang/Object;

    .line 686
    .line 687
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 688
    .line 689
    iget v5, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;->label:I

    .line 690
    .line 691
    if-eqz v5, :cond_1e

    .line 692
    .line 693
    if-ne v5, v12, :cond_1d

    .line 694
    .line 695
    iget-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;->L$0:Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 696
    .line 697
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    .line 699
    .line 700
    goto :goto_13

    .line 701
    :catchall_0
    move-exception v0

    .line 702
    goto :goto_15

    .line 703
    :cond_1d
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    goto :goto_14

    .line 707
    :cond_1e
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    :try_start_1
    check-cast v15, Lkotlinx/coroutines/flow/FlowCollector;

    .line 711
    .line 712
    iput-object v1, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;->L$0:Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 713
    .line 714
    iput v12, v3, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catchImpl$2$emit$1;->label:I

    .line 715
    .line 716
    invoke-interface {v15, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    if-ne v0, v4, :cond_1f

    .line 721
    .line 722
    move-object v11, v4

    .line 723
    goto :goto_14

    .line 724
    :cond_1f
    :goto_13
    move-object v11, v14

    .line 725
    :goto_14
    return-object v11

    .line 726
    :goto_15
    iget-object v1, v1, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    .line 727
    .line 728
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 729
    .line 730
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 731
    .line 732
    throw v0

    .line 733
    :pswitch_8
    check-cast v0, Landroidx/work/impl/constraints/ConstraintsState;

    .line 734
    .line 735
    check-cast v15, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;

    .line 736
    .line 737
    check-cast v13, Landroidx/work/impl/model/WorkSpec;

    .line 738
    .line 739
    invoke-interface {v15, v13, v0}, Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;->onConstraintsStateChanged(Landroidx/work/impl/model/WorkSpec;Landroidx/work/impl/constraints/ConstraintsState;)V

    .line 740
    .line 741
    .line 742
    return-object v14

    .line 743
    :pswitch_9
    instance-of v3, v2, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;

    .line 744
    .line 745
    if-eqz v3, :cond_20

    .line 746
    .line 747
    move-object v3, v2

    .line 748
    check-cast v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;

    .line 749
    .line 750
    iget v4, v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;->label:I

    .line 751
    .line 752
    and-int v5, v4, v9

    .line 753
    .line 754
    if-eqz v5, :cond_20

    .line 755
    .line 756
    sub-int/2addr v4, v9

    .line 757
    iput v4, v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;->label:I

    .line 758
    .line 759
    goto :goto_16

    .line 760
    :cond_20
    new-instance v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;

    .line 761
    .line 762
    invoke-direct {v3, v1, v2}, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    .line 763
    .line 764
    .line 765
    :goto_16
    iget-object v1, v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 766
    .line 767
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 768
    .line 769
    iget v4, v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;->label:I

    .line 770
    .line 771
    if-eqz v4, :cond_23

    .line 772
    .line 773
    if-eq v4, v12, :cond_22

    .line 774
    .line 775
    if-ne v4, v10, :cond_21

    .line 776
    .line 777
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    goto :goto_19

    .line 781
    :cond_21
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    goto :goto_1a

    .line 785
    :cond_22
    iget-object v0, v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 786
    .line 787
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    goto :goto_17

    .line 791
    :cond_23
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 792
    .line 793
    .line 794
    move-object v1, v15

    .line 795
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 796
    .line 797
    check-cast v0, Landroidx/paging/PageEvent;

    .line 798
    .line 799
    check-cast v13, Landroidx/paging/SeparatorState;

    .line 800
    .line 801
    iput-object v1, v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 802
    .line 803
    iput v12, v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;->label:I

    .line 804
    .line 805
    invoke-virtual {v13, v0, v3}, Landroidx/paging/SeparatorState;->onEvent(Landroidx/paging/PageEvent;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v0

    .line 809
    if-ne v0, v2, :cond_24

    .line 810
    .line 811
    goto :goto_18

    .line 812
    :cond_24
    move-object/from16 v17, v1

    .line 813
    .line 814
    move-object v1, v0

    .line 815
    move-object/from16 v0, v17

    .line 816
    .line 817
    :goto_17
    iput-object v11, v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 818
    .line 819
    iput v10, v3, Landroidx/paging/SeparatorsKt$insertEventSeparators$$inlined$map$1$2$1;->label:I

    .line 820
    .line 821
    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    if-ne v0, v2, :cond_25

    .line 826
    .line 827
    :goto_18
    move-object v11, v2

    .line 828
    goto :goto_1a

    .line 829
    :cond_25
    :goto_19
    move-object v11, v14

    .line 830
    :goto_1a
    return-object v11

    .line 831
    :pswitch_a
    move-object v4, v0

    .line 832
    check-cast v4, Landroidx/paging/PageEvent;

    .line 833
    .line 834
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 835
    .line 836
    const/4 v7, 0x0

    .line 837
    if-eqz v0, :cond_26

    .line 838
    .line 839
    const-string v0, "Paging"

    .line 840
    .line 841
    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 842
    .line 843
    .line 844
    move-result v1

    .line 845
    if-eqz v1, :cond_26

    .line 846
    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    .line 848
    .line 849
    const-string v3, "Collected "

    .line 850
    .line 851
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    invoke-static {v0, v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 862
    .line 863
    .line 864
    :cond_26
    move-object v5, v15

    .line 865
    check-cast v5, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 866
    .line 867
    iget-object v0, v5, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->mainContext:Lkotlin/coroutines/CoroutineContext;

    .line 868
    .line 869
    new-instance v3, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 870
    .line 871
    move-object v6, v13

    .line 872
    check-cast v6, Landroidx/paging/PagingData;

    .line 873
    .line 874
    const/16 v8, 0x1c

    .line 875
    .line 876
    invoke-direct/range {v3 .. v8}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 877
    .line 878
    .line 879
    invoke-static {v0, v3, v2}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 884
    .line 885
    if-ne v0, v1, :cond_27

    .line 886
    .line 887
    move-object v14, v0

    .line 888
    :cond_27
    return-object v14

    .line 889
    :pswitch_b
    check-cast v0, Lkotlin/Unit;

    .line 890
    .line 891
    invoke-virtual {v1, v2}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->emit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    return-object v0

    .line 896
    :pswitch_c
    check-cast v0, Landroidx/paging/GenerationalViewportHint;

    .line 897
    .line 898
    check-cast v15, Landroidx/paging/PageFetcherSnapshot;

    .line 899
    .line 900
    check-cast v13, Landroidx/paging/LoadType;

    .line 901
    .line 902
    invoke-virtual {v15, v13, v0, v2}, Landroidx/paging/PageFetcherSnapshot;->doLoad(Landroidx/paging/LoadType;Landroidx/paging/GenerationalViewportHint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 907
    .line 908
    if-ne v0, v1, :cond_28

    .line 909
    .line 910
    move-object v14, v0

    .line 911
    :cond_28
    return-object v14

    .line 912
    :pswitch_d
    check-cast v13, Landroidx/paging/AsyncPagingDataDiffer;

    .line 913
    .line 914
    iget-object v3, v13, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 915
    .line 916
    instance-of v4, v2, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;

    .line 917
    .line 918
    if-eqz v4, :cond_29

    .line 919
    .line 920
    move-object v4, v2

    .line 921
    check-cast v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;

    .line 922
    .line 923
    iget v5, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    .line 924
    .line 925
    and-int v6, v5, v9

    .line 926
    .line 927
    if-eqz v6, :cond_29

    .line 928
    .line 929
    sub-int/2addr v5, v9

    .line 930
    iput v5, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    .line 931
    .line 932
    goto :goto_1b

    .line 933
    :cond_29
    new-instance v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;

    .line 934
    .line 935
    invoke-direct {v4, v1, v2}, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    .line 936
    .line 937
    .line 938
    :goto_1b
    iget-object v1, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->result:Ljava/lang/Object;

    .line 939
    .line 940
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 941
    .line 942
    iget v5, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    .line 943
    .line 944
    if-eqz v5, :cond_2d

    .line 945
    .line 946
    if-eq v5, v12, :cond_2c

    .line 947
    .line 948
    if-eq v5, v10, :cond_2b

    .line 949
    .line 950
    if-ne v5, v7, :cond_2a

    .line 951
    .line 952
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    goto :goto_1f

    .line 956
    :cond_2a
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    goto :goto_20

    .line 960
    :cond_2b
    iget-object v0, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 961
    .line 962
    iget-object v3, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Landroidx/paging/CombinedLoadStates;

    .line 963
    .line 964
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 965
    .line 966
    .line 967
    goto :goto_1d

    .line 968
    :cond_2c
    iget-object v0, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 969
    .line 970
    iget-object v5, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Landroidx/paging/CombinedLoadStates;

    .line 971
    .line 972
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    goto :goto_1c

    .line 976
    :cond_2d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 977
    .line 978
    .line 979
    check-cast v15, Lkotlinx/coroutines/flow/FlowCollector;

    .line 980
    .line 981
    check-cast v0, Landroidx/paging/CombinedLoadStates;

    .line 982
    .line 983
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    check-cast v1, Ljava/lang/Boolean;

    .line 988
    .line 989
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    if-eqz v1, :cond_30

    .line 994
    .line 995
    iput-object v0, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Landroidx/paging/CombinedLoadStates;

    .line 996
    .line 997
    iput-object v15, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 998
    .line 999
    iput v12, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    .line 1000
    .line 1001
    invoke-static {v4}, Lkotlinx/coroutines/AwaitKt;->yield(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    if-ne v1, v2, :cond_2e

    .line 1006
    .line 1007
    goto :goto_1e

    .line 1008
    :cond_2e
    move-object v5, v0

    .line 1009
    move-object v0, v15

    .line 1010
    :goto_1c
    new-instance v1, Landroidx/glance/session/SessionWorkerKt$runSession$5;

    .line 1011
    .line 1012
    invoke-direct {v1, v10, v12, v11}, Landroidx/glance/session/SessionWorkerKt$runSession$5;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 1013
    .line 1014
    .line 1015
    iput-object v5, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Landroidx/paging/CombinedLoadStates;

    .line 1016
    .line 1017
    iput-object v0, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 1018
    .line 1019
    iput v10, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    .line 1020
    .line 1021
    invoke-static {v3, v1, v4}, Lkotlinx/coroutines/flow/StateFlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v1

    .line 1025
    if-ne v1, v2, :cond_2f

    .line 1026
    .line 1027
    goto :goto_1e

    .line 1028
    :cond_2f
    move-object v3, v5

    .line 1029
    :goto_1d
    move-object v15, v0

    .line 1030
    move-object v0, v3

    .line 1031
    :cond_30
    iput-object v11, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$0:Landroidx/paging/CombinedLoadStates;

    .line 1032
    .line 1033
    iput-object v11, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 1034
    .line 1035
    iput v7, v4, Landroidx/paging/AsyncPagingDataDiffer$special$$inlined$transform$1$1$1;->label:I

    .line 1036
    .line 1037
    invoke-interface {v15, v0, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    if-ne v0, v2, :cond_31

    .line 1042
    .line 1043
    :goto_1e
    move-object v11, v2

    .line 1044
    goto :goto_20

    .line 1045
    :cond_31
    :goto_1f
    move-object v11, v14

    .line 1046
    :goto_20
    return-object v11

    .line 1047
    :pswitch_e
    check-cast v0, Landroidx/activity/BackEventCompat;

    .line 1048
    .line 1049
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 1050
    .line 1051
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1052
    .line 1053
    invoke-interface {v15, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1054
    .line 1055
    .line 1056
    check-cast v13, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1057
    .line 1058
    iget v0, v0, Landroidx/activity/BackEventCompat;->progress:F

    .line 1059
    .line 1060
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 1061
    .line 1062
    .line 1063
    return-object v14

    .line 1064
    :pswitch_f
    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    .line 1065
    .line 1066
    check-cast v15, Ljava/util/ArrayList;

    .line 1067
    .line 1068
    instance-of v1, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1069
    .line 1070
    if-eqz v1, :cond_32

    .line 1071
    .line 1072
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    goto :goto_21

    .line 1076
    :cond_32
    instance-of v1, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1077
    .line 1078
    if-eqz v1, :cond_33

    .line 1079
    .line 1080
    check-cast v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1081
    .line 1082
    iget-object v0, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1083
    .line 1084
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1085
    .line 1086
    .line 1087
    :cond_33
    :goto_21
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1088
    .line 1089
    .line 1090
    move-result v0

    .line 1091
    xor-int/2addr v0, v12

    .line 1092
    check-cast v13, Landroidx/compose/material3/IndicatorLineNode;

    .line 1093
    .line 1094
    iget-boolean v1, v13, Landroidx/compose/material3/IndicatorLineNode;->focused:Z

    .line 1095
    .line 1096
    if-eq v0, v1, :cond_34

    .line 1097
    .line 1098
    iput-boolean v0, v13, Landroidx/compose/material3/IndicatorLineNode;->focused:Z

    .line 1099
    .line 1100
    invoke-virtual {v13}, Landroidx/compose/material3/IndicatorLineNode;->invalidateIndicator()V

    .line 1101
    .line 1102
    .line 1103
    :cond_34
    return-object v14

    .line 1104
    :pswitch_10
    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    .line 1105
    .line 1106
    instance-of v1, v0, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 1107
    .line 1108
    check-cast v15, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 1109
    .line 1110
    if-eqz v1, :cond_36

    .line 1111
    .line 1112
    iget-boolean v1, v15, Landroidx/compose/material/ripple/AndroidRippleNode;->hasValidSize:Z

    .line 1113
    .line 1114
    if-eqz v1, :cond_35

    .line 1115
    .line 1116
    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction;

    .line 1117
    .line 1118
    invoke-virtual {v15, v0}, Landroidx/compose/material/ripple/AndroidRippleNode;->handlePressInteraction(Landroidx/compose/foundation/interaction/PressInteraction;)V

    .line 1119
    .line 1120
    .line 1121
    goto/16 :goto_27

    .line 1122
    .line 1123
    :cond_35
    iget-object v1, v15, Landroidx/compose/material/ripple/AndroidRippleNode;->pendingInteractions:Landroidx/collection/MutableObjectList;

    .line 1124
    .line 1125
    invoke-virtual {v1, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 1126
    .line 1127
    .line 1128
    goto/16 :goto_27

    .line 1129
    .line 1130
    :cond_36
    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    .line 1131
    .line 1132
    iget-object v1, v15, Landroidx/compose/material/ripple/AndroidRippleNode;->stateLayer:Lokhttp3/Cache$RealCacheRequest;

    .line 1133
    .line 1134
    const/4 v2, 0x0

    .line 1135
    if-nez v1, :cond_37

    .line 1136
    .line 1137
    new-instance v1, Lokhttp3/Cache$RealCacheRequest;

    .line 1138
    .line 1139
    iget-boolean v3, v15, Landroidx/compose/material/ripple/AndroidRippleNode;->bounded:Z

    .line 1140
    .line 1141
    iget-object v4, v15, Landroidx/compose/material/ripple/AndroidRippleNode;->rippleAlpha:Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

    .line 1142
    .line 1143
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1144
    .line 1145
    .line 1146
    iput-boolean v3, v1, Lokhttp3/Cache$RealCacheRequest;->done:Z

    .line 1147
    .line 1148
    iput-object v4, v1, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 1149
    .line 1150
    invoke-static {v2}, Landroidx/compose/animation/core/ArcSplineKt;->Animatable$default(F)Landroidx/compose/animation/core/Animatable;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v3

    .line 1154
    iput-object v3, v1, Lokhttp3/Cache$RealCacheRequest;->cacheOut:Ljava/lang/Object;

    .line 1155
    .line 1156
    new-instance v3, Ljava/util/ArrayList;

    .line 1157
    .line 1158
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    .line 1160
    .line 1161
    iput-object v3, v1, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;

    .line 1162
    .line 1163
    invoke-static {v15}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 1164
    .line 1165
    .line 1166
    iput-object v1, v15, Landroidx/compose/material/ripple/AndroidRippleNode;->stateLayer:Lokhttp3/Cache$RealCacheRequest;

    .line 1167
    .line 1168
    :cond_37
    iget-object v3, v1, Lokhttp3/Cache$RealCacheRequest;->body:Ljava/lang/Object;

    .line 1169
    .line 1170
    check-cast v3, Ljava/util/ArrayList;

    .line 1171
    .line 1172
    instance-of v4, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1173
    .line 1174
    if-eqz v4, :cond_38

    .line 1175
    .line 1176
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    .line 1178
    .line 1179
    goto :goto_22

    .line 1180
    :cond_38
    instance-of v4, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1181
    .line 1182
    if-eqz v4, :cond_39

    .line 1183
    .line 1184
    check-cast v0, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1185
    .line 1186
    iget-object v0, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1187
    .line 1188
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    goto :goto_22

    .line 1192
    :cond_39
    instance-of v4, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1193
    .line 1194
    if-eqz v4, :cond_3a

    .line 1195
    .line 1196
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    .line 1198
    .line 1199
    goto :goto_22

    .line 1200
    :cond_3a
    instance-of v4, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1201
    .line 1202
    if-eqz v4, :cond_3b

    .line 1203
    .line 1204
    check-cast v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1205
    .line 1206
    iget-object v0, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1207
    .line 1208
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1209
    .line 1210
    .line 1211
    goto :goto_22

    .line 1212
    :cond_3b
    instance-of v4, v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1213
    .line 1214
    if-eqz v4, :cond_3c

    .line 1215
    .line 1216
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    goto :goto_22

    .line 1220
    :cond_3c
    instance-of v4, v0, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 1221
    .line 1222
    if-eqz v4, :cond_3d

    .line 1223
    .line 1224
    check-cast v0, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 1225
    .line 1226
    iget-object v0, v0, Landroidx/compose/foundation/interaction/DragInteraction$Stop;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1227
    .line 1228
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1229
    .line 1230
    .line 1231
    goto :goto_22

    .line 1232
    :cond_3d
    instance-of v4, v0, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 1233
    .line 1234
    if-eqz v4, :cond_48

    .line 1235
    .line 1236
    check-cast v0, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 1237
    .line 1238
    iget-object v0, v0, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;->start:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1239
    .line 1240
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1241
    .line 1242
    .line 1243
    :goto_22
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    .line 1248
    .line 1249
    iget-object v3, v1, Lokhttp3/Cache$RealCacheRequest;->this$0:Ljava/lang/Object;

    .line 1250
    .line 1251
    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    .line 1252
    .line 1253
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result v3

    .line 1257
    if-nez v3, :cond_48

    .line 1258
    .line 1259
    if-eqz v0, :cond_44

    .line 1260
    .line 1261
    iget-object v3, v1, Lokhttp3/Cache$RealCacheRequest;->editor:Ljava/lang/Object;

    .line 1262
    .line 1263
    check-cast v3, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;

    .line 1264
    .line 1265
    invoke-virtual {v3}, Landroidx/compose/material3/DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 1266
    .line 1267
    .line 1268
    instance-of v3, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1269
    .line 1270
    if-eqz v3, :cond_3e

    .line 1271
    .line 1272
    const v2, 0x3da3d70a    # 0.08f

    .line 1273
    .line 1274
    .line 1275
    goto :goto_23

    .line 1276
    :cond_3e
    instance-of v4, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1277
    .line 1278
    if-eqz v4, :cond_3f

    .line 1279
    .line 1280
    const v2, 0x3dcccccd    # 0.1f

    .line 1281
    .line 1282
    .line 1283
    goto :goto_23

    .line 1284
    :cond_3f
    instance-of v4, v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1285
    .line 1286
    if-eqz v4, :cond_40

    .line 1287
    .line 1288
    const v2, 0x3e23d70a    # 0.16f

    .line 1289
    .line 1290
    .line 1291
    :cond_40
    :goto_23
    sget-object v4, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 1292
    .line 1293
    if-eqz v3, :cond_41

    .line 1294
    .line 1295
    goto :goto_24

    .line 1296
    :cond_41
    instance-of v3, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1297
    .line 1298
    const/16 v5, 0x2d

    .line 1299
    .line 1300
    if-eqz v3, :cond_42

    .line 1301
    .line 1302
    new-instance v4, Landroidx/compose/animation/core/TweenSpec;

    .line 1303
    .line 1304
    sget-object v3, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 1305
    .line 1306
    invoke-direct {v4, v5, v6, v3}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 1307
    .line 1308
    .line 1309
    goto :goto_24

    .line 1310
    :cond_42
    instance-of v3, v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1311
    .line 1312
    if-eqz v3, :cond_43

    .line 1313
    .line 1314
    new-instance v4, Landroidx/compose/animation/core/TweenSpec;

    .line 1315
    .line 1316
    sget-object v3, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 1317
    .line 1318
    invoke-direct {v4, v5, v6, v3}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 1319
    .line 1320
    .line 1321
    :cond_43
    :goto_24
    new-instance v3, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 1322
    .line 1323
    invoke-direct {v3, v1, v2, v4, v11}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(Lokhttp3/Cache$RealCacheRequest;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 1324
    .line 1325
    .line 1326
    invoke-static {v13, v11, v11, v3, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1327
    .line 1328
    .line 1329
    goto :goto_26

    .line 1330
    :cond_44
    iget-object v2, v1, Lokhttp3/Cache$RealCacheRequest;->this$0:Ljava/lang/Object;

    .line 1331
    .line 1332
    check-cast v2, Landroidx/compose/foundation/interaction/Interaction;

    .line 1333
    .line 1334
    sget-object v3, Landroidx/compose/material/ripple/RippleKt;->DefaultTweenSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 1335
    .line 1336
    instance-of v4, v2, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1337
    .line 1338
    if-eqz v4, :cond_45

    .line 1339
    .line 1340
    goto :goto_25

    .line 1341
    :cond_45
    instance-of v4, v2, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1342
    .line 1343
    if-eqz v4, :cond_46

    .line 1344
    .line 1345
    goto :goto_25

    .line 1346
    :cond_46
    instance-of v2, v2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 1347
    .line 1348
    if-eqz v2, :cond_47

    .line 1349
    .line 1350
    new-instance v3, Landroidx/compose/animation/core/TweenSpec;

    .line 1351
    .line 1352
    const/16 v2, 0x96

    .line 1353
    .line 1354
    sget-object v4, Landroidx/compose/animation/core/EasingKt;->LinearEasing:Landroidx/compose/animation/core/EasingKt$$ExternalSyntheticLambda0;

    .line 1355
    .line 1356
    invoke-direct {v3, v2, v6, v4}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 1357
    .line 1358
    .line 1359
    :cond_47
    :goto_25
    new-instance v2, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 1360
    .line 1361
    const/16 v4, 0x13

    .line 1362
    .line 1363
    invoke-direct {v2, v1, v3, v11, v4}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1364
    .line 1365
    .line 1366
    invoke-static {v13, v11, v11, v2, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1367
    .line 1368
    .line 1369
    :goto_26
    iput-object v0, v1, Lokhttp3/Cache$RealCacheRequest;->this$0:Ljava/lang/Object;

    .line 1370
    .line 1371
    :cond_48
    :goto_27
    return-object v14

    .line 1372
    :pswitch_11
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 1373
    .line 1374
    iget-wide v3, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1375
    .line 1376
    check-cast v15, Landroidx/compose/animation/core/Animatable;

    .line 1377
    .line 1378
    invoke-virtual {v15}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v1

    .line 1382
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 1383
    .line 1384
    iget-wide v5, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1385
    .line 1386
    const-wide v8, 0x7fffffff7fffffffL

    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    and-long/2addr v5, v8

    .line 1392
    const-wide v10, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    cmp-long v1, v5, v10

    .line 1398
    .line 1399
    if-eqz v1, :cond_4a

    .line 1400
    .line 1401
    and-long v5, v3, v8

    .line 1402
    .line 1403
    cmp-long v1, v5, v10

    .line 1404
    .line 1405
    if-eqz v1, :cond_4a

    .line 1406
    .line 1407
    invoke-virtual {v15}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v1

    .line 1411
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 1412
    .line 1413
    iget-wide v5, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1414
    .line 1415
    const-wide v8, 0xffffffffL

    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    and-long/2addr v5, v8

    .line 1421
    long-to-int v1, v5

    .line 1422
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1423
    .line 1424
    .line 1425
    move-result v1

    .line 1426
    and-long v5, v3, v8

    .line 1427
    .line 1428
    long-to-int v5, v5

    .line 1429
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1430
    .line 1431
    .line 1432
    move-result v5

    .line 1433
    cmpg-float v1, v1, v5

    .line 1434
    .line 1435
    if-nez v1, :cond_49

    .line 1436
    .line 1437
    goto :goto_28

    .line 1438
    :cond_49
    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    .line 1439
    .line 1440
    new-instance v1, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;

    .line 1441
    .line 1442
    const/4 v6, 0x1

    .line 1443
    const/4 v5, 0x0

    .line 1444
    move-object v2, v15

    .line 1445
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$2;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 1446
    .line 1447
    .line 1448
    invoke-static {v13, v5, v5, v1, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1449
    .line 1450
    .line 1451
    goto :goto_29

    .line 1452
    :cond_4a
    :goto_28
    invoke-virtual {v15, v0, v2}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v0

    .line 1456
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1457
    .line 1458
    if-ne v0, v1, :cond_4b

    .line 1459
    .line 1460
    move-object v14, v0

    .line 1461
    :cond_4b
    :goto_29
    return-object v14

    .line 1462
    :pswitch_12
    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    .line 1463
    .line 1464
    check-cast v13, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 1465
    .line 1466
    check-cast v15, Landroidx/collection/MutableObjectList;

    .line 1467
    .line 1468
    instance-of v1, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1469
    .line 1470
    if-nez v1, :cond_50

    .line 1471
    .line 1472
    instance-of v1, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1473
    .line 1474
    if-nez v1, :cond_50

    .line 1475
    .line 1476
    instance-of v1, v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1477
    .line 1478
    if-eqz v1, :cond_4c

    .line 1479
    .line 1480
    goto :goto_2a

    .line 1481
    :cond_4c
    instance-of v1, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1482
    .line 1483
    if-eqz v1, :cond_4d

    .line 1484
    .line 1485
    check-cast v0, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1486
    .line 1487
    iget-object v0, v0, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;->enter:Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1488
    .line 1489
    invoke-virtual {v15, v0}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 1490
    .line 1491
    .line 1492
    goto :goto_2b

    .line 1493
    :cond_4d
    instance-of v1, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1494
    .line 1495
    if-eqz v1, :cond_4e

    .line 1496
    .line 1497
    check-cast v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1498
    .line 1499
    iget-object v0, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1500
    .line 1501
    invoke-virtual {v15, v0}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 1502
    .line 1503
    .line 1504
    goto :goto_2b

    .line 1505
    :cond_4e
    instance-of v1, v0, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 1506
    .line 1507
    if-eqz v1, :cond_4f

    .line 1508
    .line 1509
    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 1510
    .line 1511
    iget-object v0, v0, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1512
    .line 1513
    invoke-virtual {v15, v0}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 1514
    .line 1515
    .line 1516
    goto :goto_2b

    .line 1517
    :cond_4f
    instance-of v1, v0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1518
    .line 1519
    if-eqz v1, :cond_51

    .line 1520
    .line 1521
    check-cast v0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1522
    .line 1523
    iget-object v0, v0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1524
    .line 1525
    invoke-virtual {v15, v0}, Landroidx/collection/MutableObjectList;->remove(Ljava/lang/Object;)Z

    .line 1526
    .line 1527
    .line 1528
    goto :goto_2b

    .line 1529
    :cond_50
    :goto_2a
    invoke-virtual {v15, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 1530
    .line 1531
    .line 1532
    :cond_51
    :goto_2b
    iget-object v0, v15, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 1533
    .line 1534
    iget v1, v15, Landroidx/collection/MutableObjectList;->_size:I

    .line 1535
    .line 1536
    move v2, v6

    .line 1537
    :goto_2c
    if-ge v6, v1, :cond_55

    .line 1538
    .line 1539
    aget-object v3, v0, v6

    .line 1540
    .line 1541
    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    .line 1542
    .line 1543
    instance-of v4, v3, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1544
    .line 1545
    if-eqz v4, :cond_52

    .line 1546
    .line 1547
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1548
    .line 1549
    .line 1550
    or-int/lit8 v2, v2, 0x2

    .line 1551
    .line 1552
    goto :goto_2d

    .line 1553
    :cond_52
    instance-of v4, v3, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1554
    .line 1555
    if-eqz v4, :cond_53

    .line 1556
    .line 1557
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1558
    .line 1559
    .line 1560
    or-int/lit8 v2, v2, 0x1

    .line 1561
    .line 1562
    goto :goto_2d

    .line 1563
    :cond_53
    instance-of v3, v3, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1564
    .line 1565
    if-eqz v3, :cond_54

    .line 1566
    .line 1567
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1568
    .line 1569
    .line 1570
    or-int/lit8 v2, v2, 0x4

    .line 1571
    .line 1572
    :cond_54
    :goto_2d
    add-int/lit8 v6, v6, 0x1

    .line 1573
    .line 1574
    goto :goto_2c

    .line 1575
    :cond_55
    iget-object v0, v13, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 1576
    .line 1577
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 1578
    .line 1579
    .line 1580
    return-object v14

    .line 1581
    :pswitch_13
    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    .line 1582
    .line 1583
    check-cast v15, Ljava/util/ArrayList;

    .line 1584
    .line 1585
    instance-of v1, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1586
    .line 1587
    if-eqz v1, :cond_56

    .line 1588
    .line 1589
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    .line 1591
    .line 1592
    goto :goto_2e

    .line 1593
    :cond_56
    instance-of v1, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1594
    .line 1595
    if-eqz v1, :cond_57

    .line 1596
    .line 1597
    check-cast v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1598
    .line 1599
    iget-object v0, v0, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;->focus:Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1600
    .line 1601
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1602
    .line 1603
    .line 1604
    :cond_57
    :goto_2e
    check-cast v13, Landroidx/compose/runtime/MutableState;

    .line 1605
    .line 1606
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1607
    .line 1608
    .line 1609
    move-result v0

    .line 1610
    xor-int/2addr v0, v12

    .line 1611
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v0

    .line 1615
    invoke-interface {v13, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1616
    .line 1617
    .line 1618
    return-object v14

    .line 1619
    :pswitch_14
    check-cast v0, Landroidx/compose/foundation/interaction/Interaction;

    .line 1620
    .line 1621
    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    .line 1622
    .line 1623
    instance-of v1, v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1624
    .line 1625
    if-eqz v1, :cond_58

    .line 1626
    .line 1627
    iget v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1628
    .line 1629
    add-int/2addr v0, v12

    .line 1630
    iput v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1631
    .line 1632
    goto :goto_2f

    .line 1633
    :cond_58
    instance-of v1, v0, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 1634
    .line 1635
    if-eqz v1, :cond_59

    .line 1636
    .line 1637
    iget v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1638
    .line 1639
    add-int/lit8 v0, v0, -0x1

    .line 1640
    .line 1641
    iput v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1642
    .line 1643
    goto :goto_2f

    .line 1644
    :cond_59
    instance-of v0, v0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1645
    .line 1646
    if-eqz v0, :cond_5a

    .line 1647
    .line 1648
    iget v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1649
    .line 1650
    add-int/lit8 v0, v0, -0x1

    .line 1651
    .line 1652
    iput v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1653
    .line 1654
    :cond_5a
    :goto_2f
    iget v0, v15, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1655
    .line 1656
    if-lez v0, :cond_5b

    .line 1657
    .line 1658
    move v6, v12

    .line 1659
    :cond_5b
    check-cast v13, Landroidx/compose/material3/ThumbNode;

    .line 1660
    .line 1661
    iget-boolean v0, v13, Landroidx/compose/material3/ThumbNode;->isPressed:Z

    .line 1662
    .line 1663
    if-eq v0, v6, :cond_5c

    .line 1664
    .line 1665
    iput-boolean v6, v13, Landroidx/compose/material3/ThumbNode;->isPressed:Z

    .line 1666
    .line 1667
    invoke-static {v13}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 1668
    .line 1669
    .line 1670
    :cond_5c
    return-object v14

    .line 1671
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->$pressCount:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshot;

    instance-of v1, p1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;

    iget v2, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;

    invoke-direct {v1, p0, p1}, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;-><init>(Landroidx/compose/material3/ThumbNode$onAttach$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->result:Ljava/lang/Object;

    .line 1676
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1677
    iget v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    return-object v5

    :pswitch_0
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v2, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :pswitch_1
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/LoadType;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_2
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$6:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/PageFetcherSnapshot;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/LoadType;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v4, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/LoadType;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_3
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/LoadType;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_16

    :catchall_0
    move-exception p1

    goto/16 :goto_17

    :pswitch_4
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/LoadType;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_5
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_13

    :pswitch_6
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/LoadType;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/PageFetcherSnapshot;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v3

    move-object v3, v0

    goto/16 :goto_12

    :pswitch_7
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$7:Landroidx/paging/PageFetcherSnapshot;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$6:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/LoadType;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadType;

    iget-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/PageFetcherSnapshot;

    iget-object v10, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_8
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/LoadType;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadStates;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_c

    :catchall_1
    move-exception p1

    goto/16 :goto_e

    :pswitch_9
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/LoadType;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PageFetcherSnapshot;

    iget-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_a
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_b
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/LoadType;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/PageFetcherSnapshot;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v3

    move-object v3, v0

    goto/16 :goto_8

    :pswitch_c
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$7:Landroidx/paging/PageFetcherSnapshot;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$6:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/LoadType;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadType;

    iget-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/PageFetcherSnapshot;

    iget-object v10, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_d
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/LoadType;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadStates;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v3

    move-object v3, v0

    move-object v0, v6

    move-object v6, v11

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_3

    :pswitch_e
    iget-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/LoadType;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PageFetcherSnapshot;

    iget-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1678
    :try_start_3
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1679
    iput-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    .line 1680
    invoke-virtual {v7, p1, v3, v1}, Landroidx/paging/PageFetcherSnapshot;->setLoading(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v2, :cond_1

    goto/16 :goto_1c

    :cond_1
    move-object v0, v7

    move-object v7, v8

    .line 1681
    :goto_1
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object p1, v3

    move-object v8, v6

    :goto_2
    move-object v10, v7

    goto :goto_5

    :goto_3
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 1682
    :pswitch_f
    iget-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PageFetcherSnapshotState$Holder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1683
    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 1684
    iget-object v3, v7, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1685
    iput-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput v4, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    goto/16 :goto_1c

    :cond_2
    move-object v6, v0

    .line 1686
    :goto_4
    :try_start_4
    iget-object p1, v7, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1687
    iget-object v7, p1, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 1688
    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVG;->snapshot()Landroidx/paging/LoadStates;

    move-result-object v7

    .line 1689
    iget-object v6, v6, Landroidx/paging/PageFetcherSnapshot;->hintHandler:Landroidx/paging/HintHandler;

    .line 1690
    iget-object v6, v6, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    check-cast v6, Lcoil3/ImageLoader$Builder;

    .line 1691
    iget-object v6, v6, Lcoil3/ImageLoader$Builder;->componentRegistry:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/ViewportHint$Access;

    .line 1692
    invoke-virtual {p1, v6}, Landroidx/paging/PageFetcherSnapshotState;->currentPagingState$paging_common(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 1693
    invoke-interface {v3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1694
    iget-object p0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 1695
    sget-object p1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 1696
    iget-object v3, v7, Landroidx/paging/LoadStates;->refresh:Landroidx/paging/LoadState;

    .line 1697
    instance-of v3, v3, Landroidx/paging/LoadState$Error;

    if-eqz v3, :cond_9

    move-object v8, p0

    goto :goto_2

    .line 1698
    :goto_5
    sget-object p0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p0, p0, v3

    if-ne p0, v4, :cond_3

    move-object p0, p1

    move-object v3, v0

    move-object v9, v3

    move-object v0, v5

    goto :goto_7

    .line 1699
    :cond_3
    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 1700
    iget-object v3, v6, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1701
    iput-object v10, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    iput-object p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$6:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$7:Landroidx/paging/PageFetcherSnapshot;

    const/4 p0, 0x4

    iput p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    goto/16 :goto_1c

    :cond_4
    move-object v7, p1

    move-object p0, v0

    move-object v9, p0

    move-object v0, v7

    .line 1702
    :goto_6
    :try_start_5
    iget-object p1, v6, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1703
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/LinkedHashMap;

    .line 1704
    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/paging/ViewportHint;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1705
    invoke-interface {v3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, p0

    move-object p0, v7

    .line 1706
    :goto_7
    iput-object v10, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$7:Landroidx/paging/PageFetcherSnapshot;

    const/4 v6, 0x5

    iput v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    .line 1707
    invoke-virtual {v3, p1, v0, v1}, Landroidx/paging/PageFetcherSnapshot;->retryLoadError(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto/16 :goto_1c

    :cond_5
    move-object v3, v8

    move-object v6, v9

    move-object v7, v10

    .line 1708
    :goto_8
    sget-object p1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p0, p1, :cond_8

    .line 1709
    iget-object v0, v6, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 1710
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1711
    iput-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto/16 :goto_1c

    .line 1712
    :cond_6
    :goto_9
    :try_start_6
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1713
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 1714
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->get(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1715
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1716
    instance-of p0, p1, Landroidx/paging/LoadState$Error;

    if-nez p0, :cond_7

    .line 1717
    invoke-virtual {v6, v3}, Landroidx/paging/PageFetcherSnapshot;->startConsumingHints(Lkotlinx/coroutines/CoroutineScope;)V

    :cond_7
    move-object p1, v0

    :cond_8
    move-object p0, v3

    move-object v0, v6

    goto :goto_a

    :catchall_3
    move-exception p1

    .line 1718
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_4
    move-exception p0

    .line 1719
    invoke-interface {v3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    .line 1720
    :cond_9
    :goto_a
    sget-object v3, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 1721
    iget-object v6, v7, Landroidx/paging/LoadStates;->prepend:Landroidx/paging/LoadState;

    .line 1722
    instance-of v6, v6, Landroidx/paging/LoadState$Error;

    if-eqz v6, :cond_13

    if-eq v3, p1, :cond_c

    .line 1723
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 1724
    iget-object v6, p1, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1725
    iput-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    const/4 v8, 0x7

    iput v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    invoke-virtual {v6, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_a

    goto/16 :goto_1c

    :cond_a
    move-object v8, v6

    move-object v6, p0

    move-object p0, v8

    move-object v8, v7

    move-object v7, v0

    move-object v0, p1

    .line 1726
    :goto_b
    :try_start_7
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1727
    iput-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    const/16 v0, 0x8

    iput v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    .line 1728
    invoke-virtual {v7, p1, v3, v1}, Landroidx/paging/PageFetcherSnapshot;->setLoading(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-ne p1, v2, :cond_b

    goto/16 :goto_1c

    :cond_b
    move-object v0, v3

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    .line 1729
    :goto_c
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v8, v3

    move-object p0, v6

    :goto_d
    move-object v10, v7

    goto :goto_f

    :goto_e
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_c
    move-object v8, p0

    move-object p0, v0

    move-object v0, v3

    goto :goto_d

    .line 1730
    :goto_f
    sget-object p1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-ne p1, v4, :cond_d

    move-object p1, p0

    move-object v6, v0

    move-object v3, v5

    goto :goto_11

    .line 1731
    :cond_d
    iget-object v6, p0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 1732
    iget-object v3, v6, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1733
    iput-object v10, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$6:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$7:Landroidx/paging/PageFetcherSnapshot;

    const/16 p1, 0x9

    iput p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_e

    goto/16 :goto_1c

    :cond_e
    move-object v9, p0

    move-object v7, v0

    .line 1734
    :goto_10
    :try_start_8
    iget-object p1, v6, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1735
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/LinkedHashMap;

    .line 1736
    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/paging/ViewportHint;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1737
    invoke-interface {v3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v6, v0

    move-object v0, v7

    move-object p1, p0

    move-object p0, v9

    .line 1738
    :goto_11
    iput-object v10, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$7:Landroidx/paging/PageFetcherSnapshot;

    const/16 v7, 0xa

    iput v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    .line 1739
    invoke-virtual {p1, v6, v3, v1}, Landroidx/paging/PageFetcherSnapshot;->retryLoadError(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_f

    goto/16 :goto_1c

    :cond_f
    move-object v6, p0

    move-object p0, v0

    move-object v3, v8

    move-object v7, v10

    .line 1740
    :goto_12
    sget-object p1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p0, p1, :cond_12

    .line 1741
    iget-object v0, v6, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 1742
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1743
    iput-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    const/16 p1, 0xb

    iput p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_10

    goto/16 :goto_1c

    .line 1744
    :cond_10
    :goto_13
    :try_start_9
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1745
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 1746
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->get(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1747
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1748
    instance-of p0, p1, Landroidx/paging/LoadState$Error;

    if-nez p0, :cond_11

    .line 1749
    invoke-virtual {v6, v3}, Landroidx/paging/PageFetcherSnapshot;->startConsumingHints(Lkotlinx/coroutines/CoroutineScope;)V

    :cond_11
    move-object p1, v0

    :cond_12
    move-object p0, v3

    move-object v0, v6

    goto :goto_14

    :catchall_5
    move-exception p1

    .line 1750
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_6
    move-exception p0

    .line 1751
    invoke-interface {v3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    .line 1752
    :cond_13
    :goto_14
    sget-object v3, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 1753
    iget-object v6, v7, Landroidx/paging/LoadStates;->append:Landroidx/paging/LoadState;

    .line 1754
    instance-of v6, v6, Landroidx/paging/LoadState$Error;

    if-eqz v6, :cond_1b

    if-eq v3, p1, :cond_16

    .line 1755
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 1756
    iget-object v6, p1, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1757
    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    const/16 v7, 0xc

    iput v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    invoke-virtual {v6, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_14

    goto/16 :goto_1c

    :cond_14
    move-object v7, v6

    move-object v6, p0

    move-object p0, v7

    move-object v7, v0

    move-object v0, p1

    .line 1758
    :goto_15
    :try_start_a
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1759
    iput-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    const/16 v0, 0xd

    iput v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    .line 1760
    invoke-virtual {v7, p1, v3, v1}, Landroidx/paging/PageFetcherSnapshot;->setLoading(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-ne p1, v2, :cond_15

    goto/16 :goto_1c

    :cond_15
    move-object v0, v3

    move-object v3, v6

    move-object v6, v7

    .line 1761
    :goto_16
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v7, v3

    move-object p0, v6

    goto :goto_18

    :goto_17
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_16
    move-object v7, p0

    move-object p0, v0

    move-object v0, v3

    .line 1762
    :goto_18
    sget-object p1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-ne p1, v4, :cond_17

    move-object p1, p0

    move-object v4, v0

    move-object v3, v5

    goto :goto_1a

    .line 1763
    :cond_17
    iget-object v4, p0, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 1764
    iget-object v3, v4, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1765
    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$6:Ljava/lang/Object;

    const/16 p1, 0xe

    iput p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    invoke-virtual {v3, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_18

    goto :goto_1c

    :cond_18
    move-object v8, p0

    move-object v6, v0

    .line 1766
    :goto_19
    :try_start_b
    iget-object p1, v4, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1767
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/LinkedHashMap;

    .line 1768
    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/paging/ViewportHint;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 1769
    invoke-interface {v3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v4, v0

    move-object v0, v6

    move-object p1, p0

    move-object p0, v8

    .line 1770
    :goto_1a
    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$6:Ljava/lang/Object;

    const/16 v6, 0xf

    iput v6, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    .line 1771
    invoke-virtual {p1, v4, v3, v1}, Landroidx/paging/PageFetcherSnapshot;->retryLoadError(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_19

    goto :goto_1c

    :cond_19
    move-object v3, p0

    move-object p0, v0

    move-object v0, v7

    .line 1772
    :goto_1b
    sget-object p1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p0, p1, :cond_1b

    .line 1773
    iget-object p0, v3, Landroidx/paging/PageFetcherSnapshot;->stateHolder:Landroidx/paging/PageFetcherSnapshotState$Holder;

    .line 1774
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState$Holder;->lock:Lkotlinx/coroutines/sync/MutexImpl;

    .line 1775
    iput-object v3, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$1:Ljava/lang/Object;

    iput-object p0, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$2:Ljava/lang/Object;

    iput-object p1, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->L$3:Ljava/lang/Object;

    const/16 v4, 0x10

    iput v4, v1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->label:I

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_1a

    :goto_1c
    return-object v2

    :cond_1a
    move-object v2, v0

    move-object v1, v3

    move-object v0, p0

    move-object p0, p1

    .line 1776
    :goto_1d
    :try_start_c
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshotState$Holder;->state:Landroidx/paging/PageFetcherSnapshotState;

    .line 1777
    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 1778
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/SVG;->get(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1779
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1780
    instance-of p0, p1, Landroidx/paging/LoadState$Error;

    if-nez p0, :cond_1b

    .line 1781
    invoke-virtual {v1, v2}, Landroidx/paging/PageFetcherSnapshot;->startConsumingHints(Lkotlinx/coroutines/CoroutineScope;)V

    goto :goto_1e

    :catchall_7
    move-exception p1

    .line 1782
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_8
    move-exception p0

    .line 1783
    invoke-interface {v3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    .line 1784
    :cond_1b
    :goto_1e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_9
    move-exception p0

    .line 1785
    invoke-interface {v3, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
