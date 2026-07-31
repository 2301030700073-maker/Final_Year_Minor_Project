.class public final Lcom/google/android/gms/internal/ads/zzcxx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzc:Landroid/os/Bundle;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfgg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcxp;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzehp;

.field private final zzg:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcxw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzi()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzj()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzk()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzc:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzl()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzd:Lcom/google/android/gms/internal/ads/zzfgg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzm()Lcom/google/android/gms/internal/ads/zzcxp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zze:Lcom/google/android/gms/internal/ads/zzcxp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzn()Lcom/google/android/gms/internal/ads/zzehp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzf:Lcom/google/android/gms/internal/ads/zzehp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzo()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzg:I

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/ads/zzcxw;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcxw;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcxw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzb(Lcom/google/android/gms/internal/ads/zzfgn;)Lcom/google/android/gms/internal/ads/zzcxw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzc:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcxw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zze:Lcom/google/android/gms/internal/ads/zzcxp;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzd(Lcom/google/android/gms/internal/ads/zzcxp;)Lcom/google/android/gms/internal/ads/zzcxw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzf:Lcom/google/android/gms/internal/ads/zzehp;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcxw;->zzg(Lcom/google/android/gms/internal/ads/zzehp;)Lcom/google/android/gms/internal/ads/zzcxw;

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/ads/zzfgn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzfgg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzd:Lcom/google/android/gms/internal/ads/zzfgg;

    return-object v0
.end method

.method final zzd()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzc:Landroid/os/Bundle;

    return-object v0
.end method

.method final zze()Lcom/google/android/gms/internal/ads/zzcxp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zze:Lcom/google/android/gms/internal/ads/zzcxp;

    return-object v0
.end method

.method final zzf(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zza:Landroid/content/Context;

    return-object p1
.end method

.method final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzehp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzf:Lcom/google/android/gms/internal/ads/zzehp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzehp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method final zzh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcxx;->zzg:I

    return v0
.end method
