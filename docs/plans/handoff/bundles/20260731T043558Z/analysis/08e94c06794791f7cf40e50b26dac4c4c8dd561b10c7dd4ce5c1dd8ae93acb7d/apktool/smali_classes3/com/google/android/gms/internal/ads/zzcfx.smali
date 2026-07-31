.class final synthetic Lcom/google/android/gms/internal/ads/zzcfx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzga;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgg;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgg;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zza:Lcom/google/android/gms/internal/ads/zzcgg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzc:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgb;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zza:Lcom/google/android/gms/internal/ads/zzcgg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzb:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcfx;->zzc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcgg;->zzT(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzgb;

    move-result-object v0

    return-object v0
.end method
