.class public final Lcom/google/android/gms/internal/ads/zzdro;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdro;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzdro;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdro;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdro;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcyf;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyf;->zza()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfgn;->zzp:Lcom/google/android/gms/internal/ads/zzfgb;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfgb;->zza:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzemn;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzemn;->zza()Lcom/google/android/gms/internal/ads/zzemm;

    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzehk;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzemn;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzemn;->zza()Lcom/google/android/gms/internal/ads/zzemm;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzehk;

    .line 8
    :goto_0
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzehk;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 3
    throw v0
.end method
