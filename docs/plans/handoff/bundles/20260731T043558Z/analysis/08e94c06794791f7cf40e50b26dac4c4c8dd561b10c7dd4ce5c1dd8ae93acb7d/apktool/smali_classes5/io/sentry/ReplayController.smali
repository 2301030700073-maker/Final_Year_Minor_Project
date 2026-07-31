.class public interface abstract Lio/sentry/ReplayController;
.super Ljava/lang/Object;
.source "ReplayController.java"


# virtual methods
.method public abstract captureReplay(Ljava/lang/Boolean;)V
.end method

.method public abstract getBreadcrumbConverter()Lio/sentry/ReplayBreadcrumbConverter;
.end method

.method public abstract getReplayId()Lio/sentry/protocol/SentryId;
.end method

.method public abstract isRecording()Z
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method

.method public abstract setBreadcrumbConverter(Lio/sentry/ReplayBreadcrumbConverter;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
