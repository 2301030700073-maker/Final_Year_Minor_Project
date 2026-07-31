.class public final Lio/sentry/NoOpScope;
.super Ljava/lang/Object;
.source "NoOpScope.java"

# interfaces
.implements Lio/sentry/IScope;


# static fields
.field private static final instance:Lio/sentry/NoOpScope;


# instance fields
.field private final emptyOptions:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lio/sentry/NoOpScope;

    invoke-direct {v0}, Lio/sentry/NoOpScope;-><init>()V

    sput-object v0, Lio/sentry/NoOpScope;->instance:Lio/sentry/NoOpScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/NoOpScope;->emptyOptions:Lio/sentry/SentryOptions;

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpScope;
    .locals 1

    .line 27
    sget-object v0, Lio/sentry/NoOpScope;->instance:Lio/sentry/NoOpScope;

    return-object v0
.end method


# virtual methods
.method public addAttachment(Lio/sentry/Attachment;)V
    .locals 0

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 0

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 0

    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public clearAttachments()V
    .locals 0

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 0

    return-void
.end method

.method public clearSession()V
    .locals 0

    return-void
.end method

.method public clearTransaction()V
    .locals 0

    return-void
.end method

.method public clone()Lio/sentry/IScope;
    .locals 1

    .line 259
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lio/sentry/NoOpScope;->clone()Lio/sentry/IScope;

    move-result-object v0

    return-object v0
.end method

.method public endSession()Lio/sentry/Session;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    .line 100
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 1

    .line 149
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

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

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 222
    iget-object v0, p0, Lio/sentry/NoOpScope;->emptyOptions:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public getPropagationContext()Lio/sentry/PropagationContext;
    .locals 1

    .line 242
    new-instance v0, Lio/sentry/PropagationContext;

    invoke-direct {v0}, Lio/sentry/PropagationContext;-><init>()V

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 74
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getRequest()Lio/sentry/protocol/Request;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession()Lio/sentry/Session;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 1

    const/4 v0, 0x0

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

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUser()Lio/sentry/protocol/User;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeContexts(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 0

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setContexts(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    return-void
.end method

.method public setPropagationContext(Lio/sentry/PropagationContext;)V
    .locals 0

    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 0

    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 0

    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTransaction(Lio/sentry/ITransaction;)V
    .locals 0

    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0

    return-void
.end method

.method public startSession()Lio/sentry/Scope$SessionPair;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;
    .locals 0

    .line 249
    new-instance p1, Lio/sentry/PropagationContext;

    invoke-direct {p1}, Lio/sentry/PropagationContext;-><init>()V

    return-object p1
.end method

.method public withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public withTransaction(Lio/sentry/Scope$IWithTransaction;)V
    .locals 0

    return-void
.end method
