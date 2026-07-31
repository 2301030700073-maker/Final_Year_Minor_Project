.class public abstract Lcom/google/android/gms/internal/ads/zzbro;
.super Lcom/google/android/gms/internal/ads/zzbam;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbam;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbrp;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbrp;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbrp;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbrn;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zzdi(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzz()V

    goto/16 :goto_1

    .line 2
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zze;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbro;->zzy(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto/16 :goto_1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zze;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbro;->zzx(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto/16 :goto_1

    .line 8
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 11
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbro;->zzw(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbro;->zzv(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 15
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzu()V

    goto/16 :goto_1

    :pswitch_6
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    goto/16 :goto_1

    .line 18
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzt()V

    goto/16 :goto_1

    .line 19
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbro;->zzs(I)V

    goto/16 :goto_1

    .line 22
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbyk;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbyl;

    move-result-object p1

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbro;->zzr(Lcom/google/android/gms/internal/ads/zzbyl;)V

    goto/16 :goto_1

    .line 25
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzq()V

    goto/16 :goto_1

    .line 26
    :pswitch_b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbyh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyh;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbro;->zzp(Lcom/google/android/gms/internal/ads/zzbyh;)V

    goto/16 :goto_1

    .line 29
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzo()V

    goto :goto_1

    .line 30
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    goto :goto_1

    .line 32
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzn()V

    goto :goto_1

    .line 33
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjb;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbjc;

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    goto :goto_1

    .line 36
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbro;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzk()V

    goto :goto_1

    .line 41
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    const-string p4, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    .line 42
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p4, p1, Lcom/google/android/gms/internal/ads/zzbrt;

    if-eqz p4, :cond_1

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrt;

    .line 44
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    goto :goto_1

    .line 45
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzj()V

    goto :goto_1

    .line 46
    :pswitch_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzi()V

    goto :goto_1

    .line 47
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzh()V

    goto :goto_1

    .line 48
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbro;->zzg(I)V

    goto :goto_1

    .line 51
    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zzf()V

    goto :goto_1

    .line 52
    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbro;->zze()V

    .line 53
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
