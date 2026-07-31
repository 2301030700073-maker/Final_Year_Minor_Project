.class final synthetic Lcom/google/android/gms/internal/ads/zzfmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfmx;

.field private final synthetic zzb:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfmx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmu;->zza:Lcom/google/android/gms/internal/ads/zzfmx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfmu;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmu;->zza:Lcom/google/android/gms/internal/ads/zzfmx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmu;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfmx;->zzc(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object v0

    return-object v0
.end method
