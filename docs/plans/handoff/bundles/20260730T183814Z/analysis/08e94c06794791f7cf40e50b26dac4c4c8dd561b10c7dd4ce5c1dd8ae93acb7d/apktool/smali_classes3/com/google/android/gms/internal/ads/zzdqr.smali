.class public final Lcom/google/android/gms/internal/ads/zzdqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/zza;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzefy;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzaxa;

.field private final zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfng;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzegj;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzaxa;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzcho;Lcom/google/android/gms/internal/ads/zzefy;Lcom/google/android/gms/internal/ads/zzfng;Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzegj;Lcom/google/android/gms/internal/ads/zzfgr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zze:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzf:Lcom/google/android/gms/internal/ads/zzaxa;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zza:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzd:Lcom/google/android/gms/internal/ads/zzefy;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzh:Lcom/google/android/gms/internal/ads/zzfng;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzc:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzi:Lcom/google/android/gms/internal/ads/zzegj;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzj:Lcom/google/android/gms/internal/ads/zzfgr;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqt;-><init>(Lcom/google/android/gms/internal/ads/zzdqr;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqt;->zza()V

    return-object v0
.end method

.method final synthetic zza()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zza:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method final synthetic zzb()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzdvi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzc:Lcom/google/android/gms/internal/ads/zzdvi;

    return-object v0
.end method

.method final synthetic zzd()Lcom/google/android/gms/internal/ads/zzefy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzd:Lcom/google/android/gms/internal/ads/zzefy;

    return-object v0
.end method

.method final synthetic zze()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zze:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzaxa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzf:Lcom/google/android/gms/internal/ads/zzaxa;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzh:Lcom/google/android/gms/internal/ads/zzfng;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzegj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzi:Lcom/google/android/gms/internal/ads/zzegj;

    return-object v0
.end method

.method final synthetic zzj()Lcom/google/android/gms/internal/ads/zzfgr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqr;->zzj:Lcom/google/android/gms/internal/ads/zzfgr;

    return-object v0
.end method
