.class public final Lretrofit2/Retrofit;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final baseUrl:Ljava/lang/Object;

.field public final callAdapterFactories:Ljava/lang/Object;

.field public final callFactory:Ljava/lang/Object;

.field public final converterFactories:Ljava/lang/Object;

.field public final serviceMethodCache:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    iput-object p2, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    iput-object p4, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    iput-object p5, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 27
    iput-object p2, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    iput-object p4, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    iput-object p5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    iput-object p6, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 31
    iput-object p3, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 32
    iput-object p4, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 33
    iput-object p5, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 34
    iput-object p6, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 51
    iput-object p3, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 52
    iput-object p4, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p2, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p3, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p4, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p5, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/onboarding/OnboardingPageView;Landroid/view/View;Landroid/widget/ImageView;Lokhttp3/ConnectionPool;Lorg/wikipedia/views/AppTextView;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Lorg/wikipedia/views/AppTextView;Lorg/wikipedia/views/GoneIfEmptyTextView;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 43
    iput-object p6, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 44
    iput-object p7, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 45
    iput-object p8, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 46
    iput-object p9, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/readinglist/ReadingListItemActionsView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/materialswitch/MaterialSwitch;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p3, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 37
    iput-object p5, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 38
    iput-object p7, p0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 39
    iput-object p8, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 40
    iput-object p10, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;
    .locals 4

    .line 1
    const-string v0, "returnType == null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "annotations == null"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/util/List;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    move v2, v0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    .line 29
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lretrofit2/CallAdapter$Factory;

    .line 34
    .line 35
    invoke-virtual {v3, p1, p2}, Lretrofit2/CallAdapter$Factory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/CallAdapter;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    return-object v3

    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "Could not locate call adapter for "

    .line 48
    .line 49
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ".\n  Tried:"

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    :goto_1
    if-ge v0, p1, :cond_2

    .line 65
    .line 66
    const-string v1, "\n   * "

    .line 67
    .line 68
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lretrofit2/CallAdapter$Factory;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    add-int/lit8 v0, v0, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0
.end method

