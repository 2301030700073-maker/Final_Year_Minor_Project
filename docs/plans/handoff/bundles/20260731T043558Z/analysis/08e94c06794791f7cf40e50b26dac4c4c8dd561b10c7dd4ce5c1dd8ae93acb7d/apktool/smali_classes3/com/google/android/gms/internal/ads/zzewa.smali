.class public final Lcom/google/android/gms/internal/ads/zzewa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeya;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgus;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzc:Landroid/content/pm/PackageInfo;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgus;Lcom/google/android/gms/internal/ads/zzfgn;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewa;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewa;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzewa;->zzc:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzewa;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzevz;-><init>(Lcom/google/android/gms/internal/ads/zzewa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewa;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgus;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzewb;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzewb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzewa;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewa;->zzc:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzewa;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzewb;-><init>(Lcom/google/android/gms/internal/ads/zzfgn;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v0
.end method
