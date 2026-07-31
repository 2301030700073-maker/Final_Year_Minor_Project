.class public final Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzaDn:D

.field private zzaDo:D

.field private zzaDp:D

.field private zzaDq:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDn:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDo:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDq:D

    return-void
.end method

.method private zzg(D)Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDq:D

    cmpg-double v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz v4, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    cmpg-double v4, v2, p1

    if-gtz v4, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDq:D

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    cmpg-double v4, v2, p1

    if-lez v4, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDq:D

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "no included points"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzu;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDn:D

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDo:D

    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDq:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v0
.end method

.method public include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .locals 7

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDn:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDn:D

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDo:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDo:D

    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDq:D

    return-object p0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzg(D)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->zzd(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDq:D

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->zze(DD)D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->zzaDp:D

    :cond_2
    return-object p0
.end method
