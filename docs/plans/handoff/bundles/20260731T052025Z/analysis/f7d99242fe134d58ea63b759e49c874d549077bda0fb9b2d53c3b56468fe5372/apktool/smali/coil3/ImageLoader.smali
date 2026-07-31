.class public interface abstract Lcoil3/ImageLoader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/ImageLoader$Builder;
    }
.end annotation


# virtual methods
.method public abstract enqueue(Lcoil3/request/ImageRequest;)Lcoil3/request/Disposable;
.end method

.method public abstract execute(Lcoil3/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/request/ImageRequest;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getComponents()Lcoil3/ComponentRegistry;
.end method

.method public abstract getDefaults()Lcoil3/request/ImageRequest$Defaults;
.end method

.method public abstract getDiskCache()Lcoil3/disk/DiskCache;
.end method

.method public abstract getMemoryCache()Lcoil3/memory/MemoryCache;
.end method

.method public abstract newBuilder()Lcoil3/ImageLoader$Builder;
.end method

.method public abstract shutdown()V
.end method
