.class final synthetic Lcom/google/android/gms/internal/ads/zzcga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzga;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzga;

.field private final synthetic zzb:[B


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzga;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcga;->zza:Lcom/google/android/gms/internal/ads/zzga;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzb:[B

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgb;
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzcgg;->zza:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcga;->zza:Lcom/google/android/gms/internal/ads/zzga;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzga;->zza()Lcom/google/android/gms/internal/ads/zzgb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcga;->zzb:[B

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfw;-><init>([B)V

    array-length v2, v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfu;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcfu;-><init>(Lcom/google/android/gms/internal/ads/zzgb;ILcom/google/android/gms/internal/ads/zzgb;)V

    return-object v3
.end method