.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayDeque;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    array-length v3, v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Type parameters are unsupported on "

    .line 38
    .line 39
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    if-eq v2, p1, :cond_0

    .line 50
    .line 51
    const-string v0, " which is an interface of "

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-array v1, v1, [Ljava/lang/Class;

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    aput-object p1, v1, v2

    .line 89
    .line 90
    new-instance v2, Lretrofit2/Retrofit$1;

    .line 91
    .line 92
    invoke-direct {v2, p0, p1}, Lretrofit2/Retrofit$1;-><init>(Lretrofit2/Retrofit;Ljava/lang/Class;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_3
    const-string p0, "API declarations must be interfaces."

    .line 101
    .line 102
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    return-object p0
.end method

.method public deleteAllInterests(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;-><init>(Lretrofit2/Retrofit;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v6, :cond_2

    .line 39
    .line 40
    if-ne v2, v4, :cond_1

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v5

    .line 46
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;

    .line 63
    .line 64
    iput v6, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;->label:I

    .line 65
    .line 66
    iget-object p1, p1, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 67
    .line 68
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 69
    .line 70
    const/16 v7, 0xf

    .line 71
    .line 72
    invoke-direct {v2, v7}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1, v3, v6, v2, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v1, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move-object p1, v5

    .line 83
    :goto_1
    if-ne p1, v1, :cond_5

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_5
    :goto_2
    iget-object p0, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 89
    .line 90
    iput v4, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$deleteAllInterests$1;->label:I

    .line 91
    .line 92
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 93
    .line 94
    new-instance p1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    const/16 v2, 0xa

    .line 97
    .line 98
    invoke-direct {p1, v2}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v3, v6, p1, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-ne p0, v1, :cond_6

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_6
    move-object p0, v5

    .line 109
    :goto_3
    if-ne p0, v1, :cond_7

    .line 110
    .line 111
    :goto_4
    return-object v1

    .line 112
    :cond_7
    return-object v5
.end method

.method public getArticlesByTopic(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 10

    .line 1
    iget-object v0, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v3, v0

    .line 4
    check-cast v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 5
    .line 6
    instance-of v0, p2, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getArticlesByTopic$1;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p2

    .line 11
    check-cast v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getArticlesByTopic$1;

    .line 12
    .line 13
    iget v1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getArticlesByTopic$1;->label:I

    .line 14
    .line 15
    const/high16 v2, -0x80000000

    .line 16
    .line 17
    and-int v4, v1, v2

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    sub-int/2addr v1, v2

    .line 22
    iput v1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getArticlesByTopic$1;->label:I

    .line 23
    .line 24
    :goto_0
    move-object v9, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getArticlesByTopic$1;

    .line 27
    .line 28
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getArticlesByTopic$1;-><init>(Lretrofit2/Retrofit;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :goto_1
    iget-object p0, v9, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getArticlesByTopic$1;->result:Ljava/lang/Object;

    .line 33
    .line 34
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 35
    .line 36
    iget v0, v9, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getArticlesByTopic$1;->label:I

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    const/4 v2, 0x1

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 58
    .line 59
    invoke-static {v3}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string p0, "articletopic:"

    .line 64
    .line 65
    const-string v0, "^95"

    .line 66
    .line 67
    invoke-static {p0, p1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    iput v2, v9, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getArticlesByTopic$1;->label:I

    .line 72
    .line 73
    const/16 v6, 0x14

    .line 74
    .line 75
    const-string v7, "classic_noboostlinks"

    .line 76
    .line 77
    const-string v8, "random"

    .line 78
    .line 79
    invoke-interface/range {v4 .. v9}, Lorg/wikipedia/dataclient/Service;->getArticlesByTopic(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    if-ne p0, p2, :cond_3

    .line 84
    .line 85
    return-object p2

    .line 86
    :cond_3
    :goto_2
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 87
    .line 88
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 89
    .line 90
    if-eqz p0, :cond_8

    .line 91
    .line 92
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 93
    .line 94
    if-eqz p0, :cond_8

    .line 95
    .line 96
    new-instance p1, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_6

    .line 110
    .line 111
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    move-object v0, p2

    .line 116
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 117
    .line 118
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->pageProps:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;

    .line 119
    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$PageProps;->disambiguation:Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_5
    move-object v0, v1

    .line 126
    :goto_4
    if-nez v0, :cond_4

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    new-instance p0, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 133
    .line 134
    const/16 p2, 0x1c

    .line 135
    .line 136
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    new-instance p1, Landroidx/recyclerview/widget/DiffUtil$1;

    .line 144
    .line 145
    const/16 p2, 0x1d

    .line 146
    .line 147
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/DiffUtil$1;-><init>(I)V

    .line 148
    .line 149
    .line 150
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    .line 155
    .line 156
    const/16 p2, 0xa

    .line 157
    .line 158
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-eqz p2, :cond_7

    .line 174
    .line 175
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    check-cast p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 180
    .line 181
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    .line 182
    .line 183
    iget-object v2, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iget-object v5, p2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 190
    .line 191
    iget-object v0, v3, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p2, v0}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_7
    return-object p1

    .line 205
    :cond_8
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 206
    .line 207
    return-object p0
.end method

.method public getPersistedArticles(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 7

    .line 1
    instance-of v0, p2, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedArticles$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedArticles$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedArticles$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedArticles$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedArticles$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedArticles$1;-><init>(Lretrofit2/Retrofit;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedArticles$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedArticles$1;->label:I

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
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p2, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 53
    .line 54
    iput v3, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedArticles$1;->label:I

    .line 55
    .line 56
    iget-object v2, p2, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 57
    .line 58
    new-instance v4, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 59
    .line 60
    const/16 v5, 0x11

    .line 61
    .line 62
    invoke-direct {v4, v5, p1, p2}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    invoke-static {v2, v3, p1, v4, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    if-ne p2, v1, :cond_3

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 74
    .line 75
    new-instance p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    const/16 v0, 0xa

    .line 78
    .line 79
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 101
    .line 102
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    .line 103
    .line 104
    iget-object v2, v0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->apiTitle:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v3, p0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 109
    .line 110
    iget-object v4, v0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->thumbUrl:Ljava/lang/String;

    .line 111
    .line 112
    iget-object v5, v0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->description:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v6, v0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;->displayTitle:Ljava/lang/String;

    .line 115
    .line 116
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    return-object p1
.end method

.method public getPersistedTopics(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 7

    .line 1
    instance-of v0, p1, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedTopics$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedTopics$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedTopics$1;->label:I

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
    iput v1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedTopics$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedTopics$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedTopics$1;-><init>(Lretrofit2/Retrofit;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedTopics$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedTopics$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v5, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

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
    return-object v3

    .line 48
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lretrofit2/Retrofit;->serviceMethodCache:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;

    .line 54
    .line 55
    iput v5, v0, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$getPersistedTopics$1;->label:I

    .line 56
    .line 57
    iget-object p0, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestTopicDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 58
    .line 59
    new-instance p1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    const/16 v2, 0xd

    .line 62
    .line 63
    invoke-direct {p1, v2}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v5, v4, p1, v0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v1, :cond_3

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 74
    .line 75
    new-instance p0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;

    .line 95
    .line 96
    sget-object v1, Lorg/wikipedia/topics/ArticleTopics;->all:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_6

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    move-object v5, v2

    .line 113
    check-cast v5, Lorg/wikipedia/topics/ArticleTopic;

    .line 114
    .line 115
    iget-object v5, v5, Lorg/wikipedia/topics/ArticleTopic;->topicId:Ljava/lang/String;

    .line 116
    .line 117
    iget-object v6, v0, Lorg/wikipedia/feed/personalization/db/entity/InterestTopic;->topicId:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_5

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_6
    move-object v2, v3

    .line 127
    :goto_3
    check-cast v2, Lorg/wikipedia/topics/ArticleTopic;

    .line 128
    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    .line 136
    .line 137
    const/16 v0, 0xa

    .line 138
    .line 139
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_8

    .line 155
    .line 156
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    check-cast v0, Lorg/wikipedia/topics/ArticleTopic;

    .line 161
    .line 162
    new-instance v1, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;

    .line 163
    .line 164
    invoke-direct {v1, v0, v4}, Lorg/wikipedia/feed/personalization/interest/OnboardingTopic;-><init>(Lorg/wikipedia/topics/ArticleTopic;Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_8
    return-object p1
.end method

.method public loadInitialArticles(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lretrofit2/Retrofit;->callAdapterFactories:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lorg/wikipedia/dataclient/WikiSite;

    .line 8
    .line 9
    instance-of v3, v1, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    move-object v3, v1

    .line 14
    check-cast v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;

    .line 15
    .line 16
    iget v4, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->label:I

    .line 17
    .line 18
    const/high16 v5, -0x80000000

    .line 19
    .line 20
    and-int v6, v4, v5

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    sub-int/2addr v4, v5

    .line 25
    iput v4, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;

    .line 29
    .line 30
    invoke-direct {v3, v0, v1}, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;-><init>(Lretrofit2/Retrofit;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 36
    .line 37
    iget v5, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->label:I

    .line 38
    .line 39
    const/16 v6, 0xa

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    const/4 v8, 0x3

    .line 43
    const/4 v9, 0x2

    .line 44
    const/4 v10, 0x1

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v12, 0x0

    .line 47
    if-eqz v5, :cond_5

    .line 48
    .line 49
    if-eq v5, v10, :cond_4

    .line 50
    .line 51
    if-eq v5, v9, :cond_3

    .line 52
    .line 53
    if-eq v5, v8, :cond_2

    .line 54
    .line 55
    if-ne v5, v7, :cond_1

    .line 56
    .line 57
    iget-object v0, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$4:Ljava/util/List;

    .line 58
    .line 59
    iget-object v2, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$0:Ljava/util/List;

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_11

    .line 65
    .line 66
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object v12

    .line 72
    :cond_2
    iget v0, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$1:I

    .line 73
    .line 74
    iget v5, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$0:I

    .line 75
    .line 76
    iget-object v6, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$7:Lorg/wikipedia/dataclient/WikiSite;

    .line 77
    .line 78
    iget-object v9, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$5:Ljava/util/Iterator;

    .line 79
    .line 80
    iget-object v11, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$3:Ljava/util/Map;

    .line 81
    .line 82
    iget-object v13, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$0:Ljava/util/List;

    .line 83
    .line 84
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    move-object v7, v6

    .line 88
    move v6, v5

    .line 89
    move-object v5, v3

    .line 90
    move v3, v0

    .line 91
    move-object v0, v13

    .line 92
    goto/16 :goto_b

    .line 93
    .line 94
    :cond_3
    iget v0, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$0:I

    .line 95
    .line 96
    iget-object v5, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$1:Ljava/util/ArrayList;

    .line 97
    .line 98
    iget-object v9, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$0:Ljava/util/List;

    .line 99
    .line 100
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :cond_4
    iget v5, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$0:I

    .line 106
    .line 107
    iget-object v13, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$0:Ljava/util/List;

    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    move v14, v5

    .line 113
    goto :goto_1

    .line 114
    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v5, v0, Lretrofit2/Retrofit;->baseUrl:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v5, Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;

    .line 125
    .line 126
    iget-object v13, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v1, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$0:Ljava/util/List;

    .line 129
    .line 130
    const/16 v14, 0x14

    .line 131
    .line 132
    iput v14, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$0:I

    .line 133
    .line 134
    iput v10, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->label:I

    .line 135
    .line 136
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v5, v14, v11, v13, v3}, Lorg/wikipedia/dataclient/Service$-CC;->findEntryForReadMore$suspendImpl(Lorg/wikipedia/history/db/HistoryEntryWithImageDao_Impl;IILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-ne v5, v4, :cond_6

    .line 144
    .line 145
    goto/16 :goto_10

    .line 146
    .line 147
    :cond_6
    move-object v13, v1

    .line 148
    move-object v1, v5

    .line 149
    :goto_1
    check-cast v1, Ljava/lang/Iterable;

    .line 150
    .line 151
    new-instance v5, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 154
    .line 155
    .line 156
    move-result v15

    .line 157
    invoke-direct {v5, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    if-eqz v15, :cond_7

    .line 169
    .line 170
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v15

    .line 174
    check-cast v15, Lorg/wikipedia/history/HistoryEntry;

    .line 175
    .line 176
    invoke-virtual {v15}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    iget-object v0, v0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 187
    .line 188
    iget-object v1, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 189
    .line 190
    iput-object v13, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$0:Ljava/util/List;

    .line 191
    .line 192
    iput-object v5, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$1:Ljava/util/ArrayList;

    .line 193
    .line 194
    iput v14, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$0:I

    .line 195
    .line 196
    iput v9, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->label:I

    .line 197
    .line 198
    iget-object v9, v0, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 199
    .line 200
    new-instance v15, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;

    .line 201
    .line 202
    invoke-direct {v15, v1, v14, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;ILorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v9, v10, v11, v15, v3}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    if-ne v1, v4, :cond_8

    .line 210
    .line 211
    goto/16 :goto_10

    .line 212
    .line 213
    :cond_8
    move-object v9, v13

    .line 214
    move v0, v14

    .line 215
    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    .line 216
    .line 217
    new-instance v13, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-eqz v6, :cond_9

    .line 235
    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 241
    .line 242
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    iget-object v14, v6, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 246
    .line 247
    iget-object v15, v6, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    iput-object v15, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 256
    .line 257
    move-object/from16 v16, v14

    .line 258
    .line 259
    new-instance v14, Lorg/wikipedia/page/PageTitle;

    .line 260
    .line 261
    iget-object v15, v6, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v11, v6, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v7, v6, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 266
    .line 267
    iget-object v6, v6, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 268
    .line 269
    move-object/from16 v19, v6

    .line 270
    .line 271
    move-object/from16 v18, v7

    .line 272
    .line 273
    move-object/from16 v17, v11

    .line 274
    .line 275
    invoke-direct/range {v14 .. v19}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    const/4 v7, 0x4

    .line 282
    const/4 v11, 0x0

    .line 283
    goto :goto_4

    .line 284
    :cond_9
    const/4 v1, 0x0

    .line 285
    :goto_5
    if-ge v1, v0, :cond_c

    .line 286
    .line 287
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 288
    .line 289
    .line 290
    move-result v6

    .line 291
    if-ge v1, v6, :cond_a

    .line 292
    .line 293
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-nez v6, :cond_a

    .line 302
    .line 303
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-ge v1, v6, :cond_b

    .line 315
    .line 316
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    if-nez v6, :cond_b

    .line 325
    .line 326
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_c
    new-instance v1, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 337
    .line 338
    const/16 v5, 0x10

    .line 339
    .line 340
    invoke-direct {v1, v5}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 341
    .line 342
    .line 343
    invoke-static {v9, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 344
    .line 345
    .line 346
    new-instance v1, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    :cond_d
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-eqz v6, :cond_10

    .line 360
    .line 361
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v6

    .line 365
    move-object v7, v6

    .line 366
    check-cast v7, Lorg/wikipedia/page/PageTitle;

    .line 367
    .line 368
    iget-object v11, v7, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 369
    .line 370
    if-eqz v11, :cond_f

    .line 371
    .line 372
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    if-nez v11, :cond_e

    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_e
    iget-object v7, v7, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 380
    .line 381
    if-eqz v7, :cond_f

    .line 382
    .line 383
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-nez v7, :cond_d

    .line 388
    .line 389
    :cond_f
    :goto_7
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_6

    .line 393
    :cond_10
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 394
    .line 395
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    if-eqz v6, :cond_12

    .line 407
    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    move-object v7, v6

    .line 413
    check-cast v7, Lorg/wikipedia/page/PageTitle;

    .line 414
    .line 415
    iget-object v7, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 416
    .line 417
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    if-nez v11, :cond_11

    .line 422
    .line 423
    new-instance v11, Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-interface {v5, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    :cond_11
    check-cast v11, Ljava/util/List;

    .line 432
    .line 433
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    goto :goto_8

    .line 437
    :cond_12
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    check-cast v1, Ljava/lang/Iterable;

    .line 442
    .line 443
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    move-object v11, v5

    .line 448
    move v5, v0

    .line 449
    move-object v0, v9

    .line 450
    move-object v9, v1

    .line 451
    const/4 v1, 0x0

    .line 452
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 453
    .line 454
    .line 455
    move-result v6

    .line 456
    if-eqz v6, :cond_1b

    .line 457
    .line 458
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v6

    .line 462
    check-cast v6, Lorg/wikipedia/dataclient/WikiSite;

    .line 463
    .line 464
    sget-object v7, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 465
    .line 466
    invoke-static {v6}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v13

    .line 474
    move-object v14, v13

    .line 475
    check-cast v14, Ljava/util/List;

    .line 476
    .line 477
    if-eqz v14, :cond_13

    .line 478
    .line 479
    new-instance v13, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 480
    .line 481
    const/16 v15, 0x11

    .line 482
    .line 483
    invoke-direct {v13, v15}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 484
    .line 485
    .line 486
    const/16 v19, 0x1e

    .line 487
    .line 488
    const-string/jumbo v15, "|"

    .line 489
    .line 490
    .line 491
    const/16 v16, 0x0

    .line 492
    .line 493
    const/16 v17, 0x0

    .line 494
    .line 495
    move-object/from16 v18, v13

    .line 496
    .line 497
    invoke-static/range {v14 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v13

    .line 501
    goto :goto_a

    .line 502
    :cond_13
    move-object v13, v12

    .line 503
    :goto_a
    iput-object v0, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$0:Ljava/util/List;

    .line 504
    .line 505
    iput-object v12, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$1:Ljava/util/ArrayList;

    .line 506
    .line 507
    iput-object v11, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$3:Ljava/util/Map;

    .line 508
    .line 509
    iput-object v12, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$4:Ljava/util/List;

    .line 510
    .line 511
    iput-object v9, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$5:Ljava/util/Iterator;

    .line 512
    .line 513
    iput-object v6, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$7:Lorg/wikipedia/dataclient/WikiSite;

    .line 514
    .line 515
    iput v5, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$0:I

    .line 516
    .line 517
    iput v1, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$1:I

    .line 518
    .line 519
    iput v8, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->label:I

    .line 520
    .line 521
    invoke-static {v7, v12, v13, v3, v10}, Lorg/wikipedia/dataclient/Service$-CC;->getInfoByPageIdsOrTitles$default(Lorg/wikipedia/dataclient/Service;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v7

    .line 525
    if-ne v7, v4, :cond_14

    .line 526
    .line 527
    goto/16 :goto_10

    .line 528
    .line 529
    :cond_14
    move-object/from16 v20, v3

    .line 530
    .line 531
    move v3, v1

    .line 532
    move-object v1, v7

    .line 533
    move-object v7, v6

    .line 534
    move v6, v5

    .line 535
    move-object/from16 v5, v20

    .line 536
    .line 537
    :goto_b
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 538
    .line 539
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 540
    .line 541
    if-eqz v1, :cond_15

    .line 542
    .line 543
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 544
    .line 545
    goto :goto_c

    .line 546
    :cond_15
    move-object v1, v12

    .line 547
    :goto_c
    if-nez v1, :cond_16

    .line 548
    .line 549
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 550
    .line 551
    :cond_16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 556
    .line 557
    .line 558
    move-result v13

    .line 559
    if-eqz v13, :cond_1a

    .line 560
    .line 561
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v13

    .line 565
    check-cast v13, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 566
    .line 567
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 568
    .line 569
    .line 570
    move-result-object v14

    .line 571
    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 572
    .line 573
    .line 574
    move-result v15

    .line 575
    if-eqz v15, :cond_18

    .line 576
    .line 577
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v15

    .line 581
    move-object/from16 v16, v15

    .line 582
    .line 583
    check-cast v16, Lorg/wikipedia/page/PageTitle;

    .line 584
    .line 585
    invoke-virtual/range {v16 .. v16}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v8

    .line 589
    sget-object v16, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 590
    .line 591
    iget-object v10, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 592
    .line 593
    invoke-static {v10}, Lorg/wikipedia/util/StringUtil;->addUnderscores(Ljava/lang/String;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v10

    .line 597
    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v8

    .line 601
    if-eqz v8, :cond_17

    .line 602
    .line 603
    goto :goto_f

    .line 604
    :cond_17
    const/4 v8, 0x3

    .line 605
    const/4 v10, 0x1

    .line 606
    goto :goto_e

    .line 607
    :cond_18
    move-object v15, v12

    .line 608
    :goto_f
    check-cast v15, Lorg/wikipedia/page/PageTitle;

    .line 609
    .line 610
    if-eqz v15, :cond_19

    .line 611
    .line 612
    iget-object v8, v7, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 613
    .line 614
    invoke-virtual {v13, v8}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v8

    .line 618
    invoke-virtual {v15, v8}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    iget-object v8, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->description:Ljava/lang/String;

    .line 622
    .line 623
    iput-object v8, v15, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 624
    .line 625
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v8

    .line 629
    iput-object v8, v15, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 630
    .line 631
    :cond_19
    const/4 v8, 0x3

    .line 632
    const/4 v10, 0x1

    .line 633
    goto :goto_d

    .line 634
    :cond_1a
    move v1, v3

    .line 635
    move-object v3, v5

    .line 636
    move v5, v6

    .line 637
    goto/16 :goto_9

    .line 638
    .line 639
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 640
    .line 641
    .line 642
    move-result v1

    .line 643
    const/4 v6, 0x6

    .line 644
    if-ge v1, v6, :cond_1d

    .line 645
    .line 646
    iput-object v0, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$0:Ljava/util/List;

    .line 647
    .line 648
    iput-object v12, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$1:Ljava/util/ArrayList;

    .line 649
    .line 650
    iput-object v12, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$3:Ljava/util/Map;

    .line 651
    .line 652
    iput-object v0, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$4:Ljava/util/List;

    .line 653
    .line 654
    iput-object v12, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$5:Ljava/util/Iterator;

    .line 655
    .line 656
    iput-object v12, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->L$7:Lorg/wikipedia/dataclient/WikiSite;

    .line 657
    .line 658
    iput v5, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$0:I

    .line 659
    .line 660
    iput v6, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->I$1:I

    .line 661
    .line 662
    const/4 v1, 0x4

    .line 663
    iput v1, v3, Lorg/wikipedia/feed/personalization/interest/InterestSelectionRepository$loadInitialArticles$1;->label:I

    .line 664
    .line 665
    sget-object v1, Lorg/wikipedia/feed/random/RandomClient;->INSTANCE:Lorg/wikipedia/feed/random/RandomClient;

    .line 666
    .line 667
    invoke-virtual {v1, v2, v6, v3}, Lorg/wikipedia/feed/random/RandomClient;->getRandomPages(Lorg/wikipedia/dataclient/WikiSite;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    if-ne v1, v4, :cond_1c

    .line 672
    .line 673
    :goto_10
    return-object v4

    .line 674
    :cond_1c
    move-object v2, v0

    .line 675
    :goto_11
    check-cast v1, Ljava/util/Collection;

    .line 676
    .line 677
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 678
    .line 679
    .line 680
    move-object v0, v2

    .line 681
    :cond_1d
    new-instance v1, Ljava/util/HashSet;

    .line 682
    .line 683
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 684
    .line 685
    .line 686
    new-instance v2, Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    :cond_1e
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    if-eqz v3, :cond_1f

    .line 700
    .line 701
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v3

    .line 705
    move-object v4, v3

    .line 706
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 707
    .line 708
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v4

    .line 712
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    if-eqz v4, :cond_1e

    .line 717
    .line 718
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    goto :goto_12

    .line 722
    :cond_1f
    return-object v2
.end method

.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 5

    .line 1
    const-string/jumbo v0, "type == null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string v0, "methodAnnotations == null"

    .line 8
    .line 9
    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lretrofit2/Converter$Factory;

    .line 35
    .line 36
    invoke-virtual {v4, p1, p2, p3, p0}, Lretrofit2/Converter$Factory;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    return-object v4

    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p2, "Could not locate RequestBody converter for "

    .line 49
    .line 50
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, ".\n  Tried:"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    :goto_1
    if-ge v1, p1, :cond_2

    .line 66
    .line 67
    const-string p2, "\n   * "

    .line 68
    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lretrofit2/Converter$Factory;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;
    .locals 5

    .line 1
    const-string/jumbo v0, "type == null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string v0, "annotations == null"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lretrofit2/Converter$Factory;

    .line 35
    .line 36
    invoke-virtual {v4, p1, p2, p0}, Lretrofit2/Converter$Factory;->responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    return-object v4

    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p2, "Could not locate ResponseBody converter for "

    .line 49
    .line 50
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, ".\n  Tried:"

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    :goto_1
    if-ge v1, p1, :cond_2

    .line 66
    .line 67
    const-string p2, "\n   * "

    .line 68
    .line 69
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Lretrofit2/Converter$Factory;

    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public saveArticle(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object p0, p0, Lretrofit2/Retrofit;->callFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;

    .line 4
    .line 5
    new-instance v0, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->namespace()Lorg/wikipedia/page/Namespace;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v2, p1, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 20
    .line 21
    const-string v5, ""

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    move-object v2, v5

    .line 26
    :cond_0
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    move-object v6, v5

    .line 31
    :goto_0
    move-object v5, v2

    .line 32
    move-object v2, p2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move-object v6, p1

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/Namespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 40
    .line 41
    new-instance p2, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-direct {p2, p0, v0, v1}, Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/feed/personalization/db/dao/InterestArticleDao_Impl;Lorg/wikipedia/feed/personalization/db/entity/InterestArticle;I)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    invoke-static {p1, v1, p0, p2, p3}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 53
    .line 54
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 55
    .line 56
    if-ne p0, p1, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move-object p0, p2

    .line 60
    :goto_2
    if-ne p0, p1, :cond_3

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_3
    return-object p2
.end method

.method public stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 1
    const-string/jumbo p2, "type == null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lretrofit2/Retrofit;->converterFactories:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, 0x0

    .line 16
    :goto_0
    if-ge p2, p1, :cond_0

    .line 17
    .line 18
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lretrofit2/Converter$Factory;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
