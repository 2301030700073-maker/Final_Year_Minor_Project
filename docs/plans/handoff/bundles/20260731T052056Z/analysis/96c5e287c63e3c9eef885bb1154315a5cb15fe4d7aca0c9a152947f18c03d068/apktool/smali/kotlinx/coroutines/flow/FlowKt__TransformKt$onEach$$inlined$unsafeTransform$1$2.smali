.class public final Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $action$inlined:Lkotlin/jvm/functions/Function2;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 1
    iput p3, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;->$action$inlined:Lkotlin/jvm/functions/Function2;

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
    iget v0, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;->$action$inlined:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iget-object v3, p0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    const/high16 v5, -0x80000000

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    instance-of v0, p2, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    move-object v0, p2

    .line 24
    check-cast v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;

    .line 25
    .line 26
    iget v9, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;->label:I

    .line 27
    .line 28
    and-int v10, v9, v5

    .line 29
    .line 30
    if-eqz v10, :cond_0

    .line 31
    .line 32
    sub-int/2addr v9, v5

    .line 33
    iput v9, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;->label:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;

    .line 37
    .line 38
    invoke-direct {v0, p0, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;Lkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object p0, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;->result:Ljava/lang/Object;

    .line 42
    .line 43
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    iget v5, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;->label:I

    .line 46
    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    if-eq v5, v6, :cond_2

    .line 50
    .line 51
    if-ne v5, v7, :cond_1

    .line 52
    .line 53
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_1
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    move-object v1, v8

    .line 61
    goto :goto_3

    .line 62
    :cond_2
    iget-object v3, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 63
    .line 64
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    check-cast p1, Landroidx/paging/PageEvent;

    .line 72
    .line 73
    iput-object v3, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 74
    .line 75
    iput v6, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;->label:I

    .line 76
    .line 77
    invoke-virtual {p1, v2, v0}, Landroidx/paging/PageEvent;->map(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-ne p0, p2, :cond_4

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    :goto_1
    iput-object v8, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 85
    .line 86
    iput v7, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$map$$inlined$transform$1$2$1;->label:I

    .line 87
    .line 88
    invoke-interface {v3, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-ne p0, p2, :cond_5

    .line 93
    .line 94
    :goto_2
    move-object v1, p2

    .line 95
    :cond_5
    :goto_3
    return-object v1

    .line 96
    :pswitch_0
    instance-of v0, p2, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    move-object v0, p2

    .line 101
    check-cast v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;

    .line 102
    .line 103
    iget v9, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;->label:I

    .line 104
    .line 105
    and-int v10, v9, v5

    .line 106
    .line 107
    if-eqz v10, :cond_6

    .line 108
    .line 109
    sub-int/2addr v9, v5

    .line 110
    iput v9, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;->label:I

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    new-instance v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;

    .line 114
    .line 115
    invoke-direct {v0, p0, p2}, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;Lkotlin/coroutines/Continuation;)V

    .line 116
    .line 117
    .line 118
    :goto_4
    iget-object p0, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;->result:Ljava/lang/Object;

    .line 119
    .line 120
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 121
    .line 122
    iget v5, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;->label:I

    .line 123
    .line 124
    if-eqz v5, :cond_9

    .line 125
    .line 126
    if-eq v5, v6, :cond_8

    .line 127
    .line 128
    if-ne v5, v7, :cond_7

    .line 129
    .line 130
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_7
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    move-object v1, v8

    .line 138
    goto :goto_7

    .line 139
    :cond_8
    iget-object v3, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 140
    .line 141
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_9
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    check-cast p1, Landroidx/paging/PageEvent;

    .line 149
    .line 150
    iput-object v3, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 151
    .line 152
    iput v6, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;->label:I

    .line 153
    .line 154
    invoke-virtual {p1, v2, v0}, Landroidx/paging/PageEvent;->filter(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    if-ne p0, p2, :cond_a

    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_a
    :goto_5
    iput-object v8, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;->L$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 162
    .line 163
    iput v7, v0, Landroidx/paging/PagingDataTransforms__PagingDataTransformsKt$filter$$inlined$transform$1$2$1;->label:I

    .line 164
    .line 165
    invoke-interface {v3, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    if-ne p0, p2, :cond_b

    .line 170
    .line 171
    :goto_6
    move-object v1, p2

    .line 172
    :cond_b
    :goto_7
    return-object v1

    .line 173
    :pswitch_1
    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;

    .line 174
    .line 175
    if-eqz v0, :cond_c

    .line 176
    .line 177
    move-object v0, p2

    .line 178
    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;

    .line 179
    .line 180
    iget v9, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    .line 181
    .line 182
    and-int v10, v9, v5

    .line 183
    .line 184
    if-eqz v10, :cond_c

    .line 185
    .line 186
    sub-int/2addr v9, v5

    .line 187
    iput v9, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_c
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;

    .line 191
    .line 192
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2;Lkotlin/coroutines/Continuation;)V

    .line 193
    .line 194
    .line 195
    :goto_8
    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->result:Ljava/lang/Object;

    .line 196
    .line 197
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 198
    .line 199
    iget v5, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    .line 200
    .line 201
    if-eqz v5, :cond_f

    .line 202
    .line 203
    if-eq v5, v6, :cond_e

    .line 204
    .line 205
    if-ne v5, v7, :cond_d

    .line 206
    .line 207
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto :goto_b

    .line 211
    :cond_d
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    move-object v1, v8

    .line 215
    goto :goto_b

    .line 216
    :cond_e
    iget-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 217
    .line 218
    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$0:Ljava/lang/Object;

    .line 219
    .line 220
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    goto :goto_9

    .line 224
    :cond_f
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$0:Ljava/lang/Object;

    .line 228
    .line 229
    iput-object v3, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 230
    .line 231
    iput v6, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    .line 232
    .line 233
    invoke-interface {v2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    if-ne p0, p2, :cond_10

    .line 238
    .line 239
    goto :goto_a

    .line 240
    :cond_10
    :goto_9
    iput-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$0:Ljava/lang/Object;

    .line 241
    .line 242
    iput-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->L$1:Lkotlinx/coroutines/flow/FlowCollector;

    .line 243
    .line 244
    iput v7, v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1$2$1;->label:I

    .line 245
    .line 246
    invoke-interface {v3, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    if-ne p0, p2, :cond_11

    .line 251
    .line 252
    :goto_a
    move-object v1, p2

    .line 253
    :cond_11
    :goto_b
    return-object v1

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
