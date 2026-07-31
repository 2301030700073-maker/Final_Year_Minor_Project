.class final synthetic Lcom/google/android/gms/internal/ads/zzeav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxj;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbxj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeav;->zza:Lcom/google/android/gms/internal/ads/zzbxj;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    check-cast p1, Ljava/io/InputStream;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeck;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeav;->zza:Lcom/google/android/gms/internal/ads/zzbxj;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeck;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzbxj;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
