.class public final synthetic Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/ScopeCallback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda1;->f$0:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, p1}, Lio/sentry/react/RNSentryModuleImpl;->lambda$addBreadcrumb$6(Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/IScope;)V

    return-void
.end method
