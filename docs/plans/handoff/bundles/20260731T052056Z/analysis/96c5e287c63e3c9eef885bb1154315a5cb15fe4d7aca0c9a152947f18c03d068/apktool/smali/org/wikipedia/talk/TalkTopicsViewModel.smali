.class public final Lorg/wikipedia/talk/TalkTopicsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final actionHandler:Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

.field public final actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public currentSearchQuery:Ljava/lang/String;

.field public currentSortMode:I

.field public final handler:Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

.field public hasWatchlistExpiry:Z

.field public isWatched:Z

.field public pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final seenThreadItemsSha:Ljava/util/LinkedHashSet;

.field public sortedThreadItems:Ljava/util/List;

.field public final talkPageDao:Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

.field public final threadItems:Ljava/util/ArrayList;

.field public final uiState:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageTitle;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 5
    .line 6
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 7
    .line 8
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->talkPageSeenDao()Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->talkPageDao:Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 17
    .line 18
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkTopicsViewModel;I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->handler:Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 25
    .line 26
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {p1, p0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkTopicsViewModel;I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->actionHandler:Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->threadItems:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->seenThreadItemsSha:Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 49
    .line 50
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->sortedThreadItems:Ljava/util/List;

    .line 51
    .line 52
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 53
    .line 54
    const p1, 0x7f120695

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSortMode:I

    .line 62
    .line 63
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 73
    .line 74
    new-instance p1, Lorg/wikipedia/talk/TalkTopicsViewModel$ActionState;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 84
    .line 85
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicsViewModel;->loadTopics()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static threadSha$1(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->id:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Lkotlin/io/LinesSequence;->reader:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 30
    .line 31
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->timestamp:Ljava/lang/String;

    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 44
    .line 45
    iget-object v2, v2, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->timestamp:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-gez v3, :cond_1

    .line 52
    .line 53
    move-object v0, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string/jumbo v1, "|"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final isSubscribed(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;-><init>(Lorg/wikipedia/talk/TalkTopicsViewModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p1, v0, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;->L$0:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 53
    .line 54
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_3
    sget-object p2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 68
    .line 69
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 70
    .line 71
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 72
    .line 73
    invoke-static {p0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    iput-object p1, v0, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;->L$0:Ljava/lang/String;

    .line 78
    .line 79
    iput v3, v0, Lorg/wikipedia/talk/TalkTopicsViewModel$isSubscribed$1;->label:I

    .line 80
    .line 81
    invoke-interface {p0, p1, v0}, Lorg/wikipedia/dataclient/Service;->getTalkPageTopicSubscriptions(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-ne p2, v1, :cond_4

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_4
    :goto_1
    check-cast p2, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscriptionList;

    .line 89
    .line 90
    iget-object p0, p2, Lorg/wikipedia/dataclient/discussiontools/DiscussionToolsSubscriptionList;->subscriptions:Ljava/util/Map;

    .line 91
    .line 92
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Ljava/lang/Integer;

    .line 97
    .line 98
    if-nez p0, :cond_5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-ne p0, v3, :cond_6

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    :goto_2
    const/4 v3, 0x0

    .line 109
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    return-object p0
.end method

.method public final loadTopics()V
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getNamespace()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v1, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 22
    .line 23
    iget-object v1, v1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Lorg/wikipedia/staticdata/TalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v2, v1}, Lorg/wikipedia/page/PageTitle;->setNamespace(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    sget-object v2, Lorg/wikipedia/page/Namespace;->USER:Lorg/wikipedia/page/Namespace;

    .line 41
    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    move v1, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    iget-object v4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-ne v1, v2, :cond_2

    .line 56
    .line 57
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 58
    .line 59
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->removeNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iput-object v2, v1, Lorg/wikipedia/page/PageTitle;->_displayText:Ljava/lang/String;

    .line 74
    .line 75
    :cond_2
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 76
    .line 77
    iget-object v2, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 78
    .line 79
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v2}, Lorg/wikipedia/staticdata/UserTalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Lorg/wikipedia/page/PageTitle;->setNamespace(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    sget-object v2, Lorg/wikipedia/page/Namespace;->TALK:Lorg/wikipedia/page/Namespace;

    .line 94
    .line 95
    if-eq v1, v2, :cond_4

    .line 96
    .line 97
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 98
    .line 99
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    sget-object v2, Lorg/wikipedia/page/Namespace;->USER_TALK:Lorg/wikipedia/page/Namespace;

    .line 104
    .line 105
    if-eq v1, v2, :cond_4

    .line 106
    .line 107
    iput-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 108
    .line 109
    :cond_4
    :goto_1
    new-instance v1, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$UpdateNamespace;

    .line 110
    .line 111
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 112
    .line 113
    invoke-direct {v1, v2}, Lorg/wikipedia/talk/TalkTopicsViewModel$UiState$UpdateNamespace;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-virtual {v2, v4, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    new-instance v2, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 130
    .line 131
    invoke-direct {v2, v0, p0, v4, v3}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 132
    .line 133
    .line 134
    const/4 v0, 0x2

    .line 135
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->handler:Lorg/wikipedia/talk/TalkTopicsViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 136
    .line 137
    invoke-static {v1, p0, v4, v2, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final sortAndFilterThreadItems()V
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSortMode:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    iget-object v4, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->threadItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v5, 0x1

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    if-eq v0, v5, :cond_4

    .line 12
    .line 13
    const/4 v6, 0x4

    .line 14
    if-eq v0, v3, :cond_3

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq v0, v6, :cond_1

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-le v0, v5, :cond_6

    .line 29
    .line 30
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;

    .line 31
    .line 32
    invoke-direct {v0, v3}, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-le v0, v5, :cond_6

    .line 44
    .line 45
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;

    .line 46
    .line 47
    invoke-direct {v0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-le v0, v5, :cond_6

    .line 59
    .line 60
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;

    .line 61
    .line 62
    invoke-direct {v0, v5}, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-le v0, v5, :cond_6

    .line 74
    .line 75
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;

    .line 76
    .line 77
    invoke-direct {v0, v6}, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-le v0, v5, :cond_6

    .line 89
    .line 90
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;

    .line 91
    .line 92
    invoke-direct {v0, v2}, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;-><init>(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-le v0, v5, :cond_6

    .line 104
    .line 105
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;

    .line 106
    .line 107
    invoke-direct {v0, v1}, Lorg/wikipedia/talk/TalkTopicsViewModel$sortAndFilterThreadItems$$inlined$sortBy$1;-><init>(I)V

    .line 108
    .line 109
    .line 110
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    .line 112
    .line 113
    :cond_6
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_8

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    move-object v6, v1

    .line 128
    check-cast v6, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 129
    .line 130
    iget-object v7, v6, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->othercontent:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-lez v7, :cond_7

    .line 137
    .line 138
    sget v7, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 139
    .line 140
    invoke-static {v6}, Lorg/wikipedia/util/UriUtil;->isHeaderTemplate(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_7

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_8
    const/4 v1, 0x0

    .line 148
    :goto_1
    check-cast v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 149
    .line 150
    if-eqz v1, :cond_9

    .line 151
    .line 152
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_9
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 159
    .line 160
    invoke-direct {v0, v2}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    .line 164
    .line 165
    invoke-direct {v1, v3, v0}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v4, v1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 169
    .line 170
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_11

    .line 185
    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    move-object v3, v2

    .line 191
    check-cast v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 192
    .line 193
    iget-object v4, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->plainText:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 196
    .line 197
    const-string v7, ""

    .line 198
    .line 199
    if-nez v6, :cond_b

    .line 200
    .line 201
    move-object v6, v7

    .line 202
    :cond_b
    invoke-static {v4, v6, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-nez v4, :cond_10

    .line 207
    .line 208
    iget-object v4, v3, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->plainOtherContent:Ljava/lang/String;

    .line 209
    .line 210
    iget-object v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 211
    .line 212
    if-nez v6, :cond_c

    .line 213
    .line 214
    move-object v6, v7

    .line 215
    :cond_c
    invoke-static {v4, v6, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-nez v4, :cond_10

    .line 220
    .line 221
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    iget-object v3, v3, Lkotlin/io/LinesSequence;->reader:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 228
    .line 229
    invoke-static {v3}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    :cond_d
    invoke-virtual {v3}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_a

    .line 238
    .line 239
    invoke-virtual {v3}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    check-cast v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 244
    .line 245
    iget-object v6, v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->plainText:Ljava/lang/String;

    .line 246
    .line 247
    iget-object v8, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 248
    .line 249
    if-nez v8, :cond_e

    .line 250
    .line 251
    move-object v8, v7

    .line 252
    :cond_e
    invoke-static {v6, v8, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-nez v6, :cond_10

    .line 257
    .line 258
    iget-object v4, v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->author:Ljava/lang/String;

    .line 259
    .line 260
    iget-object v6, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 261
    .line 262
    if-nez v6, :cond_f

    .line 263
    .line 264
    move-object v6, v7

    .line 265
    :cond_f
    invoke-static {v4, v6, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_d

    .line 270
    .line 271
    :cond_10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_11
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->sortedThreadItems:Ljava/util/List;

    .line 276
    .line 277
    return-void
.end method

.method public final topicSeen(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/wikipedia/talk/TalkTopicsViewModel;->threadSha$1(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsViewModel;->seenThreadItemsSha:Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 43
    return p0
.end method
