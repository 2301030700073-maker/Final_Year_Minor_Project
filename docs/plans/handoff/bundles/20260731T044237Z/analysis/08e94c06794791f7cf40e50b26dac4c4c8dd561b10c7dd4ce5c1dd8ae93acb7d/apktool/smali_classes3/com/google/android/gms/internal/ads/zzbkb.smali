.class public abstract Lcom/google/android/gms/internal/ads/zzbkb;
.super Lcom/google/android/gms/internal/ads/zzbam;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbam;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzdi(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzL(J)V

    .line 4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzK()J

    move-result-wide p1

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_1

    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzJ(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 12
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzds;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdt;

    move-result-object p1

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzI(Lcom/google/android/gms/ads/internal/client/zzdt;)V

    .line 15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 16
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzH()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p1

    .line 17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzban;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 19
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzG()Z

    move-result p1

    .line 20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 21
    sget p2, Lcom/google/android/gms/internal/ads/zzban;->zza:I

    .line 22
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 23
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzF()Lcom/google/android/gms/internal/ads/zzbif;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 25
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzban;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 26
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzE()V

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 28
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzD()V

    .line 29
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 30
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzde;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdf;

    move-result-object p1

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzC(Lcom/google/android/gms/ads/internal/client/zzdf;)V

    .line 33
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 34
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzdi;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzdj;

    move-result-object p1

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzB(Lcom/google/android/gms/ads/internal/client/zzdj;)V

    .line 37
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 38
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzA()Z

    move-result p1

    .line 39
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 40
    sget p2, Lcom/google/android/gms/internal/ads/zzban;->zza:I

    .line 41
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 42
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzz()Ljava/util/List;

    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto/16 :goto_1

    .line 45
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzy()V

    .line 46
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 47
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 52
    :cond_0
    const-string p4, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    .line 48
    invoke-interface {p1, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzbjz;

    if-eqz v0, :cond_1

    .line 49
    move-object p1, p4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbjz;

    goto :goto_0

    :cond_1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzbjx;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzbjx;-><init>(Landroid/os/IBinder;)V

    move-object p1, p4

    .line 50
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzx(Lcom/google/android/gms/internal/ads/zzbjz;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 53
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzw()Landroid/os/Bundle;

    move-result-object p1

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 56
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzban;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 59
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzu()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzban;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    :pswitch_12
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 63
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzt(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 66
    :pswitch_13
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 67
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzs(Landroid/os/Bundle;)Z

    move-result p1

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    .line 65
    :pswitch_14
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzban;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzban;->zzh(Landroid/os/Parcel;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzr(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    .line 75
    :pswitch_15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzq()Lcom/google/android/gms/internal/ads/zzbib;

    move-result-object p1

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzban;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_1

    .line 78
    :pswitch_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzp()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzo()Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzn()Lcom/google/android/gms/ads/internal/client/zzed;

    move-result-object p1

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzban;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 85
    :pswitch_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzm()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzl()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :pswitch_1b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzk()D

    move-result-wide p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_1

    .line 94
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzj()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :pswitch_1d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzi()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :pswitch_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzh()Lcom/google/android/gms/internal/ads/zzbii;

    move-result-object p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzban;->zze(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_1

    .line 103
    :pswitch_1f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzg()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :pswitch_20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zzf()Ljava/util/List;

    move-result-object p1

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_1

    .line 109
    :pswitch_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbkb;->zze()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
