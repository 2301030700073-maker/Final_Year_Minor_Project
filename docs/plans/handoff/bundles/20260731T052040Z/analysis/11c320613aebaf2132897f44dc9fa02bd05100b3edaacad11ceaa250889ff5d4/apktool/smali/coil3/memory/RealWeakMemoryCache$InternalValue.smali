.class public final Lcoil3/memory/RealWeakMemoryCache$InternalValue;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


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
