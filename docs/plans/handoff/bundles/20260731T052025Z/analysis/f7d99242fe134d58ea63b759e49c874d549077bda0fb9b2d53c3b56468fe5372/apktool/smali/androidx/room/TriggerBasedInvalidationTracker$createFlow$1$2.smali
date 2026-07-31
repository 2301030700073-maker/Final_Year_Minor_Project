.class public final Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$flow:Ljava/lang/Object;

.field public final synthetic $currentVersions:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $resolvedTableNames:Ljava/lang/Object;

.field public final synthetic $tableIds:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v4, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v5, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v6, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v7, p0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 20
    .line 21
    instance-of v0, p2, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    move-object v0, p2

    .line 26
    check-cast v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;

    .line 27
    .line 28
    iget v1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    .line 29
    .line 30
    const/high16 v9, -0x80000000

    .line 31
    .line 32
    and-int v10, v1, v9

    .line 33
    .line 34
    if-eqz v10, :cond_0

    .line 35
    .line 36
    sub-int/2addr v1, v9

    .line 37
    iput v1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;

    .line 41
    .line 42
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iget-object p0, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->result:Ljava/lang/Object;

    .line 46
    .line 47
    iget p2, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    .line 48
    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    if-ne p2, v2, :cond_1

    .line 52
    .line 53
    iget-object p1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v3, v8

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 72
    .line 73
    if-eqz p0, :cond_3

    .line 74
    .line 75
    new-instance p2, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    .line 76
    .line 77
    const-string v1, "Child of the scoped flow was cancelled"

    .line 78
    .line 79
    invoke-direct {p2, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p0, p2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->L$0:Ljava/lang/Object;

    .line 86
    .line 87
    iput v2, v0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3$1$emit$1;->label:I

    .line 88
    .line 89
    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 94
    .line 95
    if-ne p0, p2, :cond_3

    .line 96
    .line 97
    move-object v3, p2

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    :goto_1
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 100
    .line 101
    new-instance p0, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;

    .line 102
    .line 103
    check-cast v5, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 104
    .line 105
    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    .line 106
    .line 107
    invoke-direct {p0, v5, v4, p1, v8}, Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest$flowCollect$3;-><init>(Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 108
    .line 109
    .line 110
    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 111
    .line 112
    invoke-static {v6, v8, p1, p0, v2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    iput-object p0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 117
    .line 118
    :goto_2
    return-object v3

    .line 119
    :pswitch_0
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsState;

    .line 120
    .line 121
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 122
    .line 123
    check-cast v4, Landroid/view/View;

    .line 124
    .line 125
    check-cast v7, Landroid/widget/ProgressBar;

    .line 126
    .line 127
    sget-object p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$Error;->INSTANCE$1:Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$Error;

    .line 128
    .line 129
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    const/16 p2, 0x8

    .line 134
    .line 135
    if-eqz p0, :cond_4

    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, p2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_6

    .line 153
    .line 154
    :cond_4
    sget-object p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$Error;->INSTANCE:Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$Error;

    .line 155
    .line 156
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_5

    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, p2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, p2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_6

    .line 178
    .line 179
    :cond_5
    instance-of p0, p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$DataLoaded;

    .line 180
    .line 181
    if-eqz p0, :cond_b

    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v7, p2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, p2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    check-cast v5, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 199
    .line 200
    check-cast p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$DataLoaded;

    .line 201
    .line 202
    iget-object p0, p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$DataLoaded;->details:Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;

    .line 203
    .line 204
    iget-object p1, p1, Lcom/fsck/k9/ui/messagedetails/MessageDetailsState$DataLoaded;->appearance:Lcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;

    .line 205
    .line 206
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDateItem;

    .line 211
    .line 212
    iget-object v2, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;->date:Ljava/lang/String;

    .line 213
    .line 214
    if-nez v2, :cond_6

    .line 215
    .line 216
    const v2, 0x7f12043e

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    :cond_6
    invoke-direct {v0, v2}, Lcom/fsck/k9/ui/messagedetails/MessageDateItem;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;->cryptoDetails:Lcom/fsck/k9/ui/messagedetails/CryptoDetails;

    .line 233
    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    new-instance v2, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem;

    .line 237
    .line 238
    invoke-direct {v2, v0}, Lcom/fsck/k9/ui/messagedetails/CryptoStatusItem;-><init>(Lcom/fsck/k9/ui/messagedetails/CryptoDetails;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_7
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/EmptyItem;

    .line 246
    .line 247
    invoke-direct {v0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    :goto_3
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;->from:Ljava/util/ArrayList;

    .line 254
    .line 255
    const v2, 0x7f12043c

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, p2, v0, v2, p1}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addParticipants(Lkotlin/collections/builders/ListBuilder;Ljava/util/List;ILcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;->sender:Ljava/util/ArrayList;

    .line 262
    .line 263
    const v2, 0x7f120440

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, p2, v0, v2, p1}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addParticipants(Lkotlin/collections/builders/ListBuilder;Ljava/util/List;ILcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;->replyTo:Ljava/util/ArrayList;

    .line 270
    .line 271
    const v2, 0x7f12043f

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, p2, v0, v2, p1}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addParticipants(Lkotlin/collections/builders/ListBuilder;Ljava/util/List;ILcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;)V

    .line 275
    .line 276
    .line 277
    new-instance v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsDividerItem;

    .line 278
    .line 279
    invoke-direct {v0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;->to:Ljava/util/ArrayList;

    .line 286
    .line 287
    const v2, 0x7f120441

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5, p2, v0, v2, p1}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addParticipants(Lkotlin/collections/builders/ListBuilder;Ljava/util/List;ILcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;->cc:Ljava/util/ArrayList;

    .line 294
    .line 295
    const v2, 0x7f12043b

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, p2, v0, v2, p1}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addParticipants(Lkotlin/collections/builders/ListBuilder;Ljava/util/List;ILcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;)V

    .line 299
    .line 300
    .line 301
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;->bcc:Ljava/util/ArrayList;

    .line 302
    .line 303
    const v2, 0x7f12043a

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5, p2, v0, v2, p1}, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->addParticipants(Lkotlin/collections/builders/ListBuilder;Ljava/util/List;ILcom/fsck/k9/ui/messagedetails/MessageDetailsAppearance;)V

    .line 307
    .line 308
    .line 309
    iget-object p0, p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsUi;->folder:Lcom/fsck/k9/ui/messagedetails/FolderInfoUi;

    .line 310
    .line 311
    if-eqz p0, :cond_8

    .line 312
    .line 313
    new-instance p1, Lcom/fsck/k9/ui/messagedetails/FolderNameItem;

    .line 314
    .line 315
    iget-object v0, p0, Lcom/fsck/k9/ui/messagedetails/FolderInfoUi;->displayName:Ljava/lang/String;

    .line 316
    .line 317
    iget-object v2, v5, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->folderIconProvider$delegate:Lkotlin/Lazy;

    .line 318
    .line 319
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Lapp/k9mail/legacy/ui/folder/FolderIconProvider;

    .line 324
    .line 325
    iget-object p0, p0, Lcom/fsck/k9/ui/messagedetails/FolderInfoUi;->type:Lnet/thunderbird/feature/mail/folder/api/FolderType;

    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-static {p0}, Lapp/k9mail/legacy/ui/folder/FolderIconProvider;->getFolderIcon(Lnet/thunderbird/feature/mail/folder/api/FolderType;)I

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/ui/messagedetails/FolderNameItem;-><init>(Ljava/lang/String;I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2, p1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    goto :goto_4

    .line 341
    :cond_8
    new-instance p0, Lcom/fsck/k9/ui/messagedetails/EmptyItem;

    .line 342
    .line 343
    invoke-direct {p0}, Lcom/mikepenz/fastadapter/items/AbstractItem;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    :goto_4
    invoke-static {p2}, Landroidx/compose/ui/unit/IntOffsetKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    invoke-virtual {p0, v1}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    :goto_5
    move-object p2, p1

    .line 358
    check-cast p2, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 359
    .line 360
    invoke-virtual {p2}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_a

    .line 365
    .line 366
    invoke-virtual {p2}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    add-int/lit8 v0, v1, 0x1

    .line 371
    .line 372
    if-ltz v1, :cond_9

    .line 373
    .line 374
    check-cast p2, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 375
    .line 376
    int-to-long v1, v1

    .line 377
    invoke-virtual {p2, v1, v2}, Lcom/mikepenz/fastadapter/items/AbstractItem;->setIdentifier(J)V

    .line 378
    .line 379
    .line 380
    move v1, v0

    .line 381
    goto :goto_5

    .line 382
    :cond_9
    invoke-static {}, Landroidx/compose/ui/unit/IntOffsetKt;->throwIndexOverflow()V

    .line 383
    .line 384
    .line 385
    throw v8

    .line 386
    :cond_a
    iget-object p1, v5, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 387
    .line 388
    invoke-static {p1, p0}, Landroidx/core/util/DebugUtils;->setNewList$default(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;Ljava/util/List;)V

    .line 389
    .line 390
    .line 391
    goto :goto_6

    .line 392
    :cond_b
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 393
    .line 394
    .line 395
    move-object v3, v8

    .line 396
    :goto_6
    return-object v3

    .line 397
    :pswitch_1
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect;

    .line 398
    .line 399
    sget-object p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$RequestCameraPermission;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$RequestCameraPermission;

    .line 400
    .line 401
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p0

    .line 405
    if-eqz p0, :cond_c

    .line 406
    .line 407
    check-cast v7, Landroidx/activity/compose/ManagedActivityResultLauncher;

    .line 408
    .line 409
    const-string p0, "android.permission.CAMERA"

    .line 410
    .line 411
    invoke-virtual {v7, p0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    goto :goto_7

    .line 415
    :cond_c
    sget-object p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$GoToAppInfoScreen;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$GoToAppInfoScreen;

    .line 416
    .line 417
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result p0

    .line 421
    if-eqz p0, :cond_d

    .line 422
    .line 423
    check-cast v4, Landroid/content/Context;

    .line 424
    .line 425
    new-instance p0, Landroid/content/Intent;

    .line 426
    .line 427
    const-string p1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 428
    .line 429
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const-string p1, "package"

    .line 433
    .line 434
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    invoke-static {p1, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 443
    .line 444
    .line 445
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .line 447
    .line 448
    goto :goto_7

    .line 449
    :catch_0
    move-exception p0

    .line 450
    const-string p1, "Error opening Android\'s app settings"

    .line 451
    .line 452
    new-array p2, v1, [Ljava/lang/Object;

    .line 453
    .line 454
    invoke-static {p0, p1, p2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_d
    instance-of p0, p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$ReturnResult;

    .line 459
    .line 460
    if-eqz p0, :cond_e

    .line 461
    .line 462
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 463
    .line 464
    check-cast p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$ReturnResult;

    .line 465
    .line 466
    iget-object p0, p1, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$ReturnResult;->contentUri:Landroid/net/Uri;

    .line 467
    .line 468
    invoke-interface {v6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    goto :goto_7

    .line 472
    :cond_e
    sget-object p0, Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$Cancel;->INSTANCE:Lapp/k9mail/feature/migration/qrcode/ui/QrCodeScannerContract$Effect$Cancel;

    .line 473
    .line 474
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result p0

    .line 478
    if-eqz p0, :cond_f

    .line 479
    .line 480
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 481
    .line 482
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    goto :goto_7

    .line 486
    :cond_f
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 487
    .line 488
    .line 489
    move-object v3, v8

    .line 490
    :goto_7
    return-object v3

    .line 491
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 492
    .line 493
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 494
    .line 495
    .line 496
    move-result p0

    .line 497
    check-cast v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 498
    .line 499
    check-cast v7, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 500
    .line 501
    if-eqz p0, :cond_10

    .line 502
    .line 503
    invoke-virtual {v7}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getHasFocus()Z

    .line 504
    .line 505
    .line 506
    move-result p0

    .line 507
    if-eqz p0, :cond_10

    .line 508
    .line 509
    check-cast v4, Landroidx/compose/ui/text/input/TextInputService;

    .line 510
    .line 511
    invoke-virtual {v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    check-cast v5, Landroidx/compose/ui/text/input/ImeOptions;

    .line 516
    .line 517
    iget-object p1, v6, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 518
    .line 519
    invoke-static {v4, v7, p0, v5, p1}, Landroidx/compose/foundation/text/BasicTextKt;->startInputSession(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/LegacyTextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/OffsetMapping;)V

    .line 520
    .line 521
    .line 522
    goto :goto_8

    .line 523
    :cond_10
    invoke-static {v7}, Landroidx/compose/foundation/text/BasicTextKt;->endInputSession(Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    .line 524
    .line 525
    .line 526
    :goto_8
    return-object v3

    .line 527
    :pswitch_3
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 528
    .line 529
    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    .line 530
    .line 531
    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    .line 532
    .line 533
    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 534
    .line 535
    instance-of p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 536
    .line 537
    if-eqz p0, :cond_11

    .line 538
    .line 539
    iget p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 540
    .line 541
    add-int/2addr p0, v2

    .line 542
    iput p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 543
    .line 544
    goto :goto_9

    .line 545
    :cond_11
    instance-of p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 546
    .line 547
    if-eqz p0, :cond_12

    .line 548
    .line 549
    iget p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 550
    .line 551
    add-int/lit8 p0, p0, -0x1

    .line 552
    .line 553
    iput p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 554
    .line 555
    goto :goto_9

    .line 556
    :cond_12
    instance-of p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 557
    .line 558
    if-eqz p0, :cond_13

    .line 559
    .line 560
    iget p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 561
    .line 562
    add-int/lit8 p0, p0, -0x1

    .line 563
    .line 564
    iput p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 565
    .line 566
    goto :goto_9

    .line 567
    :cond_13
    instance-of p0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 568
    .line 569
    if-eqz p0, :cond_14

    .line 570
    .line 571
    iget p0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 572
    .line 573
    add-int/2addr p0, v2

    .line 574
    iput p0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 575
    .line 576
    goto :goto_9

    .line 577
    :cond_14
    instance-of p0, p1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 578
    .line 579
    if-eqz p0, :cond_15

    .line 580
    .line 581
    iget p0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 582
    .line 583
    add-int/lit8 p0, p0, -0x1

    .line 584
    .line 585
    iput p0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 586
    .line 587
    goto :goto_9

    .line 588
    :cond_15
    instance-of p0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 589
    .line 590
    if-eqz p0, :cond_16

    .line 591
    .line 592
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 593
    .line 594
    add-int/2addr p0, v2

    .line 595
    iput p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 596
    .line 597
    goto :goto_9

    .line 598
    :cond_16
    instance-of p0, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 599
    .line 600
    if-eqz p0, :cond_17

    .line 601
    .line 602
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 603
    .line 604
    add-int/lit8 p0, p0, -0x1

    .line 605
    .line 606
    iput p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 607
    .line 608
    :cond_17
    :goto_9
    iget p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 609
    .line 610
    if-lez p0, :cond_18

    .line 611
    .line 612
    move p0, v2

    .line 613
    goto :goto_a

    .line 614
    :cond_18
    move p0, v1

    .line 615
    :goto_a
    iget p1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 616
    .line 617
    if-lez p1, :cond_19

    .line 618
    .line 619
    move p1, v2

    .line 620
    goto :goto_b

    .line 621
    :cond_19
    move p1, v1

    .line 622
    :goto_b
    iget p2, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 623
    .line 624
    if-lez p2, :cond_1a

    .line 625
    .line 626
    move p2, v2

    .line 627
    goto :goto_c

    .line 628
    :cond_1a
    move p2, v1

    .line 629
    :goto_c
    check-cast v5, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    .line 630
    .line 631
    iget-boolean v0, v5, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Z

    .line 632
    .line 633
    if-eq v0, p0, :cond_1b

    .line 634
    .line 635
    iput-boolean p0, v5, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isPressed:Z

    .line 636
    .line 637
    move v1, v2

    .line 638
    :cond_1b
    iget-boolean p0, v5, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Z

    .line 639
    .line 640
    if-eq p0, p1, :cond_1c

    .line 641
    .line 642
    iput-boolean p1, v5, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isHovered:Z

    .line 643
    .line 644
    move v1, v2

    .line 645
    :cond_1c
    iget-boolean p0, v5, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Z

    .line 646
    .line 647
    if-eq p0, p2, :cond_1d

    .line 648
    .line 649
    iput-boolean p2, v5, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->isFocused:Z

    .line 650
    .line 651
    goto :goto_d

    .line 652
    :cond_1d
    move v2, v1

    .line 653
    :goto_d
    if-eqz v2, :cond_1e

    .line 654
    .line 655
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    .line 656
    .line 657
    .line 658
    :cond_1e
    return-object v3

    .line 659
    :pswitch_4
    check-cast p1, [I

    .line 660
    .line 661
    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->emit([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object p0

    .line 665
    return-object p0

    .line 666
    nop

    .line 667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emit([ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$resolvedTableNames:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    iget-object v4, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$$this$flow:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    instance-of v5, v2, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    iget v6, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;

    invoke-direct {v5, v0, v2}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->result:Ljava/lang/Object;

    .line 667
    iget v6, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-object v7

    :cond_2
    :goto_1
    iget-object v0, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$1:[I

    iget-object v1, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    goto :goto_4

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 668
    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-nez v6, :cond_4

    .line 669
    invoke-static {v3}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v0, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    iput-object v1, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$1:[I

    iput v9, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    invoke-interface {v4, v2, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_8

    goto :goto_3

    .line 670
    :cond_4
    iget-object v6, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$tableIds:Ljava/lang/Object;

    check-cast v6, [I

    .line 671
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 672
    array-length v11, v3

    const/4 v12, 0x0

    move v13, v12

    :goto_2
    if-ge v12, v11, :cond_7

    aget-object v14, v3, v12

    add-int/lit8 v15, v13, 0x1

    move-object/from16 p2, v7

    .line 673
    iget-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v7, :cond_6

    check-cast v7, [I

    aget v13, v6, v13

    aget v7, v7, v13

    .line 674
    aget v13, v1, v13

    if-eq v7, v13, :cond_5

    .line 675
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p2

    move v13, v15

    goto :goto_2

    .line 676
    :cond_6
    const-string v0, "Required value was null."

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    return-object p2

    .line 677
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 678
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    iput-object v0, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$0:Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    iput-object v1, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->L$1:[I

    iput v8, v5, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2$emit$1;->label:I

    invoke-interface {v4, v2, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_8

    :goto_3
    return-object v10

    .line 679
    :cond_8
    :goto_4
    iget-object v0, v0, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;->$currentVersions:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 680
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
