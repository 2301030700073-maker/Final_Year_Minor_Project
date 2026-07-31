.class public final Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public L$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;


# direct methods
.method public constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

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
    new-instance p1, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;-><init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;->this$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->displayedLists:Ljava/util/ArrayList;

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;->label:I

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    if-ne v3, v6, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;->L$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v5

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 32
    .line 33
    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 34
    .line 35
    new-instance v3, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 36
    .line 37
    const/16 v7, 0x8

    .line 38
    .line 39
    invoke-direct {v3, v4, v7, v5}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;->L$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    .line 43
    .line 44
    iput v6, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog$updateLists$2;->label:I

    .line 45
    .line 46
    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v2, :cond_2

    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    move-object p0, v0

    .line 54
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 65
    .line 66
    .line 67
    iget-object p0, v0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->readingLists:Ljava/util/List;

    .line 68
    .line 69
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    .line 71
    .line 72
    iget-boolean p0, v0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showDefaultList:Z

    .line 73
    .line 74
    if-nez p0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_3

    .line 81
    .line 82
    new-instance p0, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    invoke-direct {p0, v4}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;

    .line 88
    .line 89
    invoke-direct {p1, v6, p0}, Lorg/jsoup/nodes/Element$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 93
    .line 94
    .line 95
    :cond_3
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 96
    .line 97
    const/4 p0, 0x0

    .line 98
    const p1, 0x7f120658

    .line 99
    .line 100
    .line 101
    invoke-static {p1, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(II)I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    invoke-static {v1, p0}, Lorg/wikipedia/util/UriUtil;->sort(Ljava/util/List;I)V

    .line 106
    .line 107
    .line 108
    iget-object p0, v0, Lorg/wikipedia/readinglist/AddToReadingListDialog;->adapter:Lorg/wikipedia/diff/DiffUtil$DiffLinesAdapter;

    .line 109
    .line 110
    if-eqz p0, :cond_5

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->showCreateListDialog()V

    .line 122
    .line 123
    .line 124
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_5
    const-string p0, "adapter"

    .line 128
    .line 129
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw v5
.end method
