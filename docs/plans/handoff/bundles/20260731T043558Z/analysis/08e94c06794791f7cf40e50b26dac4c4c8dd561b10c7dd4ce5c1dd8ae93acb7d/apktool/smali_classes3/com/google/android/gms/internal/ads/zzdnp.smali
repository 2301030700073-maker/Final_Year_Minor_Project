.class final synthetic Lcom/google/android/gms/internal/ads/zzdnp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgy;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnp;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnp;->zza:Lcom/google/android/gms/internal/ads/zzcgy;

    const-string v2, "onSdkImpression"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
