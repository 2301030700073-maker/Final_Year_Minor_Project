.class public abstract Lcom/google/android/gms/internal/zzom$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzom$zza$zza;
    }
.end annotation


# direct methods
.method public static zzcY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzom;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzom;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzom;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzom$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzom$zza$zza;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzom$zza;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzb;->zzfg(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzom$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/ContinueConnectRequest;)V

    return v1

    :pswitch_2
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzf;->zzfk(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzom$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/SendDataRequest;)V

    return v1

    :pswitch_3
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzd;->zzfi(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzom$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/DisconnectRequest;)V

    return v1

    :pswitch_4
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zza;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zza;->zzff(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzom$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/ConnectRequest;)V

    return v1

    :pswitch_5
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzc;->zzfh(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;

    move-result-object v0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzom$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/DisableTargetRequest;)V

    return v1

    :pswitch_6
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zze;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zze;->zzfj(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;

    move-result-object v0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzom$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/EnableTargetRequest;)V

    return v1

    :pswitch_7
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzh;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzh;->zzfm(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;

    move-result-object v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzom$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/StopScanRequest;)V

    return v1

    :pswitch_8
    const-string v2, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;->CREATOR:Lcom/google/android/gms/nearby/bootstrap/request/zzg;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/nearby/bootstrap/request/zzg;->zzfl(Landroid/os/Parcel;)Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzom$zza;->zza(Lcom/google/android/gms/nearby/bootstrap/request/StartScanRequest;)V

    return v1

    :cond_8
    const-string v0, "com.google.android.gms.nearby.bootstrap.internal.INearbyBootstrapService"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
