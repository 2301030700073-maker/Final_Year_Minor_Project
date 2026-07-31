.class public interface abstract Lcoil3/intercept/Interceptor$Chain;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/intercept/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation


# virtual methods
.method public abstract getRequest()Lcoil3/request/ImageRequest;
.end method

.method public abstract getSize()Lcoil3/size/Size;
.end method

.method public abstract proceed(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract withRequest(Lcoil3/request/ImageRequest;)Lcoil3/intercept/Interceptor$Chain;
.end method

.method public abstract withSize(Lcoil3/size/Size;)Lcoil3/intercept/Interceptor$Chain;
.end method
