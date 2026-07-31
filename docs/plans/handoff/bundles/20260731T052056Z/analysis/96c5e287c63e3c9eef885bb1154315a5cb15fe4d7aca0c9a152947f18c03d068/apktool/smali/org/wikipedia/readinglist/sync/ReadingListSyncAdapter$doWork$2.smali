.class public final Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public I$0:I

.field public I$1:I

.field public I$2:I

.field public I$3:I

.field public I$4:I

.field public I$5:I

.field public I$6:I

.field public I$7:I

.field public I$8:I

.field public L$0:Landroid/os/Bundle;

.field public L$1:Ljava/util/Set;

.field public L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$11:Ljava/util/Iterator;

.field public L$12:Ljava/lang/Object;

.field public L$13:Ljava/lang/Object;

.field public L$14:Ljava/lang/Object;

.field public L$15:Ljava/lang/Object;

.field public L$16:Ljava/lang/Object;

.field public L$17:Lorg/wikipedia/readinglist/database/ReadingList;

.field public L$18:Ljava/util/Set;

.field public L$2:Ljava/util/Set;

.field public L$20:Ljava/util/Iterator;

.field public L$3:Ljava/lang/Object;

.field public L$4:Ljava/lang/Object;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Ljava/lang/String;

.field public L$8:Ljava/lang/String;

.field public L$9:Ljava/io/Serializable;

