.class public final Lio/sentry/Scope;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Lio/sentry/IScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Scope$IWithSession;,
        Lio/sentry/Scope$SessionPair;,
        Lio/sentry/Scope$IWithTransaction;,
        Lio/sentry/Scope$IWithPropagationContext;
    }
.end annotation


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final breadcrumbs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation
.end field

.field private contexts:Lio/sentry/protocol/Contexts;

.field private eventProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level:Lio/sentry/SentryLevel;

.field private final options:Lio/sentry/SentryOptions;

.field private propagationContext:Lio/sentry/PropagationContext;

.field private final propagationContextLock:Ljava/lang/Object;

.field private replayId:Lio/sentry/protocol/SentryId;

.field private request:Lio/sentry/protocol/Request;

.field private screen:Ljava/lang/String;

.field private volatile session:Lio/sentry/Session;

.field private final sessionLock:Ljava/lang/Object;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transaction:Lio/sentry/ITransaction;

.field private final transactionLock:Ljava/lang/Object;

.field private transactionName:Ljava/lang/String;

.field private user:Lio/sentry/protocol/User;


# direct methods
.method private constructor <init>(Lio/sentry/Scope;)V
    .locals 6

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->propagationContextLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 85
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    .line 99
    iget-object v0, p1, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    iput-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 100
    iget-object v0, p1, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lio/sentry/Scope;->session:Lio/sentry/Session;

    iput-object v0, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 102
    iget-object v0, p1, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 103
    iget-object v0, p1, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    iput-object v0, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    .line 105
    iget-object v0, p1, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    new-instance v2, Lio/sentry/protocol/User;

    invoke-direct {v2, v0}, Lio/sentry/protocol/User;-><init>(Lio/sentry/protocol/User;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    .line 107
    iget-object v0, p1, Lio/sentry/Scope;->screen:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    .line 110
    iget-object v0, p1, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    if-eqz v0, :cond_1

    .line 111
    new-instance v1, Lio/sentry/protocol/Request;

    invoke-direct {v1, v0}, Lio/sentry/protocol/Request;-><init>(Lio/sentry/protocol/Request;)V

    :cond_1
    iput-object v1, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 116
    iget-object v0, p1, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    const/4 v1, 0x0

    new-array v2, v1, [Lio/sentry/Breadcrumb;

    invoke-interface {v0, v2}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/Breadcrumb;

    .line 118
    iget-object v2, p1, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v2

    invoke-direct {p0, v2}, Lio/sentry/Scope;->createBreadcrumbsList(I)Ljava/util/Queue;

    move-result-object v2

    .line 120
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 121
    new-instance v5, Lio/sentry/Breadcrumb;

    invoke-direct {v5, v4}, Lio/sentry/Breadcrumb;-><init>(Lio/sentry/Breadcrumb;)V

    .line 122
    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_2
    iput-object v2, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 126
    iget-object v0, p1, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 128
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 130
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 136
    :cond_4
    iput-object v1, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 138
    iget-object v0, p1, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 140
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 142
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_5

    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 148
    :cond_6
    iput-object v1, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 150
    new-instance v0, Lio/sentry/protocol/Contexts;

    iget-object v1, p1, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-direct {v0, v1}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    iput-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 152
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 154
    new-instance v0, Lio/sentry/PropagationContext;

    iget-object p1, p1, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    invoke-direct {v0, p1}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/PropagationContext;)V

    iput-object v0, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->propagationContextLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 85
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    .line 93
    const-string v0, "SentryOptions is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 94
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result p1

    invoke-direct {p0, p1}, Lio/sentry/Scope;->createBreadcrumbsList(I)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 95
    new-instance p1, Lio/sentry/PropagationContext;

    invoke-direct {p1}, Lio/sentry/PropagationContext;-><init>()V

    iput-object p1, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    return-void
.end method

.method private createBreadcrumbsList(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    if-lez p1, :cond_0

    .line 758
    new-instance v0, Lio/sentry/CircularFifoQueue;

    invoke-direct {v0, p1}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    invoke-static {v0}, Lio/sentry/SynchronizedQueue;->synchronizedQueue(Ljava/util/Queue;)Lio/sentry/SynchronizedQueue;

    move-result-object p1

    goto :goto_0

    .line 759
    :cond_0
    new-instance p1, Lio/sentry/DisabledQueue;

    invoke-direct {p1}, Lio/sentry/DisabledQueue;-><init>()V

    invoke-static {p1}, Lio/sentry/SynchronizedQueue;->synchronizedQueue(Ljava/util/Queue;)Lio/sentry/SynchronizedQueue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private executeBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 412
    :try_start_0
    invoke-interface {p1, p2, p3}, Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;->execute(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 414
    iget-object p3, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 415
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "The BeforeBreadcrumbCallback callback threw an exception. Exception details will be added to the breadcrumb."

    .line 416
    invoke-interface {p3, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 421
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 422
    const-string p3, "sentry:message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object p2
.end method


# virtual methods
.method public addAttachment(Lio/sentry/Attachment;)V
    .locals 1

    .line 741
    iget-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 441
    new-instance p2, Lio/sentry/Hint;

    invoke-direct {p2}, Lio/sentry/Hint;-><init>()V

    .line 444
    :cond_1
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 446
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/Scope;->executeBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 449
    iget-object p2, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object p2, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopeObserver;

    .line 452
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 453
    iget-object v1, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    invoke-interface {v0, v1}, Lio/sentry/IScopeObserver;->setBreadcrumbs(Ljava/util/Collection;)V

    goto :goto_0

    .line 456
    :cond_3
    iget-object p1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Breadcrumb was dropped by beforeBreadcrumb"

    invoke-interface {p1, p2, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 1

    .line 781
    iget-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 509
    iput-object v0, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    .line 510
    iput-object v0, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    .line 511
    iput-object v0, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    .line 512
    iput-object v0, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 514
    invoke-virtual {p0}, Lio/sentry/Scope;->clearBreadcrumbs()V

    .line 515
    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 516
    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 517
    iget-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 518
    invoke-virtual {p0}, Lio/sentry/Scope;->clearTransaction()V

    .line 519
    invoke-virtual {p0}, Lio/sentry/Scope;->clearAttachments()V

    return-void
.end method

.method public clearAttachments()V
    .locals 1

    .line 747
    iget-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 3

    .line 474
    iget-object v0, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 476
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 477
    iget-object v2, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setBreadcrumbs(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearSession()V
    .locals 1

    const/4 v0, 0x0

    .line 940
    iput-object v0, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    return-void
.end method

.method public clearTransaction()V
    .locals 3

    .line 484
    iget-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 485
    :try_start_0
    iput-object v1, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 486
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    iput-object v1, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IScopeObserver;

    .line 490
    invoke-interface {v2, v1}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 491
    invoke-interface {v2, v1, p0}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 486
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clone()Lio/sentry/IScope;
    .locals 1

    .line 977
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/Scope;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lio/sentry/Scope;->clone()Lio/sentry/IScope;

    move-result-object v0

    return-object v0
.end method

.method public endSession()Lio/sentry/Session;
    .locals 3

    .line 901
    iget-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {v1}, Lio/sentry/Session;->end()V

    .line 904
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {v1}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v1

    .line 905
    iput-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    move-object v2, v1

    .line 907
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAttachments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    .line 730
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBreadcrumbs()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    return-object v0
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 1

    .line 615
    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    return-object v0
.end method

.method public getEventProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getFingerprint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 1

    .line 164
    iget-object v0, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 928
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public getPropagationContext()Lio/sentry/PropagationContext;
    .locals 1

    .line 957
    iget-object v0, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 322
    iget-object v0, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getRequest()Lio/sentry/protocol/Request;
    .locals 1

    .line 341
    iget-object v0, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lio/sentry/Session;
    .locals 1

    .line 934
    iget-object v0, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 2

    .line 222
    iget-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Lio/sentry/ITransaction;->getLatestActiveSpan()Lio/sentry/Span;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 1

    .line 503
    iget-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    return-object v0
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUser()Lio/sentry/protocol/User;
    .locals 1

    .line 262
    iget-object v0, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    return-object v0
.end method

.method public removeContexts(Ljava/lang/String;)V
    .locals 1

    .line 718
    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 3

    .line 600
    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 603
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->removeExtra(Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setExtras(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 3

    .line 557
    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 560
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->removeTag(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTags(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 641
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 642
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 707
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    .line 667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 668
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 626
    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object p1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/IScopeObserver;

    .line 629
    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-interface {p2, v0}, Lio/sentry/IScopeObserver;->setContexts(Lio/sentry/protocol/Contexts;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 654
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 655
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 680
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 681
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 693
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 694
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 585
    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 588
    invoke-interface {v1, p1, p2}, Lio/sentry/IScopeObserver;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setExtras(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 382
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 383
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setFingerprint(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 2

    .line 174
    iput-object p1, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    .line 176
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 177
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setLevel(Lio/sentry/SentryLevel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropagationContext(Lio/sentry/PropagationContext;)V
    .locals 2

    .line 946
    iput-object p1, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    .line 948
    invoke-virtual {p1}, Lio/sentry/PropagationContext;->toSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    .line 949
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 950
    invoke-interface {v1, p1, p0}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 2

    .line 327
    iput-object p1, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    .line 329
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 330
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setReplayId(Lio/sentry/protocol/SentryId;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 2

    .line 351
    iput-object p1, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    .line 353
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 354
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setRequest(Lio/sentry/protocol/Request;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 4

    .line 298
    iput-object p1, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Lio/sentry/Scope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v1

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Lio/sentry/protocol/App;

    invoke-direct {v1}, Lio/sentry/protocol/App;-><init>()V

    .line 304
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 308
    invoke-virtual {v1, p1}, Lio/sentry/protocol/App;->setViewNames(Ljava/util/List;)V

    goto :goto_0

    .line 310
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v1, v2}, Lio/sentry/protocol/App;->setViewNames(Ljava/util/List;)V

    .line 315
    :goto_0
    iget-object p1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 316
    invoke-interface {v1, v0}, Lio/sentry/IScopeObserver;->setContexts(Lio/sentry/protocol/Contexts;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 542
    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 545
    invoke-interface {v1, p1, p2}, Lio/sentry/IScopeObserver;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v2, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTags(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTransaction(Lio/sentry/ITransaction;)V
    .locals 4

    .line 240
    iget-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iput-object p1, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 243
    iget-object v1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IScopeObserver;

    if-eqz p1, :cond_0

    .line 245
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 246
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 248
    invoke-interface {v2, v3}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 249
    invoke-interface {v2, v3, p0}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V

    goto :goto_0

    .line 252
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 200
    iget-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_0

    .line 202
    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-interface {v0, p1, v1}, Lio/sentry/ITransaction;->setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    .line 204
    :cond_0
    iput-object p1, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 207
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object p1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transaction cannot be null"

    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 2

    .line 272
    iput-object p1, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    .line 274
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 275
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setUser(Lio/sentry/protocol/User;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startSession()Lio/sentry/Scope$SessionPair;
    .locals 8

    .line 827
    iget-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {v1}, Lio/sentry/Session;->end()V

    .line 832
    :cond_0
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 834
    iget-object v2, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 835
    new-instance v2, Lio/sentry/Session;

    iget-object v4, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 837
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getDistinctId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    iget-object v6, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lio/sentry/Session;-><init>(Ljava/lang/String;Lio/sentry/protocol/User;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    if-eqz v1, :cond_1

    .line 839
    invoke-virtual {v1}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v3

    .line 840
    :cond_1
    new-instance v1, Lio/sentry/Scope$SessionPair;

    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {v2}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lio/sentry/Scope$SessionPair;-><init>(Lio/sentry/Session;Lio/sentry/Session;)V

    move-object v3, v1

    goto :goto_0

    .line 842
    :cond_2
    iget-object v1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 843
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Release is not set on SentryOptions. Session could not be started"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 844
    invoke-interface {v1, v2, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    :goto_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;
    .locals 2

    .line 964
    iget-object v0, p0, Lio/sentry/Scope;->propagationContextLock:Ljava/lang/Object;

    monitor-enter v0

    .line 965
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    invoke-interface {p1, v1}, Lio/sentry/Scope$IWithPropagationContext;->accept(Lio/sentry/PropagationContext;)V

    .line 966
    new-instance p1, Lio/sentry/PropagationContext;

    iget-object v1, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    invoke-direct {p1, v1}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/PropagationContext;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 967
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;
    .locals 2

    .line 795
    iget-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-interface {p1, v1}, Lio/sentry/Scope$IWithSession;->accept(Lio/sentry/Session;)V

    .line 798
    iget-object p1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    if-eqz p1, :cond_0

    .line 799
    iget-object p1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {p1}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 801
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public withTransaction(Lio/sentry/Scope$IWithTransaction;)V
    .locals 2

    .line 919
    iget-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 920
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    invoke-interface {p1, v1}, Lio/sentry/Scope$IWithTransaction;->accept(Lio/sentry/ITransaction;)V

    .line 921
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
