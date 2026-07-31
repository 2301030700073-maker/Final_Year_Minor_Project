.class public final Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$2:Ljava/util/Iterator;

.field public L$4:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->this$0:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->this$0:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;-><init>(Lorg/wikipedia/dataclient/discussiontools/ThreadItem;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->label:I

    .line 8
    .line 9
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    if-eq v2, v6, :cond_2

    .line 18
    .line 19
    if-ne v2, v5, :cond_1

    .line 20
    .line 21
    iget v2, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->I$0:I

    .line 22
    .line 23
    iget-object v8, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$2:Ljava/util/Iterator;

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    move-object p1, v8

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v7

    .line 36
    :cond_2
    iget v2, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->I$1:I

    .line 37
    .line 38
    iget v8, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->I$0:I

    .line 39
    .line 40
    iget-object v9, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$4:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 41
    .line 42
    iget-object v10, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$2:Ljava/util/Iterator;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move p1, v2

    .line 48
    move v2, v8

    .line 49
    move-object v8, v10

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->this$0:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 55
    .line 56
    iget-object p1, p1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->replies:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    move v2, v4

    .line 63
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_7

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    move-object v9, v8

    .line 74
    check-cast v9, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 75
    .line 76
    iput-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$0:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$2:Ljava/util/Iterator;

    .line 79
    .line 80
    iput-object v9, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$4:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 81
    .line 82
    iput v2, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->I$0:I

    .line 83
    .line 84
    iput v4, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->I$1:I

    .line 85
    .line 86
    iput v6, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->label:I

    .line 87
    .line 88
    invoke-virtual {v0, v9, p0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    if-ne v8, v1, :cond_4

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_4
    move-object v8, p1

    .line 96
    move p1, v4

    .line 97
    :goto_1
    invoke-virtual {v9}, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;->getAllReplies()Lkotlin/io/LinesSequence;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    iput-object v0, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object v8, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$2:Ljava/util/Iterator;

    .line 104
    .line 105
    iput-object v7, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->L$4:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 106
    .line 107
    iput v2, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->I$0:I

    .line 108
    .line 109
    iput p1, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->I$1:I

    .line 110
    .line 111
    iput v5, p0, Lorg/wikipedia/dataclient/discussiontools/ThreadItem$allReplies$1;->label:I

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-interface {v9}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-nez v9, :cond_5

    .line 125
    .line 126
    move-object p1, v3

    .line 127
    goto :goto_2

    .line 128
    :cond_5
    iput-object p1, v0, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    .line 129
    .line 130
    iput v5, v0, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    .line 131
    .line 132
    iput-object p0, v0, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 135
    .line 136
    :goto_2
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 137
    .line 138
    if-ne p1, v9, :cond_6

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_6
    move-object p1, v3

    .line 142
    :goto_3
    if-ne p1, v1, :cond_0

    .line 143
    .line 144
    :goto_4
    return-object v1

    .line 145
    :cond_7
    return-object v3
.end method
