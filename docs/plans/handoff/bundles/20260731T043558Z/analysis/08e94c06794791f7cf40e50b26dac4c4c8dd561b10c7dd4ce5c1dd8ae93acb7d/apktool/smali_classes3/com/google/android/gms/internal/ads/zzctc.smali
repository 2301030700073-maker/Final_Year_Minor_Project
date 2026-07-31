.class public final Lcom/google/android/gms/internal/ads/zzctc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zze:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzctc;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzctc;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzctc;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzctc;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v6
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjv;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjv;->zza()Landroid/content/Context;

    move-result-object v2

    .line 2
    move-object v0, v2

    check-cast v0, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcse;->zza()Lcom/google/android/gms/internal/ads/zzcgy;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcuf;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuf;->zza()Lcom/google/android/gms/internal/ads/zzffu;

    move-result-object v4

    .line 2
    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzffu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzckk;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckk;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    .line 2
    move-object v0, v5

    check-cast v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzehd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzctb;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzctb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgy;Lcom/google/android/gms/internal/ads/zzffu;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzehd;)V

    return-object v0
.end method
