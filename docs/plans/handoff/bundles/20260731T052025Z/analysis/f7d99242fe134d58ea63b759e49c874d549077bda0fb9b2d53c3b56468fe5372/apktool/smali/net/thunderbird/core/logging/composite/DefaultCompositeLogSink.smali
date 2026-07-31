.class public final Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/core/logging/composite/CompositeLogSink;


# instance fields
.field public final logLevelProvider:Lnet/thunderbird/core/logging/LogLevelProvider;

.field public final manager:Lokhttp3/Headers$Builder;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/logging/LogLevelProvider;Lokhttp3/Headers$Builder;Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;->logLevelProvider:Lnet/thunderbird/core/logging/LogLevelProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;->manager:Lokhttp3/Headers$Builder;

    .line 7
    .line 8
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lnet/thunderbird/core/logging/LogSink;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object p3, p2, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge canLog(Lnet/thunderbird/core/logging/LogLevel;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/io/Sink$-CC;->$default$canLog(Lnet/thunderbird/core/logging/LogSink;Lnet/thunderbird/core/logging/LogLevel;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getLevel()Lnet/thunderbird/core/logging/LogLevel;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;->logLevelProvider:Lnet/thunderbird/core/logging/LogLevelProvider;

    .line 2
    .line 3
    check-cast p0, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/app/common/core/logging/DefaultLogLevelManager;->logLevel:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lnet/thunderbird/core/logging/LogLevel;

    .line 12
    .line 13
    return-object p0
.end method

.method public final log(Lnet/thunderbird/core/logging/LogEvent;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lnet/thunderbird/core/logging/LogEvent;->level:Lnet/thunderbird/core/logging/LogLevel;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlinx/io/Sink$-CC;->$default$canLog(Lnet/thunderbird/core/logging/LogSink;Lnet/thunderbird/core/logging/LogLevel;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/core/logging/composite/DefaultCompositeLogSink;->manager:Lokhttp3/Headers$Builder;

    .line 10
    .line 11
    iget-object p0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lnet/thunderbird/core/logging/LogSink;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Lnet/thunderbird/core/logging/LogSink;->canLog(Lnet/thunderbird/core/logging/LogLevel;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1, p1}, Lnet/thunderbird/core/logging/LogSink;->log(Lnet/thunderbird/core/logging/LogEvent;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method
