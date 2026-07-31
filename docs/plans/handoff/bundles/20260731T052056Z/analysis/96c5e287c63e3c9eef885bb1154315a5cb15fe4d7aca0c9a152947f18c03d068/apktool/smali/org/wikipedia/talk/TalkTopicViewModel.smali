.class public final Lorg/wikipedia/talk/TalkTopicViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public currentSearchQuery:Ljava/lang/String;

.field public final flattenedThreadItems:Ljava/util/ArrayList;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public scrollTargetId:Ljava/lang/String;

.field public final subscribeData:Lorg/wikipedia/util/SingleLiveData;

.field public subscribed:Z

.field public final threadItems:Ljava/util/ArrayList;

.field public final threadItemsData:Landroidx/lifecycle/MutableLiveData;

.field public topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

.field public final topicId:Ljava/lang/String;

.field public final topicName:Ljava/lang/String;

.field public undoBody:Ljava/lang/CharSequence;

.field public final undoResponseData:Lorg/wikipedia/util/SingleLiveData;

.field public undoSubject:Ljava/lang/CharSequence;

.field public undoTopicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "topicName"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->topicName:Ljava/lang/String;

    .line 20
    .line 21
    const-string/jumbo v0, "topicId"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->topicId:Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "title"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 45
    .line 46
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 47
    .line 48
    const-string v0, "searchQuery"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/String;

    .line 55
    .line 56
    iput-object v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->currentSearchQuery:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "replyId"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/String;

    .line 65
    .line 66
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->scrollTargetId:Ljava/lang/String;

    .line 67
    .line 68
    new-instance p1, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->threadItems:Ljava/util/ArrayList;

    .line 74
    .line 75
    new-instance p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenedThreadItems:Ljava/util/ArrayList;

    .line 81
    .line 82
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 83
    .line 84
    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->threadItemsData:Landroidx/lifecycle/MutableLiveData;

    .line 88
    .line 89
    new-instance p1, Lorg/wikipedia/util/SingleLiveData;

    .line 90
    .line 91
    invoke-direct {p1}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->subscribeData:Lorg/wikipedia/util/SingleLiveData;

    .line 95
    .line 96
    new-instance p1, Lorg/wikipedia/util/SingleLiveData;

    .line 97
    .line 98
    invoke-direct {p1}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->undoResponseData:Lorg/wikipedia/util/SingleLiveData;

    .line 102
    .line 103
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v0, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;

    .line 108
    .line 109
    const/4 v1, 0x1

    .line 110
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkTopicViewModel;I)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-direct {v1, p0, v3, v2}, Lorg/wikipedia/talk/TalkTopicViewModel$loadTopic$2;-><init>(Landroidx/lifecycle/ViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 118
    .line 119
    .line 120
    const/4 p0, 0x2

    .line 121
    invoke-static {p1, v0, v3, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method public static flattenThreadLevel(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-boolean v1, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenThreadLevel(Ljava/util/List;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method


# virtual methods
.method public final expandOrCollapseAll()Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenedThreadItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    sget-object v2, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    sget-object v4, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const v5, 0x7f120694

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v2, v4, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x1

    .line 38
    invoke-static {v4, v2, v3, v5}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget-object v3, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v3, v3, Lkotlin/io/LinesSequence;->reader:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 53
    .line 54
    invoke-static {v3}, Lkotlin/UnsignedKt;->iterator(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/SequenceBuilderIterator;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lkotlin/sequences/SequenceBuilderIterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    invoke-virtual {v3}, Lkotlin/sequences/SequenceBuilderIterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 69
    .line 70
    iget v6, v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 71
    .line 72
    if-le v6, v5, :cond_0

    .line 73
    .line 74
    iput-boolean v2, v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isExpanded:Z

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicViewModel;->updateFlattenedThreadItems()V

    .line 78
    .line 79
    .line 80
    new-instance p0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;

    .line 81
    .line 82
    invoke-direct {p0, v0, v1}, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;-><init>(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff$1(Landroidx/recyclerview/widget/DiffUtil;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public final updateFlattenedThreadItems()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenedThreadItems:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicViewModel;->threadItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p0, v0}, Lorg/wikipedia/talk/TalkTopicViewModel;->flattenThreadLevel(Ljava/util/List;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    const/4 v3, 0x1

    .line 18
    if-ge v2, p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 25
    .line 26
    iput-boolean v1, v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isFirstTopLevel:Z

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 33
    .line 34
    if-lez v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 41
    .line 42
    iget v5, v5, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 43
    .line 44
    if-le v5, v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    sub-int/2addr v5, v3

    .line 51
    if-ge v2, v5, :cond_1

    .line 52
    .line 53
    add-int/lit8 v5, v2, 0x1

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 60
    .line 61
    iget v5, v5, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 68
    .line 69
    iget v6, v6, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 70
    .line 71
    if-ge v5, v6, :cond_0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    move v3, v1

    .line 75
    :cond_1
    :goto_1
    iput-boolean v3, v4, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isLastSibling:Z

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    move-object v1, v0

    .line 95
    check-cast v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 96
    .line 97
    iget v1, v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->level:I

    .line 98
    .line 99
    if-ne v1, v3, :cond_3

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const/4 v0, 0x0

    .line 103
    :goto_2
    check-cast v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    iput-boolean v3, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->isFirstTopLevel:Z

    .line 108
    .line 109
    :cond_5
    return-void
.end method
