.class public final Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/recyclerview/widget/StableIdStorage;


# instance fields
.field public fastestInterval:J


# virtual methods
.method public createStableIdLookup()Landroidx/recyclerview/widget/StableIdStorage$StableIdLookup;
    .locals 2

    .line 1
    new-instance v0, Lcoil3/svg/internal/AndroidSvg;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcoil3/svg/internal/AndroidSvg;->renderOptions:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance p0, Landroidx/collection/LongSparseArray;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0, v1}, Landroidx/collection/LongSparseArray;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p0, v0, Lcoil3/svg/internal/AndroidSvg;->svg:Ljava/lang/Object;

    .line 15
    .line 16
    return-object v0
.end method
