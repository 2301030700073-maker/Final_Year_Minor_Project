.class public final Lorg/wikipedia/feed/random/RandomClient;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/feed/random/RandomClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/feed/random/RandomClient;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/feed/random/RandomClient;->INSTANCE:Lorg/wikipedia/feed/random/RandomClient;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getRandomPages(Lorg/wikipedia/dataclient/WikiSite;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p3, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;-><init>(Lorg/wikipedia/feed/random/RandomClient;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    iget p2, v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;->I$0:I

    .line 38
    .line 39
    iget-object p1, v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 55
    .line 56
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    const/16 v1, 0xa

    .line 61
    .line 62
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    mul-int/lit8 v1, v1, 0x4

    .line 67
    .line 68
    iput-object p1, v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;->L$0:Lorg/wikipedia/dataclient/WikiSite;

    .line 69
    .line 70
    iput p2, v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;->I$0:I

    .line 71
    .line 72
    iput v3, v0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$1;->label:I

    .line 73
    .line 74
    invoke-interface {p0, v1, v0}, Lorg/wikipedia/dataclient/Service;->getRandomPagesWithExtract(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-ne p0, p3, :cond_3

    .line 79
    .line 80
    return-object p3

    .line 81
    :cond_3
    :goto_1
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 82
    .line 83
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 84
    .line 85
    if-eqz p0, :cond_4

    .line 86
    .line 87
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    move-object p0, v2

    .line 91
    :goto_2
    if-nez p0, :cond_5

    .line 92
    .line 93
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 94
    .line 95
    :cond_5
    new-instance p3, Lkotlin/io/LinesSequence;

    .line 96
    .line 97
    const/4 v0, 0x2

    .line 98
    invoke-direct {p3, v0, p0}, Lkotlin/io/LinesSequence;-><init>(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    new-instance p0, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 102
    .line 103
    const/16 v0, 0x13

    .line 104
    .line 105
    invoke-direct {p0, v0}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lkotlin/sequences/FilteringSequence;

    .line 109
    .line 110
    invoke-direct {v0, p3, v3, p0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 111
    .line 112
    .line 113
    new-instance p0, Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;

    .line 114
    .line 115
    const/4 p3, 0x0

    .line 116
    invoke-direct {p0, p1, p3}, Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 117
    .line 118
    .line 119
    new-instance p3, Lkotlin/sequences/FilteringSequence;

    .line 120
    .line 121
    invoke-direct {p3, v0, v3, p0}, Lkotlin/sequences/FilteringSequence;-><init>(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    new-instance p0, Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;

    .line 125
    .line 126
    invoke-direct {p0, p1, v3}, Lorg/wikipedia/feed/random/RandomClient$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/dataclient/WikiSite;I)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Lkotlin/sequences/TransformingSequence;

    .line 130
    .line 131
    invoke-direct {p1, p3, p0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 132
    .line 133
    .line 134
    new-instance p0, Lorg/wikipedia/feed/random/RandomClient$getRandomPages$$inlined$sortedBy$1;

    .line 135
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance p3, Lkotlin/io/FileTreeWalk;

    .line 140
    .line 141
    const/4 v0, 0x3

    .line 142
    invoke-direct {p3, v0, p1, p0}, Lkotlin/io/FileTreeWalk;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    if-ltz p2, :cond_8

    .line 146
    .line 147
    if-nez p2, :cond_6

    .line 148
    .line 149
    sget-object p0, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_6
    instance-of p0, p3, Lkotlin/sequences/DropTakeSequence;

    .line 153
    .line 154
    if-eqz p0, :cond_7

    .line 155
    .line 156
    check-cast p3, Lkotlin/sequences/DropTakeSequence;

    .line 157
    .line 158
    invoke-interface {p3, p2}, Lkotlin/sequences/DropTakeSequence;->take(I)Lkotlin/sequences/Sequence;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    goto :goto_3

    .line 163
    :cond_7
    new-instance p0, Lkotlin/sequences/DropSequence;

    .line 164
    .line 165
    invoke-direct {p0, p3, p2, v3}, Lkotlin/sequences/DropSequence;-><init>(Lkotlin/sequences/Sequence;II)V

    .line 166
    .line 167
    .line 168
    :goto_3
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :cond_8
    const-string p0, "Requested element count "

    .line 174
    .line 175
    const-string p1, " is less than zero."

    .line 176
    .line 177
    invoke-static {p2, p0, p1}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    return-object v2
.end method
