.class final synthetic Lcom/google/android/gms/internal/ads/zzcup;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcus;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfij;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcus;Lcom/google/android/gms/internal/ads/zzfij;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcup;->zza:Lcom/google/android/gms/internal/ads/zzcus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcup;->zzb:Lcom/google/android/gms/internal/ads/zzfij;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcup;->zza:Lcom/google/android/gms/internal/ads/zzcus;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcup;->zzb:Lcom/google/android/gms/internal/ads/zzfij;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbxj;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcus;->zzj(Lcom/google/android/gms/internal/ads/zzfij;Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
