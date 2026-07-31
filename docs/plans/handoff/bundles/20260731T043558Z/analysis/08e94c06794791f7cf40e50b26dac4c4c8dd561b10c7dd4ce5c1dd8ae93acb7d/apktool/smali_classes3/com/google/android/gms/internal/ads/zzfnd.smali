.class public final Lcom/google/android/gms/internal/ads/zzfnd;
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

.field private final zzf:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzg:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzh:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzi:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzfnd;
    .locals 11

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfnd;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfnd;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v10
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzekv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzckk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckk;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    .line 1
    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcyc;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyc;->zza()Ljava/lang/String;

    move-result-object v4

    .line 1
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcye;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcye;->zza()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object v7

    .line 1
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfgg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzg:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfgh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzh:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/common/util/Clock;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnd;->zzi:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzaxa;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnc;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzfnc;-><init>(Lcom/google/android/gms/internal/ads/zzekv;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfgg;Lcom/google/android/gms/internal/ads/zzfgh;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzaxa;)V

    return-object v0
.end method
