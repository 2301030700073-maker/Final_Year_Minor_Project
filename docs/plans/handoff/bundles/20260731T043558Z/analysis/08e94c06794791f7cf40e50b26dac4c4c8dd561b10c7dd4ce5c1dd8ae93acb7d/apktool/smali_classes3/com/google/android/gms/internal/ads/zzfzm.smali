.class public final Lcom/google/android/gms/internal/ads/zzfzm;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzfzm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzm;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfzm;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifg;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzifg;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfzm;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzifg;->zzc(Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzifb;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>(Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzifb;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzifb;)V

    return-object v4
.end method
