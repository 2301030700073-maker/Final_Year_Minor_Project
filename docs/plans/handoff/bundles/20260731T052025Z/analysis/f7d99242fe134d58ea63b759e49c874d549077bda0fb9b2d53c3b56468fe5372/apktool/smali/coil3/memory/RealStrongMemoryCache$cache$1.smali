.class public final Lcoil3/memory/RealStrongMemoryCache$cache$1;
.super Lcoil3/util/LruCache;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil3/memory/RealStrongMemoryCache;-><init>(JLcoil3/memory/WeakMemoryCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcoil3/util/LruCache<",
        "Lcoil3/memory/MemoryCache$Key;",
        "Lcoil3/memory/RealStrongMemoryCache$InternalValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcoil3/memory/RealStrongMemoryCache;


# direct methods
.method public constructor <init>(Lcoil3/memory/RealStrongMemoryCache;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->this$0:Lcoil3/memory/RealStrongMemoryCache;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcoil3/util/LruCache;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public entryRemoved(Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/RealStrongMemoryCache$InternalValue;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->this$0:Lcoil3/memory/RealStrongMemoryCache;

    .line 2
    .line 3
    invoke-static {p0}, Lcoil3/memory/RealStrongMemoryCache;->access$getWeakMemoryCache$p(Lcoil3/memory/RealStrongMemoryCache;)Lcoil3/memory/WeakMemoryCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->getImage()Lcoil3/Image;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p2}, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->getExtras()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p2}, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->getSize()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    move-object v1, p1

    .line 20
    invoke-interface/range {v0 .. v5}, Lcoil3/memory/WeakMemoryCache;->set(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public bridge synthetic entryRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcoil3/memory/MemoryCache$Key;

    check-cast p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    check-cast p3, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    invoke-virtual {p0, p1, p2, p3}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->entryRemoved(Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/RealStrongMemoryCache$InternalValue;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)V

    return-void
.end method

.method public sizeOf(Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)J
    .locals 0

    .line 10
    invoke-virtual {p2}, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->getSize()J

    move-result-wide p0

    return-wide p0
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1
    check-cast p1, Lcoil3/memory/MemoryCache$Key;

    .line 2
    .line 3
    check-cast p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->sizeOf(Lcoil3/memory/MemoryCache$Key;Lcoil3/memory/RealStrongMemoryCache$InternalValue;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method
