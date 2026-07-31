.class public final Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final layerId:Ljava/lang/String;

.field public final sourceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;->ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-string v2, "mapbox-android-symbol-layer-"

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iput-object v2, p0, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;->layerId:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "mapbox-android-symbol-source-"

    .line 19
    .line 20
    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lorg/maplibre/android/plugins/annotation/SymbolElementProvider;->sourceId:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method
