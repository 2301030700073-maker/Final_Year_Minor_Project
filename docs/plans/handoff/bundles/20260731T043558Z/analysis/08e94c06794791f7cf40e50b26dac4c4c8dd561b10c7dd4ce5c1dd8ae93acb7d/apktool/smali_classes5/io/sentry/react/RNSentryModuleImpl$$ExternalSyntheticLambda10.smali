.class public final synthetic Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/ReadableMap;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda10;->f$0:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p2, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda10;->f$0:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lio/sentry/react/RNSentryModuleImpl;->lambda$setContext$9(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Lio/sentry/IScope;)V

    return-void
.end method
