.class final synthetic Lcom/google/android/gms/ads/internal/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Ljava/lang/Long;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzflc;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzflp;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzf;Ljava/lang/Long;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzflc;Lcom/google/android/gms/internal/ads/zzflp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzd;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzd;->zzd:Lcom/google/android/gms/internal/ads/zzflp;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Lcom/google/android/gms/internal/ads/zzdvi;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzc:Lcom/google/android/gms/internal/ads/zzflc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzd;->zzd:Lcom/google/android/gms/internal/ads/zzflp;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/ads/internal/zzf;->zzd(Ljava/lang/Long;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzflc;Lcom/google/android/gms/internal/ads/zzflp;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
