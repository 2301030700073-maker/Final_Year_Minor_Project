.class public final synthetic Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SearchCallback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListsFragment;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;

    .line 5
    .line 6
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/readinglist/ReadingListsFragment;

    .line 7
    .line 8
    invoke-direct {v0, p1, v2}, Lorg/wikipedia/talk/TalkTopicViewModel$getDiffResult$1;-><init>(Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListsFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff$1(Landroidx/recyclerview/widget/DiffUtil;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v0, v3, :cond_0

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/wikipedia/readinglist/database/ReadingList;->isDefault()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 54
    .line 55
    iget-object v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-boolean v0, v2, Lorg/wikipedia/readinglist/ReadingListsFragment;->importMode:Z

    .line 67
    .line 68
    iget-object v6, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    iget-boolean p0, p0, Lorg/wikipedia/readinglist/ReadingListsFragment$$ExternalSyntheticLambda0;->f$1:Z

    .line 73
    .line 74
    if-nez p0, :cond_4

    .line 75
    .line 76
    iget-object p0, v2, Lorg/wikipedia/readinglist/ReadingListsFragment;->displayedLists:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ne p0, v0, :cond_4

    .line 87
    .line 88
    iget-object p0, v2, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-nez p0, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    if-eqz v6, :cond_3

    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_2

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object p0, v2, Lorg/wikipedia/readinglist/ReadingListsFragment;->currentSearchQuery:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-nez p0, :cond_3

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    :goto_0
    move v4, v1

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    :goto_1
    move v4, v3

    .line 120
    :goto_2
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    new-instance v1, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;

    .line 125
    .line 126
    const/4 v7, 0x0

    .line 127
    move-object v3, p1

    .line 128
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/readinglist/ReadingListsFragment$updateLists$1$1;-><init>(Lorg/wikipedia/readinglist/ReadingListsFragment;Ljava/util/List;ZLandroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x3

    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-static {p0, v0, v0, v1, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 134
    .line 135
    .line 136
    return-void
.end method
