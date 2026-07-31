.class final synthetic Lcom/google/android/gms/internal/ads/zzdoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgtq;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdoy;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzffu;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzffx;

.field private final synthetic zze:Lcom/google/android/gms/ads/internal/zzb;

.field private final synthetic zzf:Lcom/google/android/gms/internal/ads/zzbzt;

.field private final synthetic zzg:Ljava/lang/String;

.field private final synthetic zzh:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdoy;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbzt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zza:Lcom/google/android/gms/internal/ads/zzdoy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzd:Lcom/google/android/gms/internal/ads/zzffx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zze:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzf:Lcom/google/android/gms/internal/ads/zzbzt;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zza:Lcom/google/android/gms/internal/ads/zzdoy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzc:Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzd:Lcom/google/android/gms/internal/ads/zzffx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zze:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzf:Lcom/google/android/gms/internal/ads/zzbzt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzg:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdoo;->zzh:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzdoy;->zzh(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/internal/ads/zzffx;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbzt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
