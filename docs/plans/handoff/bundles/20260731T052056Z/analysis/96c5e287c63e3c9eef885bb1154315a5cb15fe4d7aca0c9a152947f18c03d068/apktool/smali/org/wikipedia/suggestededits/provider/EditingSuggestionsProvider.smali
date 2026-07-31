.class public final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

.field public static final articlesWithImageRecommendationsCache:Lkotlin/collections/ArrayDeque;

.field public static articlesWithImageRecommendationsCacheLang:Ljava/lang/String;

.field public static articlesWithImageRecommendationsLastMillis:J

.field public static final articlesWithMissingDescriptionCache:Lkotlin/collections/ArrayDeque;

.field public static articlesWithMissingDescriptionCacheLang:Ljava/lang/String;

.field public static final articlesWithTranslatableDescriptionCache:Lkotlin/collections/ArrayDeque;

.field public static articlesWithTranslatableDescriptionCacheFromLang:Ljava/lang/String;

.field public static articlesWithTranslatableDescriptionCacheToLang:Ljava/lang/String;

.field public static final imagesWithMissingCaptionsCache:Lkotlin/collections/ArrayDeque;

.field public static imagesWithMissingCaptionsCacheLang:Ljava/lang/String;

.field public static final imagesWithMissingTagsCache:Lkotlin/collections/ArrayDeque;

.field public static final imagesWithTranslatableCaptionCache:Lkotlin/collections/ArrayDeque;

.field public static imagesWithTranslatableCaptionCacheFromLang:Ljava/lang/String;

.field public static imagesWithTranslatableCaptionCacheToLang:Ljava/lang/String;

.field public static final mutex:Ljava/util/concurrent/Semaphore;

.field public static final revertCandidateCache:Lkotlin/collections/ArrayDeque;

.field public static revertCandidateLang:Ljava/lang/String;

.field public static revertCandidateLastRevId:J

.field public static revertCandidateLastTimeStamp:Lj$/time/Instant;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 15
    .line 16
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 17
    .line 18
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 22
    .line 23
    const-string v0, ""

    .line 24
    .line 25
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithMissingDescriptionCacheLang:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Lkotlin/collections/ArrayDeque;

    .line 28
    .line 29
    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCache:Lkotlin/collections/ArrayDeque;

    .line 33
    .line 34
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheFromLang:Ljava/lang/String;

    .line 35
    .line 36
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithTranslatableDescriptionCacheToLang:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v1, Lkotlin/collections/ArrayDeque;

    .line 39
    .line 40
    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 41
    .line 42
    .line 43
    sput-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCache:Lkotlin/collections/ArrayDeque;

    .line 44
    .line 45
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCacheLang:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v1, Lkotlin/collections/ArrayDeque;

    .line 48
    .line 49
    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 50
    .line 51
    .line 52
    sput-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCache:Lkotlin/collections/ArrayDeque;

    .line 53
    .line 54
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheFromLang:Ljava/lang/String;

    .line 55
    .line 56
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheToLang:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v1, Lkotlin/collections/ArrayDeque;

    .line 59
    .line 60
    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingTagsCache:Lkotlin/collections/ArrayDeque;

    .line 64
    .line 65
    new-instance v1, Lkotlin/collections/ArrayDeque;

    .line 66
    .line 67
    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCache:Lkotlin/collections/ArrayDeque;

    .line 71
    .line 72
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCacheLang:Ljava/lang/String;

    .line 73
    .line 74
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->revertCandidateLang:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 77
    .line 78
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->revertCandidateCache:Lkotlin/collections/ArrayDeque;

    .line 82
    .line 83
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->revertCandidateLastTimeStamp:Lj$/time/Instant;

    .line 88
    .line 89
    return-void
.end method


