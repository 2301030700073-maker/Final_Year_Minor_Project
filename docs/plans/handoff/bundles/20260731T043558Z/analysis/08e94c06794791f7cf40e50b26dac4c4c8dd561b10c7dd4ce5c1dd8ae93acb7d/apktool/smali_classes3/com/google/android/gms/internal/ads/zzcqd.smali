.class public final Lcom/google/android/gms/internal/ads/zzcqd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzcqd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqd;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqd;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqy;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjl;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v2

    .line 1
    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcpw;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcpw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbqy;Ljava/util/concurrent/Executor;)V

    .line 4
    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcpw;

    return-object v3
.end method
