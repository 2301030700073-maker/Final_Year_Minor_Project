.class public final Lcom/google/android/gms/internal/ads/zzfas;
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


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfas;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfas;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfas;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfas;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfas;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfas;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzfas;
    .locals 10

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfas;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfas;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v9
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfas;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfas;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfaj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfaj;->zza()Ljava/lang/Boolean;

    move-result-object v0

    .line 1
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcnp;->zza()Lcom/google/android/gms/internal/ads/zzcaz;

    move-result-object v4

    .line 1
    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcaz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc()Lcom/google/android/gms/internal/ads/zzgus;

    move-result-object v5

    .line 1
    move-object v0, v5

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgus;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfas;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfag;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfag;->zza()Ljava/lang/String;

    move-result-object v6

    .line 1
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfas;->zzd:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfas;->zze:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfal;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfal;->zza()Ljava/lang/Integer;

    move-result-object v0

    .line 1
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfas;->zzf:Lcom/google/android/gms/internal/ads/zzifq;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfam;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfam;->zza()Ljava/lang/Integer;

    move-result-object v0

    .line 1
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfaq;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzfaq;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;ZLcom/google/android/gms/internal/ads/zzcaz;Lcom/google/android/gms/internal/ads/zzgus;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;II)V

    return-object v0
.end method
