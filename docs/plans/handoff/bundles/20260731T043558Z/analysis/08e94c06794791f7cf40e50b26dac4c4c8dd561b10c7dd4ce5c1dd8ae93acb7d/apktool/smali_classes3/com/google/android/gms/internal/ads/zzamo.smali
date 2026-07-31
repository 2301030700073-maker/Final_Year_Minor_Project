.class public final Lcom/google/android/gms/internal/ads/zzamo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaem;

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzv;

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lcom/google/android/gms/internal/ads/zzeg;

    new-array p3, p3, [B

    invoke-direct {p4, p3}, Lcom/google/android/gms/internal/ads/zzeg;-><init>([B)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamo;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzq:J

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, -0x1

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzo:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzp:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzc:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzd:I

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzeg;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    .line 2
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzacy;)V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzacy;->zzb:I

    const v1, -0x7fffffff

    if-eq v0, v1, :cond_3

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzacy;->zzc:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    if-ne v1, v3, :cond_1

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    if-ne v0, v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzacy;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzt;

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zze:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzacy;->zza:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzc:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzd:I

    .line 9
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzg(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzq:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zzb()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzu(II)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzq:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzeg;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v2

    if-lez v2, :cond_14

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x4

    if-eqz v2, :cond_10

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x6

    if-eq v2, v6, :cond_b

    if-eq v2, v4, :cond_a

    const-wide/16 v11, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v3, :cond_8

    if-eq v2, v7, :cond_6

    if-eq v2, v9, :cond_3

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzm:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    .line 10
    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzm:I

    if-ne v3, v2, :cond_0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzq:J

    cmp-long v2, v2, v13

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_1

    :cond_1
    move v2, v5

    .line 11
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzq:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzn:I

    if-ne v2, v7, :cond_2

    move v11, v5

    goto :goto_2

    :cond_2
    move v11, v6

    :goto_2
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzm:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 12
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzq:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzq:J

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    goto :goto_0

    .line 25
    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzp:I

    .line 13
    invoke-direct {v0, v1, v4, v6}, Lcom/google/android/gms/internal/ads/zzamo;->zzf(Lcom/google/android/gms/internal/ads/zzeg;[BI)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v6

    .line 14
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/zzacz;->zzf([BLjava/util/concurrent/atomic/AtomicInteger;)Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object v4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzn:I

    if-ne v6, v3, :cond_4

    .line 15
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzamo;->zzg(Lcom/google/android/gms/internal/ads/zzacy;)V

    :cond_4
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzacy;->zzd:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzm:I

    iget-wide v3, v4, Lcom/google/android/gms/internal/ads/zzacy;->zze:J

    cmp-long v6, v3, v13

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move-wide v11, v3

    :goto_3
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:J

    .line 16
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzp:I

    .line 17
    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    .line 18
    invoke-direct {v0, v1, v3, v10}, Lcom/google/android/gms/internal/ads/zzamo;->zzf(Lcom/google/android/gms/internal/ads/zzeg;[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v2

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzacz;->zzg([B)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzp:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    if-le v3, v2, :cond_7

    sub-int v2, v3, v2

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v3

    sub-int/2addr v3, v2

    .line 20
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    :cond_7
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    goto/16 :goto_0

    .line 8
    :cond_8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzo:I

    .line 21
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzamo;->zzf(Lcom/google/android/gms/internal/ads/zzeg;[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzacz;->zzd([B)Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object v3

    .line 23
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzamo;->zzg(Lcom/google/android/gms/internal/ads/zzacy;)V

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzacy;->zzd:I

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzm:I

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzacy;->zze:J

    cmp-long v6, v3, v13

    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    move-wide v11, v3

    :goto_4
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:J

    .line 24
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzo:I

    .line 25
    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    goto/16 :goto_0

    .line 35
    :cond_a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v4

    .line 26
    invoke-direct {v0, v1, v4, v8}, Lcom/google/android/gms/internal/ads/zzamo;->zzf(Lcom/google/android/gms/internal/ads/zzeg;[BI)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzacz;->zze([B)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzo:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    goto/16 :goto_0

    .line 20
    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    const/16 v11, 0x12

    .line 28
    invoke-direct {v0, v1, v3, v11}, Lcom/google/android/gms/internal/ads/zzamo;->zzf(Lcom/google/android/gms/internal/ads/zzeg;[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v3

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v12, :cond_c

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzc:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzd:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamo;->zze:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v16, v12

    move-object v12, v3

    .line 29
    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzacz;->zzb([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    .line 30
    invoke-interface {v13, v12}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    .line 31
    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzacz;->zzc([B)I

    move-result v12

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzm:I

    .line 32
    aget-byte v12, v3, v5

    const/4 v13, -0x2

    if-eq v12, v13, :cond_f

    const/4 v13, -0x1

    if-eq v12, v13, :cond_e

    const/16 v13, 0x1f

    if-eq v12, v13, :cond_d

    .line 36
    aget-byte v7, v3, v7

    and-int/2addr v7, v6

    shl-int/2addr v7, v10

    aget-byte v3, v3, v9

    and-int/lit16 v3, v3, 0xfc

    goto :goto_6

    .line 33
    :cond_d
    aget-byte v9, v3, v9

    and-int/2addr v8, v9

    shl-int/lit8 v7, v8, 0x4

    aget-byte v3, v3, v10

    goto :goto_5

    .line 34
    :cond_e
    aget-byte v9, v3, v7

    and-int/2addr v9, v8

    shl-int/lit8 v7, v9, 0x4

    aget-byte v3, v3, v8

    :goto_5
    and-int/lit8 v3, v3, 0x3c

    :goto_6
    shr-int/2addr v3, v4

    or-int/2addr v3, v7

    goto :goto_7

    .line 35
    :cond_f
    aget-byte v8, v3, v9

    and-int/2addr v8, v6

    shl-int/2addr v8, v10

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xfc

    shr-int/2addr v3, v4

    or-int/2addr v3, v8

    :goto_7
    add-int/2addr v3, v6

    .line 36
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:Lcom/google/android/gms/internal/ads/zzv;

    .line 37
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    mul-int/lit8 v3, v3, 0x20

    int-to-long v6, v3

    .line 38
    invoke-static {v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzep;->zzr(JI)J

    move-result-wide v3

    .line 39
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgst;->zza(J)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:J

    .line 40
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    .line 41
    invoke-interface {v3, v2, v11}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    goto/16 :goto_0

    .line 2
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:I

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v8

    or-int/2addr v2, v8

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:I

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzacz;->zza(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzn:I

    if-eqz v2, :cond_10

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzamo;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v8

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:I

    shr-int/lit8 v10, v9, 0x18

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 5
    aput-byte v10, v8, v5

    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 6
    aput-byte v10, v8, v6

    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    .line 7
    aput-byte v10, v8, v4

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 8
    aput-byte v9, v8, v3

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:I

    if-eq v2, v3, :cond_13

    if-ne v2, v7, :cond_11

    goto :goto_8

    :cond_11
    if-ne v2, v6, :cond_12

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    goto/16 :goto_0

    :cond_12
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    goto/16 :goto_0

    :cond_13
    :goto_8
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:I

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    return-void
.end method
