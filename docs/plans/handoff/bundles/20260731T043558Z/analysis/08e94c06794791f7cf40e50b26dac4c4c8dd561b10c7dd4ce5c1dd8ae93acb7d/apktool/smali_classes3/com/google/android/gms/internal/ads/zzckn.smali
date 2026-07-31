.class public final Lcom/google/android/gms/internal/ads/zzckn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcjp;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckn;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcjp;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzckn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzckn;-><init>(Lcom/google/android/gms/internal/ads/zzcjp;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcbn;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckn;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbj;->zzr()Lcom/google/android/gms/internal/ads/zzcbn;

    move-result-object v0

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcbn;

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzckn;->zza()Lcom/google/android/gms/internal/ads/zzcbn;

    move-result-object v0

    return-object v0
.end method
