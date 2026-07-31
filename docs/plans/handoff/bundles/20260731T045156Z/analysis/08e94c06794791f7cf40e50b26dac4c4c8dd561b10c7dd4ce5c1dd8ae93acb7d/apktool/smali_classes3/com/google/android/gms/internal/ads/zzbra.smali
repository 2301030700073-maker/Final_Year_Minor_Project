.class final synthetic Lcom/google/android/gms/internal/ads/zzbra;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbrb;

.field private final synthetic zzb:Ljava/lang/Object;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbrb;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbra;->zza:Lcom/google/android/gms/internal/ads/zzbrb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbra;->zza:Lcom/google/android/gms/internal/ads/zzbrb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbra;->zzb:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqc;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbrb;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbqc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
