.class public abstract Lcom/google/android/gms/location/places/internal/zzf$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/location/places/internal/zzf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/internal/zzf$zza$zza;
    }
.end annotation


# direct methods
.method public static zzca(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzf;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/location/places/internal/zzf;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/location/places/internal/zzf;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/places/internal/zzf$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/internal/zzf$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_0
    move-object v8, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzg;

    move-result-object v9

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Ljava/lang/String;IIILcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzg;)V

    return v1

    :pswitch_1
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzg$zza;->zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzg;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzg;)V

    return v1

    :pswitch_2
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Ljava/lang/String;ILcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_3
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zzb(Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_4
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/google/android/gms/location/places/personalized/PlaceAlias;->CREATOR:Lcom/google/android/gms/location/places/personalized/zzc;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/personalized/zzc;->zzeF(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/personalized/PlaceAlias;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_4
    move-object v4, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_5
    move-object v7, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/personalized/PlaceAlias;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_5
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/google/android/gms/location/places/PlaceReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/places/PlaceReport;

    goto :goto_1

    :cond_6
    move-object v2, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/PlaceReport;Lcom/google/android/gms/location/places/internal/PlacesParams;)V

    return v1

    :pswitch_6
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/android/gms/location/places/AddPlaceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/places/AddPlaceRequest;

    goto :goto_2

    :cond_8
    move-object v2, v0

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/AddPlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_7
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/zzd;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/maps/model/zzd;->zzeO(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    move-object v5, v2

    goto :goto_3

    :cond_a
    move-object v5, v0

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/zzc;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/zzc;->zzeo(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/AutocompleteFilter;

    move-result-object v2

    move-object v6, v2

    goto :goto_4

    :cond_b
    move-object v6, v0

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_c
    move-object v7, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/location/places/AutocompleteFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_8
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v2

    goto :goto_5

    :cond_d
    move-object v2, v0

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_e
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zzb(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    return v1

    :pswitch_9
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/google/android/gms/location/places/NearbyAlertRequest;->CREATOR:Lcom/google/android/gms/location/places/zze;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/zze;->zzeq(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/NearbyAlertRequest;

    move-result-object v2

    goto :goto_6

    :cond_f
    move-object v2, v0

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v3

    goto :goto_7

    :cond_10
    move-object v3, v0

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_11
    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/NearbyAlertRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    return v1

    :pswitch_a
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v2

    goto :goto_8

    :cond_12
    move-object v2, v0

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_13
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    return v1

    :pswitch_b
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/google/android/gms/location/places/PlaceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/places/PlaceRequest;

    goto :goto_9

    :cond_14
    move-object v2, v0

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v3

    goto :goto_a

    :cond_15
    move-object v3, v0

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_16
    invoke-virtual {p0, v2, v3, v0}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/PlaceRequest;Lcom/google/android/gms/location/places/internal/PlacesParams;Landroid/app/PendingIntent;)V

    return v1

    :pswitch_c
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/google/android/gms/location/places/UserDataType;->CREATOR:Lcom/google/android/gms/location/places/zzn;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/zzn;->zzew(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/UserDataType;

    move-result-object v2

    move-object v4, v2

    goto :goto_b

    :cond_17
    move-object v4, v0

    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/zzd;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/maps/model/zzd;->zzeO(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    move-object v5, v2

    goto :goto_c

    :cond_18
    move-object v5, v0

    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_19
    move-object v7, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/location/places/UserDataType;Lcom/google/android/gms/maps/model/LatLngBounds;Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_d
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Ljava/util/List;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_e
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zzb(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_f
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzf;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/zzf;->zzer(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v2

    goto :goto_d

    :cond_1c
    move-object v2, v0

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1d

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zzb(Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_10
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/zze;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/maps/model/zze;->zzeP(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    goto :goto_e

    :cond_1e
    move-object v2, v0

    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzf;

    invoke-virtual {v3, p2}, Lcom/google/android/gms/location/places/zzf;->zzer(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v3

    goto :goto_f

    :cond_1f
    move-object v3, v0

    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_11
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :pswitch_12
    const-string v2, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/zzd;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/maps/model/zzd;->zzeO(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    move-object v4, v2

    goto :goto_10

    :cond_22
    move-object v4, v0

    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, Lcom/google/android/gms/location/places/PlaceFilter;->CREATOR:Lcom/google/android/gms/location/places/zzf;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/location/places/zzf;->zzer(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/PlaceFilter;

    move-result-object v2

    move-object v7, v2

    goto :goto_11

    :cond_23
    move-object v7, v0

    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    sget-object v0, Lcom/google/android/gms/location/places/internal/PlacesParams;->CREATOR:Lcom/google/android/gms/location/places/internal/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/places/internal/zzs;->zzeB(Landroid/os/Parcel;)Lcom/google/android/gms/location/places/internal/PlacesParams;

    move-result-object v0

    :cond_24
    move-object v8, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzh$zza;->zzcc(Landroid/os/IBinder;)Lcom/google/android/gms/location/places/internal/zzh;

    move-result-object v9

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/location/places/internal/zzf$zza;->zza(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/location/places/PlaceFilter;Lcom/google/android/gms/location/places/internal/PlacesParams;Lcom/google/android/gms/location/places/internal/zzh;)V

    return v1

    :cond_25
    const-string v0, "com.google.android.gms.location.places.internal.IGooglePlacesService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
