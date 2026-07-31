.class public final Lcom/google/android/gms/internal/ads/zzcst;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcst;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcst;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcst;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcst;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzcst;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcst;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcst;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfks;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcst;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgus;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcst;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeiu;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeiu;->zza()Lcom/google/android/gms/internal/ads/zzeit;

    move-result-object v2

    .line 1
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcst;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzemg;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzemg;->zza()Lcom/google/android/gms/internal/ads/zzemf;

    move-result-object v3

    .line 1
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzemf;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzemm;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzemm;-><init>(Lcom/google/android/gms/internal/ads/zzfks;Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzehm;Lcom/google/android/gms/internal/ads/zzehq;)V

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/zzehk;

    return-object v4
.end method
