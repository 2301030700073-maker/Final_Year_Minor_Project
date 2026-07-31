.class public abstract Lcom/google/android/gms/internal/ads/zzbvh;
.super Lcom/google/android/gms/internal/ads/zzbam;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbam;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzI(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbvi;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbvi;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvi;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbvg;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zzdi(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p4

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p0, p1, p4, v0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzH(I[Ljava/lang/String;[I)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 7
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzf()V

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 9
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbvh;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 13
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 16
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 17
    invoke-virtual {p0, p1, p4, v0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzm(IILandroid/content/Intent;)V

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 19
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzg()Z

    move-result p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    sget p2, Lcom/google/android/gms/internal/ads/zzban;->zza:I

    .line 22
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 23
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zze()V

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 25
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzs()V

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 27
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzq()V

    .line 28
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 29
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzp()V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 12
    :pswitch_9
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbvh;->zzo(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 35
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 36
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzl()V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzk()V

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzj()V

    .line 41
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 42
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzi()V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 30
    :pswitch_e
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbvh;->zzh(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
