.class final synthetic Lcom/google/android/gms/internal/ads/zzezy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzezz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzezz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezy;->zza:Lcom/google/android/gms/internal/ads/zzezz;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezy;->zza:Lcom/google/android/gms/internal/ads/zzezz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfaa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzezz;->zzb:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfaa;-><init>(Ljava/util/List;)V

    return-object v1
.end method
