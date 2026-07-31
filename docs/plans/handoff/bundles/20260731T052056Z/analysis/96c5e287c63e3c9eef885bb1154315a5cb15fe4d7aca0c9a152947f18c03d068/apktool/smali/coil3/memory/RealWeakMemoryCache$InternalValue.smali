.class public final Lcoil3/memory/RealWeakMemoryCache$InternalValue;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final extras:Ljava/util/Map;

.field public final image:Ljava/lang/ref/WeakReference;

.field public final size:J


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/util/Map;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->image:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->extras:Ljava/util/Map;

    .line 7
    .line 8
    iput-wide p3, p0, Lcoil3/memory/RealWeakMemoryCache$InternalValue;->size:J

    .line 9
    .line 10
    return-void
.end method
