.class public Lcom/google/android/gms/internal/ads/zzcrn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzctm;

.field private final zzb:Landroid/view/View;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzffv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcgy;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzctm;Lcom/google/android/gms/internal/ads/zzffv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzb:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzd:Lcom/google/android/gms/internal/ads/zzcgy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zza:Lcom/google/android/gms/internal/ads/zzctm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzc:Lcom/google/android/gms/internal/ads/zzffv;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcgy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzd:Lcom/google/android/gms/internal/ads/zzcgy;

    return-object v0
.end method

.method public final zzb()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzb:Landroid/view/View;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzctm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zza:Lcom/google/android/gms/internal/ads/zzctm;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzffv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrn;->zzc:Lcom/google/android/gms/internal/ads/zzffv;

    return-object v0
.end method

.method public zze(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzdaa;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdaa;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdaa;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
