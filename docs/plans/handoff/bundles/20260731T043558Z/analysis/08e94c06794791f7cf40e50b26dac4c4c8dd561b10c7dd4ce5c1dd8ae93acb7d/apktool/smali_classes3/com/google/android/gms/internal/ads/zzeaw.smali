.class final synthetic Lcom/google/android/gms/internal/ads/zzeaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeax;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbxj;

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeax;Lcom/google/android/gms/internal/ads/zzbxj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zza:Lcom/google/android/gms/internal/ads/zzeax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzb:Lcom/google/android/gms/internal/ads/zzbxj;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zza:Lcom/google/android/gms/internal/ads/zzeax;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzb:Lcom/google/android/gms/internal/ads/zzbxj;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeaw;->zzc:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzeax;->zzb(Lcom/google/android/gms/internal/ads/zzbxj;ILjava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
