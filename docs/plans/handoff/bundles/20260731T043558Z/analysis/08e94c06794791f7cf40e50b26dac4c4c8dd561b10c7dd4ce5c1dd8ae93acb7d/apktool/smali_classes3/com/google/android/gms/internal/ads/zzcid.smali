.class final synthetic Lcom/google/android/gms/internal/ads/zzcid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcie;

.field private final synthetic zzb:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcie;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcid;->zza:Lcom/google/android/gms/internal/ads/zzcie;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcid;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcid;->zza:Lcom/google/android/gms/internal/ads/zzcie;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcid;->zzb:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcie;->zzt(Ljava/util/Map;)V

    return-void
.end method
