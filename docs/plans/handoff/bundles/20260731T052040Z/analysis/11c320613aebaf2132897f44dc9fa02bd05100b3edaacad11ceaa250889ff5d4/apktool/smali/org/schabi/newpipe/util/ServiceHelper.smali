.class public abstract Lorg/schabi/newpipe/util/ServiceHelper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->YouTube:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 7
    .line 8
    return-void
.end method

.method public static final getIcon(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const p0, 0x7f0800fa

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    const p0, 0x7f080138

    .line 20
    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    const p0, 0x7f08013a

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :cond_2
    const p0, 0x7f080139

    .line 28
    .line 29
    .line 30
    return p0

    .line 31
    :cond_3
    const p0, 0x7f0800fe

    .line 32
    .line 33
    .line 34
    return p0

    .line 35
    :cond_4
    const p0, 0x7f080155

    .line 36
    .line 37
    .line 38
    return p0
.end method

.method public static final getNameOfServiceById(I)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-direct {v1, p0, v2}, Lcoil3/request/ImageRequests_androidKt$$ExternalSyntheticLambda0;-><init>(II)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Lcom/google/common/collect/Sets$2$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/Sets$2$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$2;->INSTANCE:Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$2;

    .line 28
    .line 29
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/16 v1, 0x1c

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object v0, Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;->INSTANCE:Lorg/schabi/newpipe/util/ServiceHelper$getNameOfServiceById$3;

    .line 41
    .line 42
    new-instance v0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/16 v1, 0x1d

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v0, "<unknown>"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    check-cast p0, Ljava/lang/String;

    .line 63
    .line 64
    return-object p0
.end method

.method public static final getSelectedService(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const v1, 0x7f1300ce

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const v2, 0x7f1300e6

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move-object p0, v0

    .line 45
    :goto_0
    :try_start_0
    invoke-static {p0}, Lus/shandian/giga/util/Utility;->getService(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 46
    .line 47
    .line 48
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    new-instance v0, Lkotlin/Result$Failure;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    move-object p0, v0

    .line 57
    :goto_1
    nop

    .line 58
    instance-of v0, p0, Lkotlin/Result$Failure;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_1
    move-object v2, p0

    .line 64
    :goto_2
    check-cast v2, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 65
    .line 66
    return-object v2
.end method

.method public static final getSelectedServiceId(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedService(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/StreamingService;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lorg/schabi/newpipe/util/ServiceHelper;->DEFAULT_FALLBACK_SERVICE:Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;

    .line 11
    .line 12
    :cond_0
    iget p0, p0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 13
    .line 14
    return p0
.end method

.method public static final getServiceById(I)Lorg/schabi/newpipe/extractor/StreamingService;
    .locals 4

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/ServiceList;->SERVICES:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/schabi/newpipe/extractor/StreamingService;

    .line 22
    .line 23
    iget v3, v1, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 24
    .line 25
    if-ne v3, p0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    move-object v1, v2

    .line 29
    :goto_1
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v1, v2

    .line 33
    :cond_2
    if-eqz v1, :cond_3

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_3
    const-string p0, "No element of the collection was transformed to a non-null value."

    .line 37
    .line 38
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v2
.end method
