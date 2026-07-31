.class public final Lcoil3/memory/MemoryCache$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/memory/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxSizeBytesFactory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private strongReferencesEnabled:Z

.field private weakReferencesEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$-norV6OGUuUHP0TMHGXQkgg28nc(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcoil3/memory/MemoryCache$Builder;->maxSizeBytes$lambda$0$0(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic $r8$lambda$Q8ZyaHNoiWc84cr2IweGER5Fhpc(DLandroid/content/Context;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcoil3/memory/MemoryCache$Builder;->maxSizePercent$lambda$0$1(DLandroid/content/Context;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcoil3/memory/MemoryCache$Builder;->strongReferencesEnabled:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcoil3/memory/MemoryCache$Builder;->weakReferencesEnabled:Z

    .line 8
    .line 9
    return-void
.end method

.method private static final maxSizeBytes$lambda$0$0(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static synthetic maxSizePercent$default(Lcoil3/memory/MemoryCache$Builder;Landroid/content/Context;DILjava/lang/Object;)Lcoil3/memory/MemoryCache$Builder;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcoil3/util/ContextsKt;->defaultMemoryCacheSizePercent(Landroid/content/Context;)D

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcoil3/memory/MemoryCache$Builder;->maxSizePercent(Landroid/content/Context;D)Lcoil3/memory/MemoryCache$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static final maxSizePercent$lambda$0$1(DLandroid/content/Context;)J
    .locals 2

    .line 1
    invoke-static {p2}, Lcoil3/util/ContextsKt;->totalAvailableMemoryBytes(Landroid/content/Context;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-double v0, v0

    .line 6
    mul-double/2addr p0, v0

    .line 7
    double-to-long p0, p0

    .line 8
    return-wide p0
.end method


# virtual methods
.method public final build()Lcoil3/memory/MemoryCache;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcoil3/memory/MemoryCache$Builder;->weakReferencesEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcoil3/memory/RealWeakMemoryCache;

    .line 6
    .line 7
    invoke-direct {v0}, Lcoil3/memory/RealWeakMemoryCache;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcoil3/memory/EmptyWeakMemoryCache;

    .line 12
    .line 13
    invoke-direct {v0}, Lcoil3/memory/EmptyWeakMemoryCache;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-boolean v1, p0, Lcoil3/memory/MemoryCache$Builder;->strongReferencesEnabled:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object p0, p0, Lcoil3/memory/MemoryCache$Builder;->maxSizeBytesFactory:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    new-instance p0, Lcoil3/memory/RealStrongMemoryCache;

    .line 35
    .line 36
    invoke-direct {p0, v1, v2, v0}, Lcoil3/memory/RealStrongMemoryCache;-><init>(JLcoil3/memory/WeakMemoryCache;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "maxSizeBytesFactory == null"

    .line 41
    .line 42
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    new-instance p0, Lcoil3/memory/EmptyStrongMemoryCache;

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcoil3/memory/EmptyStrongMemoryCache;-><init>(Lcoil3/memory/WeakMemoryCache;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    new-instance v1, Lcoil3/memory/RealMemoryCache;

    .line 53
    .line 54
    invoke-direct {v1, p0, v0}, Lcoil3/memory/RealMemoryCache;-><init>(Lcoil3/memory/StrongMemoryCache;Lcoil3/memory/WeakMemoryCache;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public final maxSizeBytes(J)Lcoil3/memory/MemoryCache$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda1;-><init>(IJ)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcoil3/memory/MemoryCache$Builder;->maxSizeBytesFactory:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    return-object p0
.end method

.method public final maxSizeBytes(Lkotlin/jvm/functions/Function0;)Lcoil3/memory/MemoryCache$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")",
            "Lcoil3/memory/MemoryCache$Builder;"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcoil3/memory/MemoryCache$Builder;->maxSizeBytesFactory:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final maxSizePercent(Landroid/content/Context;D)Lcoil3/memory/MemoryCache$Builder;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmpg-double v0, v0, p2

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    cmpg-double v0, p2, v0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-direct {v0, p2, p3, p1}, Lcoil3/memory/MemoryCache$Builder$$ExternalSyntheticLambda0;-><init>(DLandroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcoil3/memory/MemoryCache$Builder;->maxSizeBytesFactory:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string p0, "percent must be in the range [0.0, 1.0]."

    .line 22
    .line 23
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public final strongReferencesEnabled(Z)Lcoil3/memory/MemoryCache$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcoil3/memory/MemoryCache$Builder;->strongReferencesEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final weakReferencesEnabled(Z)Lcoil3/memory/MemoryCache$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcoil3/memory/MemoryCache$Builder;->weakReferencesEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method
