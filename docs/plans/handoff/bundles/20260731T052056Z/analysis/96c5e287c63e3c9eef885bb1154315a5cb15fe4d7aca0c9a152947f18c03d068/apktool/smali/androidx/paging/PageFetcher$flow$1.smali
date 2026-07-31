.class public final Landroidx/paging/PageFetcher$flow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 14
    iput p1, p0, Landroidx/paging/PageFetcher$flow$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    iput v0, p0, Landroidx/paging/PageFetcher$flow$1;->$r8$classId:I

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 15
    iput p4, p0, Landroidx/paging/PageFetcher$flow$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/paging/PageFetcher$flow$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 13
    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    const/16 v0, 0x1d

    .line 17
    .line 18
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 27
    .line 28
    check-cast v1, Landroidx/paging/PagingData;

    .line 29
    .line 30
    const/16 v0, 0x1c

    .line 31
    .line 32
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_1
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 37
    .line 38
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 39
    .line 40
    const/16 v0, 0x1b

    .line 41
    .line 42
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_2
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 53
    .line 54
    check-cast v1, Lkotlinx/coroutines/flow/internal/SendingCollector;

    .line 55
    .line 56
    const/16 v0, 0x1a

    .line 57
    .line 58
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_3
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 63
    .line 64
    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;

    .line 65
    .line 66
    const/16 v0, 0x19

    .line 67
    .line 68
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    return-object p0

    .line 74
    :pswitch_4
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 75
    .line 76
    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 77
    .line 78
    const/16 v0, 0x18

    .line 79
    .line 80
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_5
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 87
    .line 88
    check-cast v1, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    .line 89
    .line 90
    const/16 v0, 0x17

    .line 91
    .line 92
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_6
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 99
    .line 100
    check-cast v1, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 101
    .line 102
    const/16 v0, 0x16

    .line 103
    .line 104
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_7
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 111
    .line 112
    check-cast v1, Lcoil3/network/NetworkFetcher;

    .line 113
    .line 114
    const/16 v0, 0x15

    .line 115
    .line 116
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 120
    .line 121
    return-object p0

    .line 122
    :pswitch_8
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 123
    .line 124
    check-cast v1, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 125
    .line 126
    const/16 v0, 0x14

    .line 127
    .line 128
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 132
    .line 133
    return-object p0

    .line 134
    :pswitch_9
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 135
    .line 136
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;

    .line 139
    .line 140
    check-cast v1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 141
    .line 142
    const/16 v0, 0x13

    .line 143
    .line 144
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :pswitch_a
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 149
    .line 150
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast p0, Landroidx/room/RoomDatabase;

    .line 153
    .line 154
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 155
    .line 156
    invoke-direct {p1, p0, p2, v1}, Landroidx/paging/PageFetcher$flow$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 157
    .line 158
    .line 159
    return-object p1

    .line 160
    :pswitch_b
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 161
    .line 162
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 165
    .line 166
    check-cast v1, Landroidx/room/coroutines/PassthroughConnection;

    .line 167
    .line 168
    const/16 v0, 0x11

    .line 169
    .line 170
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 171
    .line 172
    .line 173
    return-object p1

    .line 174
    :pswitch_c
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 175
    .line 176
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 179
    .line 180
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 181
    .line 182
    const/16 v0, 0x10

    .line 183
    .line 184
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 185
    .line 186
    .line 187
    return-object p1

    .line 188
    :pswitch_d
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 189
    .line 190
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 193
    .line 194
    check-cast v1, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 195
    .line 196
    const/16 v0, 0xf

    .line 197
    .line 198
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 199
    .line 200
    .line 201
    return-object p1

    .line 202
    :pswitch_e
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 203
    .line 204
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p0, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 207
    .line 208
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 209
    .line 210
    const/16 v0, 0xe

    .line 211
    .line 212
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 213
    .line 214
    .line 215
    return-object p1

    .line 216
    :pswitch_f
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 217
    .line 218
    check-cast v1, Landroidx/paging/compose/LazyPagingItems;

    .line 219
    .line 220
    const/16 v0, 0xd

    .line 221
    .line 222
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 223
    .line 224
    .line 225
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 226
    .line 227
    return-object p0

    .line 228
    :pswitch_10
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 229
    .line 230
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 233
    .line 234
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 235
    .line 236
    const/16 v0, 0xc

    .line 237
    .line 238
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 239
    .line 240
    .line 241
    return-object p1

    .line 242
    :pswitch_11
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 243
    .line 244
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast p0, Landroidx/paging/PageFetcherSnapshot;

    .line 247
    .line 248
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 249
    .line 250
    const/16 v0, 0xb

    .line 251
    .line 252
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 253
    .line 254
    .line 255
    return-object p1

    .line 256
    :pswitch_12
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 257
    .line 258
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p0, Landroidx/paging/PageFetcherSnapshot;

    .line 261
    .line 262
    check-cast v1, Landroidx/paging/SimpleProducerScopeImpl;

    .line 263
    .line 264
    const/16 v0, 0xa

    .line 265
    .line 266
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 267
    .line 268
    .line 269
    return-object p1

    .line 270
    :pswitch_13
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 271
    .line 272
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 275
    .line 276
    check-cast v1, Lokhttp3/Request$Builder;

    .line 277
    .line 278
    const/16 v0, 0x9

    .line 279
    .line 280
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 281
    .line 282
    .line 283
    return-object p1

    .line 284
    :pswitch_14
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 285
    .line 286
    check-cast v1, Lokhttp3/Request$Builder;

    .line 287
    .line 288
    const/16 v0, 0x8

    .line 289
    .line 290
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 291
    .line 292
    .line 293
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 294
    .line 295
    return-object p0

    .line 296
    :pswitch_15
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 297
    .line 298
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 301
    .line 302
    check-cast v1, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 303
    .line 304
    const/4 v0, 0x7

    .line 305
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 306
    .line 307
    .line 308
    return-object p1

    .line 309
    :pswitch_16
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 310
    .line 311
    check-cast v1, Landroidx/glance/session/SessionWorker;

    .line 312
    .line 313
    const/4 v0, 0x6

    .line 314
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 315
    .line 316
    .line 317
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 318
    .line 319
    return-object p0

    .line 320
    :pswitch_17
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 321
    .line 322
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast p0, Landroidx/glance/session/SessionWorker;

    .line 325
    .line 326
    check-cast v1, Landroidx/glance/appwidget/AppWidgetSession;

    .line 327
    .line 328
    const/4 v0, 0x5

    .line 329
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 330
    .line 331
    .line 332
    return-object p1

    .line 333
    :pswitch_18
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 334
    .line 335
    check-cast v1, Landroidx/glance/appwidget/AppWidgetSession;

    .line 336
    .line 337
    const/4 v0, 0x4

    .line 338
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 339
    .line 340
    .line 341
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 342
    .line 343
    return-object p0

    .line 344
    :pswitch_19
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 345
    .line 346
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast p0, Landroid/content/Intent;

    .line 349
    .line 350
    check-cast v1, Landroid/content/Context;

    .line 351
    .line 352
    const/4 v0, 0x3

    .line 353
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 354
    .line 355
    .line 356
    return-object p1

    .line 357
    :pswitch_1a
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 358
    .line 359
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast p0, Landroid/content/Context;

    .line 362
    .line 363
    check-cast v1, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 364
    .line 365
    const/4 v0, 0x2

    .line 366
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 367
    .line 368
    .line 369
    return-object p1

    .line 370
    :pswitch_1b
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 371
    .line 372
    check-cast v1, Landroidx/glance/appwidget/AppWidgetId;

    .line 373
    .line 374
    const/4 v0, 0x1

    .line 375
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 376
    .line 377
    .line 378
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 379
    .line 380
    return-object p0

    .line 381
    :pswitch_1c
    new-instance p0, Landroidx/paging/PageFetcher$flow$1;

    .line 382
    .line 383
    check-cast v1, Landroidx/paging/PageFetcher;

    .line 384
    .line 385
    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, v0, v1, p2}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 387
    .line 388
    .line 389
    iput-object p1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 390
    .line 391
    return-object p0

    .line 392
    nop

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/paging/PageFetcher$flow$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 52
    .line 53
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 67
    .line 68
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 82
    .line 83
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 97
    .line 98
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 99
    .line 100
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 112
    .line 113
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 114
    .line 115
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :pswitch_7
    check-cast p1, Lcoil3/network/NetworkResponse;

    .line 127
    .line 128
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 129
    .line 130
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 142
    .line 143
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 144
    .line 145
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 150
    .line 151
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 157
    .line 158
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 159
    .line 160
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 165
    .line 166
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 172
    .line 173
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 174
    .line 175
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    return-object p0

    .line 186
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 187
    .line 188
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 189
    .line 190
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 195
    .line 196
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 202
    .line 203
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 204
    .line 205
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 210
    .line 211
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0

    .line 216
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 217
    .line 218
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 219
    .line 220
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 225
    .line 226
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 232
    .line 233
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 234
    .line 235
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 240
    .line 241
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :pswitch_f
    check-cast p1, Landroidx/paging/PagingData;

    .line 247
    .line 248
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 249
    .line 250
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 255
    .line 256
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    return-object p0

    .line 261
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 262
    .line 263
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 264
    .line 265
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 270
    .line 271
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    return-object p0

    .line 276
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 277
    .line 278
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 279
    .line 280
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 285
    .line 286
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 292
    .line 293
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 294
    .line 295
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 300
    .line 301
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    return-object p0

    .line 306
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 307
    .line 308
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 309
    .line 310
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 315
    .line 316
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    return-object p0

    .line 321
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 322
    .line 323
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 324
    .line 325
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 330
    .line 331
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    return-object p0

    .line 336
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 337
    .line 338
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 339
    .line 340
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 345
    .line 346
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    return-object p0

    .line 351
    :pswitch_16
    check-cast p1, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 352
    .line 353
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 354
    .line 355
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 356
    .line 357
    .line 358
    move-result-object p0

    .line 359
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 360
    .line 361
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    return-object p0

    .line 366
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 367
    .line 368
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 369
    .line 370
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 375
    .line 376
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object p0

    .line 380
    return-object p0

    .line 381
    :pswitch_18
    check-cast p1, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 382
    .line 383
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 384
    .line 385
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 390
    .line 391
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    return-object p0

    .line 396
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 397
    .line 398
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 399
    .line 400
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 401
    .line 402
    .line 403
    move-result-object p0

    .line 404
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 405
    .line 406
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    return-object p0

    .line 411
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 412
    .line 413
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 414
    .line 415
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 420
    .line 421
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object p0

    .line 425
    return-object p0

    .line 426
    :pswitch_1b
    check-cast p1, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 427
    .line 428
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 429
    .line 430
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 435
    .line 436
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object p0

    .line 440
    return-object p0

    .line 441
    :pswitch_1c
    check-cast p1, Landroidx/paging/SimpleProducerScopeImpl;

    .line 442
    .line 443
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 444
    .line 445
    invoke-virtual {p0, p1, p2}, Landroidx/paging/PageFetcher$flow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 446
    .line 447
    .line 448
    move-result-object p0

    .line 449
    check-cast p0, Landroidx/paging/PageFetcher$flow$1;

    .line 450
    .line 451
    invoke-virtual {p0, v1}, Landroidx/paging/PageFetcher$flow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object p0

    .line 455
    return-object p0

    .line 456
    nop

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/paging/PageFetcher$flow$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x7

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x1

    .line 10
    const/4 v8, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/List;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lorg/wikimedia/testkitchen/config/DestinationEventService;

    .line 21
    .line 22
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    .line 24
    iget v3, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    if-eq v3, v7, :cond_1

    .line 29
    .line 30
    if-ne v3, v5, :cond_0

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    move-object p0, p1

    .line 36
    goto :goto_3

    .line 37
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_5

    .line 43
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    move-object p0, p1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const-string v3, "org.wikipedia"

    .line 52
    .line 53
    const-string v4, "beta"

    .line 54
    .line 55
    invoke-static {v3, v4, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const-string v4, "alpha"

    .line 63
    .line 64
    invoke-static {v3, v4, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    const-string v4, "dev"

    .line 72
    .line 73
    invoke-static {v3, v4, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_6

    .line 78
    .line 79
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 80
    .line 81
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getAnalyticsRest(Lorg/wikimedia/testkitchen/config/DestinationEventService;)Lorg/wikipedia/analytics/eventplatform/EventService;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 86
    .line 87
    invoke-interface {v1, v0, p0}, Lorg/wikipedia/analytics/eventplatform/EventService;->postEvents(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-ne p0, v2, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    :goto_0
    check-cast p0, Lretrofit2/Response;

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    :goto_1
    sget-object v3, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 98
    .line 99
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getAnalyticsRest(Lorg/wikimedia/testkitchen/config/DestinationEventService;)Lorg/wikipedia/analytics/eventplatform/EventService;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput v5, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 104
    .line 105
    invoke-interface {v1, v0, p0}, Lorg/wikipedia/analytics/eventplatform/EventService;->postEventsHasty(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-ne p0, v2, :cond_7

    .line 110
    .line 111
    :goto_2
    move-object v8, v2

    .line 112
    goto :goto_5

    .line 113
    :cond_7
    :goto_3
    check-cast p0, Lretrofit2/Response;

    .line 114
    .line 115
    :goto_4
    iget-object p0, p0, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 116
    .line 117
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    :goto_5
    return-object v8

    .line 120
    :pswitch_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 121
    .line 122
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 125
    .line 126
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 127
    .line 128
    iget v3, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 129
    .line 130
    if-eqz v3, :cond_9

    .line 131
    .line 132
    if-ne v3, v7, :cond_8

    .line 133
    .line 134
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_9

    .line 138
    :cond_8
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 139
    .line 140
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto :goto_a

    .line 144
    :cond_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iput-boolean v6, v1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitCompleted:Z

    .line 148
    .line 149
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v3, Landroidx/paging/PagingData;

    .line 152
    .line 153
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 154
    .line 155
    iget-object v4, v1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->differ:Landroidx/paging/AsyncPagingDataDiffer;

    .line 156
    .line 157
    iget-object v5, v4, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 160
    .line 161
    .line 162
    iget-object v4, v4, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 163
    .line 164
    iget-object v5, v4, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->collectFromRunner:Landroidx/paging/HintHandler;

    .line 165
    .line 166
    new-instance v9, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 167
    .line 168
    invoke-direct {v9, v4, v3, v8, v6}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v9, p0}, Landroidx/paging/HintHandler;->runInIsolation(Landroidx/paging/PagingDataPresenter$collectFrom$2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    if-ne p0, v2, :cond_a

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_a
    move-object p0, v0

    .line 179
    :goto_6
    if-ne p0, v2, :cond_b

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_b
    move-object p0, v0

    .line 183
    :goto_7
    if-ne p0, v2, :cond_c

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_c
    move-object p0, v0

    .line 187
    :goto_8
    if-ne p0, v2, :cond_d

    .line 188
    .line 189
    move-object v8, v2

    .line 190
    goto :goto_a

    .line 191
    :cond_d
    :goto_9
    iput-boolean v7, v1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;->submitCompleted:Z

    .line 192
    .line 193
    move-object v8, v0

    .line 194
    :goto_a
    return-object v8

    .line 195
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 196
    .line 197
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 198
    .line 199
    if-eqz v1, :cond_f

    .line 200
    .line 201
    if-ne v1, v7, :cond_e

    .line 202
    .line 203
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto :goto_b

    .line 207
    :cond_e
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 208
    .line 209
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    goto :goto_c

    .line 213
    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 217
    .line 218
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .line 221
    .line 222
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 223
    .line 224
    invoke-interface {v2, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    if-ne p0, v0, :cond_10

    .line 229
    .line 230
    move-object v8, v0

    .line 231
    goto :goto_c

    .line 232
    :cond_10
    :goto_b
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 233
    .line 234
    :goto_c
    return-object v8

    .line 235
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 236
    .line 237
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 238
    .line 239
    if-eqz v1, :cond_12

    .line 240
    .line 241
    if-ne v1, v7, :cond_11

    .line 242
    .line 243
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto :goto_d

    .line 247
    :cond_11
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 248
    .line 249
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_e

    .line 253
    :cond_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 259
    .line 260
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v2, Lkotlinx/coroutines/flow/internal/SendingCollector;

    .line 263
    .line 264
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 265
    .line 266
    invoke-interface {v1, v2, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    if-ne p0, v0, :cond_13

    .line 271
    .line 272
    move-object v8, v0

    .line 273
    goto :goto_e

    .line 274
    :cond_13
    :goto_d
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 275
    .line 276
    :goto_e
    return-object v8

    .line 277
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 278
    .line 279
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 280
    .line 281
    if-eqz v1, :cond_15

    .line 282
    .line 283
    if-ne v1, v7, :cond_14

    .line 284
    .line 285
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    goto :goto_f

    .line 289
    :cond_14
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 290
    .line 291
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto :goto_10

    .line 295
    :cond_15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 301
    .line 302
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v2, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;

    .line 305
    .line 306
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 307
    .line 308
    invoke-virtual {v2, v1, p0}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;->flowCollect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    if-ne p0, v0, :cond_16

    .line 313
    .line 314
    move-object v8, v0

    .line 315
    goto :goto_10

    .line 316
    :cond_16
    :goto_f
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 317
    .line 318
    :goto_10
    return-object v8

    .line 319
    :pswitch_4
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 320
    .line 321
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 322
    .line 323
    if-eqz v1, :cond_18

    .line 324
    .line 325
    if-ne v1, v7, :cond_17

    .line 326
    .line 327
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    goto :goto_11

    .line 331
    :cond_17
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 332
    .line 333
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    goto :goto_12

    .line 337
    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 343
    .line 344
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v2, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    .line 347
    .line 348
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 349
    .line 350
    invoke-virtual {v2, v1, p0}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->collectTo(Lkotlinx/coroutines/channels/ProducerCoroutine;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    if-ne p0, v0, :cond_19

    .line 355
    .line 356
    move-object v8, v0

    .line 357
    goto :goto_12

    .line 358
    :cond_19
    :goto_11
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 359
    .line 360
    :goto_12
    return-object v8

    .line 361
    :pswitch_5
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 362
    .line 363
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 364
    .line 365
    if-eqz v1, :cond_1b

    .line 366
    .line 367
    if-eq v1, v7, :cond_1a

    .line 368
    .line 369
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 370
    .line 371
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    goto :goto_14

    .line 375
    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    goto :goto_13

    .line 379
    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 385
    .line 386
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 387
    .line 388
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 389
    .line 390
    .line 391
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v3, Lkotlinx/coroutines/flow/internal/SubscriptionCountStateFlow;

    .line 394
    .line 395
    new-instance v4, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 396
    .line 397
    const/16 v5, 0xf

    .line 398
    .line 399
    invoke-direct {v4, v5, v2, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 403
    .line 404
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    if-ne p0, v0, :cond_1c

    .line 409
    .line 410
    move-object v8, v0

    .line 411
    goto :goto_14

    .line 412
    :cond_1c
    :goto_13
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 413
    .line 414
    .line 415
    :goto_14
    return-object v8

    .line 416
    :pswitch_6
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 417
    .line 418
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 419
    .line 420
    if-eqz v1, :cond_1e

    .line 421
    .line 422
    if-ne v1, v7, :cond_1d

    .line 423
    .line 424
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 425
    .line 426
    .line 427
    goto :goto_15

    .line 428
    :cond_1d
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 429
    .line 430
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_16

    .line 434
    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 440
    .line 441
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 442
    .line 443
    check-cast v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 444
    .line 445
    new-instance v3, Landroidx/paging/ChannelFlowCollector;

    .line 446
    .line 447
    invoke-direct {v3, v4, v1}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 451
    .line 452
    invoke-virtual {v2, v3, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    if-ne p0, v0, :cond_1f

    .line 457
    .line 458
    move-object v8, v0

    .line 459
    goto :goto_16

    .line 460
    :cond_1f
    :goto_15
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 461
    .line 462
    :goto_16
    return-object v8

    .line 463
    :pswitch_7
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v0, Lcoil3/network/NetworkFetcher;

    .line 466
    .line 467
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 468
    .line 469
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 470
    .line 471
    if-eqz v2, :cond_21

    .line 472
    .line 473
    if-ne v2, v7, :cond_20

    .line 474
    .line 475
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 476
    .line 477
    check-cast p0, Lcoil3/network/NetworkResponse;

    .line 478
    .line 479
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    move-object v1, p1

    .line 483
    goto :goto_17

    .line 484
    :cond_20
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 485
    .line 486
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    goto :goto_18

    .line 490
    :cond_21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 491
    .line 492
    .line 493
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v2, Lcoil3/network/NetworkResponse;

    .line 496
    .line 497
    iget-object v3, v2, Lcoil3/network/NetworkResponse;->body:Lcoil3/network/SourceResponseBody;

    .line 498
    .line 499
    if-eqz v3, :cond_23

    .line 500
    .line 501
    iput-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 502
    .line 503
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 504
    .line 505
    invoke-virtual {v0, v3, p0}, Lcoil3/network/NetworkFetcher;->toImageSource(Lcoil3/network/SourceResponseBody;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object p0

    .line 509
    if-ne p0, v1, :cond_22

    .line 510
    .line 511
    move-object v8, v1

    .line 512
    goto :goto_18

    .line 513
    :cond_22
    move-object v1, p0

    .line 514
    move-object p0, v2

    .line 515
    :goto_17
    check-cast v1, Lcoil3/decode/ImageSource;

    .line 516
    .line 517
    iget-object v0, v0, Lcoil3/network/NetworkFetcher;->url:Ljava/lang/String;

    .line 518
    .line 519
    iget-object p0, p0, Lcoil3/network/NetworkResponse;->headers:Lcoil3/network/NetworkHeaders;

    .line 520
    .line 521
    invoke-virtual {p0}, Lcoil3/network/NetworkHeaders;->get()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object p0

    .line 525
    invoke-static {v0, p0}, Lcoil3/network/NetworkFetcher;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p0

    .line 529
    sget-object v0, Lcoil3/decode/DataSource;->NETWORK:Lcoil3/decode/DataSource;

    .line 530
    .line 531
    new-instance v8, Lcoil3/fetch/SourceFetchResult;

    .line 532
    .line 533
    invoke-direct {v8, v1, p0, v0}, Lcoil3/fetch/SourceFetchResult;-><init>(Lcoil3/decode/ImageSource;Ljava/lang/String;Lcoil3/decode/DataSource;)V

    .line 534
    .line 535
    .line 536
    goto :goto_18

    .line 537
    :cond_23
    const-string p0, "body == null"

    .line 538
    .line 539
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    :goto_18
    return-object v8

    .line 543
    :pswitch_8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 544
    .line 545
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 546
    .line 547
    if-eqz v1, :cond_25

    .line 548
    .line 549
    if-ne v1, v7, :cond_24

    .line 550
    .line 551
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_1b

    .line 555
    .line 556
    :cond_24
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 557
    .line 558
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_1c

    .line 562
    .line 563
    :cond_25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 567
    .line 568
    check-cast v1, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 569
    .line 570
    new-instance v2, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 571
    .line 572
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 573
    .line 574
    check-cast v3, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 575
    .line 576
    invoke-direct {v2, v3, v1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;-><init>(Landroidx/work/impl/constraints/controllers/BaseConstraintController;Lkotlinx/coroutines/channels/ProducerCoroutine;)V

    .line 577
    .line 578
    .line 579
    iget-object v4, v3, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->tracker:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 580
    .line 581
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    iget-object v5, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 585
    .line 586
    monitor-enter v5

    .line 587
    :try_start_0
    iget-object v6, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    .line 588
    .line 589
    invoke-virtual {v6, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v6

    .line 593
    if-eqz v6, :cond_28

    .line 594
    .line 595
    iget-object v6, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    .line 596
    .line 597
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 598
    .line 599
    .line 600
    move-result v6

    .line 601
    if-ne v6, v7, :cond_26

    .line 602
    .line 603
    invoke-virtual {v4}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->readSystemState()Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    iput-object v6, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 608
    .line 609
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    sget-object v8, Landroidx/work/impl/constraints/trackers/ConstraintTrackerKt;->TAG:Ljava/lang/String;

    .line 614
    .line 615
    new-instance v9, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .line 619
    .line 620
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    move-result-object v10

    .line 624
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v10

    .line 628
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v10, ": initial state = "

    .line 632
    .line 633
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    iget-object v10, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 637
    .line 638
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v9

    .line 645
    invoke-virtual {v6, v8, v9}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v4}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->startTracking()V

    .line 649
    .line 650
    .line 651
    goto :goto_19

    .line 652
    :catchall_0
    move-exception v0

    .line 653
    move-object p0, v0

    .line 654
    goto :goto_1d

    .line 655
    :cond_26
    :goto_19
    iget-object v4, v4, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 656
    .line 657
    invoke-virtual {v3, v4}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->isConstrained(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    if-eqz v4, :cond_27

    .line 662
    .line 663
    new-instance v4, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 664
    .line 665
    invoke-virtual {v3}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->getReason()I

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    invoke-direct {v4, v3}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 670
    .line 671
    .line 672
    goto :goto_1a

    .line 673
    :cond_27
    sget-object v4, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;->INSTANCE:Landroidx/work/impl/constraints/ConstraintsState$ConstraintsMet;

    .line 674
    .line 675
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    .line 680
    .line 681
    :cond_28
    monitor-exit v5

    .line 682
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v3, Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    .line 685
    .line 686
    new-instance v4, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 687
    .line 688
    const/16 v5, 0x1b

    .line 689
    .line 690
    invoke-direct {v4, v5, v3, v2}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 691
    .line 692
    .line 693
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 694
    .line 695
    invoke-static {v1, v4, p0}, Landroidx/work/OperationKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerCoroutine;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    if-ne p0, v0, :cond_29

    .line 700
    .line 701
    move-object v8, v0

    .line 702
    goto :goto_1c

    .line 703
    :cond_29
    :goto_1b
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 704
    .line 705
    :goto_1c
    return-object v8

    .line 706
    :goto_1d
    monitor-exit v5

    .line 707
    throw p0

    .line 708
    :pswitch_9
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 709
    .line 710
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 711
    .line 712
    if-eqz v1, :cond_2b

    .line 713
    .line 714
    if-ne v1, v7, :cond_2a

    .line 715
    .line 716
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    goto :goto_1e

    .line 720
    :cond_2a
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 721
    .line 722
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    goto :goto_1f

    .line 726
    :cond_2b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 730
    .line 731
    const-wide/16 v1, 0x3e8

    .line 732
    .line 733
    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/AwaitKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    if-ne v1, v0, :cond_2c

    .line 738
    .line 739
    move-object v8, v0

    .line 740
    goto :goto_1f

    .line 741
    :cond_2c
    :goto_1e
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    sget-object v1, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->TAG:Ljava/lang/String;

    .line 746
    .line 747
    const-string v2, "NetworkRequestConstraintController didn\'t receive neither onCapabilitiesChanged/onLost callback, sending `ConstraintsNotMet` after 1000 ms"

    .line 748
    .line 749
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 755
    .line 756
    new-instance v0, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;

    .line 757
    .line 758
    invoke-direct {v0, v4}, Landroidx/work/impl/constraints/ConstraintsState$ConstraintsNotMet;-><init>(I)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 765
    .line 766
    :goto_1f
    return-object v8

    .line 767
    :pswitch_a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 768
    .line 769
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 770
    .line 771
    if-eqz v1, :cond_2e

    .line 772
    .line 773
    if-ne v1, v7, :cond_2d

    .line 774
    .line 775
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 776
    .line 777
    .line 778
    move-object p0, p1

    .line 779
    goto :goto_20

    .line 780
    :cond_2d
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 781
    .line 782
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 783
    .line 784
    .line 785
    move-object p0, v8

    .line 786
    goto :goto_20

    .line 787
    :cond_2e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 791
    .line 792
    check-cast v1, Landroidx/room/RoomDatabase;

    .line 793
    .line 794
    new-instance v2, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1;

    .line 795
    .line 796
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 797
    .line 798
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 799
    .line 800
    invoke-direct {v2, v1, v8, v3, v6}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;I)V

    .line 801
    .line 802
    .line 803
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 804
    .line 805
    invoke-virtual {v1, v6, v2, p0}, Landroidx/room/RoomDatabase;->useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object p0

    .line 809
    if-ne p0, v0, :cond_2f

    .line 810
    .line 811
    move-object p0, v0

    .line 812
    :cond_2f
    :goto_20
    return-object p0

    .line 813
    :pswitch_b
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 814
    .line 815
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 816
    .line 817
    if-eqz v1, :cond_31

    .line 818
    .line 819
    if-ne v1, v7, :cond_30

    .line 820
    .line 821
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 822
    .line 823
    .line 824
    move-object p0, p1

    .line 825
    goto :goto_21

    .line 826
    :cond_30
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 827
    .line 828
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    move-object p0, v8

    .line 832
    goto :goto_21

    .line 833
    :cond_31
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 834
    .line 835
    .line 836
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 839
    .line 840
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 841
    .line 842
    check-cast v2, Landroidx/room/coroutines/PassthroughConnection;

    .line 843
    .line 844
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 845
    .line 846
    invoke-interface {v1, v2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object p0

    .line 850
    if-ne p0, v0, :cond_32

    .line 851
    .line 852
    move-object p0, v0

    .line 853
    :cond_32
    :goto_21
    return-object p0

    .line 854
    :pswitch_c
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 855
    .line 856
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 857
    .line 858
    if-eqz v1, :cond_34

    .line 859
    .line 860
    if-ne v1, v7, :cond_33

    .line 861
    .line 862
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 863
    .line 864
    .line 865
    move-object p0, p1

    .line 866
    goto :goto_22

    .line 867
    :cond_33
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 868
    .line 869
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    move-object p0, v8

    .line 873
    goto :goto_22

    .line 874
    :cond_34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 875
    .line 876
    .line 877
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 880
    .line 881
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 882
    .line 883
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 884
    .line 885
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 886
    .line 887
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 888
    .line 889
    invoke-interface {v1, v2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object p0

    .line 893
    if-ne p0, v0, :cond_35

    .line 894
    .line 895
    move-object p0, v0

    .line 896
    :cond_35
    :goto_22
    return-object p0

    .line 897
    :pswitch_d
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 898
    .line 899
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 900
    .line 901
    if-eqz v1, :cond_37

    .line 902
    .line 903
    if-ne v1, v7, :cond_36

    .line 904
    .line 905
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 906
    .line 907
    .line 908
    move-object p0, p1

    .line 909
    goto :goto_23

    .line 910
    :cond_36
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 911
    .line 912
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    move-object p0, v8

    .line 916
    goto :goto_23

    .line 917
    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 918
    .line 919
    .line 920
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 923
    .line 924
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v2, Landroidx/room/coroutines/PooledConnectionImpl;

    .line 927
    .line 928
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 929
    .line 930
    invoke-interface {v1, v2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object p0

    .line 934
    if-ne p0, v0, :cond_38

    .line 935
    .line 936
    move-object p0, v0

    .line 937
    :cond_38
    :goto_23
    return-object p0

    .line 938
    :pswitch_e
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 939
    .line 940
    move-object v1, v0

    .line 941
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 942
    .line 943
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 944
    .line 945
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 946
    .line 947
    if-eqz v2, :cond_3a

    .line 948
    .line 949
    if-ne v2, v7, :cond_39

    .line 950
    .line 951
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 952
    .line 953
    .line 954
    move-object p0, p1

    .line 955
    goto :goto_24

    .line 956
    :catchall_1
    move-exception v0

    .line 957
    move-object p0, v0

    .line 958
    goto :goto_26

    .line 959
    :cond_39
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 960
    .line 961
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    goto :goto_25

    .line 965
    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    :try_start_2
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 969
    .line 970
    check-cast v2, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 971
    .line 972
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 973
    .line 974
    invoke-virtual {v2, p0}, Landroidx/room/TriggerBasedInvalidationTracker;->notifyInvalidation(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object p0

    .line 978
    if-ne p0, v0, :cond_3b

    .line 979
    .line 980
    move-object v8, v0

    .line 981
    goto :goto_25

    .line 982
    :cond_3b
    :goto_24
    check-cast p0, Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 983
    .line 984
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 988
    .line 989
    :goto_25
    return-object v8

    .line 990
    :goto_26
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    throw p0

    .line 994
    :pswitch_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 995
    .line 996
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 997
    .line 998
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 999
    .line 1000
    if-eqz v2, :cond_3d

    .line 1001
    .line 1002
    if-ne v2, v7, :cond_3c

    .line 1003
    .line 1004
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1005
    .line 1006
    .line 1007
    goto :goto_28

    .line 1008
    :cond_3c
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1009
    .line 1010
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    goto :goto_29

    .line 1014
    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1015
    .line 1016
    .line 1017
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1018
    .line 1019
    check-cast v2, Landroidx/paging/PagingData;

    .line 1020
    .line 1021
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1022
    .line 1023
    check-cast v3, Landroidx/paging/compose/LazyPagingItems;

    .line 1024
    .line 1025
    iget-object v3, v3, Landroidx/paging/compose/LazyPagingItems;->pagingDataPresenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 1026
    .line 1027
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1028
    .line 1029
    iget-object v4, v3, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->collectFromRunner:Landroidx/paging/HintHandler;

    .line 1030
    .line 1031
    new-instance v5, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 1032
    .line 1033
    invoke-direct {v5, v3, v2, v8, v6}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v4, v5, p0}, Landroidx/paging/HintHandler;->runInIsolation(Landroidx/paging/PagingDataPresenter$collectFrom$2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    move-result-object p0

    .line 1040
    if-ne p0, v1, :cond_3e

    .line 1041
    .line 1042
    goto :goto_27

    .line 1043
    :cond_3e
    move-object p0, v0

    .line 1044
    :goto_27
    if-ne p0, v1, :cond_3f

    .line 1045
    .line 1046
    move-object v8, v1

    .line 1047
    goto :goto_29

    .line 1048
    :cond_3f
    :goto_28
    move-object v8, v0

    .line 1049
    :goto_29
    return-object v8

    .line 1050
    :pswitch_10
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1051
    .line 1052
    move-object v1, v0

    .line 1053
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1054
    .line 1055
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1056
    .line 1057
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1058
    .line 1059
    if-eqz v2, :cond_41

    .line 1060
    .line 1061
    if-ne v2, v7, :cond_40

    .line 1062
    .line 1063
    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1064
    .line 1065
    .line 1066
    goto :goto_2a

    .line 1067
    :catchall_2
    move-exception v0

    .line 1068
    move-object p0, v0

    .line 1069
    goto :goto_2b

    .line 1070
    :cond_40
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1071
    .line 1072
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    goto :goto_2d

    .line 1076
    :cond_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1077
    .line 1078
    .line 1079
    :try_start_4
    new-instance v2, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 1080
    .line 1081
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1082
    .line 1083
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 1084
    .line 1085
    const/16 v4, 0x1d

    .line 1086
    .line 1087
    invoke-direct {v2, v1, v3, v8, v4}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1088
    .line 1089
    .line 1090
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1091
    .line 1092
    invoke-static {v2, p0}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1093
    .line 1094
    .line 1095
    move-result-object p0

    .line 1096
    if-ne p0, v0, :cond_42

    .line 1097
    .line 1098
    move-object v8, v0

    .line 1099
    goto :goto_2d

    .line 1100
    :cond_42
    :goto_2a
    invoke-virtual {v1, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->close(Ljava/lang/Throwable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1101
    .line 1102
    .line 1103
    goto :goto_2c

    .line 1104
    :goto_2b
    invoke-virtual {v1, p0, v6}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 1105
    .line 1106
    .line 1107
    :goto_2c
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1108
    .line 1109
    :goto_2d
    return-object v8

    .line 1110
    :pswitch_11
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1111
    .line 1112
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1113
    .line 1114
    if-eqz v1, :cond_44

    .line 1115
    .line 1116
    if-ne v1, v7, :cond_43

    .line 1117
    .line 1118
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1119
    .line 1120
    .line 1121
    goto :goto_2e

    .line 1122
    :cond_43
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1123
    .line 1124
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_2f

    .line 1128
    :cond_44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1132
    .line 1133
    check-cast v1, Landroidx/paging/PageFetcherSnapshot;

    .line 1134
    .line 1135
    iget-object v1, v1, Landroidx/paging/PageFetcherSnapshot;->retryFlow:Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

    .line 1136
    .line 1137
    new-instance v2, Landroidx/paging/ChannelFlowCollector;

    .line 1138
    .line 1139
    iget-object v4, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1140
    .line 1141
    check-cast v4, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1142
    .line 1143
    invoke-direct {v2, v3, v4}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 1144
    .line 1145
    .line 1146
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1147
    .line 1148
    invoke-virtual {v1, v2, p0}, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object p0

    .line 1152
    if-ne p0, v0, :cond_45

    .line 1153
    .line 1154
    move-object v8, v0

    .line 1155
    goto :goto_2f

    .line 1156
    :cond_45
    :goto_2e
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1157
    .line 1158
    :goto_2f
    return-object v8

    .line 1159
    :pswitch_12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1160
    .line 1161
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1162
    .line 1163
    if-eqz v1, :cond_47

    .line 1164
    .line 1165
    if-ne v1, v7, :cond_46

    .line 1166
    .line 1167
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1168
    .line 1169
    .line 1170
    goto :goto_30

    .line 1171
    :cond_46
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1172
    .line 1173
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    goto :goto_31

    .line 1177
    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1178
    .line 1179
    .line 1180
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1181
    .line 1182
    check-cast v1, Landroidx/paging/PageFetcherSnapshot;

    .line 1183
    .line 1184
    iget-object v1, v1, Landroidx/paging/PageFetcherSnapshot;->pageEventCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1185
    .line 1186
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->consumeAsFlow(Lkotlinx/coroutines/channels/BufferedChannel;)Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v1

    .line 1190
    new-instance v3, Landroidx/paging/ChannelFlowCollector;

    .line 1191
    .line 1192
    iget-object v4, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1193
    .line 1194
    check-cast v4, Landroidx/paging/SimpleProducerScopeImpl;

    .line 1195
    .line 1196
    invoke-direct {v3, v2, v4}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 1197
    .line 1198
    .line 1199
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1200
    .line 1201
    invoke-virtual {v1, v3, p0}, Lkotlinx/coroutines/flow/ChannelAsFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1202
    .line 1203
    .line 1204
    move-result-object p0

    .line 1205
    if-ne p0, v0, :cond_48

    .line 1206
    .line 1207
    move-object v8, v0

    .line 1208
    goto :goto_31

    .line 1209
    :cond_48
    :goto_30
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1210
    .line 1211
    :goto_31
    return-object v8

    .line 1212
    :pswitch_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1213
    .line 1214
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1215
    .line 1216
    iget v3, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1217
    .line 1218
    if-eqz v3, :cond_4b

    .line 1219
    .line 1220
    if-ne v3, v7, :cond_4a

    .line 1221
    .line 1222
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1223
    .line 1224
    .line 1225
    :cond_49
    move-object v8, v0

    .line 1226
    goto :goto_33

    .line 1227
    :cond_4a
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1228
    .line 1229
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1230
    .line 1231
    .line 1232
    goto :goto_33

    .line 1233
    :cond_4b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1234
    .line 1235
    .line 1236
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1237
    .line 1238
    check-cast v3, Lkotlinx/coroutines/flow/Flow;

    .line 1239
    .line 1240
    new-instance v4, Landroidx/paging/ChannelFlowCollector;

    .line 1241
    .line 1242
    iget-object v5, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1243
    .line 1244
    check-cast v5, Lokhttp3/Request$Builder;

    .line 1245
    .line 1246
    invoke-direct {v4, v1, v5}, Landroidx/paging/ChannelFlowCollector;-><init>(ILjava/lang/Object;)V

    .line 1247
    .line 1248
    .line 1249
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1250
    .line 1251
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 1252
    .line 1253
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1254
    .line 1255
    .line 1256
    new-instance v5, Landroidx/paging/CachedPageEventFlow$downstreamFlow$1$2;

    .line 1257
    .line 1258
    invoke-direct {v5, v4, v1}, Landroidx/paging/CachedPageEventFlow$downstreamFlow$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 1259
    .line 1260
    .line 1261
    invoke-interface {v3, v5, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object p0

    .line 1265
    if-ne p0, v2, :cond_4c

    .line 1266
    .line 1267
    goto :goto_32

    .line 1268
    :cond_4c
    move-object p0, v0

    .line 1269
    :goto_32
    if-ne p0, v2, :cond_49

    .line 1270
    .line 1271
    move-object v8, v2

    .line 1272
    :goto_33
    return-object v8

    .line 1273
    :pswitch_14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1274
    .line 1275
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1276
    .line 1277
    if-eqz v1, :cond_4e

    .line 1278
    .line 1279
    if-ne v1, v7, :cond_4d

    .line 1280
    .line 1281
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1282
    .line 1283
    .line 1284
    goto :goto_34

    .line 1285
    :cond_4d
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1286
    .line 1287
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    goto :goto_35

    .line 1291
    :cond_4e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1292
    .line 1293
    .line 1294
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1295
    .line 1296
    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 1297
    .line 1298
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 1299
    .line 1300
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1301
    .line 1302
    .line 1303
    const/high16 v4, -0x80000000

    .line 1304
    .line 1305
    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1306
    .line 1307
    iget-object v4, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1308
    .line 1309
    check-cast v4, Lokhttp3/Request$Builder;

    .line 1310
    .line 1311
    iget-object v4, v4, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 1312
    .line 1313
    check-cast v4, Lkotlinx/coroutines/flow/SubscribedSharedFlow;

    .line 1314
    .line 1315
    new-instance v6, Landroidx/compose/runtime/Recomposer$join$2;

    .line 1316
    .line 1317
    invoke-direct {v6, v5, v7, v8}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 1318
    .line 1319
    .line 1320
    new-instance v5, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;

    .line 1321
    .line 1322
    invoke-direct {v5, v3, v4, v6}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1323
    .line 1324
    .line 1325
    new-instance v3, Landroidx/paging/CachedPageEventFlow$downstreamFlow$1$2;

    .line 1326
    .line 1327
    invoke-direct {v3, v2, v1}, Landroidx/paging/CachedPageEventFlow$downstreamFlow$1$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 1328
    .line 1329
    .line 1330
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1331
    .line 1332
    invoke-virtual {v5, v3, p0}, Lorg/wikipedia/settings/Prefs$observeKeys$$inlined$filter$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1333
    .line 1334
    .line 1335
    move-result-object p0

    .line 1336
    if-ne p0, v0, :cond_4f

    .line 1337
    .line 1338
    move-object v8, v0

    .line 1339
    goto :goto_35

    .line 1340
    :cond_4f
    :goto_34
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1341
    .line 1342
    :goto_35
    return-object v8

    .line 1343
    :pswitch_15
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1344
    .line 1345
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1346
    .line 1347
    if-eqz v2, :cond_51

    .line 1348
    .line 1349
    if-ne v2, v7, :cond_50

    .line 1350
    .line 1351
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1352
    .line 1353
    .line 1354
    goto :goto_36

    .line 1355
    :cond_50
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1356
    .line 1357
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    goto :goto_37

    .line 1361
    :cond_51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1362
    .line 1363
    .line 1364
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1365
    .line 1366
    check-cast v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 1367
    .line 1368
    new-instance v3, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;

    .line 1369
    .line 1370
    iget-object v4, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1371
    .line 1372
    check-cast v4, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 1373
    .line 1374
    invoke-direct {v3, v4, v1}, Landroidx/lifecycle/compose/FlowExtKt$collectAsStateWithLifecycle$1$1$1$1;-><init>(Landroidx/compose/runtime/ProduceStateScopeImpl;I)V

    .line 1375
    .line 1376
    .line 1377
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1378
    .line 1379
    iget-object v1, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1380
    .line 1381
    invoke-virtual {v1, v3, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1382
    .line 1383
    .line 1384
    move-result-object p0

    .line 1385
    if-ne p0, v0, :cond_52

    .line 1386
    .line 1387
    move-object v8, v0

    .line 1388
    goto :goto_37

    .line 1389
    :cond_52
    :goto_36
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1390
    .line 1391
    :goto_37
    return-object v8

    .line 1392
    :pswitch_16
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1393
    .line 1394
    check-cast v0, Landroidx/glance/session/SessionWorker;

    .line 1395
    .line 1396
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1397
    .line 1398
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1399
    .line 1400
    if-eqz v2, :cond_54

    .line 1401
    .line 1402
    if-ne v2, v7, :cond_53

    .line 1403
    .line 1404
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1405
    .line 1406
    .line 1407
    move-object p0, p1

    .line 1408
    goto :goto_38

    .line 1409
    :cond_53
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1410
    .line 1411
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1412
    .line 1413
    .line 1414
    move-object p0, v8

    .line 1415
    goto :goto_38

    .line 1416
    :cond_54
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1417
    .line 1418
    .line 1419
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1420
    .line 1421
    check-cast v2, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 1422
    .line 1423
    iget-object v9, v0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 1424
    .line 1425
    new-instance v11, Landroidx/glance/session/SessionWorker$doWork$2$1;

    .line 1426
    .line 1427
    const/4 v12, 0x0

    .line 1428
    invoke-direct {v11, v2, v0, v12, v6}, Landroidx/glance/session/SessionWorker$doWork$2$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1429
    .line 1430
    .line 1431
    new-instance v10, Landroidx/glance/session/SessionWorker$doWork$2$2;

    .line 1432
    .line 1433
    invoke-direct {v10, v0, v2, v12}, Landroidx/glance/session/SessionWorker$doWork$2$2;-><init>(Landroidx/glance/session/SessionWorker;Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;Lkotlin/coroutines/Continuation;)V

    .line 1434
    .line 1435
    .line 1436
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1437
    .line 1438
    new-instance v8, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 1439
    .line 1440
    const/16 v13, 0xd

    .line 1441
    .line 1442
    invoke-direct/range {v8 .. v13}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1443
    .line 1444
    .line 1445
    invoke-static {v8, p0}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    move-result-object p0

    .line 1449
    if-ne p0, v1, :cond_55

    .line 1450
    .line 1451
    move-object p0, v1

    .line 1452
    :cond_55
    :goto_38
    return-object p0

    .line 1453
    :pswitch_17
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1454
    .line 1455
    iget v1, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1456
    .line 1457
    if-eqz v1, :cond_57

    .line 1458
    .line 1459
    if-ne v1, v7, :cond_56

    .line 1460
    .line 1461
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1462
    .line 1463
    .line 1464
    goto :goto_39

    .line 1465
    :cond_56
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1466
    .line 1467
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    goto :goto_3a

    .line 1471
    :cond_57
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1472
    .line 1473
    .line 1474
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1475
    .line 1476
    check-cast v1, Landroidx/glance/session/SessionWorker;

    .line 1477
    .line 1478
    iget-object v1, v1, Landroidx/glance/session/SessionWorker;->sessionManager:Landroidx/glance/session/SessionManager;

    .line 1479
    .line 1480
    new-instance v3, Landroidx/paging/PageFetcher$flow$1;

    .line 1481
    .line 1482
    iget-object v4, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1483
    .line 1484
    check-cast v4, Landroidx/glance/appwidget/AppWidgetSession;

    .line 1485
    .line 1486
    invoke-direct {v3, v2, v4, v8}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1487
    .line 1488
    .line 1489
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1490
    .line 1491
    check-cast v1, Landroidx/glance/session/SessionManagerImpl;

    .line 1492
    .line 1493
    invoke-virtual {v1, v3, p0}, Landroidx/glance/session/SessionManagerImpl;->runWithLock(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    move-result-object p0

    .line 1497
    if-ne p0, v0, :cond_58

    .line 1498
    .line 1499
    move-object v8, v0

    .line 1500
    goto :goto_3a

    .line 1501
    :cond_58
    :goto_39
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1502
    .line 1503
    :goto_3a
    return-object v8

    .line 1504
    :pswitch_18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1505
    .line 1506
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1507
    .line 1508
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1509
    .line 1510
    if-eqz v2, :cond_5b

    .line 1511
    .line 1512
    if-ne v2, v7, :cond_5a

    .line 1513
    .line 1514
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1515
    .line 1516
    .line 1517
    :cond_59
    move-object v8, v0

    .line 1518
    goto :goto_3b

    .line 1519
    :cond_5a
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1520
    .line 1521
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1522
    .line 1523
    .line 1524
    goto :goto_3b

    .line 1525
    :cond_5b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1526
    .line 1527
    .line 1528
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1529
    .line 1530
    check-cast v2, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 1531
    .line 1532
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1533
    .line 1534
    check-cast v3, Landroidx/glance/appwidget/AppWidgetSession;

    .line 1535
    .line 1536
    iget-object v3, v3, Landroidx/glance/appwidget/AppWidgetSession;->key:Ljava/lang/String;

    .line 1537
    .line 1538
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1539
    .line 1540
    iget-object p0, v2, Landroidx/glance/session/SessionManagerImpl$scope$1;->sessions:Ljava/util/LinkedHashMap;

    .line 1541
    .line 1542
    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object p0

    .line 1546
    check-cast p0, Landroidx/glance/appwidget/AppWidgetSession;

    .line 1547
    .line 1548
    if-eqz p0, :cond_5c

    .line 1549
    .line 1550
    iget-object v2, p0, Landroidx/glance/appwidget/AppWidgetSession;->eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1551
    .line 1552
    invoke-virtual {v2, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->close(Ljava/lang/Throwable;)Z

    .line 1553
    .line 1554
    .line 1555
    iget-object v2, p0, Landroidx/glance/appwidget/AppWidgetSession;->_isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1556
    .line 1557
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1558
    .line 1559
    .line 1560
    iget-object p0, p0, Landroidx/glance/appwidget/AppWidgetSession;->parentJob:Lkotlinx/coroutines/JobImpl;

    .line 1561
    .line 1562
    invoke-virtual {p0, v8}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1563
    .line 1564
    .line 1565
    :cond_5c
    if-ne v0, v1, :cond_59

    .line 1566
    .line 1567
    move-object v8, v1

    .line 1568
    :goto_3b
    return-object v8

    .line 1569
    :pswitch_19
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1570
    .line 1571
    const-string v0, "ActionCallbackBroadcastReceiver:appWidgetId"

    .line 1572
    .line 1573
    const-string v2, "android.widget.extra.CHECKED"

    .line 1574
    .line 1575
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1576
    .line 1577
    check-cast v3, Landroid/content/Intent;

    .line 1578
    .line 1579
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1580
    .line 1581
    iget v5, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1582
    .line 1583
    if-eqz v5, :cond_5f

    .line 1584
    .line 1585
    if-ne v5, v7, :cond_5e

    .line 1586
    .line 1587
    :try_start_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1588
    .line 1589
    .line 1590
    :cond_5d
    :goto_3c
    move-object v8, v1

    .line 1591
    goto/16 :goto_3f

    .line 1592
    .line 1593
    :catchall_3
    move-exception v0

    .line 1594
    move-object p0, v0

    .line 1595
    goto/16 :goto_3e

    .line 1596
    .line 1597
    :cond_5e
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1598
    .line 1599
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1600
    .line 1601
    .line 1602
    goto/16 :goto_3f

    .line 1603
    .line 1604
    :cond_5f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1605
    .line 1606
    .line 1607
    :try_start_6
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v5

    .line 1611
    if-eqz v5, :cond_67

    .line 1612
    .line 1613
    const-string v9, "ActionCallbackBroadcastReceiver:parameters"

    .line 1614
    .line 1615
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v9

    .line 1619
    if-eqz v9, :cond_66

    .line 1620
    .line 1621
    new-array v6, v6, [Landroidx/glance/action/ActionParameters$Pair;

    .line 1622
    .line 1623
    invoke-static {v6}, Lkotlin/TuplesKt;->mutableActionParametersOf([Landroidx/glance/action/ActionParameters$Pair;)Landroidx/glance/action/MutableActionParameters;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v6

    .line 1627
    iget-object v6, v6, Landroidx/glance/action/MutableActionParameters;->map:Ljava/util/LinkedHashMap;

    .line 1628
    .line 1629
    invoke-virtual {v9}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v10

    .line 1633
    check-cast v10, Ljava/lang/Iterable;

    .line 1634
    .line 1635
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v10

    .line 1639
    :goto_3d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1640
    .line 1641
    .line 1642
    move-result v11

    .line 1643
    if-eqz v11, :cond_61

    .line 1644
    .line 1645
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v11

    .line 1649
    check-cast v11, Ljava/lang/String;

    .line 1650
    .line 1651
    new-instance v12, Landroidx/glance/action/ActionParameters$Key;

    .line 1652
    .line 1653
    invoke-direct {v12, v11}, Landroidx/glance/action/ActionParameters$Key;-><init>(Ljava/lang/String;)V

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {v9, v11}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v11

    .line 1660
    invoke-virtual {v6, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    .line 1662
    .line 1663
    if-nez v11, :cond_60

    .line 1664
    .line 1665
    invoke-interface {v6, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    .line 1667
    .line 1668
    goto :goto_3d

    .line 1669
    :cond_60
    invoke-interface {v6, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    goto :goto_3d

    .line 1673
    :cond_61
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1674
    .line 1675
    .line 1676
    move-result v9

    .line 1677
    if-eqz v9, :cond_62

    .line 1678
    .line 1679
    sget-object v9, Landroidx/glance/appwidget/action/ToggleableKt;->ToggleableStateKey:Landroidx/glance/action/ActionParameters$Key;

    .line 1680
    .line 1681
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1682
    .line 1683
    .line 1684
    move-result v2

    .line 1685
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v2

    .line 1689
    invoke-virtual {v6, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    .line 1691
    .line 1692
    invoke-interface {v6, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1693
    .line 1694
    .line 1695
    :cond_62
    const-string v2, "ActionCallbackBroadcastReceiver:callbackClass"

    .line 1696
    .line 1697
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v2

    .line 1701
    if-eqz v2, :cond_65

    .line 1702
    .line 1703
    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 1704
    .line 1705
    .line 1706
    move-result v3

    .line 1707
    if-eqz v3, :cond_64

    .line 1708
    .line 1709
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 1710
    .line 1711
    .line 1712
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1713
    .line 1714
    check-cast v0, Landroid/content/Context;

    .line 1715
    .line 1716
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1717
    .line 1718
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1719
    .line 1720
    .line 1721
    move-result-object p0

    .line 1722
    const-class v2, Landroidx/glance/appwidget/action/ActionCallback;

    .line 1723
    .line 1724
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 1725
    .line 1726
    .line 1727
    move-result v2

    .line 1728
    if-eqz v2, :cond_63

    .line 1729
    .line 1730
    invoke-virtual {p0, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 1731
    .line 1732
    .line 1733
    move-result-object p0

    .line 1734
    invoke-virtual {p0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object p0

    .line 1738
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1739
    .line 1740
    .line 1741
    check-cast p0, Landroidx/glance/appwidget/action/ActionCallback;

    .line 1742
    .line 1743
    invoke-interface {p0, v0}, Landroidx/glance/appwidget/action/ActionCallback;->onAction(Landroid/content/Context;)V

    .line 1744
    .line 1745
    .line 1746
    if-ne v1, v4, :cond_5d

    .line 1747
    .line 1748
    move-object v8, v4

    .line 1749
    goto :goto_3f

    .line 1750
    :cond_63
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 1751
    .line 1752
    const-string v0, "Provided class must implement ActionCallback."

    .line 1753
    .line 1754
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1755
    .line 1756
    .line 1757
    throw p0

    .line 1758
    :cond_64
    const-string p0, "To update the widget, the intent must contain the AppWidgetId integer using extra: ActionCallbackBroadcastReceiver:appWidgetId"

    .line 1759
    .line 1760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1761
    .line 1762
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1763
    .line 1764
    .line 1765
    throw v0

    .line 1766
    :cond_65
    const-string p0, "The intent must contain a work class name string using extra: ActionCallbackBroadcastReceiver:callbackClass"

    .line 1767
    .line 1768
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1769
    .line 1770
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1771
    .line 1772
    .line 1773
    throw v0

    .line 1774
    :cond_66
    const-string p0, "The intent must contain a parameters bundle using extra: ActionCallbackBroadcastReceiver:parameters"

    .line 1775
    .line 1776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1777
    .line 1778
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1779
    .line 1780
    .line 1781
    throw v0

    .line 1782
    :cond_67
    const-string p0, "The intent must have action parameters extras."

    .line 1783
    .line 1784
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1785
    .line 1786
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1787
    .line 1788
    .line 1789
    throw v0
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1790
    :goto_3e
    const-string v0, "GlanceAppWidget"

    .line 1791
    .line 1792
    const-string v2, "Error in Glance App Widget"

    .line 1793
    .line 1794
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1795
    .line 1796
    .line 1797
    goto/16 :goto_3c

    .line 1798
    .line 1799
    :goto_3f
    return-object v8

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    move-object p0, v0

    .line 1802
    throw p0

    .line 1803
    :pswitch_1a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1804
    .line 1805
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1806
    .line 1807
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1808
    .line 1809
    if-eqz v2, :cond_69

    .line 1810
    .line 1811
    if-ne v2, v7, :cond_68

    .line 1812
    .line 1813
    :try_start_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1814
    .line 1815
    .line 1816
    goto :goto_42

    .line 1817
    :catchall_4
    move-exception v0

    .line 1818
    move-object p0, v0

    .line 1819
    goto :goto_41

    .line 1820
    :cond_68
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1821
    .line 1822
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1823
    .line 1824
    .line 1825
    goto :goto_43

    .line 1826
    :cond_69
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1827
    .line 1828
    .line 1829
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1830
    .line 1831
    check-cast v2, Landroid/content/Context;

    .line 1832
    .line 1833
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1834
    .line 1835
    check-cast v3, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidgetReceiver;

    .line 1836
    .line 1837
    :try_start_8
    new-instance v4, Landroidx/glance/appwidget/GlanceAppWidgetManager;

    .line 1838
    .line 1839
    invoke-direct {v4, v2}, Landroidx/glance/appwidget/GlanceAppWidgetManager;-><init>(Landroid/content/Context;)V

    .line 1840
    .line 1841
    .line 1842
    sget-object v2, Landroidx/glance/session/SessionManagerKt;->GlanceSessionManager:Landroidx/glance/session/SessionManagerImpl;

    .line 1843
    .line 1844
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1845
    .line 1846
    sget-object v2, Landroidx/glance/appwidget/GlanceAppWidgetManager;->Companion:Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;

    .line 1847
    .line 1848
    sget-object v5, Landroidx/glance/appwidget/GlanceAppWidgetManager$Companion;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 1849
    .line 1850
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v2

    .line 1857
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v2

    .line 1861
    if-eqz v2, :cond_6c

    .line 1862
    .line 1863
    const-class v3, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeWidget;

    .line 1864
    .line 1865
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v3

    .line 1869
    if-eqz v3, :cond_6b

    .line 1870
    .line 1871
    iget-object v4, v4, Landroidx/glance/appwidget/GlanceAppWidgetManager;->dataStore$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 1872
    .line 1873
    invoke-virtual {v4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v4

    .line 1877
    check-cast v4, Landroidx/datastore/core/DataStore;

    .line 1878
    .line 1879
    new-instance v5, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 1880
    .line 1881
    invoke-direct {v5, v2, v3, v8}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 1882
    .line 1883
    .line 1884
    invoke-interface {v4, v5, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1885
    .line 1886
    .line 1887
    move-result-object p0

    .line 1888
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1889
    .line 1890
    if-ne p0, v2, :cond_6a

    .line 1891
    .line 1892
    goto :goto_40

    .line 1893
    :cond_6a
    move-object p0, v1

    .line 1894
    :goto_40
    if-ne p0, v0, :cond_6d

    .line 1895
    .line 1896
    move-object v8, v0

    .line 1897
    goto :goto_43

    .line 1898
    :cond_6b
    const-string p0, "no provider name"

    .line 1899
    .line 1900
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1901
    .line 1902
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1903
    .line 1904
    .line 1905
    throw v0

    .line 1906
    :cond_6c
    const-string p0, "no receiver name"

    .line 1907
    .line 1908
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1909
    .line 1910
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1911
    .line 1912
    .line 1913
    throw v0
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1914
    :goto_41
    const-string v0, "GlanceAppWidget"

    .line 1915
    .line 1916
    const-string v2, "Error in Glance App Widget"

    .line 1917
    .line 1918
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1919
    .line 1920
    .line 1921
    :catch_1
    :cond_6d
    :goto_42
    move-object v8, v1

    .line 1922
    :goto_43
    return-object v8

    .line 1923
    :pswitch_1b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1924
    .line 1925
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1926
    .line 1927
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1928
    .line 1929
    if-eqz v2, :cond_70

    .line 1930
    .line 1931
    if-ne v2, v7, :cond_6f

    .line 1932
    .line 1933
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1934
    .line 1935
    .line 1936
    :cond_6e
    move-object v8, v0

    .line 1937
    goto :goto_44

    .line 1938
    :cond_6f
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1939
    .line 1940
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1941
    .line 1942
    .line 1943
    goto :goto_44

    .line 1944
    :cond_70
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1945
    .line 1946
    .line 1947
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 1948
    .line 1949
    check-cast v2, Landroidx/glance/session/SessionManagerImpl$scope$1;

    .line 1950
    .line 1951
    iget-object v3, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1952
    .line 1953
    check-cast v3, Landroidx/glance/appwidget/AppWidgetId;

    .line 1954
    .line 1955
    iget v3, v3, Landroidx/glance/appwidget/AppWidgetId;->appWidgetId:I

    .line 1956
    .line 1957
    invoke-static {v3}, Lkotlin/UnsignedKt;->createUniqueRemoteUiName(I)Ljava/lang/String;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v3

    .line 1961
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1962
    .line 1963
    iget-object p0, v2, Landroidx/glance/session/SessionManagerImpl$scope$1;->sessions:Ljava/util/LinkedHashMap;

    .line 1964
    .line 1965
    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    .line 1967
    .line 1968
    move-result-object p0

    .line 1969
    check-cast p0, Landroidx/glance/appwidget/AppWidgetSession;

    .line 1970
    .line 1971
    if-eqz p0, :cond_71

    .line 1972
    .line 1973
    iget-object v2, p0, Landroidx/glance/appwidget/AppWidgetSession;->eventChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1974
    .line 1975
    invoke-virtual {v2, v8}, Lkotlinx/coroutines/channels/BufferedChannel;->close(Ljava/lang/Throwable;)Z

    .line 1976
    .line 1977
    .line 1978
    iget-object v2, p0, Landroidx/glance/appwidget/AppWidgetSession;->_isOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1979
    .line 1980
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1981
    .line 1982
    .line 1983
    iget-object p0, p0, Landroidx/glance/appwidget/AppWidgetSession;->parentJob:Lkotlinx/coroutines/JobImpl;

    .line 1984
    .line 1985
    invoke-virtual {p0, v8}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1986
    .line 1987
    .line 1988
    :cond_71
    if-ne v0, v1, :cond_6e

    .line 1989
    .line 1990
    move-object v8, v1

    .line 1991
    :goto_44
    return-object v8

    .line 1992
    :pswitch_1c
    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1;->this$0:Ljava/lang/Object;

    .line 1993
    .line 1994
    check-cast v0, Landroidx/paging/PageFetcher;

    .line 1995
    .line 1996
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1997
    .line 1998
    iget v2, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 1999
    .line 2000
    if-eqz v2, :cond_73

    .line 2001
    .line 2002
    if-ne v2, v7, :cond_72

    .line 2003
    .line 2004
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2005
    .line 2006
    .line 2007
    goto :goto_45

    .line 2008
    :cond_72
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2009
    .line 2010
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2011
    .line 2012
    .line 2013
    goto :goto_46

    .line 2014
    :cond_73
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2015
    .line 2016
    .line 2017
    iget-object v2, p0, Landroidx/paging/PageFetcher$flow$1;->L$0:Ljava/lang/Object;

    .line 2018
    .line 2019
    check-cast v2, Landroidx/paging/SimpleProducerScopeImpl;

    .line 2020
    .line 2021
    iget-object v3, v0, Landroidx/paging/PageFetcher;->loadRequests:Lcoil3/svg/internal/AndroidSvg;

    .line 2022
    .line 2023
    iget-object v3, v3, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 2024
    .line 2025
    check-cast v3, Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

    .line 2026
    .line 2027
    new-instance v4, Landroidx/paging/PageFetcher$flow$1$1;

    .line 2028
    .line 2029
    invoke-direct {v4, v5, v6, v8}, Landroidx/paging/PageFetcher$flow$1$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 2030
    .line 2031
    .line 2032
    new-instance v9, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    .line 2033
    .line 2034
    invoke-direct {v9, v4, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 2035
    .line 2036
    .line 2037
    new-instance v3, Landroidx/paging/PageFetcher$flow$1$2;

    .line 2038
    .line 2039
    invoke-direct {v3, v0, v8}, Landroidx/paging/PageFetcher$flow$1$2;-><init>(Landroidx/paging/PageFetcher;Lkotlin/coroutines/Continuation;)V

    .line 2040
    .line 2041
    .line 2042
    new-instance v4, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 2043
    .line 2044
    invoke-direct {v4, v9, v3, v8, v6}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2045
    .line 2046
    .line 2047
    new-instance v3, Lkotlinx/coroutines/flow/SafeFlow;

    .line 2048
    .line 2049
    invoke-direct {v3, v6, v4}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 2050
    .line 2051
    .line 2052
    new-instance v4, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 2053
    .line 2054
    invoke-direct {v4, v3, v7}, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 2055
    .line 2056
    .line 2057
    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v3

    .line 2061
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;

    .line 2062
    .line 2063
    invoke-direct {v4, v5, v0, v8}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 2064
    .line 2065
    .line 2066
    new-instance v0, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;

    .line 2067
    .line 2068
    invoke-direct {v0, v3, v4, v8, v7}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;I)V

    .line 2069
    .line 2070
    .line 2071
    invoke-static {v0}, Landroidx/paging/FlowExtKt;->simpleChannelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v0

    .line 2075
    new-instance v3, Landroidx/paging/PageFetcher$flow$1$4;

    .line 2076
    .line 2077
    invoke-direct {v3, v2}, Landroidx/paging/PageFetcher$flow$1$4;-><init>(Landroidx/paging/SimpleProducerScopeImpl;)V

    .line 2078
    .line 2079
    .line 2080
    iput v7, p0, Landroidx/paging/PageFetcher$flow$1;->label:I

    .line 2081
    .line 2082
    invoke-interface {v0, v3, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2083
    .line 2084
    .line 2085
    move-result-object p0

    .line 2086
    if-ne p0, v1, :cond_74

    .line 2087
    .line 2088
    move-object v8, v1

    .line 2089
    goto :goto_46

    .line 2090
    :cond_74
    :goto_45
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2091
    .line 2092
    :goto_46
    return-object v8

    .line 2093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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
