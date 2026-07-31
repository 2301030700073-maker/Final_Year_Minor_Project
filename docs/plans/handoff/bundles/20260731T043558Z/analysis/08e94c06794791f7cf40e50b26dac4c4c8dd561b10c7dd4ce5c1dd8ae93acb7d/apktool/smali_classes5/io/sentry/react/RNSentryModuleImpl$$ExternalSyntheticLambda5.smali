.class public final synthetic Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# instance fields
.field public final synthetic f$0:Lio/sentry/react/RNSentryModuleImpl;

.field public final synthetic f$1:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/react/RNSentryModuleImpl;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda5;->f$0:Lio/sentry/react/RNSentryModuleImpl;

    iput-object p2, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda5;->f$1:Lcom/facebook/react/bridge/ReadableMap;

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda5;->f$0:Lio/sentry/react/RNSentryModuleImpl;

    iget-object v1, p0, Lio/sentry/react/RNSentryModuleImpl$$ExternalSyntheticLambda5;->f$1:Lcom/facebook/react/bridge/ReadableMap;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1, p1}, Lio/sentry/react/RNSentryModuleImpl;->$r8$lambda$wbFISAUeIDM0MRlzmmoYj6OXh-Y(Lio/sentry/react/RNSentryModuleImpl;Lcom/facebook/react/bridge/ReadableMap;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
