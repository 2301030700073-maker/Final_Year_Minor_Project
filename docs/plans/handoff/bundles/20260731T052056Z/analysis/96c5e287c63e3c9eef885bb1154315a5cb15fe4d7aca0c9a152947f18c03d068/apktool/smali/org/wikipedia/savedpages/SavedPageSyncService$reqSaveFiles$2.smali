.class public final Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $page:Lorg/wikipedia/readinglist/database/ReadingListPage;

.field public final synthetic $pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final synthetic $percentage:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $updateRate:F

.field public final synthetic $urls:Ljava/util/Set;

.field public L$0:Ljava/util/Iterator;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lorg/wikipedia/savedpages/SavedPageSyncService;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$urls:Ljava/util/Set;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$percentage:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 10
    .line 11
    iput p6, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$updateRate:F

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    new-instance v0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;

    .line 2
    .line 3
    iget-object v5, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$percentage:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 4
    .line 5
    iget v6, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$updateRate:F

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$urls:Ljava/util/Set;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 12
    .line 13
    iget-object v4, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 14
    .line 15
    move-object v7, p2

    .line 16
    invoke-direct/range {v0 .. v7}, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;-><init>(Ljava/util/Set;Lorg/wikipedia/savedpages/SavedPageSyncService;Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/readinglist/database/ReadingListPage;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->label:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$page:Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->L$0:Ljava/util/Iterator;

    .line 13
    .line 14
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$urls:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    move-object v1, p1

    .line 37
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_6

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    iget-object v4, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->this$0:Lorg/wikipedia/savedpages/SavedPageSyncService;

    .line 50
    .line 51
    iget-object v4, v4, Lorg/wikipedia/savedpages/SavedPageSyncService;->savedPageSyncNotification:Lorg/wikipedia/savedpages/SavedPageSyncNotification;

    .line 52
    .line 53
    iget-object v4, v4, Lorg/wikipedia/savedpages/SavedPageSyncNotification;->notification:Lorg/wikipedia/views/NotificationWithProgressBar;

    .line 54
    .line 55
    iget-boolean v5, v4, Lorg/wikipedia/views/NotificationWithProgressBar;->isPaused:Z

    .line 56
    .line 57
    if-nez v5, :cond_5

    .line 58
    .line 59
    iget-boolean v4, v4, Lorg/wikipedia/views/NotificationWithProgressBar;->isCanceled:Z

    .line 60
    .line 61
    if-nez v4, :cond_5

    .line 62
    .line 63
    :try_start_1
    iget-object v4, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 64
    .line 65
    iget-object v5, v3, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 66
    .line 67
    iput-object v1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->L$0:Ljava/util/Iterator;

    .line 68
    .line 69
    iput v2, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->label:I

    .line 70
    .line 71
    invoke-static {v4, v5, p1, p0}, Lorg/wikipedia/savedpages/SavedPageSyncService;->reqSaveUrl(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v0, :cond_3

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$percentage:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 79
    .line 80
    iget v4, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 81
    .line 82
    iget v5, p0, Lorg/wikipedia/savedpages/SavedPageSyncService$reqSaveFiles$2;->$updateRate:F

    .line 83
    .line 84
    add-float/2addr v4, v5

    .line 85
    iput v4, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 86
    .line 87
    float-to-int p1, v4

    .line 88
    iput p1, v3, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 89
    .line 90
    sget-object p1, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 91
    .line 92
    new-instance p1, Lorg/wikipedia/events/PageDownloadEvent;

    .line 93
    .line 94
    invoke-direct {p1, v3}, Lorg/wikipedia/events/PageDownloadEvent;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :goto_2
    instance-of v4, p1, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    if-nez v4, :cond_2

    .line 104
    .line 105
    instance-of v4, p1, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 106
    .line 107
    if-eqz v4, :cond_4

    .line 108
    .line 109
    move-object v4, p1

    .line 110
    check-cast v4, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;

    .line 111
    .line 112
    iget v4, v4, Lorg/wikipedia/dataclient/okhttp/HttpStatusException;->code:I

    .line 113
    .line 114
    const/16 v5, 0x194

    .line 115
    .line 116
    if-ne v4, v5, :cond_4

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    throw p1

    .line 120
    :catch_1
    move-exception p0

    .line 121
    throw p0

    .line 122
    :cond_5
    new-instance p0, Ljava/lang/InterruptedException;

    .line 123
    .line 124
    const-string p1, "Sync paused or cancelled."

    .line 125
    .line 126
    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_6
    const/16 p0, 0x64

    .line 131
    .line 132
    iput p0, v3, Lorg/wikipedia/readinglist/database/ReadingListPage;->downloadProgress:I

    .line 133
    .line 134
    sget-object p0, Lorg/wikipedia/concurrency/FlowEventBus;->_events:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 135
    .line 136
    new-instance p0, Lorg/wikipedia/events/PageDownloadEvent;

    .line 137
    .line 138
    invoke-direct {p0, v3}, Lorg/wikipedia/events/PageDownloadEvent;-><init>(Lorg/wikipedia/readinglist/database/ReadingListPage;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 145
    .line 146
    return-object p0
.end method
