.class public Lcom/google/android/gms/internal/ads/zzdia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdjl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdjl;Lcom/google/android/gms/internal/ads/zzcgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdia;->zza:Lcom/google/android/gms/internal/ads/zzdjl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdia;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdjl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdia;->zza:Lcom/google/android/gms/internal/ads/zzdjl;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcgy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdia;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    return-object v0
.end method

.method public final zzc()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdia;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zzD()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdia;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zzD()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/internal/ads/zzcxf;)Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbv;->zzg:Lcom/google/android/gms/internal/ads/zzgus;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdgn;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public zzf(Lcom/google/android/gms/internal/ads/zzcxf;)Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbv;->zzg:Lcom/google/android/gms/internal/ads/zzgus;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdgn;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdgn;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdia;->zzb:Lcom/google/android/gms/internal/ads/zzcgy;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdhy;-><init>(Lcom/google/android/gms/internal/ads/zzcgy;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdgn;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
