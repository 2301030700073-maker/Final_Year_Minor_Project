.class final Lcom/google/android/gms/internal/ads/zzecc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbu;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcaf;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecc;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzb:Lcom/google/android/gms/internal/ads/zzcaf;

    return-void
.end method


# virtual methods
.method public final zzdT(Lcom/google/android/gms/internal/ads/zzbxj;)V
    .locals 0

    return-void
.end method

.method public final zzdU(Lcom/google/android/gms/internal/ads/zzfgf;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zzb:Lcom/google/android/gms/internal/ads/zzfge;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfge;->zzb:Lcom/google/android/gms/internal/ads/zzffx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzffx;->zze:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzecc;->zzb:Lcom/google/android/gms/internal/ads/zzcaf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecc;->zza:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgf;->zza:Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgc;->zza:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgn;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcaf;->zzc(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzm;)V

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcaf;->zzm(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
