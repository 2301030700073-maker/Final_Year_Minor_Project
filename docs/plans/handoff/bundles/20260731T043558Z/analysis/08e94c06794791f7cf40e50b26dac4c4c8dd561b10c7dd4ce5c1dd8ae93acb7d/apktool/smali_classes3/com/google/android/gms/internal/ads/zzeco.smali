.class final synthetic Lcom/google/android/gms/internal/ads/zzeco;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzecv;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzecl;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbxj;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzgtq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzecv;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzgtq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeco;->zza:Lcom/google/android/gms/internal/ads/zzecv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeco;->zzb:Lcom/google/android/gms/internal/ads/zzecl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeco;->zzc:Lcom/google/android/gms/internal/ads/zzbxj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeco;->zzd:Lcom/google/android/gms/internal/ads/zzgtq;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeco;->zza:Lcom/google/android/gms/internal/ads/zzecv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeco;->zzb:Lcom/google/android/gms/internal/ads/zzecl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeco;->zzc:Lcom/google/android/gms/internal/ads/zzbxj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeco;->zzd:Lcom/google/android/gms/internal/ads/zzgtq;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzecj;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzecv;->zzc(Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzbxj;Lcom/google/android/gms/internal/ads/zzgtq;Lcom/google/android/gms/internal/ads/zzecj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
