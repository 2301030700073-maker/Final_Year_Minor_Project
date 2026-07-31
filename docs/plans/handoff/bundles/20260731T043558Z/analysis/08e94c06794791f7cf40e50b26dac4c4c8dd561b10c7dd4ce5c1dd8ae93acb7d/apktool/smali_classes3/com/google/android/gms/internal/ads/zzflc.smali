.class public interface abstract Lcom/google/android/gms/internal/ads/zzflc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# direct methods
.method public static zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzflp;->zza()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, -0x2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 7
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zzb:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zzc:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzjP:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zze:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfle;

    .line 8
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfle;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 1
    :cond_2
    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfmd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfmd;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzflc;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzfle;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzflc;->zza()Lcom/google/android/gms/internal/ads/zzflc;

    .line 3
    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzflc;->zzp(I)Lcom/google/android/gms/internal/ads/zzflc;

    iget-object p1, p3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzflr;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzf(Lcom/google/android/gms/internal/ads/zzflr;)Lcom/google/android/gms/internal/ads/zzflc;

    .line 5
    iget-object p1, p3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfll;->zza(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflc;

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zzb()Z
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zzf(Lcom/google/android/gms/internal/ads/zzflr;)Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zzg(Lcom/google/android/gms/internal/ads/zzfge;)Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zzh(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflc;
.end method

.method public abstract zzl()Z
.end method

.method public abstract zzm()Lcom/google/android/gms/internal/ads/zzflf;
.end method

.method public abstract zzp(I)Lcom/google/android/gms/internal/ads/zzflc;
.end method
