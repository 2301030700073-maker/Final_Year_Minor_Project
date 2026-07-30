.class public abstract Lcom/google/android/gms/internal/ads/zzyr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzyq;

.field private zzb:Lcom/google/android/gms/internal/ads/zzza;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyr;->zza:Lcom/google/android/gms/internal/ads/zzyq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzb:Lcom/google/android/gms/internal/ads/zzza;

    return-void
.end method

.method public zzd()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zze(Lcom/google/android/gms/internal/ads/zzd;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzg()Lcom/google/android/gms/internal/ads/zzlo;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract zzp(Ljava/lang/Object;)V
.end method

.method public abstract zzq([Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzwv;Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzbf;)Lcom/google/android/gms/internal/ads/zzys;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzyq;Lcom/google/android/gms/internal/ads/zzza;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyr;->zza:Lcom/google/android/gms/internal/ads/zzyq;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyr;->zza:Lcom/google/android/gms/internal/ads/zzyq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzb:Lcom/google/android/gms/internal/ads/zzza;

    return-void
.end method

.method protected final zzs()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyr;->zza:Lcom/google/android/gms/internal/ads/zzyq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyq;->zzq()V

    :cond_0
    return-void
.end method

.method protected final zzt()Lcom/google/android/gms/internal/ads/zzza;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyr;->zzb:Lcom/google/android/gms/internal/ads/zzza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzza;

    return-object v0
.end method
