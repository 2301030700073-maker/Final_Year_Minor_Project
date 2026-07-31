.class public interface abstract Lcom/fsck/k9/activity/MessageLoaderHelper$MessageLoaderCallbacks;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public abstract onDownloadErrorMessageNotFound()V
.end method

.method public abstract onDownloadErrorNetworkError()V
.end method

.method public abstract onMessageDataLoadFailed()V
.end method

.method public abstract onMessageDataLoadFinished(Lcom/fsck/k9/mailstore/LocalMessage;)V
.end method

.method public abstract onMessageViewInfoLoadFailed(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
.end method

.method public abstract onMessageViewInfoLoadFinished(Lcom/fsck/k9/mailstore/MessageViewInfo;)V
.end method

.method public abstract setLoadingProgress(II)V
.end method

.method public abstract startIntentSenderForMessageLoaderHelper(Landroid/content/IntentSender;)Z
.end method
