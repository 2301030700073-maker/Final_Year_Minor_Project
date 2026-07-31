.class public final Lcom/google/android/gms/internal/ads/zzdmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdmb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdmb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zza:Lcom/google/android/gms/internal/ads/zzdmb;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdmb;)Lcom/google/android/gms/internal/ads/zzdmi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdmi;-><init>(Lcom/google/android/gms/internal/ads/zzdmb;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzdmb;)Lcom/google/android/gms/internal/ads/zzdlq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdmb;->zza()Lcom/google/android/gms/internal/ads/zzdlq;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzifp;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdlq;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdlq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zza:Lcom/google/android/gms/internal/ads/zzdmb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmi;->zzd(Lcom/google/android/gms/internal/ads/zzdmb;)Lcom/google/android/gms/internal/ads/zzdlq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmi;->zza:Lcom/google/android/gms/internal/ads/zzdmb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdmi;->zzd(Lcom/google/android/gms/internal/ads/zzdmb;)Lcom/google/android/gms/internal/ads/zzdlq;

    move-result-object v0

    return-object v0
.end method
