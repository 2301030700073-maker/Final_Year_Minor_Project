.class public final Lcom/google/android/gms/internal/ads/zzwj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaem;


# instance fields
.field private zzA:Z

.field private zzB:Z

.field private final zza:Lcom/google/android/gms/internal/ads/zzwe;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzwf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzwq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzrz;

.field private final zze:Lcom/google/android/gms/internal/ads/zzru;

.field private zzf:Lcom/google/android/gms/internal/ads/zzwi;

.field private zzg:Lcom/google/android/gms/internal/ads/zzv;

.field private zzh:Lcom/google/android/gms/internal/ads/zzrs;

.field private zzi:I

.field private zzj:[J

.field private zzk:[J

.field private zzl:[I

.field private zzm:[I

.field private zzn:[J

.field private zzo:[Lcom/google/android/gms/internal/ads/zzael;

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:J

.field private zzu:J

.field private zzv:J

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Lcom/google/android/gms/internal/ads/zzv;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzyv;Lcom/google/android/gms/internal/ads/zzrz;Lcom/google/android/gms/internal/ads/zzru;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzd:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:Lcom/google/android/gms/internal/ads/zzru;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Lcom/google/android/gms/internal/ads/zzyv;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzwf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzb:Lcom/google/android/gms/internal/ads/zzwf;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzj:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzm:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzl:[I

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzael;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzo:[Lcom/google/android/gms/internal/ads/zzael;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzwq;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwg;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzwq;-><init>(Lcom/google/android/gms/internal/ads/zzdg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzt:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzu:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzv:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzy:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzx:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzA:Z

    return-void
.end method

.method private final declared-synchronized zzA()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwe;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized zzB(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhh;ZZLcom/google/android/gms/internal/ads/zzwf;)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzhh;->zzd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzH()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzw:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    if-eq p2, p3, :cond_2

    .line 2
    :cond_1
    move-object p3, p2

    check-cast p3, Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzI(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzkj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 1
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhc;->zzg(I)V

    const-wide/high16 p3, -0x8000000000000000L

    iput-wide p3, p2, Lcom/google/android/gms/internal/ads/zzhh;->zze:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    .line 2
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    add-int/2addr v4, v5

    .line 3
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzwq;->zza(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwh;->zza:Lcom/google/android/gms/internal/ads/zzv;

    if-nez p3, :cond_9

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v0, p3, :cond_5

    goto :goto_1

    .line 4
    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzM(I)I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzJ(I)Z

    move-result p3

    if-nez p3, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzhh;->zzd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_6
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzm:[I

    .line 6
    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzhc;->zzg(I)V

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_8

    if-nez p4, :cond_7

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzw:Z

    if-eqz p3, :cond_8

    :cond_7
    const/high16 p3, 0x20000000

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzhc;->zzh(I)V

    :cond_8
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    .line 8
    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzl:[I

    .line 9
    aget p2, p2, p1

    iput p2, p5, Lcom/google/android/gms/internal/ads/zzwf;->zza:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:[J

    .line 10
    aget-wide p3, p2, p1

    iput-wide p3, p5, Lcom/google/android/gms/internal/ads/zzwf;->zzb:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzo:[Lcom/google/android/gms/internal/ads/zzael;

    .line 11
    aget-object p1, p2, p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzwf;->zzc:Lcom/google/android/gms/internal/ads/zzael;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    .line 4
    :cond_9
    :goto_1
    :try_start_4
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzI(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzkj;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzC(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzy:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwq;->zzf()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwh;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwh;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_0

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    .line 4
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzA:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    .line 6
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzas;->zzd(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzA:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzB:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzD(JZZ)J
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    if-eq p4, p3, :cond_1

    add-int/lit8 p3, p4, 0x1

    :cond_1
    move v3, p3

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwj;->zzK(IIJZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzL(I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 1
    :cond_2
    :goto_0
    monitor-exit p0

    const-wide/16 p1, -0x1

    return-wide p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzE()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzL(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final zzF()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzh:Lcom/google/android/gms/internal/ads/zzrs;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzh:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    :cond_0
    return-void
.end method

.method private final declared-synchronized zzG(JIJILcom/google/android/gms/internal/ads/zzael;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzM(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzl:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zza(Z)V

    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzw:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzv:J

    .line 2
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzv:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzM(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    .line 3
    aput-wide p1, v3, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:[J

    .line 4
    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzl:[I

    .line 5
    aput p6, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzm:[I

    .line 6
    aput p3, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzo:[Lcom/google/android/gms/internal/ads/zzael;

    .line 7
    aput-object p7, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzj:[J

    const-wide/16 p2, 0x0

    .line 8
    aput-wide p2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzf()Z

    move-result p2

    if-nez p2, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwq;->zzc()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzwh;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzwh;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzv;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    .line 11
    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzv;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzry;->zzb:Lcom/google/android/gms/internal/ads/zzry;

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    iget p6, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    add-int/2addr p5, p6

    new-instance p6, Lcom/google/android/gms/internal/ads/zzwh;

    invoke-direct {p6, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzwh;-><init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzry;[B)V

    .line 12
    invoke-virtual {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzwq;->zzb(ILjava/lang/Object;)V

    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:I

    if-ne p1, p2, :cond_5

    add-int/lit16 p1, p2, 0x3e8

    .line 13
    new-array p3, p1, [J

    .line 14
    new-array p4, p1, [J

    .line 15
    new-array p5, p1, [J

    .line 16
    new-array p6, p1, [I

    .line 17
    new-array p7, p1, [I

    .line 18
    new-array v0, p1, [Lcom/google/android/gms/internal/ads/zzael;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:[J

    .line 19
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    .line 20
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzm:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    .line 21
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzl:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    .line 22
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzo:[Lcom/google/android/gms/internal/ads/zzael;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    .line 23
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzj:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    .line 24
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:[J

    .line 25
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    .line 26
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzm:[I

    .line 27
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzl:[I

    .line 28
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzo:[Lcom/google/android/gms/internal/ads/zzael;

    .line 29
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzj:[J

    .line 30
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzm:[I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzl:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzo:[Lcom/google/android/gms/internal/ads/zzael;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzj:[J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    .line 31
    :cond_6
    :try_start_1
    throw p3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzH()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzI(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzkj;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzq;

    .line 1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzd:Lcom/google/android/gms/internal/ads/zzrz;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzrz;->zzb(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzv;->zzb(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzh:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzrs;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zze:Lcom/google/android/gms/internal/ads/zzru;

    .line 3
    invoke-interface {v3, v0, p1}, Lcom/google/android/gms/internal/ads/zzrz;->zza(Lcom/google/android/gms/internal/ads/zzru;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzrs;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzh:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzrs;

    return-void
.end method

.method private final zzJ(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzh:Lcom/google/android/gms/internal/ads/zzrs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzm:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final zzK(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzm:[I

    .line 2
    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:I

    if-ne p1, v3, :cond_2

    move p1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private final zzL(I)J
    .locals 11

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzu:J

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, p1, -0x1

    .line 6
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzwj;->zzM(I)I

    move-result v6

    move v7, v4

    :goto_0
    if-ge v7, p1, :cond_3

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    .line 1
    aget-wide v9, v8, v6

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzm:[I

    .line 2
    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    if-ne v6, v5, :cond_2

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:I

    add-int/2addr v6, v5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3
    :cond_3
    :goto_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzu:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:I

    if-lt v1, v2, :cond_4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    if-gez v1, :cond_5

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwq;->zzd(I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    if-nez p1, :cond_7

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    if-nez p1, :cond_6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:I

    :cond_6
    add-int/2addr p1, v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:[J

    .line 5
    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzl:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzk:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    .line 6
    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private final zzM(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzb(Z)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzF()V

    return-void
.end method

.method public final zzb(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwe;->zza()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzx:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzt:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzu:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzv:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwq;->zze()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzy:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzA:Z

    :cond_0
    return-void
.end method

.method public final zzc(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzt:J

    return-void
.end method

.method public final zzd()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzs()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzF()V

    return-void
.end method

.method public final zzf()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzh:Lcom/google/android/gms/internal/ads/zzrs;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrs;->zza()Lcom/google/android/gms/internal/ads/zzrr;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrr;

    throw v0
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    return v0
.end method

.method public final zzh()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzi()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzj()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzv:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzk()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzl(Z)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzH()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzw:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzc:Lcom/google/android/gms/internal/ads/zzwq;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwq;->zza(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwh;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzg:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzM(I)I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzJ(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhh;IZ)I
    .locals 8

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzb:Lcom/google/android/gms/internal/ads/zzwf;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzwj;->zzB(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhh;ZZLcom/google/android/gms/internal/ads/zzwf;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhc;->zzb()Z

    move-result p1

    if-nez p1, :cond_4

    and-int/lit8 p1, p3, 0x1

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzwe;->zzd(Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzwf;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzwe;->zzc(Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzwf;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    return p4

    :cond_4
    :goto_2
    move p1, p4

    :cond_5
    return p1
.end method

.method public final declared-synchronized zzn(I)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzA()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzq:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzt:J

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzo(JZ)Z
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzA()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzM(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzH()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    .line 2
    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_7

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzv:J

    cmp-long v1, p1, v3

    const/4 v8, 0x1

    if-lez v1, :cond_0

    if-eqz p3, :cond_7

    move p3, v8

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzA:Z

    const/4 v9, -0x1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    sub-int/2addr v1, v0

    move v0, v7

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    .line 3
    aget-wide v4, v3, v2

    cmp-long v3, v4, p1

    if-gez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzi:I

    if-ne v2, v3, :cond_1

    move v2, v7

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v9

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwj;->zzK(IIJZ)I

    move-result v1

    :goto_1
    if-ne v1, v9, :cond_6

    goto :goto_2

    .line 3
    :cond_6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzt:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v8

    :cond_7
    :goto_2
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzp(JZ)I
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwj;->zzM(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzH()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzn:[J

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzv:J

    cmp-long v1, p1, v3

    if-lez v1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    monitor-exit p0

    return p1

    .line 1
    :cond_2
    :goto_0
    :try_start_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwj;->zzK(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    monitor-exit p0

    if-ne p1, p2, :cond_3

    return v7

    :cond_3
    return p1

    .line 1
    :cond_4
    :goto_1
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzq(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 1
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzp:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmd;->zza(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzr(JZZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/zzwj;->zzD(JZZ)J

    move-result-wide p1

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzwe;->zze(J)V

    return-void
.end method

.method public final zzs()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwj;->zzE()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzwe;->zze(J)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzwi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzf:Lcom/google/android/gms/internal/ads/zzwi;

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwj;->zzC(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzf:Lcom/google/android/gms/internal/ads/zzwi;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzwi;->zzy(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_0
    return-void
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzj;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwe;->zzg(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    return p1
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzeg;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzwe;->zzh(Lcom/google/android/gms/internal/ads/zzeg;I)V

    return-void
.end method

.method public final zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzx:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzx:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzA:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzt:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzB:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzz:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SampleQueue"

    const-string v2, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwj;->zzB:Z

    :cond_2
    or-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    move v3, p3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwj;->zza:Lcom/google/android/gms/internal/ads/zzwe;

    int-to-long v0, p4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzwe;->zzf()J

    move-result-wide v4

    sub-long/2addr v4, v0

    int-to-long v0, p5

    sub-long/2addr v4, v0

    move-object v0, p0

    move-wide v1, p1

    move v6, p4

    move-object v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzwj;->zzG(JIJILcom/google/android/gms/internal/ads/zzael;)V

    return-void
.end method
