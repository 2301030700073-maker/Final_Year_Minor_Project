.class final synthetic Lcom/google/android/gms/internal/ads/zzcfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzga;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgg;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzga;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgg;Lcom/google/android/gms/internal/ads/zzga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zza:Lcom/google/android/gms/internal/ads/zzcgg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzb:Lcom/google/android/gms/internal/ads/zzga;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgb;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zza:Lcom/google/android/gms/internal/ads/zzcgg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzb:Lcom/google/android/gms/internal/ads/zzga;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzV(Lcom/google/android/gms/internal/ads/zzga;)Lcom/google/android/gms/internal/ads/zzgb;

    move-result-object v0

    return-object v0
.end method
