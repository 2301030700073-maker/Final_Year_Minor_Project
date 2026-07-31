.class final synthetic Lcom/google/android/gms/internal/ads/zzfcr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfct;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfdn;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfcs;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfdl;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzcxv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfct;Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfcs;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zza:Lcom/google/android/gms/internal/ads/zzfct;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zzb:Lcom/google/android/gms/internal/ads/zzfdn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zzc:Lcom/google/android/gms/internal/ads/zzfcs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zzd:Lcom/google/android/gms/internal/ads/zzfdl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zze:Lcom/google/android/gms/internal/ads/zzcxv;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zza:Lcom/google/android/gms/internal/ads/zzfct;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zzb:Lcom/google/android/gms/internal/ads/zzfdn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zzc:Lcom/google/android/gms/internal/ads/zzfcs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zzd:Lcom/google/android/gms/internal/ads/zzfdl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfcr;->zze:Lcom/google/android/gms/internal/ads/zzcxv;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfcy;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfct;->zze(Lcom/google/android/gms/internal/ads/zzfdn;Lcom/google/android/gms/internal/ads/zzfcs;Lcom/google/android/gms/internal/ads/zzfdl;Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzfcy;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
