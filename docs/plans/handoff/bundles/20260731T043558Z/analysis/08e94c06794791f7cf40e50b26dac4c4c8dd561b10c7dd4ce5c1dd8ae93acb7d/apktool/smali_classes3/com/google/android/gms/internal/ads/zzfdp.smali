.class public final Lcom/google/android/gms/internal/ads/zzfdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzifq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzifq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdp;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdp;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfdp;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)Lcom/google/android/gms/internal/ads/zzfdp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdp;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfdp;-><init>(Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;Lcom/google/android/gms/internal/ads/zzifq;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfdm;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdp;->zza:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdp;->zzb:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfhy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfdp;->zzc:Lcom/google/android/gms/internal/ads/zzifq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzifq;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfiq;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzgQ:Lcom/google/android/gms/internal/ads/zzbel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcbj;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzi()Lcom/google/android/gms/internal/ads/zzcbe;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcbj;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzj()Lcom/google/android/gms/internal/ads/zzcbe;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcbe;->zzi()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzgS:Lcom/google/android/gms/internal/ads/zzbel;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbeu;->zzgP:Lcom/google/android/gms/internal/ads/zzbel;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfco;

    .line 10
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzfco;-><init>()V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfig;->zza:Lcom/google/android/gms/internal/ads/zzfig;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfcp;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzfcp;-><init>(Lcom/google/android/gms/internal/ads/zzfdm;)V

    .line 11
    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzfiq;->zza(Lcom/google/android/gms/internal/ads/zzfig;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfhy;Lcom/google/android/gms/internal/ads/zzfiv;)Lcom/google/android/gms/internal/ads/zzfip;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfct;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfdd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfdc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfdc;-><init>()V

    .line 12
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzfdd;-><init>(Lcom/google/android/gms/internal/ads/zzfdm;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfip;->zza:Lcom/google/android/gms/internal/ads/zzfic;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfcz;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzcbv;->zza:Lcom/google/android/gms/internal/ads/zzgus;

    invoke-direct {v3, v1, v6}, Lcom/google/android/gms/internal/ads/zzfcz;-><init>(Lcom/google/android/gms/internal/ads/zzfic;Ljava/util/concurrent/Executor;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfip;->zzb:Lcom/google/android/gms/internal/ads/zzfiy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfic;->zze()Lcom/google/android/gms/internal/ads/zzfij;

    move-result-object v0

    .line 13
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfij;->zzf:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfct;-><init>(Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzfiy;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 14
    :cond_3
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfdc;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzfdc;-><init>()V

    :goto_1
    check-cast v7, Lcom/google/android/gms/internal/ads/zzfdm;

    return-object v7
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfdp;->zza()Lcom/google/android/gms/internal/ads/zzfdm;

    move-result-object v0

    return-object v0
.end method
