.class public interface abstract Lcoil3/memory/MemoryCache;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/memory/MemoryCache$Builder;,
        Lcoil3/memory/MemoryCache$Key;,
        Lcoil3/memory/MemoryCache$Value;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;
.end method

.method public abstract getInitialMaxSize()J
.end method

.method public abstract getKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcoil3/memory/MemoryCache$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxSize()J
.end method

.method public abstract getSize()J
.end method

.method public abstract remove(Lcoil3/memory/MemoryCache$Key;)Z
.end method

.method public abstract set(Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/MemoryCache$Value;)V
.end method

.method public abstract setMaxSize(J)V
.end method

.method public abstract trimToSize(J)V
.end method
