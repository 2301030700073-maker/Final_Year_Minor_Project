.class public final Lcom/google/android/gms/internal/ads/zzfky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdga;
.implements Lcom/google/android/gms/internal/ads/zzcze;
.implements Lcom/google/android/gms/internal/ads/zzdge;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzflm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzflc;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzflm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfky;->zza:Lcom/google/android/gms/internal/ads/zzflm;

    const/16 p2, 0xd

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzflc;->zzn(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzflc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zza:Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    const/4 v2, 0x1

    .line 2
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzflm;->zza(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzflm;

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzg()V
    .locals 0

    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzflc;->zza()Lcom/google/android/gms/internal/ads/zzflc;

    :cond_0
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgn;->zzd:Lcom/google/android/gms/internal/ads/zzbge;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbge;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfky;->zza:Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfky;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zze;->zza()Lcom/google/android/gms/ads/AdError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzflc;

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzflc;->zzd(Z)Lcom/google/android/gms/internal/ads/zzflc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzflm;->zza(Lcom/google/android/gms/internal/ads/zzflc;)Lcom/google/android/gms/internal/ads/zzflm;

    :cond_0
    return-void
.end method
