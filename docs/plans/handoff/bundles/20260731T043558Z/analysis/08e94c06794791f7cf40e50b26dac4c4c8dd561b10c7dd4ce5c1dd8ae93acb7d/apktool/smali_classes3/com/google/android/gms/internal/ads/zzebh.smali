.class final synthetic Lcom/google/android/gms/internal/ads/zzebh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzebk;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzeec;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebk;Lcom/google/android/gms/internal/ads/zzeec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebh;->zza:Lcom/google/android/gms/internal/ads/zzebk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebh;->zzb:Lcom/google/android/gms/internal/ads/zzeec;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebh;->zza:Lcom/google/android/gms/internal/ads/zzebk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebh;->zzb:Lcom/google/android/gms/internal/ads/zzeec;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzebk;->zzd(Lcom/google/android/gms/internal/ads/zzeec;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
