.class public interface abstract Lcoil3/request/ImageRequest$Listener;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/request/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCancel(Lcoil3/request/ImageRequest;)V
.end method

.method public abstract onError(Lcoil3/request/ImageRequest;Lcoil3/request/ErrorResult;)V
.end method

.method public abstract onStart(Lcoil3/request/ImageRequest;)V
.end method

.method public abstract onSuccess(Lcoil3/request/ImageRequest;Lcoil3/request/SuccessResult;)V
.end method