.field public Z$0:Z

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->this$0:Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->this$0:Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;-><init>(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 48

    move-object/from16 v1, p0

    .line 1
    const-string v0, "Fetching changes from server, since "

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->this$0:Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;

    iget-object v3, v2, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v9, ""

    const-string v11, "no-such-project"

    const-string v12, "entry-limit"

    const-string v13, "duplicate-page"

    const-string v14, "Creating new remote page "

    const-string v16, "Finished sync of reading lists."

    const-string v6, "forceFullSync"

    const-string v7, "refreshing"

    const-string v15, "retrying"

    const/16 v19, 0x1

    const/4 v10, 0x0

    packed-switch v5, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    return-object v10

    :pswitch_0
    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    check-cast v8, Ljava/lang/Throwable;

    iget-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iget-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v9, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    iget-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v10, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    iget-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v11, Lorg/wikipedia/dataclient/WikiSite;

    iget-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v11, Ljava/util/Set;

    iget-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v12, Ljava/util/Set;

    iget-object v1, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    move-object/from16 v27, v11

    move-object/from16 v29, v12

    move-object v11, v15

    move-object v12, v6

    goto/16 :goto_141

    :catchall_0
    move-exception v0

    move/from16 v27, v4

    move-object v4, v3

    move/from16 v3, v27

    move-object/from16 v27, v11

    move-object/from16 v29, v12

    move-object v11, v15

    move-object v12, v6

    goto/16 :goto_143

    :pswitch_1
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    iget v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v17, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    move-object/from16 v18, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    check-cast v2, Ljava/util/List;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v23, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v24, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v25, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v2, Ljava/util/Set;

    move-object/from16 v26, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v2, Ljava/util/Set;

    move-object/from16 v27, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v30, v8

    move-object v8, v2

    move-object v2, v4

    move-object v4, v12

    move/from16 v12, v30

    move-object/from16 v39, v3

    move-object/from16 v30, v6

    move-object/from16 v33, v7

    move-object v3, v13

    move-object/from16 v35, v14

    move-object/from16 v32, v15

    move-object/from16 v7, v21

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v6, v24

    move-object/from16 v31, v27

    move v15, v10

    move/from16 v21, v17

    move-object/from16 v17, v26

    move v10, v5

    move-object v5, v11

    move v11, v9

    move-object/from16 v9, v25

    goto/16 :goto_112

    :catchall_1
    move-exception v0

    move-object v12, v6

    move v6, v8

    move v5, v10

    move-object v11, v15

    move-object/from16 v8, v22

    move-object/from16 v13, v23

    move-object/from16 v10, v24

    move-object/from16 v29, v27

    move-object v15, v4

    move-object/from16 v27, v26

    move-object v4, v3

    move v3, v9

    move-object/from16 v9, v25

    goto/16 :goto_13e

    :catch_0
    move-exception v0

    move-object v4, v3

    move-object v12, v6

    move/from16 v35, v8

    move/from16 v36, v9

    move-object v11, v15

    move-object/from16 v14, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move-object/from16 v29, v27

    move-object/from16 v27, v26

    goto/16 :goto_147

    :pswitch_2
    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iget v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iget v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v17, v2

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v18, v2

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    check-cast v0, Ljava/util/List;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/List;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/List;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/Iterator;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    check-cast v0, Ljava/util/List;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    move/from16 v25, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lorg/wikipedia/dataclient/WikiSite;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    move-object/from16 v30, v0

    check-cast v30, Ljava/util/Set;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/Set;

    move-object/from16 v32, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v0, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v32

    move-object/from16 v32, v15

    move v15, v0

    move-object/from16 v39, v3

    move v0, v5

    move-object/from16 v33, v7

    move-object/from16 v3, v23

    move-object/from16 v7, v24

    move-object v5, v2

    move-object v2, v4

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v4, v26

    move-object/from16 v11, v30

    move-object/from16 v30, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v12

    goto/16 :goto_101

    :catchall_2
    move-exception v0

    move/from16 v33, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v32

    move-object/from16 v32, v15

    move/from16 v15, v33

    move-object/from16 v39, v3

    move-object/from16 v33, v7

    move/from16 v3, v17

    move-object/from16 v7, v21

    move-object/from16 v17, v30

    move-object/from16 v30, v6

    move-object/from16 v21, v12

    move/from16 v6, v18

    move-object/from16 v12, v24

    move/from16 v18, v5

    move-object/from16 v24, v13

    move-object/from16 v13, v27

    move-object v5, v2

    move-object v2, v4

    move/from16 v27, v10

    move-object/from16 v10, v23

    move-object/from16 v4, v26

    move-object/from16 v26, v28

    move-object/from16 v23, v11

    move v11, v9

    move-object/from16 v9, v29

    goto/16 :goto_106

    :pswitch_3
    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iget v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iget v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v17, v2

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v18, v2

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/List;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/List;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/Iterator;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    check-cast v0, Ljava/util/List;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    move/from16 v25, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lorg/wikipedia/dataclient/WikiSite;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    move-object/from16 v30, v0

    check-cast v30, Ljava/util/Set;

    iget-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/Set;

    move-object/from16 v32, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v0, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v32

    move-object/from16 v32, v15

    move v15, v0

    move-object/from16 v39, v3

    move-object/from16 v33, v7

    move-object/from16 v7, v22

    move-object/from16 v3, v23

    move-object/from16 v0, v24

    move/from16 v22, v8

    move-object/from16 v23, v11

    move-object/from16 v24, v13

    move-object/from16 v11, v30

    move-object v8, v4

    move-object/from16 v30, v6

    move-object/from16 v6, v21

    move-object/from16 v4, v26

    move-object/from16 v21, v12

    goto/16 :goto_f6

    :pswitch_4
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iget v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v17, v2

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v18, v2

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v21, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    move-object/from16 v22, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    check-cast v2, Ljava/util/List;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v25, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v26, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v27, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v28, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v2, Ljava/util/Set;

    move-object/from16 v29, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v2, Ljava/util/Set;

    move-object/from16 v30, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v31, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v31

    move-object/from16 v39, v3

    move-object/from16 v33, v7

    move-object/from16 v32, v15

    move-object/from16 v3, v26

    move-object/from16 v31, v30

    move-object v7, v4

    move-object/from16 v30, v6

    move v15, v10

    move/from16 v6, v18

    move-object/from16 v4, v23

    move-object/from16 v10, v28

    move-object/from16 v23, v11

    move/from16 v11, v21

    move-object/from16 v21, v12

    move v12, v0

    move/from16 v0, v17

    move/from16 v17, v5

    move-object v5, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v8

    move v8, v9

    move-object/from16 v9, v27

    goto/16 :goto_df

    :catchall_3
    move-exception v0

    move-object v12, v6

    move v6, v10

    move-object v11, v15

    move/from16 v5, v21

    move-object/from16 v8, v24

    move-object/from16 v13, v25

    move-object/from16 v10, v26

    move-object/from16 v9, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v30

    move-object v15, v4

    move-object v4, v3

    move/from16 v3, v18

    goto/16 :goto_13e

    :catch_1
    move-exception v0

    move-object v4, v3

    move-object v12, v6

    move/from16 v35, v10

    move-object v11, v15

    move/from16 v36, v18

    move/from16 v10, v21

    :goto_0
    move-object/from16 v14, v24

    move-object/from16 v13, v25

    move-object/from16 v5, v26

    move-object/from16 v27, v29

    move-object/from16 v29, v30

    goto/16 :goto_147

    :pswitch_5
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iget v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v21, v2

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v22, v2

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v23, v2

    iget v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v24, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$20:Ljava/util/Iterator;

    move-object/from16 v25, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    check-cast v2, Ljava/util/Set;

    move-object/from16 v26, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    move-object/from16 v27, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    move-object/from16 v28, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;

    move-object/from16 v29, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    move-object/from16 v30, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    check-cast v2, Ljava/util/List;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v31, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v32, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v33, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v34, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v35, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move-object/from16 v36, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v2, Ljava/util/Set;

    move-object/from16 v37, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v2, Ljava/util/Set;

    move-object/from16 v38, v2

    iget-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v39, v4

    move-object v4, v2

    move-object/from16 v2, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v32

    move-object/from16 v32, v15

    move-object/from16 v15, v39

    move/from16 v46, v0

    move-object/from16 v39, v3

    move/from16 v45, v21

    move/from16 v3, v23

    move-object/from16 v0, v30

    move-object/from16 v30, v6

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move-object/from16 v12, v27

    move-object/from16 v6, v29

    move-object/from16 v11, v31

    move/from16 v29, v9

    move/from16 v31, v10

    move/from16 v27, v22

    move-object/from16 v9, v35

    move-object/from16 v10, v36

    move-object/from16 v22, v8

    move/from16 v8, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v33

    move-object/from16 v33, v7

    move-object/from16 v7, v28

    move/from16 v28, v5

    move-object/from16 v5, v34

    goto/16 :goto_c3

    :catchall_4
    move-exception v0

    move-object v12, v6

    move-object v11, v15

    move/from16 v6, v22

    move/from16 v5, v24

    move-object/from16 v8, v32

    move-object/from16 v13, v33

    move-object/from16 v10, v34

    move-object/from16 v9, v35

    move-object/from16 v27, v37

    move-object/from16 v29, v38

    :goto_1
    move-object v15, v4

    move-object v4, v3

    move/from16 v3, v23

    goto/16 :goto_13e

    :catch_2
    move-exception v0

    move-object v4, v3

    move-object v12, v6

    move-object v11, v15

    move/from16 v35, v22

    move/from16 v36, v23

    move/from16 v10, v24

    :goto_2
    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v5, v34

    move-object/from16 v27, v37

    move-object/from16 v29, v38

    goto/16 :goto_147

    :pswitch_6
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    iget v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v22, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    move-object/from16 v23, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v32, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v32

    move-object/from16 v39, v3

    move-object v3, v5

    move-object/from16 v33, v7

    move-object/from16 v32, v15

    move/from16 v37, v22

    move-object/from16 v5, v27

    move-object/from16 v27, v30

    move-object v7, v2

    move-object v15, v4

    move-object/from16 v30, v6

    move-object/from16 v22, v8

    move/from16 v8, v21

    move-object/from16 v6, v23

    move-object/from16 v4, v26

    move-object/from16 v2, v31

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move-object/from16 v11, v24

    move v12, v10

    move-object/from16 v24, v13

    move-object/from16 v10, v29

    move v13, v9

    move-object/from16 v9, v28

    goto/16 :goto_ac

    :catchall_5
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move v6, v9

    move-object v11, v15

    move/from16 v5, v22

    move-object/from16 v8, v25

    move-object/from16 v13, v26

    move-object/from16 v9, v28

    move-object/from16 v29, v31

    move-object v15, v4

    move-object v4, v3

    move v3, v10

    move-object/from16 v10, v27

    move-object/from16 v27, v30

    goto/16 :goto_13e

    :catch_3
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move/from16 v35, v9

    move/from16 v36, v10

    move-object v11, v15

    move/from16 v10, v22

    move-object/from16 v14, v25

    move-object/from16 v13, v26

    move-object/from16 v5, v27

    :goto_3
    move-object/from16 v27, v30

    move-object/from16 v29, v31

    goto/16 :goto_147

    :pswitch_7
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    iget v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v22, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    move-object/from16 v23, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v32, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v32

    move-object/from16 v39, v3

    move-object v3, v5

    move-object/from16 v33, v7

    move-object/from16 v32, v15

    move/from16 v37, v22

    move-object/from16 v5, v27

    move-object/from16 v27, v30

    move-object v15, v2

    move-object v7, v4

    move-object/from16 v30, v6

    move-object/from16 v22, v8

    move/from16 v8, v21

    move-object/from16 v6, v23

    move-object/from16 v4, v26

    move-object/from16 v2, v31

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move-object/from16 v11, v24

    move v12, v10

    move-object/from16 v24, v13

    move-object/from16 v10, v29

    move v13, v9

    move-object/from16 v9, v28

    goto/16 :goto_a9

    :pswitch_8
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$8:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v22, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v23, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v24, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v25, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v26, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Iterable;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v32, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v33, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v34, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v35, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v36, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v37, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v38, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v39, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v40, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object/from16 v44, v28

    move-object/from16 v28, v2

    move-object/from16 v2, v35

    move/from16 v35, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v3

    move-object v3, v5

    move-object/from16 v5, v44

    move-object/from16 v44, v7

    move-object v7, v4

    move/from16 v4, v27

    move/from16 v27, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v34

    move/from16 v34, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v33

    move-object/from16 v33, v44

    move/from16 v44, v22

    move-object/from16 v22, v8

    move/from16 v8, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v31

    move/from16 v31, v44

    move/from16 v44, v0

    move/from16 v0, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v30

    move-object/from16 v30, v6

    move-object/from16 v6, v29

    move/from16 v29, v10

    move-object/from16 v10, v32

    move-object/from16 v32, v15

    move-object/from16 v15, v38

    goto/16 :goto_91

    :catchall_6
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v6, v25

    move/from16 v5, v27

    move-object/from16 v8, v34

    move-object/from16 v13, v35

    move-object/from16 v10, v36

    move-object/from16 v9, v37

    move-object/from16 v27, v39

    move-object/from16 v29, v40

    move-object v15, v4

    move-object v4, v3

    move/from16 v3, v26

    goto/16 :goto_13e

    :catch_4
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v10, v27

    move-object/from16 v14, v34

    move-object/from16 v13, v35

    move-object/from16 v5, v36

    move-object/from16 v27, v39

    move-object/from16 v29, v40

    move/from16 v35, v25

    move/from16 v36, v26

    goto/16 :goto_147

    :pswitch_9
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v22, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v23, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v24, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v25, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v32, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v33, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v34, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v35, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v36, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v37, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v38, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v39, v3

    move-object/from16 v42, v5

    move-object/from16 v26, v9

    move/from16 v3, v21

    move-object/from16 v5, v28

    move-object/from16 v43, v33

    move-object/from16 v28, v2

    move-object/from16 v33, v7

    move-object/from16 v21, v12

    move/from16 v2, v22

    move-object/from16 v12, v29

    move-object/from16 v29, v38

    move-object v7, v4

    move-object/from16 v22, v8

    move v4, v10

    move/from16 v38, v24

    move/from16 v10, v25

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v13, v27

    move-object/from16 v14, v32

    move-object/from16 v27, v37

    move-object/from16 v32, v15

    move/from16 v37, v23

    move-object/from16 v15, v30

    move-object/from16 v30, v6

    move-object/from16 v23, v11

    goto/16 :goto_84

    :catchall_7
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v6, v24

    move/from16 v5, v26

    move-object/from16 v8, v32

    move-object/from16 v13, v33

    move-object/from16 v10, v34

    move-object/from16 v9, v35

    move-object/from16 v27, v37

    move-object/from16 v29, v38

    :goto_4
    move-object v15, v4

    move-object v4, v3

    move/from16 v3, v25

    goto/16 :goto_13e

    :catch_5
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v35, v24

    move/from16 v36, v25

    move/from16 v10, v26

    goto/16 :goto_2

    :pswitch_a
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v22, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v23, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v24, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v32, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v33, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v34, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v35, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v36, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v37, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v38, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object/from16 v39, v3

    move-object/from16 v3, v27

    move-object/from16 v27, v37

    move/from16 v37, v23

    move-object/from16 v23, v11

    move/from16 v11, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v9

    move/from16 v9, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v32

    move-object/from16 v32, v15

    move-object/from16 v15, v30

    move-object/from16 v30, v6

    move-object/from16 v6, v36

    move/from16 v36, v22

    move-object/from16 v22, v8

    move/from16 v8, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v29

    move-object/from16 v29, v38

    move-object/from16 v38, v33

    move-object/from16 v33, v7

    move-object v7, v4

    move-object/from16 v4, v28

    move-object/from16 v28, v2

    move-object/from16 v2, p1

    goto/16 :goto_66

    :catchall_8
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v6, v23

    move/from16 v5, v25

    move-object/from16 v8, v32

    move-object/from16 v13, v33

    move-object/from16 v10, v34

    move-object/from16 v9, v35

    move-object/from16 v27, v37

    move-object/from16 v29, v38

    move-object v15, v4

    move-object v4, v3

    move/from16 v3, v24

    goto/16 :goto_13e

    :catch_6
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v35, v23

    move/from16 v36, v24

    move/from16 v10, v25

    goto/16 :goto_2

    :pswitch_b
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v22, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v23, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v24, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v32, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v33, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v34, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v35, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v36, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v37, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v38, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object/from16 v39, v28

    move-object/from16 v28, v2

    move-object v2, v5

    move-object/from16 v5, v26

    move-object/from16 v26, v9

    move v9, v10

    move-object v10, v4

    move-object/from16 v4, v39

    move-object/from16 v39, v3

    move/from16 v41, v24

    move-object/from16 v3, v33

    move-object/from16 v33, v7

    move-object/from16 v24, v13

    move-object/from16 v13, v27

    move-object/from16 v27, v37

    move-object/from16 v7, p1

    move/from16 v37, v23

    move-object/from16 v23, v11

    move/from16 v11, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v32

    move-object/from16 v32, v15

    move-object/from16 v15, v30

    move-object/from16 v30, v6

    move-object/from16 v6, v36

    move/from16 v36, v22

    move-object/from16 v22, v8

    move/from16 v8, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v29

    move-object/from16 v29, v38

    goto/16 :goto_5c

    :pswitch_c
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v22, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v23, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v32, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v33, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v34, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v35, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    move/from16 v36, v22

    move-object/from16 v22, v8

    move/from16 v8, v36

    move-object/from16 v39, v3

    move/from16 v36, v21

    move/from16 v3, v23

    move/from16 v38, v24

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move-object/from16 v24, v13

    move-object/from16 v13, v25

    move-object/from16 v12, v26

    move-object/from16 v11, v28

    move-object/from16 v28, v2

    move-object v2, v5

    move-object/from16 v26, v9

    move-object/from16 v25, v14

    move-object/from16 v14, v29

    move-object/from16 v9, v32

    move-object/from16 v5, v33

    move-object/from16 v29, v35

    move-object/from16 v33, v7

    move-object/from16 v32, v15

    move-object/from16 v15, v27

    move-object/from16 v35, v30

    move-object/from16 v27, v34

    move-object v7, v4

    move-object/from16 v30, v6

    goto/16 :goto_51

    :catchall_9
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v6, v22

    move/from16 v5, v24

    move-object/from16 v8, v29

    move-object/from16 v13, v30

    move-object/from16 v10, v31

    move-object/from16 v9, v32

    move-object/from16 v27, v34

    move-object/from16 v29, v35

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v36, v23

    move/from16 v10, v24

    move-object/from16 v14, v29

    move-object/from16 v13, v30

    move-object/from16 v5, v31

    move-object/from16 v27, v34

    move-object/from16 v29, v35

    move/from16 v35, v22

    goto/16 :goto_147

    :pswitch_d
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v22, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v23, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v24, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v25, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v32, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v33, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v34, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v35, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v36, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v37, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    move/from16 v39, v22

    move-object/from16 v22, v8

    move/from16 v8, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v27

    move-object/from16 v27, v36

    move/from16 v36, v39

    move-object/from16 v39, v3

    move-object/from16 v3, v33

    move-object/from16 v33, v7

    move/from16 v7, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v30

    move-object/from16 v30, v6

    move-object/from16 v6, v35

    move/from16 v35, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v28

    move-object/from16 v28, v2

    move/from16 v2, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v34

    move/from16 v34, v0

    move v0, v10

    move/from16 v10, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v31

    move-object/from16 v31, v4

    move-object/from16 v4, v32

    move-object/from16 v32, v15

    move-object/from16 v15, v29

    move-object/from16 v29, v37

    goto/16 :goto_4f

    :catchall_a
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v6, v24

    move/from16 v5, v26

    move-object/from16 v8, v31

    move-object/from16 v13, v32

    move-object/from16 v10, v33

    move-object/from16 v9, v34

    move-object/from16 v27, v36

    move-object/from16 v29, v37

    goto/16 :goto_4

    :catch_8
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v35, v24

    move/from16 v10, v26

    move-object/from16 v14, v31

    move-object/from16 v13, v32

    move-object/from16 v5, v33

    move-object/from16 v27, v36

    move-object/from16 v29, v37

    move/from16 v36, v25

    goto/16 :goto_147

    :pswitch_e
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v22, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v23, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v24, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v25, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v32, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v33, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v34, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v35, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v36, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v37, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v38, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v39, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    move/from16 v40, v22

    move-object/from16 v22, v8

    move/from16 v8, v40

    move/from16 v40, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v27

    move-object/from16 v27, v38

    move/from16 v38, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v30

    move-object/from16 v30, v6

    move-object/from16 v6, v29

    move-object/from16 v29, v39

    move-object/from16 v39, v3

    move-object v3, v5

    move-object/from16 v5, v35

    move/from16 v35, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v33

    move-object/from16 v33, v7

    move-object v7, v4

    move/from16 v4, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v32

    move-object/from16 v32, v15

    move-object/from16 v15, v31

    move/from16 v31, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v28

    move-object/from16 v28, v2

    move-object/from16 v2, p1

    goto/16 :goto_46

    :catchall_b
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v6, v24

    move/from16 v5, v26

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v10, v35

    move-object/from16 v9, v36

    move-object/from16 v27, v38

    move-object/from16 v29, v39

    goto/16 :goto_4

    :catch_9
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v36, v25

    move/from16 v10, v26

    move-object/from16 v14, v33

    move-object/from16 v13, v34

    move-object/from16 v5, v35

    move-object/from16 v27, v38

    move-object/from16 v29, v39

    move/from16 v35, v24

    goto/16 :goto_147

    :pswitch_f
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v21, v5

    iget-boolean v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    move/from16 v22, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v23, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    move-object/from16 v32, v28

    move-object/from16 v28, v2

    move-object/from16 v2, v32

    move-object/from16 v34, v3

    move-object/from16 v33, v7

    move v7, v10

    move-object/from16 v32, v15

    move-object/from16 v15, v23

    move-object/from16 v3, v25

    move-object/from16 v23, v11

    move-object/from16 v25, v14

    move/from16 v11, v22

    move-object/from16 v14, v26

    move-object/from16 v22, v8

    move-object/from16 v26, v9

    move/from16 v8, v21

    move-object/from16 v9, v29

    move-object/from16 v29, v31

    move-object/from16 v21, v12

    move-object/from16 v12, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v27

    move-object/from16 v27, v30

    move-object/from16 v30, v6

    move-object/from16 v6, p1

    goto/16 :goto_30

    :catchall_c
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move-object v11, v15

    move/from16 v6, v21

    move/from16 v5, v22

    move-object/from16 v8, v26

    move-object/from16 v13, v27

    move-object/from16 v9, v29

    move-object/from16 v27, v30

    move-object/from16 v29, v31

    move-object v15, v4

    move-object v4, v3

    move v3, v10

    :goto_5
    move-object/from16 v10, v28

    goto/16 :goto_13e

    :catch_a
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move/from16 v36, v10

    move-object v11, v15

    move/from16 v35, v21

    move/from16 v10, v22

    move-object/from16 v14, v26

    move-object/from16 v13, v27

    move-object/from16 v5, v28

    goto/16 :goto_3

    :pswitch_10
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v21, v5

    iget-boolean v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    move/from16 v22, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v23, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    move-object/from16 v32, v28

    move-object/from16 v28, v2

    move-object v2, v5

    move-object/from16 v5, v32

    move-object/from16 v34, v3

    move-object/from16 v33, v7

    move-object/from16 v32, v15

    move/from16 v7, v21

    move-object/from16 v15, v23

    move-object/from16 v3, p1

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move/from16 v11, v22

    move-object/from16 v12, v24

    move-object/from16 v22, v8

    move-object/from16 v24, v13

    move-object/from16 v13, v27

    move-object/from16 v27, v30

    move-object/from16 v30, v6

    move v6, v10

    move-object/from16 v10, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v29

    move-object/from16 v29, v31

    goto/16 :goto_26

    :pswitch_11
    iget v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v21, v5

    iget-boolean v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    move/from16 v22, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v23, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v31, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_11
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    move-object/from16 v32, v28

    move-object/from16 v28, v2

    move-object v2, v5

    move-object/from16 v5, v32

    move-object/from16 v34, v3

    move-object/from16 v33, v7

    move-object/from16 v32, v15

    move/from16 v7, v21

    move-object/from16 v15, v23

    move-object/from16 v3, p1

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move/from16 v11, v22

    move-object/from16 v12, v24

    move-object/from16 v22, v8

    move-object/from16 v24, v13

    move-object/from16 v13, v27

    move-object/from16 v27, v30

    move-object/from16 v30, v6

    move v6, v10

    move-object/from16 v10, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v29

    move-object/from16 v29, v31

    goto/16 :goto_20

    :pswitch_12
    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v22, v5

    iget-boolean v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    move/from16 v23, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v30, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_12
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    move-object/from16 v31, v8

    move-object v8, v5

    move/from16 v5, v22

    move-object/from16 v22, v31

    move/from16 v31, v23

    move-object/from16 v23, v11

    move/from16 v11, v31

    move/from16 v31, v21

    move-object/from16 v21, v12

    move/from16 v12, v31

    move-object/from16 v31, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v31

    move-object/from16 v31, v28

    move-object/from16 v28, v2

    move-object/from16 v2, v26

    move-object/from16 v26, v9

    move-object/from16 v9, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v6

    move v6, v10

    goto/16 :goto_10

    :catchall_d
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move v6, v10

    move-object v11, v15

    move/from16 v5, v23

    move-object/from16 v8, v24

    move-object/from16 v13, v25

    move-object/from16 v10, v26

    move-object/from16 v9, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v30

    :goto_6
    move-object v15, v4

    move-object v4, v3

    move/from16 v3, v22

    goto/16 :goto_13e

    :catch_b
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move/from16 v35, v10

    move-object v11, v15

    move/from16 v36, v22

    move/from16 v10, v23

    goto/16 :goto_0

    :pswitch_13
    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v22, v5

    iget-boolean v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    move/from16 v23, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_13
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/util/concurrent/CancellationException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    move-object/from16 v30, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v30

    move-object/from16 v30, v6

    move v6, v10

    move/from16 v10, v22

    move-object/from16 v22, v8

    move/from16 v8, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v26

    move-object/from16 v26, v9

    move/from16 v9, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v28

    move-object/from16 v28, v2

    move-object/from16 v2, p1

    goto/16 :goto_e

    :catchall_e
    move-exception v0

    move-object v2, v5

    move-object v12, v6

    move v6, v10

    move-object v11, v15

    move/from16 v5, v23

    move-object/from16 v8, v24

    move-object/from16 v13, v25

    move-object/from16 v10, v26

    move-object/from16 v9, v27

    move-object/from16 v27, v28

    goto/16 :goto_6

    :catch_c
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object v12, v6

    move/from16 v35, v10

    move-object v11, v15

    move/from16 v36, v22

    move/from16 v10, v23

    move-object/from16 v14, v24

    move-object/from16 v13, v25

    move-object/from16 v5, v26

    move-object/from16 v27, v28

    goto/16 :goto_147

    :pswitch_14
    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v22, v5

    iget-boolean v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    move/from16 v23, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/util/concurrent/CancellationException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    move-object/from16 v30, v28

    move-object/from16 v28, v2

    move-object v2, v5

    move-object/from16 v5, v30

    move-object/from16 v30, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v30

    move-object/from16 v30, v6

    move v6, v10

    move/from16 v10, v22

    move-object/from16 v22, v8

    move/from16 v8, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v26

    move-object/from16 v26, v9

    move/from16 v9, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v27

    goto/16 :goto_d

    :pswitch_15
    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iget v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v21, v5

    iget v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    move/from16 v22, v5

    iget-boolean v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    move/from16 v23, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v24, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v25, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    move-object/from16 v26, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    move-object/from16 v27, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v28, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    check-cast v5, Ljava/util/Set;

    move-object/from16 v29, v5

    iget-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    :try_start_15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    move-object/from16 p1, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v25

    move-object/from16 v25, v14

    move-object/from16 v14, p1

    move-object/from16 p1, v28

    move-object/from16 v28, v2

    move-object v2, v5

    move v5, v10

    move/from16 v10, v22

    move-object/from16 v22, v8

    move/from16 v8, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v26

    move-object/from16 v26, v9

    move/from16 v9, v23

    move-object/from16 v23, v11

    move-object/from16 v11, v27

    goto/16 :goto_c

    :pswitch_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v2}, Landroidx/work/ListenableWorker;->getInputData()Landroidx/work/Data;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {v5}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->getBooleanExtraFromData(Landroidx/work/Data;)Landroid/os/Bundle;

    move-result-object v5

    .line 5
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getConfig()Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;

    move-result-object v10

    invoke-virtual {v10}, Lorg/wikipedia/settings/RemoteConfig$RemoteConfigImpl;->getDisableReadingListSync()Z

    move-result v10

    if-nez v10, :cond_8b

    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    move-result v10

    if-eqz v10, :cond_8b

    invoke-static {}, Lokhttp3/Headers$Companion;->isTemporaryAccount()Z

    move-result v10

    if-nez v10, :cond_8b

    .line 6
    sget-object v10, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListSyncEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteDeletePending()Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_14d

    .line 7
    :cond_0
    const-string v10, "Begin sync of reading lists..."

    invoke-static {v10}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingListsDeletedIds()Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    .line 9
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getReadingListPagesDeletedIds()Ljava/util/Set;

    move-result-object v21

    check-cast v21, Ljava/lang/Iterable;

    move-object/from16 v22, v8

    invoke-static/range {v21 .. v21}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    .line 10
    sget-object v21, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v21

    move-object/from16 v23, v11

    invoke-virtual/range {v21 .. v21}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    move-result-object v11

    move-object/from16 v21, v12

    .line 11
    new-instance v12, Lorg/wikipedia/readinglist/sync/ReadingListClient;

    invoke-direct {v12, v11}, Lorg/wikipedia/readinglist/sync/ReadingListClient;-><init>(Lorg/wikipedia/dataclient/WikiSite;)V

    move-object/from16 v24, v13

    .line 12
    sget-object v13, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->instance:Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;

    move-object/from16 v25, v14

    const v14, 0x7f12065c

    .line 13
    invoke-static {v14, v9}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_1

    move-object v14, v9

    move-object/from16 v26, v14

    goto :goto_7

    :cond_1
    move-object/from16 v14, v26

    move-object/from16 v26, v9

    .line 14
    :goto_7
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    .line 15
    :try_start_16
    sput-boolean v19, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 16
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v27
    :try_end_16
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_16} :catch_a0
    .catchall {:try_start_16 .. :try_end_16} :catchall_d2

    if-nez v27, :cond_3

    .line 17
    :try_start_17
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteDeletePending()Z

    move-result v27

    if-nez v27, :cond_3

    .line 18
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteSetupPending()Z

    move-result v27
    :try_end_17
    .catch Ljava/util/concurrent/CancellationException; {:try_start_17 .. :try_end_17} :catch_d
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    if-eqz v27, :cond_2

    goto :goto_a

    :cond_2
    move-object/from16 v28, v2

    move-object/from16 v30, v6

    move-object/from16 p1, v8

    move-object/from16 v29, v10

    move-object v2, v11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_f

    :catchall_f
    move-exception v0

    move-object v2, v5

    move-object/from16 v27, v8

    move v5, v9

    move-object/from16 v29, v10

    move-object v9, v11

    move-object v10, v12

    move-object v8, v14

    move-object v11, v15

    move-object v15, v4

    move-object v12, v6

    const/4 v6, 0x0

    move-object v4, v3

    :goto_8
    const/4 v3, 0x0

    goto/16 :goto_13e

    :catch_d
    move-exception v0

    move-object v4, v3

    move-object v2, v5

    move-object/from16 v27, v8

    move-object/from16 v29, v10

    move-object v5, v12

    move-object v11, v15

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object v12, v6

    :goto_9
    move v10, v9

    goto/16 :goto_147

    .line 19
    :cond_3
    :goto_a
    :try_start_18
    const-string v27, "Resetting all lists to un-synced."

    invoke-static/range {v27 .. v27}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 20
    sget-object v27, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v27

    move-object/from16 v28, v2

    invoke-virtual/range {v27 .. v27}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v2

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-boolean v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z
    :try_end_18
    .catch Ljava/util/concurrent/CancellationException; {:try_start_18 .. :try_end_18} :catch_a0
    .catchall {:try_start_18 .. :try_end_18} :catchall_d2

    move-object/from16 p1, v8

    const/4 v8, 0x0

    :try_start_19
    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    move/from16 v8, v19

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-virtual {v2, v1}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->markAllListsUnsynced(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;)Ljava/lang/Object;

    move-result-object v2
    :try_end_19
    .catch Ljava/util/concurrent/CancellationException; {:try_start_19 .. :try_end_19} :catch_9f
    .catchall {:try_start_19 .. :try_end_19} :catchall_d1

    if-ne v2, v4, :cond_4

    :goto_b
    move-object v15, v4

    goto/16 :goto_140

    :cond_4
    move-object v2, v5

    move-object/from16 v29, v10

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 21
    :goto_c
    :try_start_1a
    sget-object v27, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v27
    :try_end_1a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1a .. :try_end_1a} :catch_9e
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d0

    move-object/from16 v30, v6

    :try_start_1b
    invoke-virtual/range {v27 .. v27}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    move-result-object v6

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1b .. :try_end_1b} :catch_9d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_cf

    move-object/from16 v27, v2

    :try_start_1c
    move-object/from16 v2, v29

    check-cast v2, Ljava/util/Set;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Set;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_1c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1c .. :try_end_1c} :catch_9c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_ce

    :try_start_1d
    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-boolean v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    const/4 v2, 0x2

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-virtual {v6, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markAllPagesUnsynced(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1d .. :try_end_1d} :catch_9c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_cd

    if-ne v2, v4, :cond_5

    goto :goto_b

    :cond_5
    move v6, v5

    move-object/from16 v2, v27

    move-object/from16 v5, p1

    .line 22
    :goto_d
    :try_start_1e
    sget-object v27, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v27
    :try_end_1e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1e .. :try_end_1e} :catch_9b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_cc

    move-object/from16 p1, v5

    :try_start_1f
    invoke-virtual/range {v27 .. v27}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v5

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_1f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1f .. :try_end_1f} :catch_9a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_cb

    move-object/from16 v27, v2

    :try_start_20
    move-object/from16 v2, v29

    check-cast v2, Ljava/util/Set;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Set;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_20 .. :try_end_20} :catch_99
    .catchall {:try_start_20 .. :try_end_20} :catchall_c9

    :try_start_21
    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-boolean v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    const/4 v2, 0x3

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I
    :try_end_21
    .catch Ljava/util/concurrent/CancellationException; {:try_start_21 .. :try_end_21} :catch_99
    .catchall {:try_start_21 .. :try_end_21} :catchall_ca

    :try_start_22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {v5, v1}, Lorg/wikipedia/dataclient/Service$-CC;->getAllLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object v2
    :try_end_22
    .catch Ljava/util/concurrent/CancellationException; {:try_start_22 .. :try_end_22} :catch_99
    .catchall {:try_start_22 .. :try_end_22} :catchall_c9

    if-ne v2, v4, :cond_6

    goto :goto_b

    :cond_6
    move-object/from16 v5, p1

    .line 24
    :goto_e
    :try_start_23
    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_23
    .catch Ljava/util/concurrent/CancellationException; {:try_start_23 .. :try_end_23} :catch_98
    .catchall {:try_start_23 .. :try_end_23} :catchall_c8

    move/from16 p1, v8

    move-object v8, v2

    move-object v2, v11

    move/from16 v11, p1

    move-object/from16 p1, v5

    move-object/from16 v5, v27

    .line 25
    :goto_f
    :try_start_24
    sget-object v27, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_24
    .catch Ljava/util/concurrent/CancellationException; {:try_start_24 .. :try_end_24} :catch_97
    .catchall {:try_start_24 .. :try_end_24} :catchall_c7

    move-object/from16 v27, v5

    :try_start_25
    move-object/from16 v5, v29

    check-cast v5, Ljava/util/Set;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v5, p1

    check-cast v5, Ljava/util/Set;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_25
    .catch Ljava/util/concurrent/CancellationException; {:try_start_25 .. :try_end_25} :catch_96
    .catchall {:try_start_25 .. :try_end_25} :catchall_c6

    :try_start_26
    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-boolean v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    const/4 v5, 0x4

    iput v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-static {v2, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5
    :try_end_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_26 .. :try_end_26} :catch_95
    .catchall {:try_start_26 .. :try_end_26} :catchall_c5

    if-ne v5, v4, :cond_7

    goto/16 :goto_b

    :cond_7
    move/from16 v31, v9

    move-object v9, v2

    move-object v2, v12

    move v12, v11

    move/from16 v11, v31

    move-object/from16 v31, v8

    move-object/from16 v8, v27

    move-object/from16 v27, p1

    move-object/from16 p1, v5

    move v5, v10

    .line 26
    :goto_10
    :try_start_27
    move-object/from16 v10, p1

    check-cast v10, Ljava/lang/String;

    .line 27
    sget-object v32, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteDeletePending()Z

    move-result v32
    :try_end_27
    .catch Ljava/util/concurrent/CancellationException; {:try_start_27 .. :try_end_27} :catch_94
    .catchall {:try_start_27 .. :try_end_27} :catchall_c4

    if-eqz v32, :cond_e

    .line 28
    :try_start_28
    const-string v0, "Tearing down remote lists..."

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v10}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->tearDown(Ljava/lang/String;)V

    const v0, 0x7f12065e

    const/4 v10, 0x0

    .line 30
    invoke-static {v0, v10}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 31
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    move-result-object v0
    :try_end_28
    .catch Ljava/util/concurrent/CancellationException; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    .line 32
    iget-object v1, v2, Lorg/wikipedia/readinglist/sync/ReadingListClient;->lastDateHeader:Lj$/time/Instant;

    if-eqz v1, :cond_9

    .line 33
    invoke-virtual {v1}, Lj$/time/Instant;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_11

    :cond_8
    move-object v14, v1

    :cond_9
    :goto_11
    const v1, 0x7f12065c

    .line 34
    invoke-static {v1, v14}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 35
    invoke-static/range {v29 .. v29}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 36
    invoke-static/range {v27 .. v27}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 37
    iget-object v1, v13, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 38
    invoke-virtual {v1, v3}, Lorg/wikipedia/views/NotificationWithProgressBar;->cancelNotification(Landroid/content/Context;)V

    if-eqz v11, :cond_a

    .line 39
    invoke-virtual {v8, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 40
    new-instance v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    invoke-direct {v2, v1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    invoke-static {v2}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    :cond_a
    if-nez v5, :cond_c

    if-eqz v6, :cond_b

    goto :goto_13

    :cond_b
    :goto_12
    const/16 v20, 0x0

    goto :goto_14

    .line 41
    :cond_c
    :goto_13
    invoke-virtual {v8, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v8, 0x1

    .line 44
    invoke-virtual {v1, v15, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v6, :cond_d

    move-object/from16 v10, v30

    .line 45
    invoke-virtual {v1, v10, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    :cond_d
    invoke-static {v1}, Lokio/Path$Companion;->manualSync(Landroid/os/Bundle;)V

    goto :goto_12

    .line 47
    :goto_14
    sput-boolean v20, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 48
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 49
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    return-object v0

    :catchall_10
    move-exception v0

    move-object/from16 v10, v30

    move-object v12, v4

    move-object v4, v3

    move v3, v5

    move v5, v11

    move-object v11, v15

    move-object v15, v12

    move-object v12, v10

    :goto_15
    move-object v10, v2

    move-object v2, v8

    :goto_16
    move-object v8, v14

    goto/16 :goto_13e

    :catch_e
    move-exception v0

    move-object/from16 v10, v30

    move-object v4, v3

    move/from16 v36, v5

    move/from16 v35, v6

    move-object v12, v10

    move v10, v11

    move-object v11, v15

    :goto_17
    move-object v5, v2

    move-object v2, v8

    goto/16 :goto_147

    :cond_e
    move/from16 p1, v12

    move-object/from16 v12, v30

    .line 50
    :try_start_29
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isReadingListsRemoteSetupPending()Z

    move-result v30
    :try_end_29
    .catch Ljava/util/concurrent/CancellationException; {:try_start_29 .. :try_end_29} :catch_93
    .catchall {:try_start_29 .. :try_end_29} :catchall_c3

    if-eqz v30, :cond_f

    .line 51
    :try_start_2a
    invoke-virtual {v2, v10}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->setup(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2a .. :try_end_2a} :catch_10
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    move-object/from16 v30, v12

    const v12, 0x7f12065f

    move-object/from16 v32, v15

    const/4 v15, 0x0

    .line 52
    :try_start_2b
    invoke-static {v12, v15}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V
    :try_end_2b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2b .. :try_end_2b} :catch_f
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    goto :goto_1a

    :catchall_11
    move-exception v0

    move-object v10, v2

    move-object v15, v4

    move-object v2, v8

    move-object v8, v14

    move-object/from16 v12, v30

    :goto_18
    move-object v4, v3

    move v3, v5

    move v5, v11

    move-object/from16 v11, v32

    goto/16 :goto_13e

    :catch_f
    move-exception v0

    move-object v4, v3

    move/from16 v36, v5

    move/from16 v35, v6

    move v10, v11

    move-object/from16 v12, v30

    :goto_19
    move-object/from16 v11, v32

    goto :goto_17

    :catchall_12
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v32, v15

    move-object v10, v2

    move-object v15, v4

    move-object v2, v8

    move-object v8, v14

    goto :goto_18

    :catch_10
    move-exception v0

    move-object/from16 v30, v12

    move-object/from16 v32, v15

    move-object v4, v3

    move/from16 v36, v5

    move/from16 v35, v6

    move v10, v11

    goto :goto_19

    :cond_f
    move-object/from16 v30, v12

    move-object/from16 v32, v15

    .line 53
    :goto_1a
    :try_start_2c
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 54
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 56
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 57
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V
    :try_end_2c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2c .. :try_end_2c} :catch_92
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c2

    move-object/from16 v33, v7

    .line 58
    :try_start_2d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 59
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_2d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2d .. :try_end_2d} :catch_91
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c1

    if-nez v7, :cond_10

    const/4 v7, 0x1

    goto :goto_1b

    :cond_10
    move/from16 v7, p1

    :goto_1b
    if-nez v7, :cond_13

    .line 60
    :try_start_2e
    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v2, v14}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->getChangesSince(Ljava/lang/String;)Lorg/wikipedia/readinglist/sync/SyncedReadingLists;

    move-result-object v0

    move/from16 p1, v7

    .line 62
    iget-object v7, v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->lists:Ljava/util/List;

    if-eqz v7, :cond_11

    .line 63
    invoke-static {v7}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/util/List;)Ljava/util/List;

    iput-object v7, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_1c

    :catchall_13
    move-exception v0

    goto :goto_1d

    .line 64
    :cond_11
    :goto_1c
    iget-object v0, v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists;->entries:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/util/List;)Ljava/util/List;

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    goto :goto_1e

    .line 66
    :goto_1d
    :try_start_2f
    const-string v7, "too-old"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v0, 0x1

    goto :goto_1f

    .line 67
    :cond_12
    throw v0
    :try_end_2f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2f .. :try_end_2f} :catch_11
    .catchall {:try_start_2f .. :try_end_2f} :catchall_14

    :catchall_14
    move-exception v0

    move-object v10, v2

    move-object v15, v4

    move-object v2, v8

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v7, v33

    goto/16 :goto_18

    :catch_11
    move-exception v0

    move-object v4, v3

    move/from16 v36, v5

    move/from16 v35, v6

    move v10, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    goto/16 :goto_17

    :cond_13
    move/from16 p1, v7

    :cond_14
    :goto_1e
    move/from16 v0, p1

    :goto_1f
    if-nez v31, :cond_18

    if-eqz v0, :cond_16

    .line 68
    :try_start_30
    sget-object v7, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v7

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_30
    .catch Ljava/util/concurrent/CancellationException; {:try_start_30 .. :try_end_30} :catch_14
    .catchall {:try_start_30 .. :try_end_30} :catchall_17

    move-object/from16 v34, v3

    :try_start_31
    move-object/from16 v3, v29

    check-cast v3, Ljava/util/Set;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v3, v27

    check-cast v3, Ljava/util/Set;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    iput v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    const/4 v3, 0x5

    iput v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-static {v7, v1}, Lorg/wikipedia/dataclient/Service$-CC;->getAllLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object v3
    :try_end_31
    .catch Ljava/util/concurrent/CancellationException; {:try_start_31 .. :try_end_31} :catch_13
    .catchall {:try_start_31 .. :try_end_31} :catchall_16

    if-ne v3, v4, :cond_15

    goto/16 :goto_b

    :cond_15
    move v7, v6

    move v6, v5

    move-object v5, v2

    move-object v2, v8

    .line 70
    :goto_20
    :try_start_32
    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_32
    .catch Ljava/util/concurrent/CancellationException; {:try_start_32 .. :try_end_32} :catch_12
    .catchall {:try_start_32 .. :try_end_32} :catchall_15

    :goto_21
    move-object/from16 v47, v10

    move-object v10, v3

    move-object/from16 v3, v47

    goto/16 :goto_27

    :catchall_15
    move-exception v0

    move-object v15, v4

    move-object v10, v5

    move v3, v6

    move v6, v7

    :goto_22
    move v5, v11

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v34

    goto/16 :goto_13e

    :catch_12
    move-exception v0

    move/from16 v36, v6

    move/from16 v35, v7

    :goto_23
    move v10, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v34

    goto/16 :goto_147

    :goto_24
    move-object v10, v2

    move-object v15, v4

    move v3, v5

    move-object v2, v8

    goto :goto_22

    :goto_25
    move/from16 v36, v5

    move/from16 v35, v6

    move v10, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v34

    goto/16 :goto_17

    :catchall_16
    move-exception v0

    goto :goto_24

    :catch_13
    move-exception v0

    goto :goto_25

    :catchall_17
    move-exception v0

    move-object/from16 v34, v3

    goto :goto_24

    :catch_14
    move-exception v0

    move-object/from16 v34, v3

    goto :goto_25

    :cond_16
    move-object/from16 v34, v3

    .line 71
    :try_start_33
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v3

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    move-object/from16 v7, v29

    check-cast v7, Ljava/util/Set;

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v7, v27

    check-cast v7, Ljava/util/Set;

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    const/4 v7, 0x0

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z

    iput v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    const/4 v7, 0x6

    iput v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-virtual {v3, v1}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->getAllListsWithUnsyncedPages(Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;)Ljava/lang/Object;

    move-result-object v3
    :try_end_33
    .catch Ljava/util/concurrent/CancellationException; {:try_start_33 .. :try_end_33} :catch_13
    .catchall {:try_start_33 .. :try_end_33} :catchall_16

    if-ne v3, v4, :cond_17

    goto/16 :goto_b

    :cond_17
    move v7, v6

    move v6, v5

    move-object v5, v2

    move-object v2, v8

    :goto_26
    :try_start_34
    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_34
    .catch Ljava/util/concurrent/CancellationException; {:try_start_34 .. :try_end_34} :catch_12
    .catchall {:try_start_34 .. :try_end_34} :catchall_15

    goto/16 :goto_21

    :cond_18
    move-object/from16 v34, v3

    move v7, v6

    move-object v3, v10

    move-object/from16 v10, v31

    move v6, v5

    move-object v5, v2

    move-object v2, v8

    .line 72
    :goto_27
    :try_start_35
    iget-object v8, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_28
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v31
    :try_end_35
    .catch Ljava/util/concurrent/CancellationException; {:try_start_35 .. :try_end_35} :catch_90
    .catchall {:try_start_35 .. :try_end_35} :catchall_c0

    if-eqz v31, :cond_1e

    :try_start_36
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    move-object/from16 p1, v8

    move-object/from16 v8, v31

    check-cast v8, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 73
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_29
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v36, v10

    move-object/from16 v10, v35

    check-cast v10, Lorg/wikipedia/readinglist/database/ReadingList;
    :try_end_36
    .catch Ljava/util/concurrent/CancellationException; {:try_start_36 .. :try_end_36} :catch_16
    .catchall {:try_start_36 .. :try_end_36} :catchall_19

    move/from16 v37, v6

    move/from16 v38, v7

    .line 74
    :try_start_37
    iget-wide v6, v10, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    move-wide/from16 v39, v6

    .line 75
    iget-wide v6, v8, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

    cmp-long v6, v39, v6

    if-nez v6, :cond_19

    goto :goto_2c

    :cond_19
    move-object/from16 v10, v36

    move/from16 v6, v37

    move/from16 v7, v38

    goto :goto_29

    :catchall_18
    move-exception v0

    :goto_2a
    move-object v15, v4

    move-object v10, v5

    move v5, v11

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v34

    move/from16 v3, v37

    move/from16 v6, v38

    goto/16 :goto_13e

    :catch_15
    move-exception v0

    :goto_2b
    move v10, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v34

    move/from16 v36, v37

    move/from16 v35, v38

    goto/16 :goto_147

    :catchall_19
    move-exception v0

    move/from16 v37, v6

    move/from16 v38, v7

    goto :goto_2a

    :catch_16
    move-exception v0

    move/from16 v37, v6

    move/from16 v38, v7

    goto :goto_2b

    :cond_1a
    move/from16 v37, v6

    move/from16 v38, v7

    move-object/from16 v36, v10

    const/16 v35, 0x0

    .line 76
    :goto_2c
    check-cast v35, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 77
    iget-object v6, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    move-object/from16 v31, v6

    move-object/from16 v39, v7

    .line 78
    iget-wide v6, v10, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    move-wide/from16 v40, v6

    .line 79
    iget-wide v6, v8, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

    cmp-long v6, v40, v6

    if-nez v6, :cond_1b

    goto :goto_2e

    :cond_1b
    move-object/from16 v6, v31

    goto :goto_2d

    :cond_1c
    const/16 v39, 0x0

    .line 80
    :goto_2e
    check-cast v39, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;

    if-nez v35, :cond_1d

    if-nez v39, :cond_1d

    .line 81
    const-string v0, "Remote entry belongs to an unknown local list. Falling back to full sync."

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/util/concurrent/CancellationException; {:try_start_37 .. :try_end_37} :catch_15
    .catchall {:try_start_37 .. :try_end_37} :catchall_18

    const/4 v0, 0x1

    goto :goto_2f

    :cond_1d
    move-object/from16 v8, p1

    move-object/from16 v10, v36

    move/from16 v6, v37

    move/from16 v7, v38

    goto/16 :goto_28

    :cond_1e
    move/from16 v37, v6

    move/from16 v38, v7

    move-object/from16 v36, v10

    :goto_2f
    if-eqz v0, :cond_20

    .line 82
    :try_start_38
    sget-object v6, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v6

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_38
    .catch Ljava/util/concurrent/CancellationException; {:try_start_38 .. :try_end_38} :catch_1a
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    :try_start_39
    move-object/from16 v7, v29

    check-cast v7, Ljava/util/Set;

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v7, v27

    check-cast v7, Ljava/util/Set;

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_39
    .catch Ljava/util/concurrent/CancellationException; {:try_start_39 .. :try_end_39} :catch_1b
    .catchall {:try_start_39 .. :try_end_39} :catchall_1e

    const/4 v7, 0x0

    :try_start_3a
    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->Z$0:Z
    :try_end_3a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3a .. :try_end_3a} :catch_1a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1d

    move/from16 v7, v37

    :try_start_3b
    iput v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_3b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3b .. :try_end_3b} :catch_19
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1c

    move/from16 v8, v38

    :try_start_3c
    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    const/4 v10, 0x7

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-static {v6, v1}, Lorg/wikipedia/dataclient/Service$-CC;->getAllLists$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object v6
    :try_end_3c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3c .. :try_end_3c} :catch_18
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1b

    if-ne v6, v4, :cond_1f

    goto/16 :goto_b

    :cond_1f
    move-object/from16 v47, v5

    move-object v5, v2

    move-object/from16 v2, v47

    .line 84
    :goto_30
    :try_start_3d
    check-cast v6, Ljava/util/Collection;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v10

    .line 85
    const-string v6, "Fetching all lists from server..."

    invoke-static {v6}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->getAllLists()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/util/List;)Ljava/util/List;

    iput-object v6, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3d .. :try_end_3d} :catch_17
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1a

    move-object/from16 v47, v5

    move-object v5, v2

    move-object/from16 v2, v47

    goto :goto_36

    :catchall_1a
    move-exception v0

    move-object v10, v2

    move-object v15, v4

    move-object v2, v5

    :goto_31
    move v3, v7

    move v6, v8

    goto/16 :goto_22

    :catch_17
    move-exception v0

    move-object v4, v5

    move-object v5, v2

    move-object v2, v4

    :goto_32
    move/from16 v36, v7

    move/from16 v35, v8

    goto/16 :goto_23

    :goto_33
    move-object v15, v4

    move-object v10, v5

    goto :goto_31

    :catchall_1b
    move-exception v0

    goto :goto_33

    :catch_18
    move-exception v0

    goto :goto_32

    :catchall_1c
    move-exception v0

    :goto_34
    move/from16 v8, v38

    goto :goto_33

    :catch_19
    move-exception v0

    :goto_35
    move/from16 v8, v38

    goto :goto_32

    :catchall_1d
    move-exception v0

    move/from16 v7, v37

    goto :goto_34

    :catch_1a
    move-exception v0

    move/from16 v7, v37

    goto :goto_35

    :catchall_1e
    move-exception v0

    move/from16 v7, v37

    goto :goto_34

    :catch_1b
    move-exception v0

    move/from16 v7, v37

    goto :goto_35

    :cond_20
    move/from16 v7, v37

    move/from16 v8, v38

    move-object/from16 v10, v36

    .line 87
    :goto_36
    :try_start_3e
    new-instance v6, Lorg/wikipedia/events/ReadingListsEnabledStatusEvent;

    .line 88
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {v6}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 90
    iget-object v6, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 91
    iget-object v12, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Iterable;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12
    :try_end_3e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3e .. :try_end_3e} :catch_8f
    .catchall {:try_start_3e .. :try_end_3e} :catchall_bf

    move-object/from16 v31, v3

    move-object v3, v2

    move-object v2, v13

    move v13, v7

    move-object/from16 v7, v31

    move-object/from16 v31, v4

    move v4, v8

    const/4 v8, 0x0

    :goto_37
    :try_start_3f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v35
    :try_end_3f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3f .. :try_end_3f} :catch_8e
    .catchall {:try_start_3f .. :try_end_3f} :catchall_be

    if-eqz v35, :cond_3f

    move/from16 v35, v4

    add-int/lit8 v4, v8, 0x1

    :try_start_40
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    move/from16 p1, v4

    move-object/from16 v4, v36

    check-cast v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;
    :try_end_40
    .catch Ljava/util/concurrent/CancellationException; {:try_start_40 .. :try_end_40} :catch_57
    .catchall {:try_start_40 .. :try_end_40} :catchall_62

    move/from16 v36, v13

    .line 92
    :try_start_41
    iget-object v13, v2, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;
    :try_end_41
    .catch Ljava/util/concurrent/CancellationException; {:try_start_41 .. :try_end_41} :catch_56
    .catchall {:try_start_41 .. :try_end_41} :catchall_61

    move/from16 v37, v11

    move-object/from16 v11, v34

    .line 93
    :try_start_42
    invoke-virtual {v13, v11, v6, v8}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationProgress(Landroid/content/Context;II)V
    :try_end_42
    .catch Ljava/util/concurrent/CancellationException; {:try_start_42 .. :try_end_42} :catch_55
    .catchall {:try_start_42 .. :try_end_42} :catchall_60

    .line 94
    :try_start_43
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 95
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_38
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v38
    :try_end_43
    .catch Ljava/util/concurrent/CancellationException; {:try_start_43 .. :try_end_43} :catch_54
    .catchall {:try_start_43 .. :try_end_43} :catchall_5f

    if-eqz v38, :cond_25

    :try_start_44
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38
    :try_end_44
    .catch Ljava/util/concurrent/CancellationException; {:try_start_44 .. :try_end_44} :catch_1d
    .catchall {:try_start_44 .. :try_end_44} :catchall_20

    move-object/from16 v39, v11

    :try_start_45
    move-object/from16 v11, v38

    check-cast v11, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 97
    invoke-virtual {v11}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v38

    if-eqz v38, :cond_22

    move/from16 v38, v8

    .line 98
    iget-boolean v8, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    if-eqz v8, :cond_21

    .line 99
    iput-object v11, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move v8, v6

    move-object/from16 v40, v7

    .line 100
    iget-wide v6, v11, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    move-wide/from16 v41, v6

    .line 101
    iget-wide v6, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    cmp-long v34, v41, v6

    if-eqz v34, :cond_26

    .line 102
    iput-wide v6, v11, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    goto :goto_42

    :catchall_1f
    move-exception v0

    :goto_39
    move-object v13, v2

    move-object v2, v3

    move-object v10, v5

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v15, v31

    :goto_3a
    move-object/from16 v11, v32

    move-object/from16 v7, v33

    :goto_3b
    move/from16 v6, v35

    move/from16 v3, v36

    move/from16 v5, v37

    :goto_3c
    move-object/from16 v4, v39

    goto/16 :goto_13e

    :catch_1c
    move-exception v0

    :goto_3d
    move-object v13, v2

    move-object v2, v3

    move-object/from16 v12, v30

    :goto_3e
    move-object/from16 v11, v32

    move-object/from16 v7, v33

    :goto_3f
    move/from16 v10, v37

    :goto_40
    move-object/from16 v4, v39

    goto/16 :goto_147

    :cond_21
    move v8, v6

    move-object/from16 v40, v7

    goto :goto_41

    :cond_22
    move/from16 v38, v8

    move-object/from16 v40, v7

    move v8, v6

    .line 103
    :goto_41
    iget-wide v6, v11, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    move-wide/from16 v41, v6

    .line 104
    iget-wide v6, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    cmp-long v6, v41, v6

    if-nez v6, :cond_23

    .line 105
    iput-object v11, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_43

    .line 106
    :cond_23
    sget-object v6, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    invoke-virtual {v11}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/wikipedia/util/StringUtil;->normalizedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 107
    iput-object v11, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    iget-wide v6, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    .line 109
    iput-wide v6, v11, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J
    :try_end_45
    .catch Ljava/util/concurrent/CancellationException; {:try_start_45 .. :try_end_45} :catch_1c
    .catchall {:try_start_45 .. :try_end_45} :catchall_1f

    :goto_42
    const/4 v6, 0x1

    goto :goto_44

    :cond_24
    move v6, v8

    move/from16 v8, v38

    move-object/from16 v11, v39

    move-object/from16 v7, v40

    goto/16 :goto_38

    :catchall_20
    move-exception v0

    move-object/from16 v39, v11

    goto :goto_39

    :catch_1d
    move-exception v0

    move-object/from16 v39, v11

    goto :goto_3d

    :cond_25
    move-object/from16 v40, v7

    move/from16 v38, v8

    move-object/from16 v39, v11

    move v8, v6

    :cond_26
    :goto_43
    const/4 v6, 0x0

    .line 110
    :goto_44
    :try_start_46
    iget-boolean v7, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    if-eqz v7, :cond_28

    .line 111
    iget-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v7, :cond_28

    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v7

    if-nez v7, :cond_28

    .line 112
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v11, "Unexpected: remote default list corresponds to local non-default list."

    invoke-direct {v7, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    .line 113
    sget-object v7, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v7

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_46
    .catch Ljava/util/concurrent/CancellationException; {:try_start_46 .. :try_end_46} :catch_23
    .catchall {:try_start_46 .. :try_end_46} :catchall_27

    :try_start_47
    move-object/from16 v11, v29

    check-cast v11, Ljava/util/Set;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v11, v27

    check-cast v11, Ljava/util/Set;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_47
    .catch Ljava/util/concurrent/CancellationException; {:try_start_47 .. :try_end_47} :catch_24
    .catchall {:try_start_47 .. :try_end_47} :catchall_28

    :try_start_48
    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    move-object/from16 v11, v40

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;
    :try_end_48
    .catch Ljava/util/concurrent/CancellationException; {:try_start_48 .. :try_end_48} :catch_23
    .catchall {:try_start_48 .. :try_end_48} :catchall_27

    move-object/from16 v34, v2

    const/4 v2, 0x0

    :try_start_49
    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;
    :try_end_49
    .catch Ljava/util/concurrent/CancellationException; {:try_start_49 .. :try_end_49} :catch_1f
    .catchall {:try_start_49 .. :try_end_49} :catchall_23

    move/from16 v2, v37

    :try_start_4a
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_4a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4a .. :try_end_4a} :catch_22
    .catchall {:try_start_4a .. :try_end_4a} :catchall_26

    move/from16 v37, v2

    move/from16 v2, v36

    :try_start_4b
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I
    :try_end_4b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4b .. :try_end_4b} :catch_21
    .catchall {:try_start_4b .. :try_end_4b} :catchall_25

    move/from16 v36, v2

    move/from16 v2, v35

    :try_start_4c
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I
    :try_end_4c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4c .. :try_end_4c} :catch_20
    .catchall {:try_start_4c .. :try_end_4c} :catchall_24

    move/from16 v35, v2

    move/from16 v2, p1

    :try_start_4d
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 p1, v2

    move/from16 v2, v38

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    iput v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    move/from16 v38, v2

    const/16 v2, 0x8

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I
    :try_end_4d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4d .. :try_end_4d} :catch_1f
    .catchall {:try_start_4d .. :try_end_4d} :catchall_23

    :try_start_4e
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    invoke-static {v7, v1}, Lorg/wikipedia/dataclient/Service$-CC;->getDefaultList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object v2
    :try_end_4e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4e .. :try_end_4e} :catch_1f
    .catchall {:try_start_4e .. :try_end_4e} :catchall_22

    move-object/from16 v7, v31

    if-ne v2, v7, :cond_27

    :goto_45
    move-object v15, v7

    goto/16 :goto_140

    :cond_27
    move-object/from16 v31, v4

    move v4, v0

    move v0, v6

    move-object/from16 v6, v31

    move/from16 v40, v35

    move/from16 v35, v36

    move/from16 v31, v37

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move-object v9, v13

    move/from16 v10, p1

    .line 115
    :goto_46
    :try_start_4f
    iput-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4f .. :try_end_4f} :catch_1e
    .catchall {:try_start_4f .. :try_end_4f} :catchall_21

    move/from16 v43, v0

    move-object v2, v3

    move-object v13, v9

    move-object/from16 v3, v34

    move-object/from16 v9, v36

    move/from16 v36, v4

    move-object v4, v6

    move/from16 v34, v10

    move/from16 v10, v31

    move-object/from16 v6, v37

    move/from16 v37, v40

    move-object/from16 v31, v7

    move/from16 v7, v35

    :goto_47
    move/from16 v0, v38

    move/from16 v35, v8

    goto/16 :goto_4e

    :catchall_21
    move-exception v0

    move-object v2, v3

    move-object v10, v5

    move-object v15, v7

    move-object v8, v14

    move-object/from16 v12, v30

    move/from16 v5, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v13, v34

    move/from16 v3, v35

    move-object/from16 v9, v36

    move-object/from16 v4, v39

    move/from16 v6, v40

    goto/16 :goto_13e

    :catch_1e
    move-exception v0

    move-object v2, v3

    move-object/from16 v12, v30

    move/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v13, v34

    move/from16 v36, v35

    move-object/from16 v4, v39

    move/from16 v35, v40

    goto/16 :goto_147

    :catchall_22
    move-exception v0

    goto :goto_4b

    :goto_48
    move-object v2, v3

    move-object v10, v5

    move-object v15, v7

    :goto_49
    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v13, v34

    goto/16 :goto_3b

    :goto_4a
    move-object v2, v3

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v13, v34

    goto/16 :goto_3f

    :catchall_23
    move-exception v0

    :goto_4b
    move-object/from16 v7, v31

    goto :goto_48

    :catch_1f
    move-exception v0

    goto :goto_4a

    :catchall_24
    move-exception v0

    move/from16 v35, v2

    goto :goto_4b

    :catch_20
    move-exception v0

    move/from16 v35, v2

    goto :goto_4a

    :catchall_25
    move-exception v0

    move/from16 v36, v2

    goto :goto_4b

    :catch_21
    move-exception v0

    move/from16 v36, v2

    goto :goto_4a

    :catchall_26
    move-exception v0

    move/from16 v37, v2

    goto :goto_4b

    :catch_22
    move-exception v0

    move/from16 v37, v2

    goto :goto_4a

    :catchall_27
    move-exception v0

    move-object/from16 v34, v2

    goto :goto_4b

    :catch_23
    move-exception v0

    :goto_4c
    move-object/from16 v34, v2

    goto :goto_4a

    :catchall_28
    move-exception v0

    :goto_4d
    move-object/from16 v34, v2

    goto :goto_4b

    :catch_24
    move-exception v0

    goto :goto_4c

    :cond_28
    move-object/from16 v34, v2

    move-object/from16 v7, v31

    move-object/from16 v11, v40

    move-object v2, v3

    move/from16 v43, v6

    move-object/from16 v31, v7

    move-object v6, v10

    move-object/from16 v3, v34

    move/from16 v7, v36

    move/from16 v10, v37

    move/from16 v34, p1

    move/from16 v36, v0

    move/from16 v37, v35

    goto/16 :goto_47

    .line 116
    :goto_4e
    :try_start_50
    iget-boolean v8, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDeleted:Z
    :try_end_50
    .catch Ljava/util/concurrent/CancellationException; {:try_start_50 .. :try_end_50} :catch_53
    .catchall {:try_start_50 .. :try_end_50} :catchall_5e

    move/from16 v38, v8

    iget-object v8, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    if-eqz v38, :cond_2c

    .line 117
    :try_start_51
    iget-object v4, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_2b

    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v4}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 118
    iget-object v4, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v4}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_51
    .catch Ljava/util/concurrent/CancellationException; {:try_start_51 .. :try_end_51} :catch_2e
    .catchall {:try_start_51 .. :try_end_51} :catchall_33

    move/from16 v38, v7

    :try_start_52
    const-string v7, "Deleting local list "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 119
    sget-object v4, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v4

    iget-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_52
    .catch Ljava/util/concurrent/CancellationException; {:try_start_52 .. :try_end_52} :catch_2b
    .catchall {:try_start_52 .. :try_end_52} :catchall_2f

    :try_start_53
    move-object/from16 v8, v29

    check-cast v8, Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v8, v27

    check-cast v8, Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_53
    .catch Ljava/util/concurrent/CancellationException; {:try_start_53 .. :try_end_53} :catch_2b
    .catchall {:try_start_53 .. :try_end_53} :catchall_32

    :try_start_54
    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_54
    .catch Ljava/util/concurrent/CancellationException; {:try_start_54 .. :try_end_54} :catch_2b
    .catchall {:try_start_54 .. :try_end_54} :catchall_2f

    move/from16 v8, v38

    :try_start_55
    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I
    :try_end_55
    .catch Ljava/util/concurrent/CancellationException; {:try_start_55 .. :try_end_55} :catch_2d
    .catchall {:try_start_55 .. :try_end_55} :catchall_31

    move/from16 v38, v8

    move/from16 v8, v37

    :try_start_56
    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I
    :try_end_56
    .catch Ljava/util/concurrent/CancellationException; {:try_start_56 .. :try_end_56} :catch_2c
    .catchall {:try_start_56 .. :try_end_56} :catchall_30

    move/from16 v37, v8

    move/from16 v8, v36

    :try_start_57
    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v36, v8

    move/from16 v8, v35

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v35, v8

    move/from16 v8, v34

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    move/from16 v34, v8

    move/from16 v8, v43

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    move/from16 v40, v8

    const/16 v8, 0x9

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-virtual {v4, v7, v1}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->deleteList(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;)Ljava/lang/Object;

    move-result-object v4
    :try_end_57
    .catch Ljava/util/concurrent/CancellationException; {:try_start_57 .. :try_end_57} :catch_2b
    .catchall {:try_start_57 .. :try_end_57} :catchall_2f

    move-object/from16 v7, v31

    if-ne v4, v7, :cond_29

    goto/16 :goto_45

    :cond_29
    move-object v4, v3

    move-object v3, v5

    move-object/from16 v31, v7

    move/from16 v7, v36

    move/from16 v8, v37

    move-object v5, v2

    move v2, v10

    move/from16 v36, v35

    move/from16 v10, v38

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v34, v40

    .line 120
    :goto_4f
    :try_start_58
    sget-object v37, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v37

    move/from16 v38, v7

    invoke-virtual/range {v37 .. v37}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    move-result-object v7

    move-object/from16 p1, v7

    iget-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v37, v7

    move-object/from16 v7, v37

    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;

    move-object/from16 v40, v7

    move-object/from16 v7, v37

    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 121
    iget-object v7, v7, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 122
    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_58
    .catch Ljava/util/concurrent/CancellationException; {:try_start_58 .. :try_end_58} :catch_2a
    .catchall {:try_start_58 .. :try_end_58} :catchall_2e

    move-object/from16 v37, v5

    :try_start_59
    move-object/from16 v5, v29

    check-cast v5, Ljava/util/Set;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v5, v27

    check-cast v5, Ljava/util/Set;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_59
    .catch Ljava/util/concurrent/CancellationException; {:try_start_59 .. :try_end_59} :catch_29
    .catchall {:try_start_59 .. :try_end_59} :catchall_2d

    :try_start_5a
    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v5, v38

    iput v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I
    :try_end_5a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5a .. :try_end_5a} :catch_28
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2c

    move/from16 v38, v2

    move/from16 v2, v36

    :try_start_5b
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v36, v2

    move/from16 v2, v35

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    move/from16 v2, v34

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    const/16 v2, 0xa

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I
    :try_end_5b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5b .. :try_end_5b} :catch_27
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2b

    move-object/from16 v2, p1

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v3, v40

    const/4 v4, 0x0

    :try_start_5c
    invoke-virtual {v2, v3, v7, v4, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5c .. :try_end_5c} :catch_26
    .catchall {:try_start_5c .. :try_end_5c} :catchall_2a

    move-object/from16 v7, v31

    if-ne v2, v7, :cond_2a

    :goto_50
    goto/16 :goto_45

    :cond_2a
    move v3, v10

    move-object/from16 v31, v34

    move-object/from16 v2, v37

    move v10, v5

    move-object v5, v6

    .line 123
    :goto_51
    :try_start_5d
    iget-object v4, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5d .. :try_end_5d} :catch_25
    .catchall {:try_start_5d .. :try_end_5d} :catchall_29

    move/from16 v38, v3

    move v4, v8

    move-object v13, v12

    move/from16 v6, v36

    const/4 v12, 0x1

    move v8, v0

    move-object v3, v2

    move v0, v10

    move-object/from16 v2, v35

    move-object v10, v5

    move-object/from16 v5, v31

    goto/16 :goto_5a

    :catchall_29
    move-exception v0

    move-object v15, v7

    move v6, v8

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v13, v35

    :goto_52
    move/from16 v5, v38

    goto/16 :goto_3c

    :catch_25
    move-exception v0

    move/from16 v36, v3

    move-object/from16 v12, v30

    move-object/from16 v5, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v13, v35

    :goto_53
    move/from16 v10, v38

    move-object/from16 v4, v39

    move/from16 v35, v8

    goto/16 :goto_147

    :catchall_2a
    move-exception v0

    :goto_54
    move-object/from16 v7, v31

    move-object v15, v7

    move v6, v8

    move v3, v10

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v10, v34

    move-object/from16 v13, v35

    move-object/from16 v2, v37

    goto :goto_52

    :catch_26
    move-exception v0

    :goto_55
    move/from16 v36, v10

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v5, v34

    move-object/from16 v13, v35

    move-object/from16 v2, v37

    goto :goto_53

    :catchall_2b
    move-exception v0

    :goto_56
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    goto :goto_54

    :catch_27
    move-exception v0

    :goto_57
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    goto :goto_55

    :catchall_2c
    move-exception v0

    move/from16 v38, v2

    goto :goto_56

    :catch_28
    move-exception v0

    move/from16 v38, v2

    goto :goto_57

    :catchall_2d
    move-exception v0

    move/from16 v38, v2

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    goto :goto_54

    :catch_29
    move-exception v0

    move/from16 v38, v2

    goto :goto_57

    :catchall_2e
    move-exception v0

    move/from16 v38, v2

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    goto :goto_54

    :catch_2a
    move-exception v0

    move/from16 v38, v2

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v37, v5

    goto :goto_55

    :catchall_2f
    move-exception v0

    :goto_58
    move-object/from16 v7, v31

    move v4, v10

    move-object v10, v5

    move v5, v4

    move-object v13, v3

    move-object v15, v7

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v37

    move/from16 v3, v38

    goto/16 :goto_3c

    :catch_2b
    move-exception v0

    :goto_59
    move-object v13, v3

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v35, v37

    move/from16 v36, v38

    goto/16 :goto_40

    :catchall_30
    move-exception v0

    move/from16 v37, v8

    goto :goto_58

    :catch_2c
    move-exception v0

    move/from16 v37, v8

    goto :goto_59

    :catchall_31
    move-exception v0

    move/from16 v38, v8

    goto :goto_58

    :catch_2d
    move-exception v0

    move/from16 v38, v8

    goto :goto_59

    :catchall_32
    move-exception v0

    goto :goto_58

    :catchall_33
    move-exception v0

    move/from16 v38, v7

    goto :goto_58

    :catch_2e
    move-exception v0

    move/from16 v38, v7

    goto :goto_59

    :cond_2b
    move/from16 v38, v7

    move-object/from16 v7, v31

    move-object v0, v3

    move-object v3, v2

    move-object v2, v0

    move-object v13, v12

    move/from16 v8, v34

    move/from16 v0, v36

    move/from16 v4, v37

    move v12, v10

    move-object v10, v6

    move/from16 v6, v35

    :goto_5a
    move-object/from16 v31, v7

    move-object v7, v11

    move v11, v12

    move-object v12, v13

    move/from16 v13, v38

    :goto_5b
    move-object/from16 v34, v39

    goto/16 :goto_37

    :cond_2c
    move-object/from16 v38, v31

    move/from16 v40, v43

    move-object/from16 v31, v8

    move v8, v7

    .line 124
    :try_start_5e
    iget-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5e .. :try_end_5e} :catch_3f
    .catchall {:try_start_5e .. :try_end_5e} :catchall_5d

    if-nez v7, :cond_31

    .line 125
    :try_start_5f
    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v7
    :try_end_5f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5f .. :try_end_5f} :catch_3f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_47

    move/from16 v41, v8

    :try_start_60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_60
    .catch Ljava/util/concurrent/CancellationException; {:try_start_60 .. :try_end_60} :catch_3e
    .catchall {:try_start_60 .. :try_end_60} :catchall_46

    move/from16 v42, v10

    :try_start_61
    const-string v10, "Creating local list "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 126
    iget-boolean v7, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z
    :try_end_61
    .catch Ljava/util/concurrent/CancellationException; {:try_start_61 .. :try_end_61} :catch_3d
    .catchall {:try_start_61 .. :try_end_61} :catchall_45

    if-eqz v7, :cond_2e

    .line 127
    :try_start_62
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected: local default list no longer matches remote."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    .line 128
    sget-object v7, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v7

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    move-object/from16 v8, v29

    check-cast v8, Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v8, v27

    check-cast v8, Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;
    :try_end_62
    .catch Ljava/util/concurrent/CancellationException; {:try_start_62 .. :try_end_62} :catch_33
    .catchall {:try_start_62 .. :try_end_62} :catchall_39

    move/from16 v8, v42

    :try_start_63
    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_63
    .catch Ljava/util/concurrent/CancellationException; {:try_start_63 .. :try_end_63} :catch_30
    .catchall {:try_start_63 .. :try_end_63} :catchall_36

    move/from16 v10, v41

    :try_start_64
    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I
    :try_end_64
    .catch Ljava/util/concurrent/CancellationException; {:try_start_64 .. :try_end_64} :catch_32
    .catchall {:try_start_64 .. :try_end_64} :catchall_38

    move/from16 v41, v10

    move/from16 v10, v37

    :try_start_65
    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I
    :try_end_65
    .catch Ljava/util/concurrent/CancellationException; {:try_start_65 .. :try_end_65} :catch_31
    .catchall {:try_start_65 .. :try_end_65} :catchall_37

    move/from16 v37, v10

    move/from16 v10, v36

    :try_start_66
    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v36, v10

    move/from16 v10, v35

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v35, v10

    move/from16 v10, v34

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    move/from16 v34, v10

    move/from16 v10, v40

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    const/16 v10, 0xb

    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I
    :try_end_66
    .catch Ljava/util/concurrent/CancellationException; {:try_start_66 .. :try_end_66} :catch_30
    .catchall {:try_start_66 .. :try_end_66} :catchall_36

    :try_start_67
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {v7, v1}, Lorg/wikipedia/dataclient/Service$-CC;->getDefaultList$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object v7
    :try_end_67
    .catch Ljava/util/concurrent/CancellationException; {:try_start_67 .. :try_end_67} :catch_30
    .catchall {:try_start_67 .. :try_end_67} :catchall_35

    move-object/from16 v10, v38

    if-ne v7, v10, :cond_2d

    move-object v15, v10

    goto/16 :goto_140

    :cond_2d
    move/from16 v31, v35

    move-object/from16 v35, v9

    move/from16 v9, v31

    move-object/from16 v31, v11

    move v11, v8

    move/from16 v8, v34

    move-object/from16 v34, v5

    move-object v5, v13

    .line 130
    :goto_5c
    :try_start_68
    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;
    :try_end_68
    .catch Ljava/util/concurrent/CancellationException; {:try_start_68 .. :try_end_68} :catch_2f
    .catchall {:try_start_68 .. :try_end_68} :catchall_34

    move/from16 v47, v8

    move-object v8, v7

    move-object v7, v10

    move v10, v9

    move/from16 v9, v47

    goto/16 :goto_67

    :catchall_34
    move-exception v0

    move-object v13, v3

    move-object v15, v10

    move v5, v11

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v10, v34

    move-object/from16 v9, v35

    move/from16 v6, v37

    move-object/from16 v4, v39

    :goto_5d
    move/from16 v3, v41

    goto/16 :goto_13e

    :catch_2f
    move-exception v0

    move-object v13, v3

    move v10, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v5, v34

    :goto_5e
    move/from16 v35, v37

    :goto_5f
    move-object/from16 v4, v39

    move/from16 v36, v41

    goto/16 :goto_147

    :catchall_35
    move-exception v0

    goto :goto_63

    :goto_60
    move-object v13, v3

    move-object v15, v10

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v37

    move-object/from16 v4, v39

    move/from16 v3, v41

    :goto_61
    move-object v10, v5

    move v5, v8

    goto/16 :goto_16

    :goto_62
    move-object v13, v3

    move v10, v8

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    goto :goto_5e

    :catchall_36
    move-exception v0

    :goto_63
    move-object/from16 v10, v38

    goto :goto_60

    :catch_30
    move-exception v0

    goto :goto_62

    :catchall_37
    move-exception v0

    move/from16 v37, v10

    goto :goto_63

    :catch_31
    move-exception v0

    move/from16 v37, v10

    goto :goto_62

    :catchall_38
    move-exception v0

    move/from16 v41, v10

    goto :goto_63

    :catch_32
    move-exception v0

    move/from16 v41, v10

    goto :goto_62

    :catchall_39
    move-exception v0

    move-object/from16 v10, v38

    move/from16 v8, v42

    goto :goto_60

    :catch_33
    move-exception v0

    move/from16 v8, v42

    goto :goto_62

    :cond_2e
    move-object/from16 v7, v38

    move/from16 v10, v40

    move/from16 v8, v42

    .line 131
    :try_start_69
    sget-object v38, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v38
    :try_end_69
    .catch Ljava/util/concurrent/CancellationException; {:try_start_69 .. :try_end_69} :catch_3b
    .catchall {:try_start_69 .. :try_end_69} :catchall_44

    move-object/from16 v40, v7

    :try_start_6a
    invoke-virtual/range {v38 .. v38}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v7

    move-object/from16 p1, v7

    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v7
    :try_end_6a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6a .. :try_end_6a} :catch_3b
    .catchall {:try_start_6a .. :try_end_6a} :catchall_42

    move-object/from16 v38, v7

    if-nez v31, :cond_2f

    move-object/from16 v7, v26

    :goto_64
    move/from16 v42, v10

    goto :goto_65

    :cond_2f
    move-object/from16 v7, v31

    goto :goto_64

    .line 132
    :goto_65
    :try_start_6b
    sget-object v10, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v7, v10}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v7
    :try_end_6b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6b .. :try_end_6b} :catch_3c
    .catchall {:try_start_6b .. :try_end_6b} :catchall_43

    .line 133
    :try_start_6c
    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_6c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6c .. :try_end_6c} :catch_3b
    .catchall {:try_start_6c .. :try_end_6c} :catchall_42

    :try_start_6d
    move-object/from16 v10, v29

    check-cast v10, Ljava/util/Set;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v10, v27

    check-cast v10, Ljava/util/Set;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_6d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6d .. :try_end_6d} :catch_3c
    .catchall {:try_start_6d .. :try_end_6d} :catchall_43

    :try_start_6e
    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_6e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6e .. :try_end_6e} :catch_3b
    .catchall {:try_start_6e .. :try_end_6e} :catchall_42

    move/from16 v10, v41

    :try_start_6f
    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I
    :try_end_6f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6f .. :try_end_6f} :catch_3a
    .catchall {:try_start_6f .. :try_end_6f} :catchall_41

    move-object/from16 v41, v2

    move/from16 v2, v37

    :try_start_70
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I
    :try_end_70
    .catch Ljava/util/concurrent/CancellationException; {:try_start_70 .. :try_end_70} :catch_39
    .catchall {:try_start_70 .. :try_end_70} :catchall_40

    move/from16 v37, v2

    move/from16 v2, v36

    :try_start_71
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v36, v2

    move/from16 v2, v35

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v35, v2

    move/from16 v2, v34

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    move/from16 v34, v2

    move/from16 v2, v42

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    const/16 v2, 0xc

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I
    :try_end_71
    .catch Ljava/util/concurrent/CancellationException; {:try_start_71 .. :try_end_71} :catch_38
    .catchall {:try_start_71 .. :try_end_71} :catchall_3f

    move-object/from16 v2, v38

    move-object/from16 v38, v3

    move-object v3, v2

    move-object/from16 v2, p1

    :try_start_72
    invoke-virtual {v2, v3, v7, v1}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->createList(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/io/Serializable;

    move-result-object v2
    :try_end_72
    .catch Ljava/util/concurrent/CancellationException; {:try_start_72 .. :try_end_72} :catch_37
    .catchall {:try_start_72 .. :try_end_72} :catchall_3e

    move-object/from16 v7, v40

    if-ne v2, v7, :cond_30

    goto/16 :goto_45

    :cond_30
    move-object/from16 v31, v11

    move-object v3, v13

    move v11, v10

    move/from16 v10, v35

    move-object/from16 v35, v9

    move v9, v8

    move/from16 v8, v34

    move-object/from16 v34, v5

    move-object/from16 v5, v41

    .line 134
    :goto_66
    :try_start_73
    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;
    :try_end_73
    .catch Ljava/util/concurrent/CancellationException; {:try_start_73 .. :try_end_73} :catch_36
    .catchall {:try_start_73 .. :try_end_73} :catchall_3d

    move/from16 v41, v11

    move v11, v9

    move v9, v8

    move-object v8, v2

    move-object v2, v5

    move-object v5, v13

    move-object v13, v3

    move-object/from16 v3, v38

    .line 135
    :goto_67
    :try_start_74
    iput-object v8, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    iget-object v5, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, v5

    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingList;
    :try_end_74
    .catch Ljava/util/concurrent/CancellationException; {:try_start_74 .. :try_end_74} :catch_35
    .catchall {:try_start_74 .. :try_end_74} :catchall_3c

    move-object/from16 p1, v2

    move-object/from16 v38, v3

    .line 137
    :try_start_75
    iget-wide v2, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    .line 138
    iput-wide v2, v8, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 139
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 140
    iget-object v2, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->created:Lj$/time/LocalDateTime;

    .line 141
    sget-object v3, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-interface {v2, v3}, Lj$/time/chrono/ChronoLocalDateTime;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object v2
    :try_end_75
    .catch Ljava/util/concurrent/CancellationException; {:try_start_75 .. :try_end_75} :catch_34
    .catchall {:try_start_75 .. :try_end_75} :catchall_3b

    move-object/from16 v40, v7

    :try_start_76
    invoke-virtual {v2}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v7

    .line 142
    iput-wide v7, v5, Lorg/wikipedia/readinglist/database/ReadingList;->atime:J

    .line 143
    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 144
    iget-object v5, v4, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->updated:Lj$/time/LocalDateTime;

    .line 145
    invoke-interface {v5, v3}, Lj$/time/chrono/ChronoLocalDateTime;->toInstant(Lj$/time/ZoneOffset;)Lj$/time/Instant;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v7

    .line 146
    iput-wide v7, v2, Lorg/wikipedia/readinglist/database/ReadingList;->mtime:J

    .line 147
    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/util/concurrent/CancellationException; {:try_start_76 .. :try_end_76} :catch_34
    .catchall {:try_start_76 .. :try_end_76} :catchall_3a

    move-object/from16 v2, v35

    move/from16 v35, v9

    move-object v9, v2

    move-object v7, v6

    move v8, v11

    move-object/from16 v11, v31

    move-object/from16 v2, v34

    move/from16 v6, v36

    move-object/from16 v5, v38

    move-object/from16 v31, v40

    move/from16 v3, v41

    move/from16 v34, v0

    move-object v0, v4

    move/from16 v36, v10

    move/from16 v10, v37

    move-object/from16 v4, p1

    const/16 p1, 0x1

    goto/16 :goto_80

    :catchall_3a
    move-exception v0

    :goto_68
    move-object/from16 v2, p1

    :goto_69
    move v5, v11

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v10, v34

    move-object/from16 v9, v35

    move/from16 v6, v37

    move-object/from16 v13, v38

    move-object/from16 v4, v39

    move-object/from16 v15, v40

    goto/16 :goto_5d

    :catch_34
    move-exception v0

    move-object/from16 v2, p1

    :goto_6a
    move v10, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v5, v34

    move/from16 v35, v37

    move-object/from16 v13, v38

    goto/16 :goto_5f

    :catchall_3b
    move-exception v0

    move-object/from16 v40, v7

    goto :goto_68

    :catchall_3c
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v38, v3

    move-object/from16 v40, v7

    goto :goto_69

    :catch_35
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v38, v3

    goto :goto_6a

    :catchall_3d
    move-exception v0

    move-object/from16 v40, v7

    move-object v2, v5

    move v5, v9

    move v3, v11

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v10, v34

    move-object/from16 v9, v35

    move/from16 v6, v37

    move-object/from16 v13, v38

    move-object/from16 v4, v39

    move-object/from16 v15, v40

    goto/16 :goto_13e

    :catch_36
    move-exception v0

    move-object v2, v5

    move v10, v9

    move/from16 v36, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v5, v34

    move/from16 v35, v37

    move-object/from16 v13, v38

    goto/16 :goto_40

    :catchall_3e
    move-exception v0

    :goto_6b
    move v3, v10

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v37

    move-object/from16 v13, v38

    move-object/from16 v4, v39

    move-object/from16 v15, v40

    :goto_6c
    move-object/from16 v2, v41

    goto/16 :goto_61

    :catch_37
    move-exception v0

    :goto_6d
    move/from16 v36, v10

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v35, v37

    move-object/from16 v13, v38

    move-object/from16 v4, v39

    move-object/from16 v2, v41

    :goto_6e
    move v10, v8

    goto/16 :goto_147

    :catchall_3f
    move-exception v0

    :goto_6f
    move-object/from16 v38, v3

    goto :goto_6b

    :catch_38
    move-exception v0

    :goto_70
    move-object/from16 v38, v3

    goto :goto_6d

    :catchall_40
    move-exception v0

    move/from16 v37, v2

    goto :goto_6f

    :catch_39
    move-exception v0

    move/from16 v37, v2

    goto :goto_70

    :catchall_41
    move-exception v0

    :goto_71
    move-object/from16 v41, v2

    :goto_72
    move-object/from16 v38, v3

    :goto_73
    move v3, v10

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v37

    move-object/from16 v13, v38

    move-object/from16 v4, v39

    move-object/from16 v15, v40

    goto/16 :goto_61

    :catch_3a
    move-exception v0

    :goto_74
    move-object/from16 v41, v2

    move-object/from16 v38, v3

    :goto_75
    move/from16 v36, v10

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v35, v37

    move-object/from16 v13, v38

    move-object/from16 v4, v39

    goto :goto_6e

    :catchall_42
    move-exception v0

    move-object/from16 v38, v3

    :goto_76
    move/from16 v10, v41

    move-object/from16 v41, v2

    goto :goto_73

    :catch_3b
    move-exception v0

    move-object/from16 v38, v3

    :goto_77
    move/from16 v10, v41

    :goto_78
    move-object/from16 v41, v2

    goto :goto_75

    :catchall_43
    move-exception v0

    move-object/from16 v38, v3

    move/from16 v10, v41

    move-object/from16 v41, v2

    goto :goto_6b

    :catch_3c
    move-exception v0

    move-object/from16 v38, v3

    move/from16 v10, v41

    move-object/from16 v41, v2

    goto :goto_6d

    :catchall_44
    move-exception v0

    move-object/from16 v38, v3

    move-object/from16 v40, v7

    goto :goto_76

    :catchall_45
    move-exception v0

    move-object/from16 v40, v38

    move/from16 v10, v41

    move/from16 v8, v42

    goto :goto_71

    :catch_3d
    move-exception v0

    move-object/from16 v38, v3

    move/from16 v10, v41

    move/from16 v8, v42

    goto :goto_78

    :catchall_46
    move-exception v0

    move v8, v10

    move-object/from16 v40, v38

    move/from16 v10, v41

    goto :goto_71

    :catch_3e
    move-exception v0

    move-object/from16 v38, v3

    move v8, v10

    goto :goto_77

    :catchall_47
    move-exception v0

    move/from16 v40, v10

    move v10, v8

    move/from16 v8, v40

    move-object/from16 v41, v2

    move-object/from16 v40, v38

    goto :goto_72

    :catch_3f
    move-exception v0

    move/from16 v38, v10

    move v10, v8

    move/from16 v8, v38

    goto :goto_74

    :cond_31
    move-object/from16 v41, v38

    move-object/from16 v38, v3

    move-object/from16 v3, v41

    move/from16 v41, v10

    move v10, v8

    move/from16 v8, v41

    move-object/from16 v41, v2

    move/from16 v2, v40

    .line 148
    :try_start_77
    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v7
    :try_end_77
    .catch Ljava/util/concurrent/CancellationException; {:try_start_77 .. :try_end_77} :catch_37
    .catchall {:try_start_77 .. :try_end_77} :catchall_5c

    if-nez v7, :cond_32

    :try_start_78
    sget-object v7, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    iget-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    move-result-object v7

    move/from16 v40, v2

    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lorg/wikipedia/util/StringUtil;->normalizedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 149
    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v4}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    iput-object v7, v2, Lorg/wikipedia/readinglist/database/ReadingList;->listTitle:Ljava/lang/String;
    :try_end_78
    .catch Ljava/util/concurrent/CancellationException; {:try_start_78 .. :try_end_78} :catch_37
    .catchall {:try_start_78 .. :try_end_78} :catchall_48

    const/16 v40, 0x1

    goto :goto_7b

    :goto_79
    move-object v15, v3

    :goto_7a
    move v3, v10

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v37

    move-object/from16 v13, v38

    move-object/from16 v4, v39

    goto/16 :goto_6c

    :catchall_48
    move-exception v0

    goto :goto_79

    :cond_32
    move/from16 v40, v2

    .line 151
    :cond_33
    :goto_7b
    :try_start_79
    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v2}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v2
    :try_end_79
    .catch Ljava/util/concurrent/CancellationException; {:try_start_79 .. :try_end_79} :catch_37
    .catchall {:try_start_79 .. :try_end_79} :catchall_5c

    if-nez v2, :cond_36

    :try_start_7a
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 152
    iget-object v2, v2, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    if-nez v31, :cond_34

    move-object/from16 v7, v26

    :goto_7c
    move-object/from16 v42, v4

    goto :goto_7d

    :cond_34
    move-object/from16 v7, v31

    goto :goto_7c

    .line 153
    :goto_7d
    sget-object v4, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v7, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-static {v2, v7}, Lorg/wikipedia/util/StringUtil;->normalizedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 155
    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;

    if-nez v31, :cond_35

    move-object/from16 v7, v26

    goto :goto_7e

    :cond_35
    move-object/from16 v7, v31

    .line 156
    :goto_7e
    invoke-static {v7, v4}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    .line 157
    iput-object v4, v2, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;
    :try_end_7a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7a .. :try_end_7a} :catch_37
    .catchall {:try_start_7a .. :try_end_7a} :catchall_48

    move-object/from16 v31, v3

    move-object v2, v5

    move-object v7, v6

    move v3, v10

    move/from16 v6, v36

    move/from16 v10, v37

    move-object/from16 v5, v38

    move-object/from16 v4, v41

    const/16 p1, 0x1

    :goto_7f
    move/from16 v36, v35

    move/from16 v35, v34

    move/from16 v34, v0

    move-object/from16 v0, v42

    goto :goto_80

    :cond_36
    move-object/from16 v42, v4

    :cond_37
    move-object/from16 v31, v3

    move-object v2, v5

    move-object v7, v6

    move v3, v10

    move/from16 v6, v36

    move/from16 v10, v37

    move-object/from16 v5, v38

    move/from16 p1, v40

    move-object/from16 v4, v41

    goto :goto_7f

    :goto_80
    if-eqz p1, :cond_3b

    move/from16 v37, v6

    .line 158
    :try_start_7b
    iget-object v6, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v6}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    move-result-object v6
    :try_end_7b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7b .. :try_end_7b} :catch_48
    .catchall {:try_start_7b .. :try_end_7b} :catchall_51

    move/from16 v38, v10

    :try_start_7c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7c .. :try_end_7c} :catch_47
    .catchall {:try_start_7c .. :try_end_7c} :catchall_50

    move/from16 v40, v3

    :try_start_7d
    const-string v3, "Updating info for local list "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 159
    iget-object v3, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    const/4 v10, 0x0

    .line 160
    iput-boolean v10, v3, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    .line 161
    sget-object v3, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v3

    iget-object v6, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    move-object/from16 v10, v29

    check-cast v10, Ljava/util/Set;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v10, v27

    check-cast v10, Ljava/util/Set;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_7d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7d .. :try_end_7d} :catch_46
    .catchall {:try_start_7d .. :try_end_7d} :catchall_4f

    move/from16 v10, v40

    :try_start_7e
    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I
    :try_end_7e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7e .. :try_end_7e} :catch_45
    .catchall {:try_start_7e .. :try_end_7e} :catchall_4e

    move-object/from16 v40, v2

    move/from16 v2, v38

    :try_start_7f
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I
    :try_end_7f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7f .. :try_end_7f} :catch_44
    .catchall {:try_start_7f .. :try_end_7f} :catchall_4d

    move/from16 v38, v2

    move/from16 v2, v37

    :try_start_80
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v37, v2

    move/from16 v2, v36

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v36, v2

    move/from16 v2, v35

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v35, v2

    move/from16 v2, v34

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    move/from16 v34, v2

    move/from16 v2, p1

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    move/from16 v41, v2

    const/16 v2, 0xd

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I
    :try_end_80
    .catch Ljava/util/concurrent/CancellationException; {:try_start_80 .. :try_end_80} :catch_43
    .catchall {:try_start_80 .. :try_end_80} :catchall_4c

    :try_start_81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    invoke-static {v6}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 163
    iget-object v6, v3, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;
    :try_end_81
    .catch Ljava/util/concurrent/CancellationException; {:try_start_81 .. :try_end_81} :catch_42
    .catchall {:try_start_81 .. :try_end_81} :catchall_4b

    move-object/from16 v42, v4

    :try_start_82
    new-instance v4, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$updateLists$2;
    :try_end_82
    .catch Ljava/util/concurrent/CancellationException; {:try_start_82 .. :try_end_82} :catch_41
    .catchall {:try_start_82 .. :try_end_82} :catchall_4a

    move-object/from16 v43, v5

    move-object/from16 p1, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    :try_start_83
    invoke-direct {v4, v3, v2, v5, v7}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$updateLists$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    .line 164
    invoke-static {v6, v1, v4}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    .line 165
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    :try_end_83
    .catch Ljava/util/concurrent/CancellationException; {:try_start_83 .. :try_end_83} :catch_40
    .catchall {:try_start_83 .. :try_end_83} :catchall_49

    if-ne v2, v3, :cond_38

    goto :goto_81

    :cond_38
    move-object/from16 v2, v22

    :goto_81
    if-ne v2, v3, :cond_39

    :goto_82
    move-object/from16 v7, v31

    goto :goto_83

    :cond_39
    move-object/from16 v2, v22

    goto :goto_82

    :goto_83
    if-ne v2, v7, :cond_3a

    goto/16 :goto_50

    :cond_3a
    move-object v5, v0

    move-object/from16 v31, v11

    move/from16 v3, v34

    move/from16 v4, v35

    move/from16 v2, v36

    move-object/from16 v34, v40

    move/from16 v0, v41

    move-object/from16 v36, p1

    move-object/from16 v35, v9

    :goto_84
    move/from16 v41, v0

    move v8, v4

    move-object/from16 v6, v34

    move-object/from16 v9, v35

    const/4 v11, 0x1

    move/from16 v34, v3

    move-object/from16 v35, v29

    move-object/from16 v29, v27

    move-object/from16 v27, v15

    move-object v15, v14

    move v14, v10

    move-object/from16 v10, v36

    move/from16 v36, v2

    :goto_85
    move/from16 v0, v37

    move/from16 v4, v38

    move-object/from16 v3, v42

    move-object/from16 v2, v43

    goto/16 :goto_8f

    :catchall_49
    move-exception v0

    goto :goto_8b

    :catch_40
    move-exception v0

    goto :goto_89

    :catchall_4a
    move-exception v0

    goto :goto_86

    :catch_41
    move-exception v0

    goto :goto_8d

    :catchall_4b
    move-exception v0

    move-object/from16 v42, v4

    :goto_86
    move-object/from16 v43, v5

    goto :goto_8b

    :goto_87
    move-object v15, v7

    move v5, v8

    move v3, v10

    :goto_88
    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v38

    move-object/from16 v4, v39

    move-object/from16 v10, v40

    move-object/from16 v2, v42

    move-object/from16 v13, v43

    goto/16 :goto_13e

    :catch_42
    move-exception v0

    move-object/from16 v42, v4

    goto :goto_8d

    :goto_89
    move/from16 v36, v10

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v35, v38

    move-object/from16 v4, v39

    move-object/from16 v5, v40

    move-object/from16 v2, v42

    move-object/from16 v13, v43

    goto/16 :goto_6e

    :catchall_4c
    move-exception v0

    :goto_8a
    move-object/from16 v42, v4

    move-object/from16 v43, v5

    :goto_8b
    move-object/from16 v7, v31

    goto :goto_87

    :catch_43
    move-exception v0

    :goto_8c
    move-object/from16 v42, v4

    :goto_8d
    move-object/from16 v43, v5

    goto :goto_89

    :catchall_4d
    move-exception v0

    move/from16 v38, v2

    goto :goto_8a

    :catch_44
    move-exception v0

    move/from16 v38, v2

    goto :goto_8c

    :catchall_4e
    move-exception v0

    move-object/from16 v40, v2

    goto :goto_8a

    :catch_45
    move-exception v0

    move-object/from16 v40, v2

    goto :goto_8c

    :catchall_4f
    move-exception v0

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move-object/from16 v7, v31

    move/from16 v10, v40

    move-object/from16 v40, v2

    goto :goto_87

    :catch_46
    move-exception v0

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move/from16 v10, v40

    move-object/from16 v40, v2

    goto :goto_89

    :catchall_50
    move-exception v0

    move-object/from16 v40, v2

    move v10, v3

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move-object/from16 v7, v31

    :goto_8e
    move-object v15, v7

    move v5, v8

    goto :goto_88

    :catch_47
    move-exception v0

    move-object/from16 v40, v2

    move v10, v3

    goto :goto_8c

    :catchall_51
    move-exception v0

    move-object/from16 v40, v2

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move/from16 v38, v10

    move-object/from16 v7, v31

    move v10, v3

    goto :goto_8e

    :catch_48
    move-exception v0

    move-object/from16 v40, v2

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move/from16 v38, v10

    move v10, v3

    goto :goto_89

    :cond_3b
    move/from16 v41, p1

    move-object/from16 v40, v2

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move/from16 v37, v6

    move-object/from16 p1, v7

    move/from16 v38, v10

    move-object/from16 v7, v31

    move v10, v3

    move-object v5, v0

    move-object/from16 v31, v11

    move-object/from16 v6, v40

    move v11, v8

    move/from16 v8, v35

    move-object/from16 v35, v29

    move-object/from16 v29, v27

    move-object/from16 v27, v15

    move-object v15, v14

    move v14, v10

    move-object/from16 v10, p1

    goto/16 :goto_85

    :goto_8f
    if-eqz v0, :cond_3e

    move-object/from16 p1, v2

    .line 166
    :try_start_84
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v2
    :try_end_84
    .catch Ljava/util/concurrent/CancellationException; {:try_start_84 .. :try_end_84} :catch_52
    .catchall {:try_start_84 .. :try_end_84} :catchall_5b

    move-object/from16 v37, v3

    :try_start_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_85
    .catch Ljava/util/concurrent/CancellationException; {:try_start_85 .. :try_end_85} :catch_51
    .catchall {:try_start_85 .. :try_end_85} :catchall_5a

    move/from16 v38, v4

    :try_start_86
    const-string v4, "Fetching all pages in remote list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 167
    iget-wide v2, v5, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    .line 168
    invoke-virtual {v6, v2, v3}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->getListEntries(J)Ljava/util/ArrayList;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_86
    .catch Ljava/util/concurrent/CancellationException; {:try_start_86 .. :try_end_86} :catch_50
    .catchall {:try_start_86 .. :try_end_86} :catchall_59

    move/from16 v3, v36

    move-object/from16 v36, v29

    move/from16 v29, v34

    move/from16 v34, v3

    move-object v5, v2

    move-object/from16 v40, v7

    move v4, v11

    move v7, v14

    move-object/from16 v11, v31

    move-object/from16 v3, v37

    const/16 v44, 0x0

    move-object/from16 v2, p1

    move/from16 v31, v8

    move-object v14, v9

    move-object v9, v12

    move-object v12, v15

    move-object/from16 v37, v35

    move/from16 v35, v38

    move-object v8, v6

    move-object v15, v10

    move-object/from16 v10, v27

    move-object/from16 v6, v28

    move/from16 v27, v41

    :goto_90
    :try_start_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_3d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38
    :try_end_87
    .catch Ljava/util/concurrent/CancellationException; {:try_start_87 .. :try_end_87} :catch_4f
    .catchall {:try_start_87 .. :try_end_87} :catchall_58

    move/from16 v41, v7

    :try_start_88
    move-object/from16 v7, v38

    check-cast v7, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    move-object/from16 p1, v7

    .line 170
    iget-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_88
    .catch Ljava/util/concurrent/CancellationException; {:try_start_88 .. :try_end_88} :catch_4e
    .catchall {:try_start_88 .. :try_end_88} :catchall_57

    move-object/from16 v38, v3

    :try_start_89
    move-object/from16 v3, v37

    check-cast v3, Ljava/util/Set;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v3, v36

    check-cast v3, Ljava/util/Set;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_89
    .catch Ljava/util/concurrent/CancellationException; {:try_start_89 .. :try_end_89} :catch_4d
    .catchall {:try_start_89 .. :try_end_89} :catchall_56

    :try_start_8a
    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    iput v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_8a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8a .. :try_end_8a} :catch_4c
    .catchall {:try_start_8a .. :try_end_8a} :catchall_55

    move/from16 v3, v41

    :try_start_8b
    iput v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I
    :try_end_8b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8b .. :try_end_8b} :catch_4b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_54

    move-object/from16 v41, v2

    move/from16 v2, v35

    :try_start_8c
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I
    :try_end_8c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8c .. :try_end_8c} :catch_4a
    .catchall {:try_start_8c .. :try_end_8c} :catchall_53

    move/from16 v35, v2

    move/from16 v2, v34

    :try_start_8d
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v34, v2

    move/from16 v2, v31

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v31, v2

    move/from16 v2, v29

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    move/from16 v29, v2

    move/from16 v2, v27

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    move/from16 v27, v2

    move/from16 v2, v44

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$8:I

    move/from16 v42, v2

    const/16 v2, 0xe

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    move-object/from16 v2, p1

    .line 171
    invoke-virtual {v6, v7, v2, v1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->createOrUpdatePage(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8d .. :try_end_8d} :catch_49
    .catchall {:try_start_8d .. :try_end_8d} :catchall_52

    move-object/from16 v7, v40

    if-ne v2, v7, :cond_3c

    goto/16 :goto_45

    :cond_3c
    move-object/from16 v40, v37

    move-object/from16 v2, v41

    move/from16 v44, v42

    move-object/from16 v37, v36

    move-object/from16 v36, v8

    move v8, v3

    move-object/from16 v3, v38

    :goto_91
    move-object/from16 v47, v40

    move-object/from16 v40, v7

    move v7, v8

    move-object/from16 v8, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v47

    goto/16 :goto_90

    :catchall_52
    move-exception v0

    :goto_92
    move-object/from16 v7, v40

    :goto_93
    move v5, v4

    move-object v15, v7

    move-object v10, v8

    move-object v8, v12

    move-object v9, v14

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v35

    move-object/from16 v27, v36

    move-object/from16 v29, v37

    move-object/from16 v2, v38

    move-object/from16 v4, v39

    move-object/from16 v13, v41

    goto/16 :goto_13e

    :catch_49
    move-exception v0

    :goto_94
    move v10, v4

    move-object v5, v8

    move-object v14, v12

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v27, v36

    move-object/from16 v29, v37

    move-object/from16 v2, v38

    move-object/from16 v4, v39

    move-object/from16 v13, v41

    move/from16 v36, v3

    goto/16 :goto_147

    :catchall_53
    move-exception v0

    move/from16 v35, v2

    goto :goto_92

    :catch_4a
    move-exception v0

    move/from16 v35, v2

    goto :goto_94

    :catchall_54
    move-exception v0

    move-object/from16 v41, v2

    goto :goto_92

    :catch_4b
    move-exception v0

    :goto_95
    move-object/from16 v41, v2

    goto :goto_94

    :catchall_55
    move-exception v0

    :goto_96
    move-object/from16 v7, v40

    move/from16 v3, v41

    move-object/from16 v41, v2

    goto :goto_93

    :catch_4c
    move-exception v0

    :goto_97
    move/from16 v3, v41

    goto :goto_95

    :catchall_56
    move-exception v0

    goto :goto_96

    :catch_4d
    move-exception v0

    move/from16 v3, v41

    goto :goto_95

    :catchall_57
    move-exception v0

    move-object/from16 v38, v3

    goto :goto_96

    :catch_4e
    move-exception v0

    move-object/from16 v38, v3

    goto :goto_97

    :catchall_58
    move-exception v0

    move-object/from16 v41, v2

    move-object/from16 v38, v3

    move v3, v7

    goto :goto_92

    :catch_4f
    move-exception v0

    move-object/from16 v41, v2

    move-object/from16 v38, v3

    move v3, v7

    goto :goto_94

    :cond_3d
    move-object/from16 v41, v2

    move-object/from16 v38, v3

    move v3, v7

    move-object v2, v12

    move-object v12, v9

    move-object v9, v14

    move-object v14, v2

    move-object v2, v15

    move-object v15, v10

    move-object v10, v2

    move v13, v3

    move-object v5, v8

    move-object v7, v11

    move/from16 v8, v31

    move/from16 v6, v34

    move/from16 v4, v35

    move-object/from16 v27, v36

    move-object/from16 v29, v37

    move-object/from16 v3, v38

    move-object/from16 v34, v39

    move-object/from16 v31, v40

    move-object/from16 v2, v41

    const/4 v11, 0x1

    goto/16 :goto_37

    :catchall_59
    move-exception v0

    :goto_98
    move-object/from16 v13, p1

    move-object v10, v6

    move v5, v11

    move v3, v14

    move-object v8, v15

    move-object/from16 v27, v29

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v29, v35

    move-object/from16 v2, v37

    move/from16 v6, v38

    :goto_99
    move-object/from16 v4, v39

    move-object v15, v7

    move-object/from16 v7, v33

    goto/16 :goto_13e

    :catch_50
    move-exception v0

    :goto_9a
    move-object/from16 v13, p1

    move-object v5, v6

    move v10, v11

    move/from16 v36, v14

    move-object v14, v15

    move-object/from16 v27, v29

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v29, v35

    move-object/from16 v2, v37

    move/from16 v35, v38

    goto/16 :goto_40

    :catchall_5a
    move-exception v0

    :goto_9b
    move/from16 v38, v4

    goto :goto_98

    :catch_51
    move-exception v0

    :goto_9c
    move/from16 v38, v4

    goto :goto_9a

    :catchall_5b
    move-exception v0

    move-object/from16 v37, v3

    goto :goto_9b

    :catch_52
    move-exception v0

    move-object/from16 v37, v3

    goto :goto_9c

    :cond_3e
    move-object/from16 p1, v2

    move-object/from16 v37, v3

    move/from16 v38, v4

    move-object/from16 v2, v31

    move-object/from16 v31, v7

    move-object v7, v2

    move-object/from16 v2, p1

    move-object v5, v6

    move v13, v14

    move-object v14, v15

    move-object/from16 v15, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v35

    move/from16 v6, v36

    goto/16 :goto_5b

    :catchall_5c
    move-exception v0

    move-object v7, v3

    move-object v15, v7

    goto/16 :goto_7a

    :catchall_5d
    move-exception v0

    move v7, v10

    move v10, v8

    move v8, v7

    move-object/from16 v41, v2

    move-object/from16 v7, v38

    move-object/from16 v38, v3

    :goto_9d
    move-object v15, v7

    move v3, v10

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v37

    move-object/from16 v13, v38

    move-object/from16 v4, v39

    goto/16 :goto_61

    :catchall_5e
    move-exception v0

    move-object/from16 v41, v2

    move-object/from16 v38, v3

    move v8, v10

    move v10, v7

    move-object/from16 v7, v31

    goto :goto_9d

    :catch_53
    move-exception v0

    move-object/from16 v41, v2

    move-object/from16 v38, v3

    move v8, v10

    move v10, v7

    goto/16 :goto_75

    :catchall_5f
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v39, v11

    goto/16 :goto_4b

    :catch_54
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v39, v11

    goto/16 :goto_4a

    :catchall_60
    move-exception v0

    move-object/from16 v39, v11

    goto/16 :goto_4d

    :catch_55
    move-exception v0

    move-object/from16 v39, v11

    goto/16 :goto_4c

    :catchall_61
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v39, v34

    move-object/from16 v7, v31

    goto :goto_9e

    :catch_56
    move-exception v0

    move/from16 v37, v11

    move-object/from16 v39, v34

    goto/16 :goto_4c

    :catchall_62
    move-exception v0

    move/from16 v37, v11

    move/from16 v36, v13

    move-object/from16 v7, v31

    move-object/from16 v39, v34

    :goto_9e
    move-object/from16 v34, v2

    goto/16 :goto_48

    :catch_57
    move-exception v0

    move/from16 v37, v11

    move/from16 v36, v13

    move-object/from16 v39, v34

    goto/16 :goto_4c

    :cond_3f
    move/from16 v35, v4

    move v8, v6

    move/from16 v37, v11

    move/from16 v36, v13

    move-object/from16 v39, v34

    move-object/from16 v34, v2

    move-object v11, v7

    move-object/from16 v7, v31

    if-nez v0, :cond_47

    .line 172
    :try_start_8e
    iget-object v2, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_8e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8e .. :try_end_8e} :catch_1f
    .catchall {:try_start_8e .. :try_end_8e} :catchall_6c

    move v4, v8

    move v8, v0

    move v0, v4

    move-object v6, v2

    move-object/from16 v2, v29

    move-object/from16 v4, v34

    move/from16 v13, v35

    move/from16 v12, v36

    :goto_9f
    :try_start_8f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    .line 173
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_a0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v29
    :try_end_8f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8f .. :try_end_8f} :catch_5e
    .catchall {:try_start_8f .. :try_end_8f} :catchall_6b

    if-eqz v29, :cond_41

    :try_start_90
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29
    :try_end_90
    .catch Ljava/util/concurrent/CancellationException; {:try_start_90 .. :try_end_90} :catch_59
    .catchall {:try_start_90 .. :try_end_90} :catchall_65

    move-object/from16 p1, v2

    :try_start_91
    move-object/from16 v2, v29

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;
    :try_end_91
    .catch Ljava/util/concurrent/CancellationException; {:try_start_91 .. :try_end_91} :catch_58
    .catchall {:try_start_91 .. :try_end_91} :catchall_64

    move-object/from16 v31, v7

    move/from16 v34, v8

    .line 174
    :try_start_92
    iget-wide v7, v2, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    move-wide/from16 v35, v7

    .line 175
    iget-wide v7, v15, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J
    :try_end_92
    .catch Ljava/util/concurrent/CancellationException; {:try_start_92 .. :try_end_92} :catch_58
    .catchall {:try_start_92 .. :try_end_92} :catchall_63

    cmp-long v2, v35, v7

    if-nez v2, :cond_40

    goto :goto_a8

    :cond_40
    move-object/from16 v2, p1

    move-object/from16 v7, v31

    move/from16 v8, v34

    goto :goto_a0

    :catchall_63
    move-exception v0

    :goto_a1
    move-object/from16 v29, p1

    move-object v2, v3

    move-object v10, v5

    move v3, v12

    move v6, v13

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v15, v31

    :goto_a2
    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v5, v37

    :goto_a3
    move-object v13, v4

    goto/16 :goto_3c

    :catch_58
    move-exception v0

    :goto_a4
    move-object/from16 v29, p1

    move-object v2, v3

    move/from16 v36, v12

    move/from16 v35, v13

    :goto_a5
    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v10, v37

    :goto_a6
    move-object v13, v4

    goto/16 :goto_40

    :catchall_64
    move-exception v0

    :goto_a7
    move-object/from16 v31, v7

    goto :goto_a1

    :catchall_65
    move-exception v0

    move-object/from16 p1, v2

    goto :goto_a7

    :catch_59
    move-exception v0

    move-object/from16 p1, v2

    goto :goto_a4

    :cond_41
    move-object/from16 p1, v2

    move-object/from16 v31, v7

    move/from16 v34, v8

    const/16 v29, 0x0

    .line 176
    :goto_a8
    :try_start_93
    move-object/from16 v2, v29

    check-cast v2, Lorg/wikipedia/readinglist/database/ReadingList;
    :try_end_93
    .catch Ljava/util/concurrent/CancellationException; {:try_start_93 .. :try_end_93} :catch_5d
    .catchall {:try_start_93 .. :try_end_93} :catchall_6a

    if-nez v2, :cond_42

    .line 177
    :try_start_94
    const-string v2, "Remote entry belongs to an unknown local list."

    invoke-static {v2}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/util/concurrent/CancellationException; {:try_start_94 .. :try_end_94} :catch_58
    .catchall {:try_start_94 .. :try_end_94} :catchall_63

    move-object/from16 v2, p1

    move-object/from16 v7, v31

    move/from16 v8, v34

    goto/16 :goto_9f

    .line 178
    :cond_42
    :try_start_95
    iget-boolean v7, v15, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->isDeleted:Z
    :try_end_95
    .catch Ljava/util/concurrent/CancellationException; {:try_start_95 .. :try_end_95} :catch_5c
    .catchall {:try_start_95 .. :try_end_95} :catchall_69

    if-eqz v7, :cond_44

    .line 179
    :try_start_96
    invoke-static {v15}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->pageTitleFromRemoteEntry(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lorg/wikipedia/page/PageTitle;

    move-result-object v7

    .line 180
    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    move-object/from16 v8, p1

    check-cast v8, Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v8, v27

    check-cast v8, Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    const/4 v8, 0x1

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v8, v34

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    const/16 v15, 0xf

    iput v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    move-object/from16 v15, v28

    .line 181
    invoke-virtual {v15, v2, v7, v1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->deletePageByTitle(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_96
    .catch Ljava/util/concurrent/CancellationException; {:try_start_96 .. :try_end_96} :catch_5a
    .catchall {:try_start_96 .. :try_end_96} :catchall_66

    move-object/from16 v7, v31

    if-ne v2, v7, :cond_43

    goto/16 :goto_50

    :cond_43
    move-object/from16 v2, p1

    const/16 v37, 0x1

    :goto_a9
    move-object/from16 v28, v15

    goto/16 :goto_9f

    :catchall_66
    move-exception v0

    move-object/from16 v7, v31

    move-object/from16 v29, p1

    move-object v2, v3

    move-object v10, v5

    move-object v15, v7

    move v3, v12

    move v6, v13

    move-object v8, v14

    :goto_aa
    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    const/4 v5, 0x1

    goto/16 :goto_a3

    :catch_5a
    move-exception v0

    move-object/from16 v29, p1

    move-object v2, v3

    move/from16 v36, v12

    move/from16 v35, v13

    :goto_ab
    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    const/4 v10, 0x1

    goto/16 :goto_a6

    :cond_44
    move-object/from16 v7, v28

    move/from16 v8, v34

    .line 182
    :try_start_97
    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_97
    .catch Ljava/util/concurrent/CancellationException; {:try_start_97 .. :try_end_97} :catch_5c
    .catchall {:try_start_97 .. :try_end_97} :catchall_69

    move-object/from16 v26, v3

    :try_start_98
    move-object/from16 v3, p1

    check-cast v3, Ljava/util/Set;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v3, v27

    check-cast v3, Ljava/util/Set;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_98
    .catch Ljava/util/concurrent/CancellationException; {:try_start_98 .. :try_end_98} :catch_5b
    .catchall {:try_start_98 .. :try_end_98} :catchall_68

    :try_start_99
    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    const/4 v3, 0x1

    iput v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    const/16 v3, 0x10

    iput v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    .line 183
    invoke-virtual {v7, v2, v15, v1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->createOrUpdatePage(Lorg/wikipedia/readinglist/database/ReadingList;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_99
    .catch Ljava/util/concurrent/CancellationException; {:try_start_99 .. :try_end_99} :catch_5b
    .catchall {:try_start_99 .. :try_end_99} :catchall_67

    move-object/from16 v15, v31

    if-ne v2, v15, :cond_45

    goto/16 :goto_140

    :cond_45
    move-object/from16 v2, p1

    move-object/from16 v3, v26

    const/16 v37, 0x1

    :goto_ac
    move-object/from16 v28, v7

    move-object v7, v15

    goto/16 :goto_9f

    :catchall_67
    move-exception v0

    :goto_ad
    move-object/from16 v15, v31

    move-object/from16 v29, p1

    move-object v10, v5

    move v3, v12

    move v6, v13

    move-object v8, v14

    move-object/from16 v2, v26

    goto :goto_aa

    :catch_5b
    move-exception v0

    :goto_ae
    move-object/from16 v29, p1

    move/from16 v36, v12

    move/from16 v35, v13

    move-object/from16 v2, v26

    goto :goto_ab

    :catchall_68
    move-exception v0

    goto :goto_ad

    :catchall_69
    move-exception v0

    move-object/from16 v26, v3

    goto :goto_ad

    :catch_5c
    move-exception v0

    move-object/from16 v26, v3

    goto :goto_ae

    :catchall_6a
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v15, v31

    :goto_af
    move-object/from16 v29, p1

    move-object v10, v5

    move v3, v12

    move v6, v13

    move-object v8, v14

    move-object/from16 v2, v26

    move-object/from16 v12, v30

    goto/16 :goto_a2

    :catch_5d
    move-exception v0

    :goto_b0
    move-object/from16 v26, v3

    move-object/from16 v29, p1

    move/from16 v36, v12

    move/from16 v35, v13

    move-object/from16 v2, v26

    goto/16 :goto_a5

    :catchall_6b
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v26, v3

    move-object v15, v7

    goto :goto_af

    :catch_5e
    move-exception v0

    move-object/from16 p1, v2

    goto :goto_b0

    :cond_46
    move-object/from16 p1, v2

    move-object/from16 v26, v3

    move v6, v0

    move/from16 v36, v12

    move/from16 v35, v13

    :goto_b1
    move-object v15, v7

    move-object/from16 v7, v28

    goto :goto_b2

    :catchall_6c
    move-exception v0

    move-object v15, v7

    move-object v2, v3

    move-object v10, v5

    goto/16 :goto_49

    :cond_47
    move v6, v8

    move-object/from16 v2, v29

    move-object/from16 v4, v34

    move v8, v0

    goto :goto_b1

    .line 184
    :goto_b2
    :try_start_9a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    move-object v12, v2

    check-cast v12, Ljava/util/Collection;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_9a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9a .. :try_end_9a} :catch_8d
    .catchall {:try_start_9a .. :try_end_9a} :catchall_bd

    if-eqz v0, :cond_4d

    :try_start_9b
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;
    :try_end_9b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9b .. :try_end_9b} :catch_62
    .catchall {:try_start_9b .. :try_end_9b} :catchall_71

    move-object/from16 p1, v3

    move-object v13, v4

    :try_start_9c
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v26, v6

    const-string v6, "Deleting remote list id "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9c .. :try_end_9c} :catch_61
    .catchall {:try_start_9c .. :try_end_9c} :catchall_70

    .line 188
    :try_start_9d
    invoke-virtual {v5, v11, v3, v4}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->deleteList(Ljava/lang/String;J)V
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_6d

    move-object/from16 v28, v5

    goto/16 :goto_bb

    :catchall_6d
    move-exception v0

    .line 189
    :try_start_9e
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V
    :try_end_9e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9e .. :try_end_9e} :catch_61
    .catchall {:try_start_9e .. :try_end_9e} :catchall_70

    .line 190
    :try_start_9f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    instance-of v6, v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v6, :cond_48

    move-object v6, v0

    check-cast v6, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 192
    iget v6, v6, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I
    :try_end_9f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9f .. :try_end_9f} :catch_60
    .catchall {:try_start_9f .. :try_end_9f} :catchall_6f

    move-object/from16 v28, v5

    const/16 v5, 0x190

    if-ne v6, v5, :cond_49

    const/4 v5, 0x1

    goto :goto_b4

    :cond_48
    move-object/from16 v28, v5

    :cond_49
    const/4 v5, 0x0

    :goto_b4
    if-nez v5, :cond_4c

    .line 193
    :try_start_a0
    instance-of v5, v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v5, :cond_4a

    move-object v5, v0

    check-cast v5, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 194
    iget v5, v5, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    const/16 v6, 0x195

    if-ne v5, v6, :cond_4a

    const/4 v5, 0x1

    goto :goto_b5

    :cond_4a
    const/4 v5, 0x0

    :goto_b5
    if-eqz v5, :cond_4b

    goto :goto_bb

    .line 195
    :cond_4b
    throw v0

    :catchall_6e
    move-exception v0

    :goto_b6
    move-object/from16 v29, v2

    move-object v8, v14

    move-object/from16 v10, v28

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v35

    move/from16 v3, v36

    move/from16 v5, v37

    move-object/from16 v4, v39

    :goto_b7
    move-object/from16 v2, p1

    goto/16 :goto_13e

    :catch_5f
    move-exception v0

    :goto_b8
    move-object/from16 v29, v2

    move-object/from16 v5, v28

    :goto_b9
    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v10, v37

    move-object/from16 v4, v39

    :goto_ba
    move-object/from16 v2, p1

    goto/16 :goto_147

    .line 196
    :cond_4c
    :goto_bb
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 197
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_a0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a0 .. :try_end_a0} :catch_5f
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_6e

    move-object/from16 v3, p1

    move-object v4, v13

    move/from16 v6, v26

    move-object/from16 v5, v28

    goto/16 :goto_b3

    :catchall_6f
    move-exception v0

    goto :goto_bc

    :catch_60
    move-exception v0

    move-object/from16 v28, v5

    goto :goto_b8

    :catchall_70
    move-exception v0

    :goto_bc
    move-object/from16 v28, v5

    goto :goto_b6

    :catch_61
    move-exception v0

    :goto_bd
    move-object/from16 v28, v5

    move-object/from16 v29, v2

    goto :goto_b9

    :catchall_71
    move-exception v0

    move-object/from16 p1, v3

    move-object v13, v4

    goto :goto_bc

    :catch_62
    move-exception v0

    move-object/from16 p1, v3

    move-object v13, v4

    goto :goto_bd

    :cond_4d
    move-object/from16 p1, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move/from16 v26, v6

    .line 198
    :try_start_a1
    move-object/from16 v0, v27

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0
    :try_end_a1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a1 .. :try_end_a1} :catch_8c
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_bc

    if-eqz v8, :cond_54

    .line 199
    :try_start_a2
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_a2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a2 .. :try_end_a2} :catch_5f
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_6e

    move-object v4, v2

    move-object v5, v3

    move-object v2, v7

    move/from16 v6, v26

    const/4 v7, 0x0

    move-object/from16 v3, p1

    :goto_be
    :try_start_a3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_53

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/wikipedia/readinglist/database/ReadingList;

    move-object/from16 p1, v2

    .line 200
    iget-object v2, v12, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    move-object/from16 v26, v2

    .line 201
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_a3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a3 .. :try_end_a3} :catch_6a
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_7a

    move-object/from16 v29, v3

    .line 202
    :try_start_a4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_bf
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v31
    :try_end_a4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a4 .. :try_end_a4} :catch_69
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_79

    if-eqz v31, :cond_4f

    move-object/from16 v31, v4

    :try_start_a5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 204
    move-object/from16 v34, v4

    check-cast v34, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 205
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v34 .. v34}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->remoteEntryFromLocalPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    move-result-object v34

    move-object/from16 v38, v5

    .line 206
    invoke-static/range {v34 .. v34}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->pageTitleFromRemoteEntry(Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)Lorg/wikipedia/page/PageTitle;

    move-result-object v5

    .line 207
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 208
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    move-object/from16 v4, v31

    move-object/from16 v5, v38

    goto :goto_bf

    :catchall_72
    move-exception v0

    :goto_c0
    move-object v8, v14

    move-object/from16 v10, v28

    move-object/from16 v2, v29

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    goto/16 :goto_3a

    :catch_63
    move-exception v0

    :goto_c1
    move-object/from16 v5, v28

    move-object/from16 v2, v29

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    goto/16 :goto_3e

    :cond_4f
    move-object/from16 v31, v4

    move-object/from16 v38, v5

    .line 209
    iget-object v2, v12, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 210
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 211
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 212
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_52

    .line 213
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_a5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a5 .. :try_end_a5} :catch_63
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_72

    move/from16 v26, v7

    move-object/from16 v40, v15

    move-object/from16 v5, v28

    move-object/from16 v4, v29

    move/from16 v15, v35

    move-object/from16 v7, v38

    const/16 v45, 0x0

    const/16 v46, 0x0

    move/from16 v28, v6

    move/from16 v29, v8

    move/from16 v8, v37

    move-object/from16 v6, p1

    move-object/from16 p1, v2

    move-object v2, v3

    move/from16 v3, v36

    :goto_c2
    :try_start_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34
    :try_end_a6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a6 .. :try_end_a6} :catch_68
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_77

    move/from16 v35, v15

    :try_start_a7
    move-object/from16 v15, v34

    check-cast v15, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 214
    sget-object v34, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v34

    move-object/from16 v36, v15

    invoke-virtual/range {v34 .. v34}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    move-result-object v15

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_a7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a7 .. :try_end_a7} :catch_67
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_76

    move-object/from16 v34, v4

    :try_start_a8
    move-object/from16 v4, v31

    check-cast v4, Ljava/util/Set;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v4, v27

    check-cast v4, Ljava/util/Set;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_a8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a8 .. :try_end_a8} :catch_66
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_75

    :try_start_a9
    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;
    :try_end_a9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a9 .. :try_end_a9} :catch_65
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_74

    :try_start_aa
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Set;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;
    :try_end_aa
    .catch Ljava/util/concurrent/CancellationException; {:try_start_aa .. :try_end_aa} :catch_66
    .catchall {:try_start_aa .. :try_end_aa} :catchall_75

    :try_start_ab
    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$20:Ljava/util/Iterator;

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I
    :try_end_ab
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ab .. :try_end_ab} :catch_65
    .catchall {:try_start_ab .. :try_end_ab} :catchall_74

    move/from16 v4, v35

    :try_start_ac
    iput v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move-object/from16 v35, v2

    move/from16 v2, v29

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v29, v2

    move/from16 v2, v28

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v28, v2

    move/from16 v2, v26

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v26, v2

    move/from16 v2, v45

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    move/from16 v37, v2

    move/from16 v2, v46

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    move/from16 v38, v2

    const/4 v2, 0x0

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$8:I

    const/16 v2, 0x11

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    move-object/from16 v2, v36

    invoke-virtual {v15, v2, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->deleteReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;)Ljava/lang/Object;

    move-result-object v2
    :try_end_ac
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ac .. :try_end_ac} :catch_64
    .catchall {:try_start_ac .. :try_end_ac} :catchall_73

    move-object/from16 v15, v40

    if-ne v2, v15, :cond_50

    goto/16 :goto_140

    :cond_50
    move-object/from16 v2, v35

    move/from16 v45, v37

    move/from16 v46, v38

    move-object/from16 v37, v27

    move-object/from16 v38, v31

    move/from16 v27, v4

    move/from16 v31, v29

    move-object/from16 v4, v34

    move/from16 v29, v28

    move/from16 v28, v26

    move-object/from16 v26, p1

    :goto_c3
    move-object/from16 v40, v15

    move-object/from16 p1, v26

    move/from16 v15, v27

    move/from16 v26, v28

    move/from16 v28, v29

    move/from16 v29, v31

    move-object/from16 v27, v37

    move-object/from16 v31, v38

    goto/16 :goto_c2

    :catchall_73
    move-exception v0

    :goto_c4
    move-object/from16 v15, v40

    :goto_c5
    move v6, v4

    move-object v10, v5

    move v5, v8

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v2, v34

    goto/16 :goto_3c

    :catch_64
    move-exception v0

    :goto_c6
    move/from16 v36, v3

    move/from16 v35, v4

    :goto_c7
    move v10, v8

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v2, v34

    goto/16 :goto_40

    :catchall_74
    move-exception v0

    :goto_c8
    move/from16 v4, v35

    goto :goto_c4

    :catch_65
    move-exception v0

    :goto_c9
    move/from16 v4, v35

    move/from16 v36, v3

    goto :goto_c7

    :catchall_75
    move-exception v0

    move/from16 v4, v35

    goto :goto_c4

    :catch_66
    move-exception v0

    move/from16 v4, v35

    goto :goto_c6

    :catchall_76
    move-exception v0

    move-object/from16 v34, v4

    goto :goto_c8

    :catch_67
    move-exception v0

    move-object/from16 v34, v4

    goto :goto_c9

    :catchall_77
    move-exception v0

    move-object/from16 v34, v4

    move v4, v15

    goto :goto_c4

    :catch_68
    move-exception v0

    move-object/from16 v34, v4

    move v4, v15

    goto :goto_c6

    :cond_51
    move-object/from16 v2, p1

    move-object/from16 v34, v4

    move v4, v15

    move-object/from16 v15, v40

    .line 215
    :try_start_ad
    invoke-static {v12, v2}, Lokio/Path$Companion;->createIdsForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_ad
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ad .. :try_end_ad} :catch_64
    .catchall {:try_start_ad .. :try_end_ad} :catchall_78

    move/from16 v36, v3

    move/from16 v35, v4

    move-object v2, v6

    move/from16 v37, v8

    move/from16 v6, v28

    move/from16 v8, v29

    move-object/from16 v3, v34

    move-object/from16 v28, v5

    move-object v5, v7

    move/from16 v7, v26

    :goto_ca
    move-object/from16 v4, v31

    goto/16 :goto_be

    :catchall_78
    move-exception v0

    goto :goto_c5

    :cond_52
    move-object/from16 v2, p1

    move-object/from16 v3, v29

    move-object/from16 v5, v38

    goto :goto_ca

    :catchall_79
    move-exception v0

    :goto_cb
    move-object/from16 v31, v4

    goto/16 :goto_c0

    :catch_69
    move-exception v0

    :goto_cc
    move-object/from16 v31, v4

    goto/16 :goto_c1

    :catchall_7a
    move-exception v0

    move-object/from16 v29, v3

    goto :goto_cb

    :catch_6a
    move-exception v0

    move-object/from16 v29, v3

    goto :goto_cc

    :cond_53
    move-object/from16 v29, v3

    move-object/from16 v31, v4

    move-object/from16 v2, v29

    :goto_cd
    move-object/from16 v45, v11

    move-object/from16 v3, v27

    move-object/from16 v40, v28

    goto :goto_ce

    :cond_54
    move-object/from16 v31, v2

    move/from16 v6, v26

    move-object/from16 v2, p1

    goto :goto_cd

    .line 216
    :goto_ce
    :try_start_ae
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_ae
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ae .. :try_end_ae} :catch_8b
    .catchall {:try_start_ae .. :try_end_ae} :catchall_bb

    if-eqz v0, :cond_5b

    :try_start_af
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting remote page id "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 218
    const-string v0, ":"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    .line 219
    new-array v11, v7, [Ljava/lang/String;

    invoke-interface {v0, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 220
    check-cast v0, [Ljava/lang/String;
    :try_end_af
    .catch Ljava/util/concurrent/CancellationException; {:try_start_af .. :try_end_af} :catch_6b
    .catchall {:try_start_af .. :try_end_af} :catchall_7c

    .line 221
    :try_start_b0
    aget-object v11, v0, v7

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    const/16 v19, 0x1

    aget-object v0, v0, v19

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v43

    invoke-virtual/range {v40 .. v45}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->deletePageFromList(JJLjava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_7b

    const/16 v11, 0x190

    :cond_55
    const/16 v12, 0x195

    goto/16 :goto_d4

    :catchall_7b
    move-exception v0

    .line 222
    :try_start_b1
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 223
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    instance-of v7, v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v7, :cond_56

    move-object v7, v0

    check-cast v7, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 225
    iget v7, v7, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    const/16 v11, 0x190

    if-ne v7, v11, :cond_57

    const/4 v7, 0x1

    goto :goto_d0

    :cond_56
    const/16 v11, 0x190

    :cond_57
    const/4 v7, 0x0

    :goto_d0
    if-nez v7, :cond_55

    .line 226
    instance-of v7, v0, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    if-eqz v7, :cond_58

    move-object v7, v0

    check-cast v7, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 227
    iget v7, v7, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    const/16 v12, 0x195

    if-ne v7, v12, :cond_59

    const/4 v7, 0x1

    goto :goto_d1

    :cond_58
    const/16 v12, 0x195

    :cond_59
    const/4 v7, 0x0

    :goto_d1
    if-eqz v7, :cond_5a

    goto :goto_d4

    .line 228
    :cond_5a
    throw v0

    :catchall_7c
    move-exception v0

    move-object/from16 v27, v3

    move-object v8, v14

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v6, v35

    move/from16 v3, v36

    move/from16 v5, v37

    move-object/from16 v4, v39

    :goto_d2
    move-object/from16 v10, v40

    goto/16 :goto_13e

    :catch_6b
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move/from16 v10, v37

    move-object/from16 v4, v39

    :goto_d3
    move-object/from16 v5, v40

    goto/16 :goto_147

    .line 229
    :goto_d4
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_b1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b1 .. :try_end_b1} :catch_6b
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_7c

    goto/16 :goto_cf

    .line 230
    :cond_5b
    :try_start_b2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 231
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_b2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b2 .. :try_end_b2} :catch_8b
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_bb

    move-object v5, v2

    move-object/from16 p1, v3

    move-object v2, v4

    move v7, v6

    move-object/from16 v38, v15

    move/from16 v15, v35

    move/from16 v6, v36

    move/from16 v11, v37

    move-object/from16 v3, v40

    move-object/from16 v4, v45

    const/4 v12, 0x0

    :goto_d5
    :try_start_b3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_b3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b3 .. :try_end_b3} :catch_8a
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_ba

    if-eqz v17, :cond_63

    move/from16 v17, v7

    add-int/lit8 v7, v12, 0x1

    :try_start_b4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move/from16 v26, v7

    move-object/from16 v7, v18

    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingList;
    :try_end_b4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b4 .. :try_end_b4} :catch_76
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_89

    move/from16 v18, v8

    .line 232
    :try_start_b5
    iget-object v8, v13, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;
    :try_end_b5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b5 .. :try_end_b5} :catch_75
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_88

    move/from16 v27, v15

    move-object/from16 v15, v39

    .line 233
    :try_start_b6
    invoke-virtual {v8, v15, v0, v12}, Lorg/wikipedia/views/NotificationWithProgressBar;->setNotificationProgress(Landroid/content/Context;II)V
    :try_end_b6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b6 .. :try_end_b6} :catch_74
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_87

    .line 234
    :try_start_b7
    new-instance v8, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;
    :try_end_b7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b7 .. :try_end_b7} :catch_73
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_86

    move-object/from16 v39, v15

    :try_start_b8
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    move-result-object v15

    move/from16 v28, v12

    .line 235
    iget-object v12, v7, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 236
    invoke-direct {v8, v15, v12}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b8 .. :try_end_b8} :catch_72
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_85

    move v15, v11

    .line 237
    :try_start_b9
    iget-wide v11, v7, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J
    :try_end_b9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b9 .. :try_end_b9} :catch_70
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_82

    const-wide/16 v34, 0x0

    cmp-long v11, v11, v34

    if-lez v11, :cond_5d

    .line 238
    :try_start_ba
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v11

    if-nez v11, :cond_5c

    .line 239
    iget-boolean v11, v7, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    if-eqz v11, :cond_5c

    .line 240
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_ba
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ba .. :try_end_ba} :catch_6d
    .catchall {:try_start_ba .. :try_end_ba} :catchall_7e

    move/from16 v29, v15

    :try_start_bb
    const-string v15, "Updating info for remote list "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 241
    iget-wide v11, v7, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 242
    invoke-virtual {v3, v11, v12, v4, v8}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->updateList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)V
    :try_end_bb
    .catch Ljava/util/concurrent/CancellationException; {:try_start_bb .. :try_end_bb} :catch_6c
    .catchall {:try_start_bb .. :try_end_bb} :catchall_7d

    :goto_d6
    const/4 v8, 0x1

    goto/16 :goto_db

    :catchall_7d
    move-exception v0

    :goto_d7
    move-object v10, v3

    move-object v2, v5

    move v3, v6

    move-object v8, v14

    move/from16 v6, v27

    move/from16 v5, v29

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v15, v38

    move-object/from16 v4, v39

    :goto_d8
    move-object/from16 v27, p1

    goto/16 :goto_13e

    :catch_6c
    move-exception v0

    :goto_d9
    move-object v2, v5

    move/from16 v36, v6

    move/from16 v35, v27

    move/from16 v10, v29

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v39

    move-object/from16 v27, p1

    move-object v5, v3

    goto/16 :goto_147

    :catchall_7e
    move-exception v0

    move/from16 v29, v15

    goto :goto_d7

    :catch_6d
    move-exception v0

    move/from16 v29, v15

    goto :goto_d9

    :cond_5c
    move/from16 v29, v15

    goto :goto_da

    :cond_5d
    move/from16 v29, v15

    .line 243
    :try_start_bc
    invoke-virtual {v7}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    move-result v11
    :try_end_bc
    .catch Ljava/util/concurrent/CancellationException; {:try_start_bc .. :try_end_bc} :catch_71
    .catchall {:try_start_bc .. :try_end_bc} :catchall_83

    if-nez v11, :cond_5e

    .line 244
    :try_start_bd
    invoke-virtual {v8}, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Creating remote list "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3, v4, v8}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->createList(Ljava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;)J

    move-result-wide v11

    .line 246
    iput-wide v11, v7, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J
    :try_end_bd
    .catch Ljava/util/concurrent/CancellationException; {:try_start_bd .. :try_end_bd} :catch_6c
    .catchall {:try_start_bd .. :try_end_bd} :catchall_7d

    goto :goto_d6

    :cond_5e
    :goto_da
    const/4 v8, 0x0

    :goto_db
    if-eqz v8, :cond_62

    const/4 v15, 0x0

    .line 247
    :try_start_be
    iput-boolean v15, v7, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    .line 248
    sget-object v11, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v11

    invoke-virtual {v11}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    move-result-object v11

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_be
    .catch Ljava/util/concurrent/CancellationException; {:try_start_be .. :try_end_be} :catch_71
    .catchall {:try_start_be .. :try_end_be} :catchall_83

    :try_start_bf
    move-object/from16 v12, v31

    check-cast v12, Ljava/util/Set;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v12, p1

    check-cast v12, Ljava/util/Set;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_bf
    .catch Ljava/util/concurrent/CancellationException; {:try_start_bf .. :try_end_bf} :catch_71
    .catchall {:try_start_bf .. :try_end_bf} :catchall_84

    :try_start_c0
    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v12, 0x0

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$20:Ljava/util/Iterator;
    :try_end_c0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c0 .. :try_end_c0} :catch_71
    .catchall {:try_start_c0 .. :try_end_c0} :catchall_83

    move/from16 v15, v29

    :try_start_c1
    iput v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I
    :try_end_c1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c1 .. :try_end_c1} :catch_70
    .catchall {:try_start_c1 .. :try_end_c1} :catchall_82

    move/from16 v12, v27

    :try_start_c2
    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move-object/from16 v27, v2

    move/from16 v2, v18

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I

    move/from16 v18, v2

    move/from16 v2, v17

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    iput v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v17, v2

    move/from16 v2, v26

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    move/from16 v26, v2

    move/from16 v2, v28

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$7:I

    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$8:I

    const/16 v2, 0x12

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I
    :try_end_c2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c2 .. :try_end_c2} :catch_6f
    .catchall {:try_start_c2 .. :try_end_c2} :catchall_81

    :try_start_c3
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    invoke-static {v7}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 250
    iget-object v7, v11, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v8, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$updateLists$2;
    :try_end_c3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c3 .. :try_end_c3} :catch_6f
    .catchall {:try_start_c3 .. :try_end_c3} :catchall_80

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_c4
    invoke-direct {v8, v11, v2, v3, v4}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$updateLists$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    .line 251
    invoke-static {v7, v1, v8}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    .line 252
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    :try_end_c4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c4 .. :try_end_c4} :catch_6e
    .catchall {:try_start_c4 .. :try_end_c4} :catchall_7f

    if-ne v2, v3, :cond_5f

    goto :goto_dc

    :cond_5f
    move-object/from16 v2, v22

    :goto_dc
    if-ne v2, v3, :cond_60

    :goto_dd
    move-object/from16 v7, v38

    goto :goto_de

    :cond_60
    move-object/from16 v2, v22

    goto :goto_dd

    :goto_de
    if-ne v2, v7, :cond_61

    goto/16 :goto_45

    :cond_61
    move v11, v15

    move/from16 v8, v18

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v29, p1

    move v15, v12

    move/from16 v12, v26

    :goto_df
    move-object/from16 v38, v7

    move/from16 v7, v17

    move-object/from16 p1, v29

    goto/16 :goto_d5

    :catchall_7f
    move-exception v0

    goto :goto_e3

    :catch_6e
    move-exception v0

    goto :goto_e1

    :catchall_80
    move-exception v0

    move-object/from16 v28, v3

    goto :goto_e3

    :goto_e0
    move-object/from16 v27, p1

    move-object v2, v5

    move v3, v6

    move v6, v12

    move-object v8, v14

    move v5, v15

    move-object/from16 v10, v28

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    goto/16 :goto_99

    :goto_e1
    move-object/from16 v27, p1

    move-object v2, v5

    move/from16 v36, v6

    move/from16 v35, v12

    move v10, v15

    move-object/from16 v5, v28

    :goto_e2
    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    goto/16 :goto_40

    :catchall_81
    move-exception v0

    move-object/from16 v28, v3

    :goto_e3
    move-object/from16 v7, v38

    goto :goto_e0

    :catch_6f
    move-exception v0

    move-object/from16 v28, v3

    goto :goto_e1

    :catchall_82
    move-exception v0

    move-object/from16 v28, v3

    :goto_e4
    move/from16 v12, v27

    goto :goto_e3

    :catch_70
    move-exception v0

    move-object/from16 v28, v3

    :goto_e5
    move/from16 v12, v27

    goto :goto_e1

    :catchall_83
    move-exception v0

    move-object/from16 v28, v3

    move/from16 v12, v27

    move/from16 v15, v29

    goto :goto_e3

    :catch_71
    move-exception v0

    move-object/from16 v28, v3

    move/from16 v12, v27

    move/from16 v15, v29

    goto :goto_e1

    :catchall_84
    move-exception v0

    move-object/from16 v28, v3

    move/from16 v12, v27

    move/from16 v15, v29

    goto :goto_e3

    :cond_62
    move-object/from16 v28, v3

    move/from16 v12, v27

    move/from16 v15, v29

    move-object/from16 v27, v2

    move-object/from16 v29, v4

    move v11, v15

    move/from16 v7, v17

    move/from16 v8, v18

    move v15, v12

    move/from16 v12, v26

    goto/16 :goto_d5

    :catchall_85
    move-exception v0

    move-object/from16 v28, v3

    move v15, v11

    goto :goto_e4

    :catch_72
    move-exception v0

    move-object/from16 v28, v3

    move v15, v11

    goto :goto_e5

    :catchall_86
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v39, v15

    move/from16 v12, v27

    :goto_e6
    move-object/from16 v7, v38

    move v15, v11

    goto :goto_e0

    :catch_73
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v39, v15

    move/from16 v12, v27

    :goto_e7
    move v15, v11

    goto :goto_e1

    :catchall_87
    move-exception v0

    move-object/from16 v39, v15

    move/from16 v12, v27

    :goto_e8
    move-object/from16 v28, v3

    goto :goto_e6

    :catch_74
    move-exception v0

    move-object/from16 v39, v15

    move/from16 v12, v27

    :goto_e9
    move-object/from16 v28, v3

    goto :goto_e7

    :catchall_88
    move-exception v0

    move v12, v15

    goto :goto_e8

    :catch_75
    move-exception v0

    move v12, v15

    goto :goto_e9

    :catchall_89
    move-exception v0

    move-object/from16 v28, v3

    move v12, v15

    goto :goto_e6

    :catch_76
    move-exception v0

    move-object/from16 v28, v3

    move v12, v15

    goto :goto_e7

    :cond_63
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move v12, v15

    move-object/from16 v7, v38

    move v15, v11

    .line 253
    :try_start_c5
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_c5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c5 .. :try_end_c5} :catch_89
    .catchall {:try_start_c5 .. :try_end_c5} :catchall_b9

    move-object/from16 v3, p1

    move-object/from16 p1, v2

    move v11, v6

    move/from16 v8, v17

    move/from16 v10, v18

    move-object/from16 v2, v28

    move-object/from16 v4, v29

    :goto_ea
    move v6, v0

    :goto_eb
    :try_start_c6
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_c6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c6 .. :try_end_c6} :catch_88
    .catchall {:try_start_c6 .. :try_end_c6} :catchall_b8

    if-eqz v0, :cond_75

    :try_start_c7
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_c7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c7 .. :try_end_c7} :catch_87
    .catchall {:try_start_c7 .. :try_end_c7} :catchall_b7

    move-object/from16 v17, v3

    :try_start_c8
    move-object v3, v0

    check-cast v3, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 254
    iget-object v0, v3, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;
    :try_end_c8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c8 .. :try_end_c8} :catch_86
    .catchall {:try_start_c8 .. :try_end_c8} :catchall_b6

    move-object/from16 v38, v7

    .line 255
    :try_start_c9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ec
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_c9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c9 .. :try_end_c9} :catch_86
    .catchall {:try_start_c9 .. :try_end_c9} :catchall_b5

    if-eqz v18, :cond_65

    move/from16 v18, v6

    :try_start_ca
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move/from16 v22, v8

    move-object v8, v6

    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingListPage;
    :try_end_ca
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ca .. :try_end_ca} :catch_78
    .catchall {:try_start_ca .. :try_end_ca} :catchall_8b

    move/from16 v26, v10

    move/from16 v27, v11

    .line 257
    :try_start_cb
    iget-wide v10, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    const-wide/16 v28, 0x1

    cmp-long v8, v10, v28

    if-gez v8, :cond_64

    .line 258
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cb
    .catch Ljava/util/concurrent/CancellationException; {:try_start_cb .. :try_end_cb} :catch_77
    .catchall {:try_start_cb .. :try_end_cb} :catchall_8a

    :cond_64
    move/from16 v6, v18

    move/from16 v8, v22

    move/from16 v10, v26

    move/from16 v11, v27

    goto :goto_ec

    :catchall_8a
    move-exception v0

    :goto_ed
    move-object v10, v2

    move-object v2, v5

    move v6, v12

    move-object v8, v14

    move v5, v15

    move/from16 v3, v27

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    :goto_ee
    move-object/from16 v15, v38

    move-object/from16 v4, v39

    :goto_ef
    move-object/from16 v27, v17

    goto/16 :goto_13e

    :catch_77
    move-exception v0

    :goto_f0
    move-object v4, v5

    move-object v5, v2

    move-object v2, v4

    move/from16 v35, v12

    move v10, v15

    move/from16 v36, v27

    :goto_f1
    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    :goto_f2
    move-object/from16 v4, v39

    :goto_f3
    move-object/from16 v27, v17

    goto/16 :goto_147

    :catchall_8b
    move-exception v0

    move/from16 v27, v11

    goto :goto_ed

    :catch_78
    move-exception v0

    move/from16 v27, v11

    goto :goto_f0

    :cond_65
    move/from16 v18, v6

    move/from16 v22, v8

    move/from16 v26, v10

    move/from16 v27, v11

    .line 259
    :try_start_cc
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_cc
    .catch Ljava/util/concurrent/CancellationException; {:try_start_cc .. :try_end_cc} :catch_85
    .catchall {:try_start_cc .. :try_end_cc} :catchall_b4

    if-eqz v10, :cond_66

    :try_start_cd
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 261
    check-cast v10, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 262
    invoke-static {v10}, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->remoteEntryFromLocalPage(Lorg/wikipedia/readinglist/database/ReadingListPage;)Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    move-result-object v10

    .line 263
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cd
    .catch Ljava/util/concurrent/CancellationException; {:try_start_cd .. :try_end_cd} :catch_77
    .catchall {:try_start_cd .. :try_end_cd} :catchall_8a

    goto :goto_f4

    .line 264
    :cond_66
    :try_start_ce
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_ce
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ce .. :try_end_ce} :catch_85
    .catchall {:try_start_ce .. :try_end_ce} :catchall_b4

    if-eqz v0, :cond_67

    move-object/from16 v3, v17

    move/from16 v6, v18

    move/from16 v8, v22

    move/from16 v10, v26

    move/from16 v11, v27

    :goto_f5
    move-object/from16 v7, v38

    goto/16 :goto_eb

    .line 265
    :cond_67
    :try_start_cf
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_cf
    .catchall {:try_start_cf .. :try_end_cf} :catchall_a3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_69

    const/4 v10, 0x0

    .line 266
    :try_start_d0
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 267
    iget-object v0, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 268
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d0
    .catchall {:try_start_d0 .. :try_end_d0} :catchall_96

    move-object/from16 v11, v25

    :try_start_d1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 269
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingListPage;
    :try_end_d1
    .catchall {:try_start_d1 .. :try_end_d1} :catchall_93

    move-object/from16 v25, v9

    .line 270
    :try_start_d2
    iget-wide v8, v3, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 271
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v10, v28

    check-cast v10, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    invoke-virtual {v2, v8, v9, v4, v10}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->addPageToList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)J

    move-result-wide v8

    .line 272
    iput-wide v8, v0, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 273
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingListPage;

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_d2
    .catchall {:try_start_d2 .. :try_end_d2} :catchall_94

    :try_start_d3
    move-object/from16 v9, v31

    check-cast v9, Ljava/util/Set;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v9, v17

    check-cast v9, Ljava/util/Set;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_d3
    .catchall {:try_start_d3 .. :try_end_d3} :catchall_95

    const/4 v10, 0x0

    :try_start_d4
    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;
    :try_end_d4
    .catchall {:try_start_d4 .. :try_end_d4} :catchall_94

    move-object/from16 v9, v25

    :try_start_d5
    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;
    :try_end_d5
    .catchall {:try_start_d5 .. :try_end_d5} :catchall_93

    move-object/from16 v10, p1

    :try_start_d6
    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;
    :try_end_d6
    .catchall {:try_start_d6 .. :try_end_d6} :catchall_92

    move-object/from16 v25, v11

    const/4 v11, 0x0

    :try_start_d7
    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    iput-object v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$20:Ljava/util/Iterator;

    iput v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_d7
    .catchall {:try_start_d7 .. :try_end_d7} :catchall_91

    move/from16 v11, v27

    :try_start_d8
    iput v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I
    :try_end_d8
    .catchall {:try_start_d8 .. :try_end_d8} :catchall_90

    move/from16 v27, v12

    move/from16 v12, v26

    :try_start_d9
    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I
    :try_end_d9
    .catchall {:try_start_d9 .. :try_end_d9} :catchall_8f

    move/from16 v26, v12

    move/from16 v12, v22

    :try_start_da
    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I
    :try_end_da
    .catchall {:try_start_da .. :try_end_da} :catchall_8e

    move/from16 v22, v12

    move/from16 v12, v18

    :try_start_db
    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I
    :try_end_db
    .catchall {:try_start_db .. :try_end_db} :catchall_8d

    move/from16 v18, v12

    const/4 v12, 0x0

    :try_start_dc
    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    const/16 v12, 0x13

    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-virtual {v0, v8, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateReadingListPage(Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_dc
    .catchall {:try_start_dc .. :try_end_dc} :catchall_8c

    move-object/from16 v8, v38

    if-ne v0, v8, :cond_68

    move-object v15, v8

    goto/16 :goto_140

    :cond_68
    move-object/from16 v28, v2

    move-object v2, v5

    move-object/from16 v29, v9

    move-object v0, v10

    move/from16 v5, v18

    move/from16 v9, v26

    move/from16 v10, v27

    move/from16 v18, v11

    move-object/from16 v27, v13

    move-object/from16 v11, v17

    const/16 v17, 0x0

    :goto_f6
    move/from16 v12, v18

    move/from16 v18, v5

    move-object/from16 v5, v23

    move/from16 v23, v12

    move/from16 v12, v17

    move-object/from16 v17, v11

    move v11, v12

    move-object v12, v0

    move-object v13, v7

    move-object/from16 v38, v8

    move-object v8, v2

    move-object v7, v4

    move-object v2, v14

    move-object/from16 v4, v21

    move/from16 v21, v22

    move-object/from16 v14, v27

    move/from16 v22, v9

    move/from16 v27, v10

    move-object v10, v3

    move-object v9, v6

    move-object/from16 v3, v24

    move-object/from16 v6, v28

    move/from16 v24, v15

    move-object/from16 v15, v29

    goto/16 :goto_109

    :catchall_8c
    move-exception v0

    :goto_f7
    move-object/from16 v8, v38

    :goto_f8
    move/from16 v12, v26

    :goto_f9
    move-object/from16 v26, v2

    move-object v2, v8

    move/from16 v8, v22

    move-object/from16 v22, v7

    move-object v7, v6

    move v6, v11

    move v11, v12

    :goto_fa
    move-object v12, v10

    move-object v10, v3

    const/4 v3, 0x0

    goto/16 :goto_106

    :catchall_8d
    move-exception v0

    move/from16 v18, v12

    goto :goto_f7

    :catchall_8e
    move-exception v0

    move/from16 v22, v12

    goto :goto_f7

    :catchall_8f
    move-exception v0

    move/from16 v26, v12

    move-object/from16 v8, v38

    goto :goto_f9

    :catchall_90
    move-exception v0

    move/from16 v27, v12

    goto :goto_f7

    :catchall_91
    move-exception v0

    :goto_fb
    move/from16 v11, v27

    move-object/from16 v8, v38

    :goto_fc
    move/from16 v27, v12

    goto :goto_f8

    :catchall_92
    move-exception v0

    :goto_fd
    move-object/from16 v25, v11

    goto :goto_fb

    :catchall_93
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_fd

    :catchall_94
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v9, v25

    move-object/from16 v8, v38

    move-object/from16 v25, v11

    move/from16 v11, v27

    goto :goto_fc

    :catchall_95
    move-exception v0

    move-object/from16 v10, p1

    move-object/from16 v9, v25

    move-object/from16 v8, v38

    move-object/from16 v25, v11

    move/from16 v11, v27

    goto :goto_fc

    :catchall_96
    move-exception v0

    move-object/from16 v10, p1

    goto :goto_fb

    :cond_69
    move-object/from16 v10, p1

    move/from16 v11, v27

    move-object/from16 v8, v38

    move/from16 v27, v12

    .line 274
    :try_start_dd
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_dd
    .catchall {:try_start_dd .. :try_end_dd} :catchall_a2

    move-object/from16 v38, v8

    :try_start_de
    const-string v8, "Creating "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " new remote pages"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_de .. :try_end_de} :catchall_a1

    move v8, v11

    .line 275
    :try_start_df
    iget-wide v11, v3, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 276
    invoke-virtual {v2, v4, v11, v12, v6}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->addPagesToList(Ljava/lang/String;JLjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11
    :try_end_df
    .catchall {:try_start_df .. :try_end_df} :catchall_9e

    const/4 v12, 0x0

    :goto_fe
    if-ge v12, v11, :cond_6a

    .line 278
    :try_start_e0
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28
    :try_end_e0
    .catchall {:try_start_e0 .. :try_end_e0} :catchall_98

    move/from16 p1, v8

    :try_start_e1
    move-object/from16 v8, v28

    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingListPage;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Number;

    move/from16 v29, v11

    move/from16 v34, v12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 279
    iput-wide v11, v8, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J
    :try_end_e1
    .catchall {:try_start_e1 .. :try_end_e1} :catchall_97

    add-int/lit8 v12, v34, 0x1

    move/from16 v8, p1

    move/from16 v11, v29

    goto :goto_fe

    :catchall_97
    move-exception v0

    :goto_ff
    move-object v12, v10

    move/from16 v8, v22

    move/from16 v11, v26

    move-object/from16 v26, v2

    move-object v10, v3

    move-object/from16 v22, v7

    move-object/from16 v2, v38

    const/4 v3, 0x0

    move-object v7, v6

    move/from16 v6, p1

    goto/16 :goto_106

    :catchall_98
    move-exception v0

    move/from16 p1, v8

    goto :goto_ff

    :cond_6a
    move/from16 p1, v8

    .line 280
    :try_start_e2
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    move-result-object v0

    iput-object v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_e2
    .catchall {:try_start_e2 .. :try_end_e2} :catchall_9f

    :try_start_e3
    move-object/from16 v8, v31

    check-cast v8, Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v8, v17

    check-cast v8, Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_e3
    .catchall {:try_start_e3 .. :try_end_e3} :catchall_a0

    const/4 v8, 0x0

    :try_start_e4
    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v4, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$20:Ljava/util/Iterator;

    iput v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_e4
    .catchall {:try_start_e4 .. :try_end_e4} :catchall_9f

    move/from16 v8, p1

    :try_start_e5
    iput v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I
    :try_end_e5
    .catchall {:try_start_e5 .. :try_end_e5} :catchall_9e

    move/from16 v12, v27

    :try_start_e6
    iput v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I
    :try_end_e6
    .catchall {:try_start_e6 .. :try_end_e6} :catchall_9d

    move/from16 v11, v26

    :try_start_e7
    iput v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I
    :try_end_e7
    .catchall {:try_start_e7 .. :try_end_e7} :catchall_9c

    move-object/from16 v26, v2

    move/from16 v2, v22

    :try_start_e8
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I
    :try_end_e8
    .catchall {:try_start_e8 .. :try_end_e8} :catchall_9b

    move/from16 v22, v2

    move/from16 v2, v18

    :try_start_e9
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I
    :try_end_e9
    .catchall {:try_start_e9 .. :try_end_e9} :catchall_9a

    move/from16 v18, v2

    const/4 v2, 0x0

    :try_start_ea
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    const/16 v2, 0x14

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-virtual {v0, v7, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateReadingListPages(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ea
    .catchall {:try_start_ea .. :try_end_ea} :catchall_99

    move-object/from16 v2, v38

    if-ne v0, v2, :cond_6b

    :goto_100
    move-object v15, v2

    goto/16 :goto_140

    :cond_6b
    move-object/from16 v29, v9

    move v9, v11

    move-object/from16 v27, v13

    move-object/from16 v11, v17

    move/from16 v0, v18

    move-object/from16 v28, v26

    const/16 v17, 0x0

    move/from16 v18, v8

    move/from16 v8, v22

    move-object/from16 v22, v7

    move-object v7, v10

    move v10, v12

    :goto_101
    move/from16 v12, v17

    move-object/from16 v17, v11

    move v11, v12

    move-object/from16 v38, v2

    move-object v12, v7

    move-object v2, v14

    move-object/from16 v13, v22

    move-object/from16 v14, v27

    move-object v7, v4

    move/from16 v22, v9

    move/from16 v27, v10

    move-object/from16 v4, v21

    move-object v10, v3

    move-object v9, v6

    move/from16 v21, v8

    move-object/from16 v3, v24

    move-object/from16 v6, v28

    move-object v8, v5

    move/from16 v24, v15

    move-object/from16 v5, v23

    move-object/from16 v15, v29

    move/from16 v23, v18

    move/from16 v18, v0

    goto/16 :goto_109

    :catchall_99
    move-exception v0

    :goto_102
    move-object/from16 v2, v38

    :goto_103
    move-object/from16 v27, v7

    move-object v7, v6

    move v6, v8

    move/from16 v8, v22

    move-object/from16 v22, v27

    move/from16 v27, v12

    goto/16 :goto_fa

    :catchall_9a
    move-exception v0

    move/from16 v18, v2

    goto :goto_102

    :catchall_9b
    move-exception v0

    move/from16 v22, v2

    goto :goto_102

    :catchall_9c
    move-exception v0

    :goto_104
    move-object/from16 v26, v2

    goto :goto_102

    :catchall_9d
    move-exception v0

    move/from16 v11, v26

    goto :goto_104

    :catchall_9e
    move-exception v0

    :goto_105
    move/from16 v11, v26

    move/from16 v12, v27

    goto :goto_104

    :catchall_9f
    move-exception v0

    move/from16 v8, p1

    goto :goto_105

    :catchall_a0
    move-exception v0

    move/from16 v8, p1

    move/from16 v11, v26

    move/from16 v12, v27

    move-object/from16 v26, v2

    goto :goto_102

    :catchall_a1
    move-exception v0

    move v8, v11

    goto :goto_105

    :catchall_a2
    move-exception v0

    move/from16 v12, v26

    move-object/from16 v26, v2

    move-object v2, v8

    move v8, v11

    move v11, v12

    move/from16 v12, v27

    goto :goto_103

    :catchall_a3
    move-exception v0

    move-object/from16 v10, p1

    move/from16 v11, v26

    move/from16 v8, v27

    goto :goto_104

    .line 281
    :goto_106
    :try_start_eb
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p1, v3

    move-object/from16 v3, v24

    invoke-static {v3, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v24

    if-eqz v24, :cond_6c

    move v11, v6

    const/4 v12, 0x1

    move-object/from16 v3, v17

    move-object/from16 v2, v26

    goto/16 :goto_11c

    :cond_6c
    move-object/from16 v47, v21

    move-object/from16 v21, v4

    move-object/from16 v4, v47

    .line 282
    invoke-static {v4, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v24
    :try_end_eb
    .catch Ljava/util/concurrent/CancellationException; {:try_start_eb .. :try_end_eb} :catch_84
    .catchall {:try_start_eb .. :try_end_eb} :catchall_b3

    if-nez v24, :cond_6e

    move-object/from16 v24, v5

    move-object/from16 v5, v23

    .line 283
    :try_start_ec
    invoke-static {v5, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v23

    if-eqz v23, :cond_6d

    move-object/from16 v23, v9

    move-object v9, v7

    move-object/from16 v7, v21

    move/from16 v21, v8

    move-object/from16 v8, v24

    move/from16 v24, v15

    move-object/from16 v15, v23

    move-object/from16 v38, v2

    move/from16 v23, v6

    move-object v2, v14

    move-object/from16 v6, v26

    move-object v14, v13

    move-object/from16 v13, v22

    move/from16 v22, v11

    const/4 v11, 0x1

    goto :goto_109

    .line 284
    :cond_6d
    throw v0
    :try_end_ec
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ec .. :try_end_ec} :catch_79
    .catchall {:try_start_ec .. :try_end_ec} :catchall_a4

    :catchall_a4
    move-exception v0

    :goto_107
    move v3, v6

    move-object v8, v14

    move v5, v15

    move-object/from16 v10, v26

    move/from16 v6, v27

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v39

    move-object v15, v2

    move-object/from16 v27, v17

    move-object/from16 v2, v24

    goto/16 :goto_13e

    :catch_79
    move-exception v0

    :goto_108
    move/from16 v36, v6

    move v10, v15

    move-object/from16 v2, v24

    move-object/from16 v5, v26

    move/from16 v35, v27

    goto/16 :goto_f1

    :cond_6e
    move-object/from16 v24, v5

    move-object/from16 v5, v23

    move-object/from16 v23, v9

    move-object v9, v7

    move-object/from16 v7, v21

    move/from16 v21, v8

    move-object/from16 v8, v24

    move/from16 v24, v15

    move-object/from16 v15, v23

    move-object/from16 v38, v2

    move/from16 v23, v6

    move-object v2, v14

    move-object/from16 v6, v26

    move-object v14, v13

    move-object/from16 v13, v22

    move/from16 v22, v11

    move/from16 v11, p1

    :goto_109
    if-eqz v11, :cond_74

    move/from16 p1, v11

    .line 285
    :try_start_ed
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v11
    :try_end_ed
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ed .. :try_end_ed} :catch_83
    .catchall {:try_start_ed .. :try_end_ed} :catchall_b2

    move-object/from16 v26, v12

    const/4 v12, 0x0

    :goto_10a
    if-ge v12, v11, :cond_72

    .line 286
    :try_start_ee
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move/from16 v28, v11

    move-object v11, v0

    check-cast v11, Lorg/wikipedia/readinglist/database/ReadingListPage;
    :try_end_ee
    .catch Ljava/util/concurrent/CancellationException; {:try_start_ee .. :try_end_ee} :catch_7b
    .catchall {:try_start_ee .. :try_end_ee} :catchall_aa

    .line 287
    :try_start_ef
    iget-object v0, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;
    :try_end_ef
    .catchall {:try_start_ef .. :try_end_ef} :catchall_a8

    move-object/from16 v29, v13

    .line 288
    :try_start_f0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_f0
    .catchall {:try_start_f0 .. :try_end_f0} :catchall_a7

    move-object/from16 v34, v2

    move-object/from16 v2, v25

    :try_start_f1
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_f1 .. :try_end_f1} :catchall_a6

    move-object/from16 v25, v14

    .line 289
    :try_start_f2
    iget-wide v13, v10, Lorg/wikipedia/readinglist/database/ReadingList;->remoteId:J

    .line 290
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;

    invoke-virtual {v6, v13, v14, v7, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->addPageToList(JLjava/lang/String;Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;)J

    move-result-wide v13

    .line 291
    iput-wide v13, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J
    :try_end_f2
    .catchall {:try_start_f2 .. :try_end_f2} :catchall_a5

    :cond_6f
    move-object/from16 v35, v2

    goto/16 :goto_110

    :catchall_a5
    move-exception v0

    goto :goto_10d

    :catchall_a6
    move-exception v0

    :goto_10b
    move-object/from16 v25, v14

    goto :goto_10d

    :catchall_a7
    move-exception v0

    move-object/from16 v34, v2

    :goto_10c
    move-object/from16 v2, v25

    goto :goto_10b

    :catchall_a8
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v29, v13

    goto :goto_10c

    .line 292
    :goto_10d
    :try_start_f3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v13

    if-eqz v13, :cond_70

    move-object/from16 v35, v2

    const/4 v2, 0x1

    goto/16 :goto_111

    .line 293
    :cond_70
    invoke-static {v4, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v13

    if-nez v13, :cond_6f

    .line 294
    invoke-static {v5, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v13

    if-eqz v13, :cond_71

    const-wide/32 v13, 0x7fffffff

    .line 295
    iput-wide v13, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->remoteId:J

    .line 296
    new-instance v0, Ljava/lang/RuntimeException;

    .line 297
    iget-object v13, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 298
    iget-object v11, v11, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 299
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v2

    const-string v2, "Attempted to sync malformed page: "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->logRemoteError(Ljava/lang/Throwable;)V

    goto :goto_110

    :catchall_a9
    move-exception v0

    :goto_10e
    move-object v10, v6

    move-object v2, v8

    move-object v9, v15

    move/from16 v3, v23

    move/from16 v5, v24

    move-object/from16 v13, v25

    move/from16 v6, v27

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v8, v34

    goto/16 :goto_ee

    :catch_7a
    move-exception v0

    :goto_10f
    move-object v5, v6

    move-object v2, v8

    move/from16 v36, v23

    move/from16 v10, v24

    move-object/from16 v13, v25

    move/from16 v35, v27

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v14, v34

    goto/16 :goto_f2

    .line 300
    :cond_71
    throw v0
    :try_end_f3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f3 .. :try_end_f3} :catch_7a
    .catchall {:try_start_f3 .. :try_end_f3} :catchall_a9

    :goto_110
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v14, v25

    move/from16 v11, v28

    move-object/from16 v13, v29

    move-object/from16 v2, v34

    move-object/from16 v25, v35

    goto/16 :goto_10a

    :catchall_aa
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v25, v14

    goto :goto_10e

    :catch_7b
    move-exception v0

    move-object/from16 v34, v2

    move-object/from16 v25, v14

    goto :goto_10f

    :cond_72
    move-object/from16 v34, v2

    move-object/from16 v29, v13

    move-object/from16 v35, v25

    move-object/from16 v25, v14

    move/from16 v2, v27

    .line 301
    :goto_111
    :try_start_f4
    sget-object v0, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    move-result-object v0

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;
    :try_end_f4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f4 .. :try_end_f4} :catch_81
    .catchall {:try_start_f4 .. :try_end_f4} :catchall_b0

    :try_start_f5
    move-object/from16 v9, v31

    check-cast v9, Ljava/util/Set;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v9, v17

    check-cast v9, Ljava/util/Set;

    iput-object v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;
    :try_end_f5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f5 .. :try_end_f5} :catch_82
    .catchall {:try_start_f5 .. :try_end_f5} :catchall_b1

    const/4 v10, 0x0

    :try_start_f6
    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v15, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;
    :try_end_f6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f6 .. :try_end_f6} :catch_81
    .catchall {:try_start_f6 .. :try_end_f6} :catchall_b0

    move-object/from16 v13, v25

    :try_start_f7
    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;
    :try_end_f7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f7 .. :try_end_f7} :catch_80
    .catchall {:try_start_f7 .. :try_end_f7} :catchall_af

    move-object/from16 v14, v34

    :try_start_f8
    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v7, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    const/4 v10, 0x0

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    move-object/from16 v12, v26

    iput-object v12, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$20:Ljava/util/Iterator;
    :try_end_f8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f8 .. :try_end_f8} :catch_7f
    .catchall {:try_start_f8 .. :try_end_f8} :catchall_ae

    move/from16 v9, v24

    :try_start_f9
    iput v9, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I
    :try_end_f9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f9 .. :try_end_f9} :catch_7e
    .catchall {:try_start_f9 .. :try_end_f9} :catchall_ad

    move/from16 v10, v23

    :try_start_fa
    iput v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    move/from16 v11, v22

    iput v11, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$3:I
    :try_end_fa
    .catch Ljava/util/concurrent/CancellationException; {:try_start_fa .. :try_end_fa} :catch_7d
    .catchall {:try_start_fa .. :try_end_fa} :catchall_ac

    move/from16 v22, v2

    move/from16 v2, v21

    :try_start_fb
    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$4:I

    move/from16 v21, v2

    move/from16 v2, v18

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$5:I

    move/from16 v18, v2

    move/from16 v2, p1

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$6:I

    const/16 v2, 0x15

    iput v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    move-object/from16 v2, v29

    invoke-virtual {v0, v2, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->updateReadingListPages(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_fb
    .catch Ljava/util/concurrent/CancellationException; {:try_start_fb .. :try_end_fb} :catch_7c
    .catchall {:try_start_fb .. :try_end_fb} :catchall_ab

    move-object/from16 v2, v38

    if-ne v0, v2, :cond_73

    goto/16 :goto_100

    :cond_73
    move-object v0, v15

    move v15, v9

    move-object v9, v0

    move v0, v11

    move v11, v10

    move v10, v0

    move/from16 v0, v18

    move-object/from16 v18, v12

    move/from16 v12, v22

    :goto_112
    move-object/from16 v24, v3

    move-object/from16 v23, v5

    move-object v5, v8

    move-object/from16 v3, v17

    move-object/from16 p1, v18

    move/from16 v8, v21

    move-object/from16 v25, v35

    move-object/from16 v21, v4

    move-object v4, v7

    move-object v7, v2

    move-object v2, v6

    goto/16 :goto_ea

    :catchall_ab
    move-exception v0

    :goto_113
    move-object/from16 v2, v38

    move v5, v9

    move v3, v10

    move-object v9, v15

    move-object/from16 v27, v17

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v39

    move-object v15, v2

    move-object v10, v6

    move-object v2, v8

    move-object v8, v14

    move/from16 v6, v22

    goto/16 :goto_13e

    :catch_7c
    move-exception v0

    :goto_114
    move-object v5, v6

    move-object v2, v8

    move/from16 v36, v10

    move-object/from16 v27, v17

    move/from16 v35, v22

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v39

    goto/16 :goto_9

    :catchall_ac
    move-exception v0

    move/from16 v22, v2

    goto :goto_113

    :catch_7d
    move-exception v0

    move/from16 v22, v2

    goto :goto_114

    :catchall_ad
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    goto :goto_113

    :catch_7e
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    goto :goto_114

    :catchall_ae
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    move/from16 v9, v24

    goto :goto_113

    :catch_7f
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    move/from16 v9, v24

    goto :goto_114

    :catchall_af
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    move/from16 v9, v24

    :goto_115
    move-object/from16 v14, v34

    goto :goto_113

    :catch_80
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    move/from16 v9, v24

    :goto_116
    move-object/from16 v14, v34

    goto :goto_114

    :catchall_b0
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    move/from16 v9, v24

    move-object/from16 v13, v25

    goto :goto_115

    :catch_81
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    move/from16 v9, v24

    move-object/from16 v13, v25

    goto :goto_116

    :catchall_b1
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    move/from16 v9, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v34

    goto/16 :goto_113

    :catch_82
    move-exception v0

    move/from16 v22, v2

    move/from16 v10, v23

    move/from16 v9, v24

    move-object/from16 v13, v25

    goto :goto_116

    :catchall_b2
    move-exception v0

    move-object v13, v14

    move/from16 v10, v23

    move/from16 v9, v24

    move-object v14, v2

    move-object/from16 v2, v38

    move v5, v9

    move v3, v10

    move-object v9, v15

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v39

    move-object v15, v2

    move-object v10, v6

    move-object v2, v8

    move-object v8, v14

    move/from16 v6, v27

    goto/16 :goto_ef

    :catch_83
    move-exception v0

    move-object v13, v14

    move/from16 v10, v23

    move/from16 v9, v24

    move-object v14, v2

    move-object v5, v6

    move-object v2, v8

    move/from16 v36, v10

    move/from16 v35, v27

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    move-object/from16 v4, v39

    move v10, v9

    goto/16 :goto_f3

    :cond_74
    move-object v13, v14

    move/from16 v11, v22

    move/from16 v10, v23

    move/from16 v9, v24

    move-object v14, v2

    move-object/from16 p1, v15

    move v15, v9

    move-object/from16 v9, p1

    move/from16 p1, v11

    move v11, v10

    move/from16 v10, p1

    move-object/from16 v24, v3

    move-object/from16 v23, v5

    move-object v2, v6

    move-object v5, v8

    move-object/from16 p1, v12

    move-object/from16 v3, v17

    move/from16 v6, v18

    move/from16 v8, v21

    move/from16 v12, v27

    move-object/from16 v21, v4

    move-object v4, v7

    goto/16 :goto_f5

    :catchall_b3
    move-exception v0

    move-object/from16 v24, v5

    goto/16 :goto_107

    :catch_84
    move-exception v0

    move-object/from16 v24, v5

    goto/16 :goto_108

    :catchall_b4
    move-exception v0

    move-object/from16 v26, v2

    move/from16 v8, v27

    :goto_117
    move-object/from16 v2, v38

    :goto_118
    move v3, v15

    move-object v15, v2

    move-object v2, v5

    move v5, v3

    move v3, v8

    move v6, v12

    move-object v8, v14

    move-object/from16 v27, v17

    move-object/from16 v10, v26

    move-object/from16 v12, v30

    move-object/from16 v29, v31

    move-object/from16 v11, v32

    move-object/from16 v7, v33

    goto/16 :goto_3c

    :catch_85
    move-exception v0

    move-object/from16 v26, v2

    move/from16 v8, v27

    :goto_119
    move-object v2, v5

    move/from16 v36, v8

    move/from16 v35, v12

    move v10, v15

    move-object/from16 v27, v17

    move-object/from16 v5, v26

    goto/16 :goto_e2

    :catchall_b5
    move-exception v0

    move-object/from16 v26, v2

    move v8, v11

    goto :goto_117

    :catch_86
    move-exception v0

    move-object/from16 v26, v2

    :goto_11a
    move v8, v11

    goto :goto_119

    :catchall_b6
    move-exception v0

    move-object/from16 v26, v2

    :goto_11b
    move-object v2, v7

    move v8, v11

    goto :goto_118

    :catchall_b7
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v17, v3

    goto :goto_11b

    :catch_87
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v17, v3

    goto :goto_11a

    :cond_75
    move-object/from16 v26, v2

    move-object/from16 v17, v3

    move v8, v11

    .line 302
    :goto_11c
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 303
    iget-object v0, v2, Lorg/wikipedia/readinglist/sync/ReadingListClient;->lastDateHeader:Lj$/time/Instant;

    if-eqz v0, :cond_77

    .line 304
    invoke-virtual {v0}, Lj$/time/Instant;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_76

    goto :goto_11d

    :cond_76
    move-object v14, v0

    :cond_77
    :goto_11d
    const v1, 0x7f12065c

    .line 305
    invoke-static {v1, v14}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 306
    invoke-static/range {v31 .. v31}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 307
    invoke-static {v3}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 308
    iget-object v0, v13, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    move-object/from16 v4, v39

    .line 309
    invoke-virtual {v0, v4}, Lorg/wikipedia/views/NotificationWithProgressBar;->cancelNotification(Landroid/content/Context;)V

    if-eqz v15, :cond_78

    move-object/from16 v10, v33

    .line 310
    invoke-virtual {v5, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 311
    new-instance v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    invoke-direct {v1, v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    invoke-static {v1}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    :cond_78
    if-nez v11, :cond_79

    if-eqz v12, :cond_7a

    :cond_79
    move-object/from16 v11, v32

    goto :goto_11f

    :cond_7a
    :goto_11e
    const/16 v20, 0x0

    goto :goto_120

    .line 312
    :goto_11f
    invoke-virtual {v5, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 313
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 314
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v8, 0x1

    .line 315
    invoke-virtual {v0, v11, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v12, :cond_7b

    move-object/from16 v7, v30

    .line 316
    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    :cond_7b
    invoke-static {v0}, Lokio/Path$Companion;->manualSync(Landroid/os/Bundle;)V

    goto :goto_11e

    .line 318
    :goto_120
    sput-boolean v20, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 319
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 320
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    goto/16 :goto_146

    :catchall_b8
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v17, v3

    move-object v2, v7

    move v8, v11

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    move v3, v15

    move-object v15, v2

    move-object v2, v5

    move v5, v3

    move v3, v8

    move v6, v12

    move-object v8, v14

    move-object/from16 v27, v17

    move-object/from16 v29, v31

    move-object v12, v7

    move-object v7, v10

    :goto_121
    move-object/from16 v10, v26

    goto/16 :goto_13e

    :catch_88
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v17, v3

    move v8, v11

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    move-object v2, v5

    move/from16 v36, v8

    move/from16 v35, v12

    move-object/from16 v27, v17

    move-object/from16 v5, v26

    :goto_122
    move-object/from16 v29, v31

    move-object v12, v7

    move-object v7, v10

    move v10, v15

    goto/16 :goto_147

    :catchall_b9
    move-exception v0

    move-object v2, v7

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    :goto_123
    move v3, v15

    move-object v15, v2

    move-object v2, v5

    move v5, v3

    move-object/from16 v27, p1

    move v3, v6

    move v6, v12

    move-object v8, v14

    move-object/from16 v29, v31

    move-object v12, v7

    move-object v7, v10

    goto/16 :goto_5

    :catch_89
    move-exception v0

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    :goto_124
    move-object/from16 v27, p1

    move-object v2, v5

    move/from16 v36, v6

    move/from16 v35, v12

    move-object/from16 v5, v28

    goto :goto_122

    :catchall_ba
    move-exception v0

    move-object/from16 v28, v3

    move v12, v15

    move-object/from16 v7, v30

    move-object/from16 v10, v33

    move-object/from16 v2, v38

    move-object/from16 v4, v39

    move v15, v11

    move-object/from16 v11, v32

    goto :goto_123

    :catch_8a
    move-exception v0

    move-object/from16 v28, v3

    move v12, v15

    move-object/from16 v7, v30

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    move v15, v11

    move-object/from16 v11, v32

    goto :goto_124

    :catchall_bb
    move-exception v0

    move-object/from16 v38, v15

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    move-object/from16 v27, v3

    move-object v12, v7

    move-object v7, v10

    move-object v8, v14

    move-object/from16 v29, v31

    move/from16 v6, v35

    move/from16 v3, v36

    move/from16 v5, v37

    goto/16 :goto_d2

    :catch_8b
    move-exception v0

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    move-object/from16 v27, v3

    move-object v12, v7

    move-object v7, v10

    move-object/from16 v29, v31

    move/from16 v10, v37

    goto/16 :goto_d3

    :catchall_bc
    move-exception v0

    :goto_125
    move-object/from16 v38, v15

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    move-object/from16 v29, v2

    move-object v12, v7

    move-object v7, v10

    move-object v8, v14

    move-object/from16 v10, v28

    move/from16 v6, v35

    move/from16 v3, v36

    move/from16 v5, v37

    goto/16 :goto_b7

    :catch_8c
    move-exception v0

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    move-object/from16 v29, v2

    move-object v12, v7

    move-object v7, v10

    move-object/from16 v5, v28

    :goto_126
    move/from16 v10, v37

    goto/16 :goto_ba

    :catchall_bd
    move-exception v0

    move-object/from16 p1, v3

    move-object v13, v4

    move-object/from16 v28, v5

    goto :goto_125

    :catch_8d
    move-exception v0

    move-object/from16 p1, v3

    move-object v13, v4

    move-object/from16 v28, v5

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v39

    move-object/from16 v29, v2

    move-object v12, v7

    move-object v7, v10

    goto :goto_126

    :catchall_be
    move-exception v0

    move/from16 v35, v4

    move/from16 v37, v11

    move/from16 v36, v13

    move-object/from16 v7, v30

    move-object/from16 v38, v31

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v34

    move-object/from16 v34, v2

    move-object v2, v3

    move-object v12, v7

    move-object v7, v10

    move-object v8, v14

    move-object/from16 v13, v34

    move/from16 v6, v35

    move/from16 v3, v36

    move-object/from16 v15, v38

    move-object v10, v5

    move/from16 v5, v37

    goto/16 :goto_13e

    :catch_8e
    move-exception v0

    move/from16 v35, v4

    move/from16 v37, v11

    move/from16 v36, v13

    move-object/from16 v7, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v34

    move-object/from16 v34, v2

    move-object v2, v3

    move-object v12, v7

    move-object v7, v10

    move-object/from16 v13, v34

    move/from16 v10, v37

    goto/16 :goto_147

    :catchall_bf
    move-exception v0

    move-object v15, v4

    move v3, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v34

    :goto_127
    move-object v6, v5

    move v5, v3

    move v3, v7

    move-object v7, v10

    move-object v10, v6

    move v6, v8

    goto/16 :goto_16

    :catch_8f
    move-exception v0

    move v3, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v34

    :goto_128
    move/from16 v36, v7

    move/from16 v35, v8

    move-object v7, v10

    move v10, v3

    goto/16 :goto_147

    :catchall_c0
    move-exception v0

    move-object v15, v4

    move v8, v7

    move v3, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v34

    move v7, v6

    goto :goto_127

    :catch_90
    move-exception v0

    move v8, v7

    move v3, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object/from16 v4, v34

    move v7, v6

    goto :goto_128

    :catchall_c1
    move-exception v0

    move-object v15, v4

    move/from16 v23, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move-object v4, v3

    move v3, v5

    move-object v7, v10

    :goto_129
    move/from16 v5, v23

    goto/16 :goto_15

    :catch_91
    move-exception v0

    move-object v4, v3

    move/from16 v23, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    move-object/from16 v10, v33

    move/from16 v36, v5

    move/from16 v35, v6

    move-object v7, v10

    :goto_12a
    move/from16 v10, v23

    goto/16 :goto_17

    :catchall_c2
    move-exception v0

    move-object v15, v4

    move-object v10, v7

    move/from16 v23, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    :goto_12b
    move-object v4, v3

    move v3, v5

    goto :goto_129

    :catch_92
    move-exception v0

    move-object v4, v3

    move-object v10, v7

    move/from16 v23, v11

    move-object/from16 v12, v30

    move-object/from16 v11, v32

    :goto_12c
    move/from16 v36, v5

    move/from16 v35, v6

    goto :goto_12a

    :catchall_c3
    move-exception v0

    move-object v10, v7

    move/from16 v23, v11

    move-object v11, v15

    :goto_12d
    move-object v15, v4

    goto :goto_12b

    :catch_93
    move-exception v0

    move-object v4, v3

    move-object v10, v7

    move/from16 v23, v11

    move-object v11, v15

    goto :goto_12c

    :catchall_c4
    move-exception v0

    move-object v10, v7

    move/from16 v23, v11

    move-object v11, v15

    move-object/from16 v12, v30

    goto :goto_12d

    :catch_94
    move-exception v0

    move-object v4, v3

    move-object v10, v7

    move/from16 v23, v11

    move-object v11, v15

    move-object/from16 v12, v30

    goto :goto_12c

    :catchall_c5
    move-exception v0

    :goto_12e
    move-object v11, v15

    move-object v15, v4

    move-object v4, v3

    move-object v3, v12

    move-object/from16 v12, v30

    move v5, v10

    move-object v10, v3

    move v3, v5

    move v5, v9

    move-object v8, v14

    :goto_12f
    move-object v9, v2

    move-object/from16 v2, v27

    goto/16 :goto_d8

    :catch_95
    move-exception v0

    move-object v4, v3

    :goto_130
    move-object v3, v12

    move-object v11, v15

    move-object/from16 v12, v30

    move-object v5, v3

    move/from16 v35, v6

    move/from16 v36, v10

    :goto_131
    move-object/from16 v2, v27

    :goto_132
    move-object/from16 v27, p1

    goto/16 :goto_9

    :catchall_c6
    move-exception v0

    goto :goto_12e

    :catch_96
    move-exception v0

    move-object v4, v3

    goto :goto_130

    :catchall_c7
    move-exception v0

    move-object/from16 v27, v5

    goto :goto_12e

    :catch_97
    move-exception v0

    move-object v4, v3

    move-object/from16 v27, v5

    goto :goto_130

    :catchall_c8
    move-exception v0

    move-object v2, v11

    move-object/from16 v26, v12

    move-object v11, v15

    move-object/from16 v12, v30

    move-object v15, v4

    move-object v4, v3

    move v3, v9

    move-object v9, v2

    move-object/from16 v2, v27

    move-object/from16 v27, v5

    move v5, v3

    move v3, v10

    move-object v8, v14

    goto/16 :goto_121

    :catch_98
    move-exception v0

    move-object v4, v3

    move-object/from16 v26, v12

    move-object v11, v15

    move-object/from16 v12, v30

    move/from16 v35, v6

    move/from16 v36, v10

    move-object/from16 v2, v27

    move-object/from16 v27, v5

    move v10, v9

    move-object/from16 v5, v26

    goto/16 :goto_147

    :catchall_c9
    move-exception v0

    goto :goto_136

    :goto_133
    move v5, v9

    move v3, v10

    move-object v8, v14

    move-object/from16 v10, v26

    goto :goto_12f

    :goto_134
    move/from16 v35, v6

    :goto_135
    move/from16 v36, v10

    move-object/from16 v5, v26

    goto :goto_131

    :catchall_ca
    move-exception v0

    :goto_136
    move-object v2, v11

    move-object/from16 v26, v12

    move-object v11, v15

    move-object/from16 v12, v30

    move-object v15, v4

    move-object v4, v3

    goto :goto_133

    :catch_99
    move-exception v0

    move-object v4, v3

    move-object/from16 v26, v12

    move-object v11, v15

    move-object/from16 v12, v30

    goto :goto_134

    :catchall_cb
    move-exception v0

    move-object/from16 v27, v2

    goto :goto_136

    :catch_9a
    move-exception v0

    move-object/from16 v27, v2

    move-object v4, v3

    :goto_137
    move-object/from16 v26, v12

    move-object v11, v15

    move-object/from16 v12, v30

    move/from16 v35, v6

    :goto_138
    move/from16 v36, v10

    move-object/from16 v5, v26

    goto :goto_132

    :catchall_cc
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 p1, v5

    goto :goto_136

    :catch_9b
    move-exception v0

    move-object/from16 v27, v2

    move-object v4, v3

    move-object/from16 p1, v5

    goto :goto_137

    :catchall_cd
    move-exception v0

    :goto_139
    move-object v2, v11

    move-object/from16 v26, v12

    move-object v11, v15

    move-object/from16 v12, v30

    move-object v15, v4

    :goto_13a
    move-object v4, v3

    move v6, v5

    goto :goto_133

    :catch_9c
    move-exception v0

    move-object v4, v3

    move-object/from16 v26, v12

    move-object v11, v15

    move-object/from16 v12, v30

    move/from16 v35, v5

    goto :goto_135

    :catchall_ce
    move-exception v0

    move-object v2, v11

    move-object/from16 v26, v12

    move-object v11, v15

    move-object/from16 v12, v30

    move-object v15, v4

    goto :goto_13a

    :catchall_cf
    move-exception v0

    move-object/from16 v27, v2

    goto :goto_139

    :catch_9d
    move-exception v0

    move-object/from16 v27, v2

    move-object v4, v3

    move-object/from16 v26, v12

    move-object v11, v15

    move-object/from16 v12, v30

    :goto_13b
    move/from16 v35, v5

    goto :goto_138

    :catchall_d0
    move-exception v0

    move-object/from16 v27, v2

    move-object v2, v11

    move-object/from16 v26, v12

    move-object v11, v15

    move-object v15, v4

    move-object v12, v6

    goto :goto_13a

    :catch_9e
    move-exception v0

    move-object/from16 v27, v2

    move-object v4, v3

    move-object/from16 v26, v12

    move-object v11, v15

    move-object v12, v6

    goto :goto_13b

    :catchall_d1
    move-exception v0

    :goto_13c
    move-object v2, v11

    move-object v11, v15

    move-object v15, v4

    move-object v4, v3

    move-object v3, v12

    move-object v12, v6

    move v6, v9

    move-object v9, v2

    move-object v2, v5

    move v5, v6

    move-object/from16 v27, p1

    move-object/from16 v29, v10

    move-object v8, v14

    const/4 v6, 0x0

    move-object v10, v3

    goto/16 :goto_8

    :catch_9f
    move-exception v0

    move-object v4, v3

    :goto_13d
    move-object v3, v12

    move-object v11, v15

    move-object v12, v6

    move-object/from16 v27, p1

    move-object v2, v5

    move-object/from16 v29, v10

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object v5, v3

    goto/16 :goto_9

    :catchall_d2
    move-exception v0

    move-object/from16 p1, v8

    goto :goto_13c

    :catch_a0
    move-exception v0

    move-object v4, v3

    move-object/from16 p1, v8

    goto :goto_13d

    .line 321
    :goto_13e
    :try_start_fc
    const-string v14, "not-set-up"

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v14

    if-eqz v14, :cond_7d

    .line 322
    sget-object v14, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lorg/wikipedia/settings/Prefs;->setReadingListSyncEnabled(Z)V

    .line 323
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_7c

    .line 324
    new-instance v14, Lorg/wikipedia/events/ReadingListsEnableDialogEvent;

    .line 325
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-static {v14}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    goto :goto_13f

    :catchall_d3
    move-exception v0

    goto/16 :goto_148

    .line 327
    :cond_7c
    new-instance v14, Lorg/wikipedia/events/ReadingListsNoLongerSyncedEvent;

    .line 328
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {v14}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 330
    :cond_7d
    :goto_13f
    const-string v14, "notloggedin"

    invoke-static {v14, v0}, Lorg/wikipedia/readinglist/sync/ReadingListClient;->isErrorType(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v14
    :try_end_fc
    .catchall {:try_start_fc .. :try_end_fc} :catchall_d3

    if-eqz v14, :cond_7f

    .line 331
    :try_start_fd
    const-string v14, "Server doesn\'t believe we\'re logged in, so logging in..."

    invoke-static {v14}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 332
    sget-object v14, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    iput-object v2, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$0:Landroid/os/Bundle;

    move-object/from16 v14, v29

    check-cast v14, Ljava/util/Set;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$1:Ljava/util/Set;

    move-object/from16 v14, v27

    check-cast v14, Ljava/util/Set;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$2:Ljava/util/Set;

    const/4 v14, 0x0

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$3:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$4:Ljava/lang/Object;

    iput-object v10, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$5:Ljava/lang/Object;

    iput-object v13, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$6:Ljava/lang/Object;

    iput-object v8, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$7:Ljava/lang/String;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$8:Ljava/lang/String;

    iput-object v0, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$9:Ljava/io/Serializable;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$10:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$11:Ljava/util/Iterator;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$12:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$13:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$14:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$15:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$16:Ljava/lang/Object;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$17:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$18:Ljava/util/Set;

    iput-object v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->L$20:Ljava/util/Iterator;

    iput v5, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$0:I

    iput v3, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$1:I

    iput v6, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->I$2:I

    const/16 v14, 0x16

    iput v14, v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter$doWork$2;->label:I

    invoke-static {v9, v1}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1
    :try_end_fd
    .catchall {:try_start_fd .. :try_end_fd} :catchall_d4

    if-ne v1, v15, :cond_7e

    :goto_140
    return-object v15

    :cond_7e
    move-object v1, v2

    move v2, v6

    move-object v9, v13

    :goto_141
    move v6, v2

    move-object v13, v9

    const/4 v3, 0x1

    :goto_142
    move-object v2, v1

    goto :goto_144

    :catchall_d4
    move-exception v0

    move-object v1, v2

    move v2, v6

    move-object v9, v13

    :goto_143
    move v6, v2

    move-object v13, v9

    goto :goto_142

    .line 333
    :cond_7f
    :goto_144
    :try_start_fe
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V
    :try_end_fe
    .catchall {:try_start_fe .. :try_end_fe} :catchall_d3

    .line 334
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 335
    iget-object v0, v10, Lorg/wikipedia/readinglist/sync/ReadingListClient;->lastDateHeader:Lj$/time/Instant;

    if-eqz v0, :cond_81

    .line 336
    invoke-virtual {v0}, Lj$/time/Instant;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_80

    goto :goto_145

    :cond_80
    move-object v8, v0

    :cond_81
    :goto_145
    const v1, 0x7f12065c

    .line 337
    invoke-static {v1, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 338
    invoke-static/range {v29 .. v29}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 339
    invoke-static/range {v27 .. v27}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 340
    iget-object v0, v13, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 341
    invoke-virtual {v0, v4}, Lorg/wikipedia/views/NotificationWithProgressBar;->cancelNotification(Landroid/content/Context;)V

    if-eqz v5, :cond_82

    .line 342
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 343
    new-instance v1, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    invoke-direct {v1, v0}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    invoke-static {v1}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    :cond_82
    if-nez v3, :cond_83

    if-eqz v6, :cond_7a

    .line 344
    :cond_83
    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v8, 0x1

    .line 347
    invoke-virtual {v0, v11, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v6, :cond_84

    .line 348
    invoke-virtual {v0, v12, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    :cond_84
    invoke-static {v0}, Lokio/Path$Companion;->manualSync(Landroid/os/Bundle;)V

    goto/16 :goto_11e

    .line 350
    :goto_146
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    move-result-object v0

    return-object v0

    .line 351
    :goto_147
    :try_start_ff
    throw v0
    :try_end_ff
    .catchall {:try_start_ff .. :try_end_ff} :catchall_d5

    :catchall_d5
    move-exception v0

    move v3, v10

    move-object v10, v5

    move v5, v3

    move-object v8, v14

    move/from16 v6, v35

    move/from16 v3, v36

    .line 352
    :goto_148
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 353
    iget-object v1, v10, Lorg/wikipedia/readinglist/sync/ReadingListClient;->lastDateHeader:Lj$/time/Instant;

    if-eqz v1, :cond_86

    .line 354
    invoke-virtual {v1}, Lj$/time/Instant;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_85

    goto :goto_149

    :cond_85
    move-object v8, v1

    :cond_86
    :goto_149
    const v1, 0x7f12065c

    .line 355
    invoke-static {v1, v8}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 356
    invoke-static/range {v29 .. v29}, Lorg/wikipedia/settings/Prefs;->setReadingListsDeletedIds(Ljava/util/Set;)V

    .line 357
    invoke-static/range {v27 .. v27}, Lorg/wikipedia/settings/Prefs;->setReadingListPagesDeletedIds(Ljava/util/Set;)V

    .line 358
    iget-object v1, v13, Lorg/wikipedia/readinglist/sync/ReadingListSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 359
    invoke-virtual {v1, v4}, Lorg/wikipedia/views/NotificationWithProgressBar;->cancelNotification(Landroid/content/Context;)V

    if-eqz v5, :cond_87

    .line 360
    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 361
    new-instance v4, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    invoke-direct {v4, v1}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    invoke-static {v4}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    :cond_87
    if-nez v3, :cond_89

    if-eqz v6, :cond_88

    goto :goto_14b

    :cond_88
    :goto_14a
    const/16 v20, 0x0

    goto :goto_14c

    .line 362
    :cond_89
    :goto_14b
    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 363
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 364
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v8, 0x1

    .line 365
    invoke-virtual {v1, v11, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v6, :cond_8a

    .line 366
    invoke-virtual {v1, v12, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    :cond_8a
    invoke-static {v1}, Lokio/Path$Companion;->manualSync(Landroid/os/Bundle;)V

    goto :goto_14a

    .line 368
    :goto_14c
    sput-boolean v20, Lorg/wikipedia/readinglist/sync/ReadingListSyncAdapter;->IN_PROGRESS:Z

    .line 369
    invoke-static {}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->enqueue()V

    .line 370
    invoke-static/range {v16 .. v16}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_8b
    :goto_14d
    const-string v0, "Skipping sync of reading lists."

    invoke-static {v0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 373
    new-instance v0, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lorg/wikipedia/readinglist/sync/ReadingListSyncEvent;-><init>(Z)V

    invoke-static {v0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 374
    :cond_8c
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
