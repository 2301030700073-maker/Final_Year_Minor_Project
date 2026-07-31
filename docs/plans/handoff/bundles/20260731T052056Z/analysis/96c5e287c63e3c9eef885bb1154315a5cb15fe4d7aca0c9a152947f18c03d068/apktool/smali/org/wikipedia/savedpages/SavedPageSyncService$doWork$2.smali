.class public final Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public I$0:I

.field public I$1:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/util/List;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->$r8$classId:I

    .line 14
    iput-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;

    .line 9
    .line 10
    iget-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 11
    .line 12
    move-object v2, p1

    .line 13
    check-cast v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v3, p0

    .line 18
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    move-object v4, v0

    .line 21
    check-cast v4, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    move-object v5, p2

    .line 25
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;-><init>(Ljava/util/ArrayList;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_0
    move-object v5, p2

    .line 30
    new-instance v2, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;

    .line 31
    .line 32
    iget-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 33
    .line 34
    move-object v3, p1

    .line 35
    check-cast v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    iget-object p0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 38
    .line 39
    move-object v4, p0

    .line 40
    check-cast v4, Landroidx/appcompat/app/AppCompatActivity;

    .line 41
    .line 42
    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 43
    .line 44
    const/4 v7, 0x1

    .line 45
    move-object v6, v5

    .line 46
    move-object v5, v0

    .line 47
    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;-><init>(Ljava/util/ArrayList;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :pswitch_1
    move-object v5, p2

    .line 52
    new-instance p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;

    .line 53
    .line 54
    check-cast v0, Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 55
    .line 56
    invoke-direct {p0, v0, v5}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;-><init>(Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    return-object p0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    iget-object v3, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x0

    .line 14
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    iget v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 22
    .line 23
    if-eqz v10, :cond_2

    .line 24
    .line 25
    if-eq v10, v5, :cond_1

    .line 26
    .line 27
    if-ne v10, v6, :cond_0

    .line 28
    .line 29
    iget v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 30
    .line 31
    iget-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v10, Ljava/util/Iterator;

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    move-object/from16 v22, v10

    .line 39
    .line 40
    move v10, v4

    .line 41
    move-object/from16 v4, v22

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v8, 0x0

    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_1
    iget v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$1:I

    .line 52
    .line 53
    iget v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 54
    .line 55
    iget-object v11, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v11, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 58
    .line 59
    iget-object v12, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v12, Ljava/util/Iterator;

    .line 62
    .line 63
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move v13, v10

    .line 67
    move v10, v4

    .line 68
    move v4, v13

    .line 69
    move-object v13, v11

    .line 70
    move-object v11, v12

    .line 71
    move-object/from16 v12, p1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 78
    .line 79
    check-cast v4, Ljava/util/ArrayList;

    .line 80
    .line 81
    new-instance v10, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-eqz v11, :cond_4

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    move-object v12, v11

    .line 101
    check-cast v12, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 102
    .line 103
    invoke-virtual {v12}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    if-nez v12, :cond_3

    .line 108
    .line 109
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    move v10, v7

    .line 118
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_8

    .line 123
    .line 124
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    check-cast v11, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 129
    .line 130
    sget-object v12, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 131
    .line 132
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    invoke-virtual {v12}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-virtual {v11}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    iget-object v14, v11, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 145
    .line 146
    iput-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 147
    .line 148
    iput-object v11, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 149
    .line 150
    iput v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 151
    .line 152
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$1:I

    .line 153
    .line 154
    iput v5, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 155
    .line 156
    invoke-virtual {v12, v13, v14, v1}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->createList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/io/Serializable;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    if-ne v12, v0, :cond_5

    .line 161
    .line 162
    goto/16 :goto_4

    .line 163
    .line 164
    :cond_5
    move-object v13, v11

    .line 165
    move-object v11, v4

    .line 166
    move v4, v10

    .line 167
    move v10, v7

    .line 168
    :goto_2
    check-cast v12, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 169
    .line 170
    iget-object v13, v13, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 171
    .line 172
    new-instance v14, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-static {v13, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-eqz v15, :cond_6

    .line 190
    .line 191
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    check-cast v15, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 196
    .line 197
    new-instance v2, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 198
    .line 199
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object v7, v15, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 203
    .line 204
    iget-object v5, v15, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    iput-object v5, v7, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 213
    .line 214
    new-instance v16, Lorg/wikipedia/page/PageTitle;

    .line 215
    .line 216
    iget-object v5, v15, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v6, v15, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v9, v15, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 221
    .line 222
    iget-object v15, v15, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 223
    .line 224
    move-object/from16 v17, v5

    .line 225
    .line 226
    move-object/from16 v19, v6

    .line 227
    .line 228
    move-object/from16 v18, v7

    .line 229
    .line 230
    move-object/from16 v20, v9

    .line 231
    .line 232
    move-object/from16 v21, v15

    .line 233
    .line 234
    invoke-direct/range {v16 .. v21}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v5, v16

    .line 238
    .line 239
    invoke-direct {v2, v5}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    const/16 v2, 0xa

    .line 246
    .line 247
    const/4 v5, 0x1

    .line 248
    const/4 v6, 0x2

    .line 249
    const/4 v7, 0x0

    .line 250
    goto :goto_3

    .line 251
    :cond_6
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 252
    .line 253
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iput-object v11, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 262
    .line 263
    const/4 v5, 0x0

    .line 264
    iput-object v5, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 265
    .line 266
    iput v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 267
    .line 268
    iput v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$1:I

    .line 269
    .line 270
    const/4 v5, 0x2

    .line 271
    iput v5, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 272
    .line 273
    const/4 v5, 0x1

    .line 274
    invoke-virtual {v2, v12, v14, v5, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-ne v2, v0, :cond_7

    .line 279
    .line 280
    :goto_4
    move-object v8, v0

    .line 281
    goto :goto_6

    .line 282
    :cond_7
    move v10, v4

    .line 283
    move-object v4, v11

    .line 284
    :goto_5
    const/16 v2, 0xa

    .line 285
    .line 286
    const/4 v5, 0x1

    .line 287
    const/4 v6, 0x2

    .line 288
    const/4 v7, 0x0

    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :cond_8
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 294
    .line 295
    invoke-static {v0}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_9

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_9
    check-cast v3, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;

    .line 303
    .line 304
    invoke-virtual {v3}, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda1;->onUndoDeleteClicked()V

    .line 305
    .line 306
    .line 307
    :goto_6
    return-object v8

    .line 308
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 309
    .line 310
    iget v2, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 311
    .line 312
    if-eqz v2, :cond_d

    .line 313
    .line 314
    const/4 v5, 0x1

    .line 315
    if-eq v2, v5, :cond_c

    .line 316
    .line 317
    const/4 v5, 0x2

    .line 318
    if-ne v2, v5, :cond_b

    .line 319
    .line 320
    iget v2, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 321
    .line 322
    iget-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v4, Ljava/util/Iterator;

    .line 325
    .line 326
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    :cond_a
    move-object/from16 v22, v4

    .line 330
    .line 331
    move v4, v2

    .line 332
    move-object/from16 v2, v22

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_b
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    const/4 v8, 0x0

    .line 339
    goto/16 :goto_b

    .line 340
    .line 341
    :cond_c
    iget v2, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$1:I

    .line 342
    .line 343
    iget v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 344
    .line 345
    iget-object v5, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 348
    .line 349
    iget-object v6, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v6, Ljava/util/Iterator;

    .line 352
    .line 353
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    move-object/from16 v22, v6

    .line 357
    .line 358
    move v6, v2

    .line 359
    move v2, v4

    .line 360
    move-object/from16 v4, v22

    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    iget-object v2, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 367
    .line 368
    check-cast v2, Ljava/util/ArrayList;

    .line 369
    .line 370
    new-instance v4, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v5

    .line 383
    if-eqz v5, :cond_f

    .line 384
    .line 385
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    move-object v6, v5

    .line 390
    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 391
    .line 392
    invoke-virtual {v6}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 393
    .line 394
    .line 395
    move-result v6

    .line 396
    if-nez v6, :cond_e

    .line 397
    .line 398
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    goto :goto_7

    .line 402
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    const/4 v4, 0x0

    .line 407
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    if-eqz v5, :cond_11

    .line 412
    .line 413
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 418
    .line 419
    sget-object v6, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 420
    .line 421
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 422
    .line 423
    .line 424
    move-result-object v6

    .line 425
    invoke-virtual {v6}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    iput-object v2, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 430
    .line 431
    iput-object v5, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 432
    .line 433
    iput v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 434
    .line 435
    const/4 v7, 0x0

    .line 436
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$1:I

    .line 437
    .line 438
    const/4 v7, 0x1

    .line 439
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 440
    .line 441
    invoke-static {v6, v5, v1}, Lorg/wikipedia/dataclient/Service$-CC;->deleteList$default(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lorg/wikipedia/readinglist/database/ReadingList;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    if-ne v6, v0, :cond_10

    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_10
    move v6, v4

    .line 449
    move-object v4, v2

    .line 450
    move v2, v6

    .line 451
    const/4 v6, 0x0

    .line 452
    :goto_9
    sget-object v7, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 453
    .line 454
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    invoke-virtual {v7}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    iget-object v9, v5, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 463
    .line 464
    iput-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 465
    .line 466
    const/4 v10, 0x0

    .line 467
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 468
    .line 469
    iput v2, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 470
    .line 471
    iput v6, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$1:I

    .line 472
    .line 473
    const/4 v6, 0x2

    .line 474
    iput v6, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 475
    .line 476
    const/4 v6, 0x0

    .line 477
    invoke-virtual {v7, v5, v9, v6, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    if-ne v5, v0, :cond_a

    .line 482
    .line 483
    :goto_a
    move-object v8, v0

    .line 484
    goto :goto_b

    .line 485
    :cond_11
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 488
    .line 489
    invoke-static {v0}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-nez v0, :cond_12

    .line 494
    .line 495
    goto :goto_b

    .line 496
    :cond_12
    check-cast v3, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 497
    .line 498
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;->onCompleted()V

    .line 499
    .line 500
    .line 501
    :goto_b
    return-object v8

    .line 502
    :pswitch_1
    check-cast v3, Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 503
    .line 504
    iget-object v2, v3, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 505
    .line 506
    iget-object v5, v3, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 507
    .line 508
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 509
    .line 510
    iget v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 511
    .line 512
    const/16 v7, 0x8

    .line 513
    .line 514
    packed-switch v0, :pswitch_data_1

    .line 515
    .line 516
    .line 517
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    const/4 v9, 0x0

    .line 521
    goto/16 :goto_25

    .line 522
    .line 523
    :pswitch_2
    iget v3, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$1:I

    .line 524
    .line 525
    iget v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 526
    .line 527
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v0, Ljava/io/Serializable;

    .line 530
    .line 531
    move-object v1, v0

    .line 532
    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 533
    .line 534
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .line 536
    .line 537
    move-object/from16 v0, p1

    .line 538
    .line 539
    goto/16 :goto_1c

    .line 540
    .line 541
    :catchall_0
    move-exception v0

    .line 542
    goto/16 :goto_1f

    .line 543
    .line 544
    :pswitch_3
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v0, Ljava/io/Serializable;

    .line 547
    .line 548
    check-cast v0, Ljava/lang/Throwable;

    .line 549
    .line 550
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 551
    .line 552
    .line 553
    goto/16 :goto_26

    .line 554
    .line 555
    :pswitch_4
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v0, Ljava/io/Serializable;

    .line 558
    .line 559
    check-cast v0, Ljava/lang/Throwable;

    .line 560
    .line 561
    iget-object v2, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v2, Ljava/util/List;

    .line 564
    .line 565
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    goto/16 :goto_22

    .line 569
    .line 570
    :pswitch_5
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v0, Ljava/util/List;

    .line 573
    .line 574
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    goto/16 :goto_1a

    .line 578
    .line 579
    :pswitch_6
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 580
    .line 581
    check-cast v0, Ljava/util/List;

    .line 582
    .line 583
    iget-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v4, Ljava/util/List;

    .line 586
    .line 587
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_19

    .line 591
    .line 592
    :pswitch_7
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v0, Ljava/util/List;

    .line 595
    .line 596
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_17

    .line 600
    .line 601
    :pswitch_8
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 602
    .line 603
    check-cast v0, Ljava/util/List;

    .line 604
    .line 605
    iget-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v4, Ljava/util/List;

    .line 608
    .line 609
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    goto/16 :goto_16

    .line 613
    .line 614
    :pswitch_9
    iget v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 615
    .line 616
    iget-object v8, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 617
    .line 618
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 619
    .line 620
    move-object v9, v0

    .line 621
    check-cast v9, Ljava/util/List;

    .line 622
    .line 623
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 624
    .line 625
    move-object v10, v0

    .line 626
    check-cast v10, Ljava/util/List;

    .line 627
    .line 628
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 629
    .line 630
    .line 631
    move v7, v4

    .line 632
    move-object v0, v9

    .line 633
    move-object v4, v10

    .line 634
    goto/16 :goto_15

    .line 635
    .line 636
    :catchall_1
    move-exception v0

    .line 637
    move v7, v4

    .line 638
    :goto_c
    move-object v2, v9

    .line 639
    goto/16 :goto_21

    .line 640
    .line 641
    :catch_0
    move-exception v0

    .line 642
    move v7, v4

    .line 643
    move-object v4, v10

    .line 644
    goto/16 :goto_18

    .line 645
    .line 646
    :pswitch_a
    iget v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 647
    .line 648
    iget-object v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 649
    .line 650
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 651
    .line 652
    move-object v10, v0

    .line 653
    check-cast v10, Ljava/util/List;

    .line 654
    .line 655
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 656
    .line 657
    move-object v11, v0

    .line 658
    check-cast v11, Ljava/util/List;

    .line 659
    .line 660
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 661
    .line 662
    .line 663
    goto/16 :goto_13

    .line 664
    .line 665
    :catchall_2
    move-exception v0

    .line 666
    move v7, v4

    .line 667
    move-object v8, v9

    .line 668
    move-object v2, v10

    .line 669
    goto/16 :goto_21

    .line 670
    .line 671
    :catch_1
    move-exception v0

    .line 672
    move v7, v4

    .line 673
    move-object v8, v9

    .line 674
    move-object v9, v10

    .line 675
    move-object v4, v11

    .line 676
    goto/16 :goto_18

    .line 677
    .line 678
    :pswitch_b
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast v0, Ljava/util/List;

    .line 681
    .line 682
    iget-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v4, Ljava/util/List;

    .line 685
    .line 686
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    move-object/from16 v10, p1

    .line 690
    .line 691
    move-object v9, v0

    .line 692
    move-object v11, v4

    .line 693
    const/4 v4, 0x1

    .line 694
    goto/16 :goto_10

    .line 695
    .line 696
    :pswitch_c
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 697
    .line 698
    check-cast v0, Ljava/util/List;

    .line 699
    .line 700
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 701
    .line 702
    .line 703
    move-object/from16 v9, p1

    .line 704
    .line 705
    goto/16 :goto_f

    .line 706
    .line 707
    :pswitch_d
    iget-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v0, Ljava/util/List;

    .line 710
    .line 711
    iget-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast v4, Ljava/util/List;

    .line 714
    .line 715
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    move-object v9, v4

    .line 719
    move-object/from16 v4, p1

    .line 720
    .line 721
    goto/16 :goto_e

    .line 722
    .line 723
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    move-object/from16 v0, p1

    .line 727
    .line 728
    goto :goto_d

    .line 729
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 730
    .line 731
    .line 732
    sget-boolean v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 733
    .line 734
    if-eqz v0, :cond_13

    .line 735
    .line 736
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 737
    .line 738
    .line 739
    move-result-object v9

    .line 740
    goto/16 :goto_25

    .line 741
    .line 742
    :cond_13
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 743
    .line 744
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    const/4 v4, 0x1

    .line 753
    iput v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 754
    .line 755
    iget-object v9, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 756
    .line 757
    new-instance v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;

    .line 758
    .line 759
    const-wide/16 v11, 0x3

    .line 760
    .line 761
    invoke-direct {v10, v11, v12, v4, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;-><init>(JZLorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V

    .line 762
    .line 763
    .line 764
    const/4 v11, 0x0

    .line 765
    invoke-static {v9, v4, v11, v10, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    if-ne v0, v6, :cond_14

    .line 770
    .line 771
    goto/16 :goto_24

    .line 772
    .line 773
    :cond_14
    :goto_d
    check-cast v0, Ljava/util/Collection;

    .line 774
    .line 775
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    sget-object v4, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 780
    .line 781
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDownloadOnlyOverWiFiEnabled()Z

    .line 782
    .line 783
    .line 784
    move-result v4

    .line 785
    if-eqz v4, :cond_15

    .line 786
    .line 787
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 788
    .line 789
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 790
    .line 791
    .line 792
    move-result-object v4

    .line 793
    const-string v9, "connectivity"

    .line 794
    .line 795
    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v4

    .line 799
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    check-cast v4, Landroid/net/ConnectivityManager;

    .line 803
    .line 804
    const/4 v9, 0x1

    .line 805
    invoke-virtual {v4, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 806
    .line 807
    .line 808
    move-result-object v4

    .line 809
    if-eqz v4, :cond_17

    .line 810
    .line 811
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 812
    .line 813
    .line 814
    move-result v4

    .line 815
    if-eqz v4, :cond_17

    .line 816
    .line 817
    :cond_15
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isDownloadingReadingListArticlesEnabled()Z

    .line 818
    .line 819
    .line 820
    move-result v4

    .line 821
    if-eqz v4, :cond_17

    .line 822
    .line 823
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 824
    .line 825
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 826
    .line 827
    .line 828
    move-result-object v4

    .line 829
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 830
    .line 831
    .line 832
    move-result-object v4

    .line 833
    iput-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 834
    .line 835
    iput-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 836
    .line 837
    const/4 v9, 0x2

    .line 838
    iput v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 839
    .line 840
    iget-object v9, v4, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 841
    .line 842
    new-instance v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;

    .line 843
    .line 844
    const-wide/16 v11, 0x0

    .line 845
    .line 846
    const/4 v13, 0x1

    .line 847
    invoke-direct {v10, v11, v12, v13, v4}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;-><init>(JZLorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V

    .line 848
    .line 849
    .line 850
    const/4 v11, 0x0

    .line 851
    invoke-static {v9, v13, v11, v10, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    move-result-object v4

    .line 855
    if-ne v4, v6, :cond_16

    .line 856
    .line 857
    goto/16 :goto_24

    .line 858
    .line 859
    :cond_16
    move-object v9, v0

    .line 860
    :goto_e
    check-cast v4, Ljava/util/Collection;

    .line 861
    .line 862
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 863
    .line 864
    .line 865
    move-object v0, v9

    .line 866
    :cond_17
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 867
    .line 868
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 873
    .line 874
    .line 875
    move-result-object v4

    .line 876
    iput-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 877
    .line 878
    const/4 v10, 0x0

    .line 879
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 880
    .line 881
    const/4 v9, 0x3

    .line 882
    iput v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 883
    .line 884
    iget-object v9, v4, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 885
    .line 886
    new-instance v10, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;

    .line 887
    .line 888
    const-wide/16 v11, 0x1

    .line 889
    .line 890
    const/4 v13, 0x0

    .line 891
    invoke-direct {v10, v11, v12, v13, v4}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl$$ExternalSyntheticLambda24;-><init>(JZLorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V

    .line 892
    .line 893
    .line 894
    const/4 v4, 0x1

    .line 895
    invoke-static {v9, v4, v13, v10, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v9

    .line 899
    if-ne v9, v6, :cond_18

    .line 900
    .line 901
    goto/16 :goto_24

    .line 902
    .line 903
    :cond_18
    :goto_f
    check-cast v9, Ljava/util/List;

    .line 904
    .line 905
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 906
    .line 907
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 908
    .line 909
    .line 910
    move-result-object v4

    .line 911
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 912
    .line 913
    .line 914
    move-result-object v4

    .line 915
    iput-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 916
    .line 917
    iput-object v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 918
    .line 919
    const/4 v10, 0x4

    .line 920
    iput v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 921
    .line 922
    iget-object v10, v4, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 923
    .line 924
    new-instance v11, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 925
    .line 926
    invoke-direct {v11, v7, v4}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 927
    .line 928
    .line 929
    const/4 v4, 0x1

    .line 930
    const/4 v13, 0x0

    .line 931
    invoke-static {v10, v4, v13, v11, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v10

    .line 935
    if-ne v10, v6, :cond_19

    .line 936
    .line 937
    goto/16 :goto_24

    .line 938
    .line 939
    :cond_19
    move-object v11, v0

    .line 940
    :goto_10
    check-cast v10, Ljava/util/List;

    .line 941
    .line 942
    :try_start_3
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 943
    .line 944
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->offlineObjectDao()Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 949
    .line 950
    .line 951
    move-result-object v0

    .line 952
    new-instance v12, Ljava/util/ArrayList;

    .line 953
    .line 954
    const/16 v13, 0xa

    .line 955
    .line 956
    invoke-static {v10, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 957
    .line 958
    .line 959
    move-result v14

    .line 960
    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 961
    .line 962
    .line 963
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 964
    .line 965
    .line 966
    move-result-object v13

    .line 967
    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 968
    .line 969
    .line 970
    move-result v14

    .line 971
    if-eqz v14, :cond_1a

    .line 972
    .line 973
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v14

    .line 977
    check-cast v14, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 978
    .line 979
    iget-wide v14, v14, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 980
    .line 981
    new-instance v4, Ljava/lang/Long;

    .line 982
    .line 983
    invoke-direct {v4, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    .line 988
    .line 989
    const/4 v4, 0x1

    .line 990
    goto :goto_11

    .line 991
    :catchall_3
    move-exception v0

    .line 992
    move-object v2, v9

    .line 993
    move-object v8, v10

    .line 994
    const/4 v7, 0x0

    .line 995
    goto/16 :goto_21

    .line 996
    .line 997
    :catch_2
    move-exception v0

    .line 998
    move-object v8, v10

    .line 999
    move-object v4, v11

    .line 1000
    const/4 v7, 0x0

    .line 1001
    goto/16 :goto_18

    .line 1002
    .line 1003
    :cond_1a
    iput-object v11, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 1004
    .line 1005
    iput-object v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 1006
    .line 1007
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 1008
    .line 1009
    const/4 v13, 0x0

    .line 1010
    iput v13, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 1011
    .line 1012
    const/4 v4, 0x5

    .line 1013
    iput v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 1014
    .line 1015
    iget-object v4, v0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1016
    .line 1017
    new-instance v13, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 1018
    .line 1019
    const/4 v14, 0x0

    .line 1020
    invoke-direct {v13, v0, v12, v14, v7}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1021
    .line 1022
    .line 1023
    invoke-static {v4, v1, v13}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1028
    .line 1029
    if-ne v0, v4, :cond_1b

    .line 1030
    .line 1031
    goto :goto_12

    .line 1032
    :cond_1b
    move-object v0, v8

    .line 1033
    :goto_12
    if-ne v0, v6, :cond_1c

    .line 1034
    .line 1035
    goto/16 :goto_24

    .line 1036
    .line 1037
    :cond_1c
    move-object v4, v10

    .line 1038
    move-object v10, v9

    .line 1039
    move-object v9, v4

    .line 1040
    const/4 v4, 0x0

    .line 1041
    :goto_13
    :try_start_4
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1042
    .line 1043
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->offlineObjectDao()Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    new-instance v12, Ljava/util/ArrayList;

    .line 1052
    .line 1053
    const/16 v13, 0xa

    .line 1054
    .line 1055
    invoke-static {v10, v13}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1056
    .line 1057
    .line 1058
    move-result v14

    .line 1059
    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1060
    .line 1061
    .line 1062
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v13

    .line 1066
    :goto_14
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v14

    .line 1070
    if-eqz v14, :cond_1d

    .line 1071
    .line 1072
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v14

    .line 1076
    check-cast v14, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 1077
    .line 1078
    iget-wide v14, v14, Lorg/wikipedia/readinglist/database/ReadingListPage;->id:J

    .line 1079
    .line 1080
    new-instance v7, Ljava/lang/Long;

    .line 1081
    .line 1082
    invoke-direct {v7, v14, v15}, Ljava/lang/Long;-><init>(J)V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    const/16 v7, 0x8

    .line 1089
    .line 1090
    goto :goto_14

    .line 1091
    :cond_1d
    iput-object v11, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 1092
    .line 1093
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 1094
    .line 1095
    iput-object v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 1096
    .line 1097
    iput v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 1098
    .line 1099
    const/4 v7, 0x6

    .line 1100
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 1101
    .line 1102
    iget-object v7, v0, Lorg/wikipedia/offline/db/OfflineObjectDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 1103
    .line 1104
    new-instance v13, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    .line 1105
    .line 1106
    const/16 v14, 0x8

    .line 1107
    .line 1108
    const/4 v15, 0x0

    .line 1109
    invoke-direct {v13, v0, v12, v15, v14}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1110
    .line 1111
    .line 1112
    invoke-static {v7, v1, v13}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1117
    .line 1118
    if-ne v0, v7, :cond_1e

    .line 1119
    .line 1120
    move-object v8, v0

    .line 1121
    :cond_1e
    if-ne v8, v6, :cond_1f

    .line 1122
    .line 1123
    goto/16 :goto_24

    .line 1124
    .line 1125
    :cond_1f
    move v7, v4

    .line 1126
    move-object v8, v9

    .line 1127
    move-object v0, v10

    .line 1128
    move-object v4, v11

    .line 1129
    :goto_15
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 1130
    .line 1131
    .line 1132
    move-result v8

    .line 1133
    if-nez v8, :cond_21

    .line 1134
    .line 1135
    sget-object v8, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1136
    .line 1137
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v8

    .line 1141
    invoke-virtual {v8}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v8

    .line 1145
    iput-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 1146
    .line 1147
    iput-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 1148
    .line 1149
    const/4 v10, 0x0

    .line 1150
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 1151
    .line 1152
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 1153
    .line 1154
    const/4 v7, 0x7

    .line 1155
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 1156
    .line 1157
    invoke-virtual {v8, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->purgeDeletedPages(Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;)Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v7

    .line 1161
    if-ne v7, v6, :cond_20

    .line 1162
    .line 1163
    goto/16 :goto_24

    .line 1164
    .line 1165
    :cond_20
    :goto_16
    const/4 v7, 0x1

    .line 1166
    :cond_21
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v0

    .line 1170
    if-nez v0, :cond_27

    .line 1171
    .line 1172
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1173
    .line 1174
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    iput-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 1183
    .line 1184
    const/4 v10, 0x0

    .line 1185
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 1186
    .line 1187
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 1188
    .line 1189
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 1190
    .line 1191
    const/16 v14, 0x8

    .line 1192
    .line 1193
    iput v14, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 1194
    .line 1195
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateStatus(Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v0

    .line 1199
    if-ne v0, v6, :cond_22

    .line 1200
    .line 1201
    goto/16 :goto_24

    .line 1202
    .line 1203
    :cond_22
    move-object v0, v4

    .line 1204
    :goto_17
    move-object v4, v0

    .line 1205
    const/4 v7, 0x1

    .line 1206
    goto :goto_1b

    .line 1207
    :goto_18
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1214
    .line 1215
    .line 1216
    const-string v11, "Error while deleting page: "

    .line 1217
    .line 1218
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    .line 1220
    .line 1221
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1229
    .line 1230
    .line 1231
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 1232
    .line 1233
    .line 1234
    move-result v0

    .line 1235
    if-nez v0, :cond_24

    .line 1236
    .line 1237
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1238
    .line 1239
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    iput-object v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 1248
    .line 1249
    iput-object v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 1250
    .line 1251
    const/4 v10, 0x0

    .line 1252
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 1253
    .line 1254
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 1255
    .line 1256
    const/16 v7, 0x9

    .line 1257
    .line 1258
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 1259
    .line 1260
    invoke-virtual {v0, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->purgeDeletedPages(Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;)Ljava/lang/Object;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    if-ne v0, v6, :cond_23

    .line 1265
    .line 1266
    goto/16 :goto_24

    .line 1267
    .line 1268
    :cond_23
    move-object v0, v9

    .line 1269
    :goto_19
    move-object v9, v0

    .line 1270
    const/4 v7, 0x1

    .line 1271
    :cond_24
    move-object v0, v4

    .line 1272
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v4

    .line 1276
    if-nez v4, :cond_26

    .line 1277
    .line 1278
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1279
    .line 1280
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v4

    .line 1284
    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v4

    .line 1288
    iput-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 1289
    .line 1290
    const/4 v10, 0x0

    .line 1291
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 1292
    .line 1293
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 1294
    .line 1295
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 1296
    .line 1297
    const/16 v13, 0xa

    .line 1298
    .line 1299
    iput v13, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 1300
    .line 1301
    invoke-virtual {v4, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateStatus(Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;)Ljava/lang/Object;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v4

    .line 1305
    if-ne v4, v6, :cond_25

    .line 1306
    .line 1307
    goto/16 :goto_24

    .line 1308
    .line 1309
    :cond_25
    :goto_1a
    const/4 v7, 0x1

    .line 1310
    :cond_26
    move-object v4, v0

    .line 1311
    :cond_27
    :goto_1b
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 1312
    .line 1313
    .line 1314
    move-result v8

    .line 1315
    if-lez v8, :cond_28

    .line 1316
    .line 1317
    const/4 v7, 0x1

    .line 1318
    :cond_28
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    .line 1319
    .line 1320
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 1321
    .line 1322
    .line 1323
    const/4 v10, 0x0

    .line 1324
    :try_start_6
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 1325
    .line 1326
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 1327
    .line 1328
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 1329
    .line 1330
    iput-object v9, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 1331
    .line 1332
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 1333
    .line 1334
    iput v8, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$1:I

    .line 1335
    .line 1336
    const/16 v0, 0xd

    .line 1337
    .line 1338
    iput v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 1339
    .line 1340
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 1341
    .line 1342
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 1343
    .line 1344
    new-instance v10, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;

    .line 1345
    .line 1346
    const/4 v14, 0x0

    .line 1347
    invoke-direct {v10, v4, v3, v14}, Lorg/wikipedia/savedpages/SavedPageSyncService$savePages$2;-><init>(Ljava/util/List;Lorg/wikipedia/savedpages/SavedPageSyncService;Lkotlin/coroutines/Continuation;)V

    .line 1348
    .line 1349
    .line 1350
    invoke-static {v0, v10, v1}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1354
    if-ne v0, v6, :cond_29

    .line 1355
    .line 1356
    goto/16 :goto_24

    .line 1357
    .line 1358
    :cond_29
    move v4, v7

    .line 1359
    move v3, v8

    .line 1360
    move-object v1, v9

    .line 1361
    :goto_1c
    :try_start_7
    check-cast v0, Ljava/lang/Number;

    .line 1362
    .line 1363
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 1364
    .line 1365
    .line 1366
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1367
    iget-object v6, v5, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 1368
    .line 1369
    iget-boolean v7, v6, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 1370
    .line 1371
    if-eqz v7, :cond_2a

    .line 1372
    .line 1373
    iget v4, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1374
    .line 1375
    invoke-virtual {v5, v2, v3, v4}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setNotificationPaused(Landroid/content/Context;II)V

    .line 1376
    .line 1377
    .line 1378
    goto :goto_1d

    .line 1379
    :cond_2a
    invoke-virtual {v6, v2}, Lorg/wikipedia/views/NotificationWithProgressBar;->cancelNotification(Landroid/content/Context;)V

    .line 1380
    .line 1381
    .line 1382
    iget-object v2, v5, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 1383
    .line 1384
    const/4 v13, 0x0

    .line 1385
    iput-boolean v13, v2, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled:Z

    .line 1386
    .line 1387
    if-eqz v4, :cond_2b

    .line 1388
    .line 1389
    new-instance v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    .line 1390
    .line 1391
    invoke-direct {v2, v13}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    .line 1392
    .line 1393
    .line 1394
    invoke-static {v2}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 1395
    .line 1396
    .line 1397
    :cond_2b
    :goto_1d
    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1398
    .line 1399
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v9

    .line 1403
    goto/16 :goto_25

    .line 1404
    .line 1405
    :goto_1e
    move v4, v7

    .line 1406
    move v3, v8

    .line 1407
    move-object v1, v9

    .line 1408
    goto :goto_1f

    .line 1409
    :catchall_4
    move-exception v0

    .line 1410
    goto :goto_1e

    .line 1411
    :goto_1f
    iget-object v6, v5, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 1412
    .line 1413
    iget-boolean v7, v6, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 1414
    .line 1415
    if-nez v7, :cond_2c

    .line 1416
    .line 1417
    invoke-virtual {v6, v2}, Lorg/wikipedia/views/NotificationWithProgressBar;->cancelNotification(Landroid/content/Context;)V

    .line 1418
    .line 1419
    .line 1420
    iget-object v1, v5, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 1421
    .line 1422
    const/4 v13, 0x0

    .line 1423
    iput-boolean v13, v1, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled:Z

    .line 1424
    .line 1425
    if-eqz v4, :cond_2d

    .line 1426
    .line 1427
    new-instance v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    .line 1428
    .line 1429
    invoke-direct {v1, v13}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    .line 1430
    .line 1431
    .line 1432
    invoke-static {v1}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 1433
    .line 1434
    .line 1435
    goto :goto_20

    .line 1436
    :cond_2c
    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1437
    .line 1438
    invoke-virtual {v5, v2, v3, v1}, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->setNotificationPaused(Landroid/content/Context;II)V

    .line 1439
    .line 1440
    .line 1441
    :cond_2d
    :goto_20
    throw v0

    .line 1442
    :catchall_5
    move-exception v0

    .line 1443
    goto/16 :goto_c

    .line 1444
    .line 1445
    :goto_21
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 1446
    .line 1447
    .line 1448
    move-result v3

    .line 1449
    if-nez v3, :cond_2f

    .line 1450
    .line 1451
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1452
    .line 1453
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v3

    .line 1457
    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v3

    .line 1461
    const/4 v10, 0x0

    .line 1462
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 1463
    .line 1464
    iput-object v2, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 1465
    .line 1466
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 1467
    .line 1468
    iput-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 1469
    .line 1470
    iput v7, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 1471
    .line 1472
    const/16 v4, 0xb

    .line 1473
    .line 1474
    iput v4, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 1475
    .line 1476
    invoke-virtual {v3, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->purgeDeletedPages(Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;)Ljava/lang/Object;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v3

    .line 1480
    if-ne v3, v6, :cond_2e

    .line 1481
    .line 1482
    goto :goto_24

    .line 1483
    :cond_2e
    :goto_22
    const/4 v5, 0x1

    .line 1484
    goto :goto_23

    .line 1485
    :cond_2f
    move v5, v7

    .line 1486
    :goto_23
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 1487
    .line 1488
    .line 1489
    move-result v2

    .line 1490
    if-nez v2, :cond_30

    .line 1491
    .line 1492
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 1493
    .line 1494
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v2

    .line 1498
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v2

    .line 1502
    const/4 v10, 0x0

    .line 1503
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$0:Ljava/lang/Object;

    .line 1504
    .line 1505
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$1:Ljava/lang/Object;

    .line 1506
    .line 1507
    iput-object v10, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$2:Ljava/util/List;

    .line 1508
    .line 1509
    iput-object v0, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->L$3:Ljava/lang/Object;

    .line 1510
    .line 1511
    iput v5, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->I$0:I

    .line 1512
    .line 1513
    const/16 v3, 0xc

    .line 1514
    .line 1515
    iput v3, v1, Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;->label:I

    .line 1516
    .line 1517
    invoke-virtual {v2, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateStatus(Lorg/wikipedia/savedpages/SavedPageSyncService$doWork$2;)Ljava/lang/Object;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v1

    .line 1521
    if-ne v1, v6, :cond_30

    .line 1522
    .line 1523
    :goto_24
    move-object v9, v6

    .line 1524
    :goto_25
    return-object v9

    .line 1525
    :cond_30
    :goto_26
    throw v0

    .line 1526
    nop

    .line 1527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch
.end method
