.class abstract Lcom/google/android/gms/internal/ads/zzajw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzajq;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaem;

.field private zzc:Lcom/google/android/gms/internal/ads/zzadd;

.field private zzd:Lcom/google/android/gms/internal/ads/zzajs;

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:I

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzaju;

.field private zzk:J

.field private zzl:Z

.field private zzm:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzajq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzj:Lcom/google/android/gms/internal/ads/zzaju;

    return-void
.end method


# virtual methods
.method protected zza(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzj:Lcom/google/android/gms/internal/ads/zzaju;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzh:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajw;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzg:J

    return-void
.end method

.method protected abstract zzb(Lcom/google/android/gms/internal/ads/zzeg;)J
.end method

.method protected abstract zzc(Lcom/google/android/gms/internal/ads/zzeg;JLcom/google/android/gms/internal/ads/zzaju;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation
.end method

.method final zze(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzc:Lcom/google/android/gms/internal/ads/zzadd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzb:Lcom/google/android/gms/internal/ads/zzaem;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zza(Z)V

    return-void
.end method

.method final zzf(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzajq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajq;->zza()V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzl:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zza(Z)V

    return-void

    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzh:I

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zze:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzajs;

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajw;->zze:J

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajs;->zzb(J)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzh:I

    :cond_1
    return-void
.end method

.method final zzg(Lcom/google/android/gms/internal/ads/zzadb;Lcom/google/android/gms/internal/ads/zzaea;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzb:Lcom/google/android/gms/internal/ads/zzaem;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzh:I

    const/4 v2, 0x3

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v12, :cond_0

    goto/16 :goto_5

    .line 7
    :cond_0
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    .line 9
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzajs;->zza(Lcom/google/android/gms/internal/ads/zzadb;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-ltz v1, :cond_1

    move-object/from16 v1, p2

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaea;->zza:J

    move v5, v6

    goto/16 :goto_5

    :cond_1
    cmp-long v1, v7, v3

    if-gez v1, :cond_2

    const-wide/16 v14, 0x2

    add-long/2addr v7, v14

    neg-long v7, v7

    .line 10
    invoke-virtual {v11, v7, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzj(J)V

    :cond_2
    iget-boolean v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzl:Z

    if-nez v1, :cond_3

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzajs;->zzc()Lcom/google/android/gms/internal/ads/zzaed;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v7, v1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaed;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzc:Lcom/google/android/gms/internal/ads/zzadd;

    .line 12
    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzw(Lcom/google/android/gms/internal/ads/zzaed;)V

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaed;->zza()J

    iput-boolean v6, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzl:Z

    :cond_3
    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzk:J

    cmp-long v1, v6, v9

    if-gtz v1, :cond_5

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzajq;

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzajq;->zzb(Lcom/google/android/gms/internal/ads/zzadb;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    iput v2, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzh:I

    goto/16 :goto_5

    .line 14
    :cond_5
    :goto_0
    iput-wide v9, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzk:J

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzajq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajq;->zzd()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v0

    .line 15
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzajw;->zzb(Lcom/google/android/gms/internal/ads/zzeg;)J

    move-result-wide v1

    cmp-long v5, v1, v9

    if-ltz v5, :cond_6

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzg:J

    add-long v7, v5, v1

    iget-wide v9, v11, Lcom/google/android/gms/internal/ads/zzajw;->zze:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_6

    .line 16
    invoke-virtual {v11, v5, v6}, Lcom/google/android/gms/internal/ads/zzajw;->zzh(J)J

    move-result-wide v15

    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzb:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v6

    .line 17
    invoke-interface {v5, v0, v6}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzb:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    .line 18
    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    iput-wide v3, v11, Lcom/google/android/gms/internal/ads/zzajw;->zze:J

    :cond_6
    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzg:J

    add-long/2addr v3, v1

    iput-wide v3, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzg:J

    goto/16 :goto_4

    .line 21
    :cond_7
    iget-wide v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    long-to-int v1, v1

    .line 20
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadb;->zzf(I)V

    iput v12, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzh:I

    return v13

    .line 1
    :cond_8
    :goto_1
    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzajq;

    .line 2
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzajq;->zzb(Lcom/google/android/gms/internal/ads/zzadb;)Z

    move-result v1

    if-nez v1, :cond_9

    iput v2, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzh:I

    goto/16 :goto_5

    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v7

    iget-wide v9, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    sub-long/2addr v7, v9

    iput-wide v7, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzk:J

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzajq;->zzd()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v1

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzj:Lcom/google/android/gms/internal/ads/zzaju;

    .line 3
    invoke-virtual {v11, v1, v9, v10, v7}, Lcom/google/android/gms/internal/ads/zzajw;->zzc(Lcom/google/android/gms/internal/ads/zzeg;JLcom/google/android/gms/internal/ads/zzaju;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzn()J

    move-result-wide v7

    iput-wide v7, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    goto :goto_1

    :cond_a
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzj:Lcom/google/android/gms/internal/ads/zzaju;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaju;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    iput v2, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzi:I

    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzm:Z

    if-nez v2, :cond_b

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzb:Lcom/google/android/gms/internal/ads/zzaem;

    .line 5
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    iput-boolean v6, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzm:Z

    :cond_b
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzj:Lcom/google/android/gms/internal/ads/zzaju;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaju;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    if-eqz v1, :cond_c

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    goto :goto_3

    .line 8
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzajv;-><init>([B)V

    iput-object v0, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    goto :goto_3

    :cond_d
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzajq;->zzc()Lcom/google/android/gms/internal/ads/zzajr;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zza:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_e

    move v10, v6

    goto :goto_2

    :cond_e
    move v10, v13

    :goto_2
    new-instance v15, Lcom/google/android/gms/internal/ads/zzajl;

    iget-wide v2, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzf:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadb;->zzo()J

    move-result-wide v4

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    add-int/2addr v0, v6

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzb:J

    int-to-long v6, v0

    move-object v0, v15

    move-object/from16 v1, p0

    .line 7
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzajl;-><init>(Lcom/google/android/gms/internal/ads/zzajw;JJJJZ)V

    iput-object v15, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    .line 6
    :goto_3
    iput v12, v11, Lcom/google/android/gms/internal/ads/zzajw;->zzh:I

    .line 8
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzajq;->zze()V

    :goto_4
    move v5, v13

    :goto_5
    return v5
.end method

.method protected final zzh(J)J
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzi:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    div-long/2addr p1, v0

    return-wide p1
.end method

.method protected final zzi(J)J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzi:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    return-wide v0
.end method

.method protected zzj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajw;->zzg:J

    return-void
.end method
