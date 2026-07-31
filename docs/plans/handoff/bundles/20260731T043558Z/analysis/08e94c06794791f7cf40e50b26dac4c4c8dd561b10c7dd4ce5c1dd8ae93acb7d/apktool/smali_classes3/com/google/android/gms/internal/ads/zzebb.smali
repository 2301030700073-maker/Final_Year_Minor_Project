.class final synthetic Lcom/google/android/gms/internal/ads/zzebb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzebc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebb;->zza:Lcom/google/android/gms/internal/ads/zzebc;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebb;->zza:Lcom/google/android/gms/internal/ads/zzebc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeck;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzebc;->zzb(Lcom/google/android/gms/internal/ads/zzeck;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
