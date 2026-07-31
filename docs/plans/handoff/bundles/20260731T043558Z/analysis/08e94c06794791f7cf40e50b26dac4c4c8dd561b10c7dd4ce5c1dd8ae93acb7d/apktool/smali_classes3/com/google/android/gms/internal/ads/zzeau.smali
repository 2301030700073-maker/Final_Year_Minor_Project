.class final synthetic Lcom/google/android/gms/internal/ads/zzeau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzeax;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbxj;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeax;Lcom/google/android/gms/internal/ads/zzbxj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeau;->zza:Lcom/google/android/gms/internal/ads/zzeax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeau;->zzb:Lcom/google/android/gms/internal/ads/zzbxj;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeau;->zza:Lcom/google/android/gms/internal/ads/zzeax;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeau;->zzb:Lcom/google/android/gms/internal/ads/zzbxj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeax;->zzc(Lcom/google/android/gms/internal/ads/zzbxj;)Lcom/google/android/gms/internal/ads/zzeck;

    move-result-object v0

    return-object v0
.end method
