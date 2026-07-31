.class final Lcoil3/memory/RealStrongMemoryCache$InternalValue;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/memory/RealStrongMemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalValue"
.end annotation


# instance fields
.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final image:Lcoil3/Image;

.field private final size:J


# direct methods
.method public constructor <init>(Lcoil3/Image;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil3/Image;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->image:Lcoil3/Image;

    .line 5
    .line 6
    iput-object p2, p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->extras:Ljava/util/Map;

    .line 7
    .line 8
    iput-wide p3, p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->size:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getExtras()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->extras:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getImage()Lcoil3/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->image:Lcoil3/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->size:J

    .line 2
    .line 3
    return-wide v0
.end method