# virtual methods
.method public final fetchArticlesWithNullDescription(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 4

    .line 1
    instance-of v0, p2, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$fetchArticlesWithNullDescription$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$fetchArticlesWithNullDescription$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$fetchArticlesWithNullDescription$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$fetchArticlesWithNullDescription$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$fetchArticlesWithNullDescription$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$fetchArticlesWithNullDescription$1;-><init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$fetchArticlesWithNullDescription$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$fetchArticlesWithNullDescription$1;->label:I

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
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 51
    .line 52
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iput v3, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$fetchArticlesWithNullDescription$1;->label:I

    .line 57
    .line 58
    const/16 p1, 0x32

    .line 59
    .line 60
    invoke-interface {p0, p1, v0}, Lorg/wikipedia/dataclient/Service;->getRandomPages(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-ne p0, p2, :cond_3

    .line 65
    .line 66
    return-object p2

    .line 67
    :cond_3
    :goto_1
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 68
    .line 69
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 70
    .line 71
    if-eqz p0, :cond_5

    .line 72
    .line 73
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 74
    .line 75
    if-eqz p0, :cond_5

    .line 76
    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    move-object p2, p1

    .line 97
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 98
    .line 99
    iget-object p2, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 100
    .line 101
    if-nez p2, :cond_4

    .line 102
    .line 103
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    if-nez v2, :cond_6

    .line 108
    .line 109
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 110
    .line 111
    return-object p0

    .line 112
    :cond_6
    return-object v2
.end method

.method public final getNextArticleWithImageRecommendation(Ljava/lang/String;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p4, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;-><init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;->label:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    iget-object p1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 37
    .line 38
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

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
    invoke-static {p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 54
    .line 55
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 56
    .line 57
    new-instance v3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;

    .line 58
    .line 59
    const/4 v8, 0x0

    .line 60
    move-object v4, p1

    .line 61
    move-wide v5, p2

    .line 62
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 63
    .line 64
    .line 65
    iput-object v7, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    .line 67
    iput v2, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithImageRecommendation$1;->label:I

    .line 68
    .line 69
    invoke-static {p0, v3, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-ne p0, p4, :cond_3

    .line 74
    .line 75
    return-object p4

    .line 76
    :cond_3
    move-object p1, v7

    .line 77
    :goto_1
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 78
    .line 79
    return-object p0
.end method

.method public final getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;

    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;

    invoke-direct {v0, p0, p4}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;-><init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;->result:Ljava/lang/Object;

    .line 119
    sget-object p4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 120
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_2
    invoke-static {p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    move-result-object v7

    .line 122
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 123
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 124
    new-instance v3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;

    const/4 v8, 0x0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v7, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v2, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$1;->label:I

    .line 125
    invoke-static {p0, v3, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_3

    return-object p4

    :cond_3
    move-object p1, v7

    .line 126
    :goto_1
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0
.end method

.method public final getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    instance-of v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;

    .line 9
    .line 10
    iget v2, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;

    .line 23
    .line 24
    move-object/from16 v2, p0

    .line 25
    .line 26
    invoke-direct {v1, v2, v0}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;-><init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;->result:Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 32
    .line 33
    iget v3, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;->label:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v1, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    return-object v0

    .line 53
    :cond_2
    invoke-static {v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    new-instance v0, Lkotlin/Pair;

    .line 58
    .line 59
    new-instance v11, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 60
    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    const v17, 0x3ffff

    .line 64
    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    const/4 v14, 0x0

    .line 69
    const/4 v15, 0x0

    .line 70
    invoke-direct/range {v11 .. v17}, Lorg/wikipedia/dataclient/page/PageSummary;-><init>(Lorg/wikipedia/dataclient/page/PageSummary$Titles;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v12, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 74
    .line 75
    const/16 v17, 0x0

    .line 76
    .line 77
    const v18, 0x3ffff

    .line 78
    .line 79
    .line 80
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/dataclient/page/PageSummary;-><init>(Lorg/wikipedia/dataclient/page/PageSummary$Titles;Ljava/lang/String;Lorg/wikipedia/dataclient/page/PageSummary$Thumbnail;Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    .line 88
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 89
    .line 90
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 91
    .line 92
    new-instance v5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    move-object/from16 v7, p1

    .line 96
    .line 97
    move-object/from16 v6, p2

    .line 98
    .line 99
    move-wide/from16 v8, p3

    .line 100
    .line 101
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$4;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 102
    .line 103
    .line 104
    iput-object v10, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 105
    .line 106
    iput v4, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextArticleWithMissingDescription$3;->label:I

    .line 107
    .line 108
    invoke-static {v0, v5, v1}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-ne v0, v2, :cond_3

    .line 113
    .line 114
    return-object v2

    .line 115
    :cond_3
    move-object v1, v10

    .line 116
    :goto_1
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 117
    .line 118
    return-object v0
.end method

.method public final getNextImageWithMissingCaption(Ljava/lang/String;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;

    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;

    invoke-direct {v0, p0, p4}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;-><init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p0, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;->result:Ljava/lang/Object;

    .line 90
    sget-object p4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 91
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_2
    invoke-static {p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    move-result-object v5

    .line 93
    const-string p0, ""

    iput-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 94
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 95
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 96
    new-instance v3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;

    const/4 v8, 0x0

    move-object v4, p1

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V

    iput-object v5, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v2, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$1;->label:I

    .line 97
    invoke-static {p0, v3, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_3

    return-object p4

    :cond_3
    move-object p1, v5

    .line 98
    :goto_1
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0
.end method

.method public final getNextImageWithMissingCaption(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p5, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;->label:I

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
    iput v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;-><init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;->label:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    iget-object p1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 37
    .line 38
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

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
    invoke-static {p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    new-instance p0, Lkotlin/Pair;

    .line 54
    .line 55
    const-string v1, ""

    .line 56
    .line 57
    invoke-direct {p0, v1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object p0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    .line 62
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 63
    .line 64
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 65
    .line 66
    new-instance v3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    move-object v4, p1

    .line 70
    move-object v5, p2

    .line 71
    move-wide v7, p3

    .line 72
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V

    .line 73
    .line 74
    .line 75
    iput-object v6, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    iput v2, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$3;->label:I

    .line 78
    .line 79
    invoke-static {p0, v3, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-ne p0, p5, :cond_3

    .line 84
    .line 85
    return-object p5

    .line 86
    :cond_3
    move-object p1, v6

    .line 87
    :goto_1
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 88
    .line 89
    return-object p0
.end method

.method public final getNextImageWithMissingTags(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;-><init>(Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;->label:I

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
    iget-object p1, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    invoke-static {p0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/Object;)Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 54
    .line 55
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 56
    .line 57
    new-instance v4, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;

    .line 58
    .line 59
    invoke-direct {v4, p0, p1, p2, v2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    iput-object p0, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;->L$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    iput v3, v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingTags$1;->label:I

    .line 65
    .line 66
    invoke-static {v1, v4, v0}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, p3, :cond_3

    .line 71
    .line 72
    return-object p3

    .line 73
    :cond_3
    move-object p1, p0

    .line 74
    :goto_1
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 75
    .line 76
    return-object p0
.end method
