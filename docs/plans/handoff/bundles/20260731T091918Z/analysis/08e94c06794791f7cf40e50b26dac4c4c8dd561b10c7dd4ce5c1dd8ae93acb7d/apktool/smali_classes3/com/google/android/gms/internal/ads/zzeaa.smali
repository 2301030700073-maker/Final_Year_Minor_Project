.class final synthetic Lcom/google/android/gms/internal/ads/zzeaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzead;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbxj;

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzead;Lcom/google/android/gms/internal/ads/zzbxj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzead;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Lcom/google/android/gms/internal/ads/zzbxj;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zza:Lcom/google/android/gms/internal/ads/zzead;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzb:Lcom/google/android/gms/internal/ads/zzbxj;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeaa;->zzc:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzecj;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzead;->zzc(Lcom/google/android/gms/internal/ads/zzbxj;ILcom/google/android/gms/internal/ads/zzecj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
