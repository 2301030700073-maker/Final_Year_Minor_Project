.class public final Lcom/google/android/gms/location/places/NearbyAlertRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/zze;


# instance fields
.field private final zzCY:I

.field private final zzaxy:I

.field private final zzazA:Lcom/google/android/gms/location/places/NearbyAlertFilter;

.field private final zzazy:I

.field private final zzazz:Lcom/google/android/gms/location/places/PlaceFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zze;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/zze;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/NearbyAlertFilter;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzCY:I

    iput p2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaxy:I

    iput p3, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazy:I

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazA:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zza(Lcom/google/android/gms/location/places/PlaceFilter;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceTypes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p4}, Lcom/google/android/gms/location/places/PlaceFilter;->zzuI()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/location/places/NearbyAlertFilter;->zza(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/android/gms/location/places/NearbyAlertFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazA:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazA:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazz:Lcom/google/android/gms/location/places/PlaceFilter;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/location/places/PlaceFilter;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->getPlaceIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->zzuI()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/PlaceFilter;->zzuI()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/zze;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/location/places/NearbyAlertRequest;

    iget v3, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaxy:I

    iget v4, v1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaxy:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazy:I

    iget v4, v1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazy:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazz:Lcom/google/android/gms/location/places/PlaceFilter;

    iget-object v4, v1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazz:Lcom/google/android/gms/location/places/PlaceFilter;

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazA:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    iget-object v1, v1, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazA:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/zzt;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzCY:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaxy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzt;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzt;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaxy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    const-string v1, "nearbyAlertFilter"

    iget-object v2, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazA:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzt$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzt$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/zze;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zze;->zza(Lcom/google/android/gms/location/places/NearbyAlertRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzuC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzaxy:I

    return v0
.end method

.method public zzuF()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazy:I

    return v0
.end method

.method public zzuG()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazz:Lcom/google/android/gms/location/places/PlaceFilter;

    return-object v0
.end method

.method public zzuH()Lcom/google/android/gms/location/places/NearbyAlertFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/NearbyAlertRequest;->zzazA:Lcom/google/android/gms/location/places/NearbyAlertFilter;

    return-object v0
.end method
