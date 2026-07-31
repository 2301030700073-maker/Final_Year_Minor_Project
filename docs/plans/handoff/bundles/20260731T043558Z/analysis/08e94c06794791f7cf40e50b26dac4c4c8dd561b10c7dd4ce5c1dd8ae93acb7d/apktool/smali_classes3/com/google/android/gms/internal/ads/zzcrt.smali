.class public final Lcom/google/android/gms/internal/ads/zzcrt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcrn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zza:Lcom/google/android/gms/internal/ads/zzcrn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzcrt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrt;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcrt;-><init>(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcrn;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcrg;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrj;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrg;

    return-object p1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcrg;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcrk;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrk;->zza()Lcom/google/android/gms/internal/ads/zzcrj;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcrj;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcrg;

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcrt;->zza()Lcom/google/android/gms/internal/ads/zzcrg;

    move-result-object v0

    return-object v0
.end method
