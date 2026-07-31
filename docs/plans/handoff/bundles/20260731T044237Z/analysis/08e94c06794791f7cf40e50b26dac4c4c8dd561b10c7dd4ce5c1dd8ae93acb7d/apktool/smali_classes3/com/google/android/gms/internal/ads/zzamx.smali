.class public final Lcom/google/android/gms/internal/ads/zzamx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzant;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzanh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzanh;

.field private final zze:Lcom/google/android/gms/internal/ads/zzanh;

.field private zzf:J

.field private final zzg:[Z

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/ads/zzaem;

.field private zzj:Lcom/google/android/gms/internal/ads/zzamw;

.field private zzk:Z

.field private zzl:J

.field private zzm:Z

.field private final zzn:Lcom/google/android/gms/internal/ads/zzeg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzant;ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzant;

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzb:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanh;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzc:Lcom/google/android/gms/internal/ads/zzanh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanh;

    const/16 p2, 0x8

    .line 2
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzd:Lcom/google/android/gms/internal/ads/zzanh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanh;

    const/4 p2, 0x6

    .line 3
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zze:Lcom/google/android/gms/internal/ads/zzanh;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:J

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzn:Lcom/google/android/gms/internal/ads/zzeg;

    return-void
.end method

.method private final zzf(JIJ)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzc:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzanh;->zzc(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzd:Lcom/google/android/gms/internal/ads/zzanh;

    .line 2
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzanh;->zzc(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zze:Lcom/google/android/gms/internal/ads/zzanh;

    .line 3
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzanh;->zzc(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:Lcom/google/android/gms/internal/ads/zzamw;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:Z

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzamw;->zzd(JIJZ)V

    return-void
.end method

.method private final zzg([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzc:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanh;->zzd([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzd:Lcom/google/android/gms/internal/ads/zzanh;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanh;->zzd([BII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zze:Lcom/google/android/gms/internal/ads/zzanh;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanh;->zzd([BII)V

    return-void
.end method

.method private final zzh(JIIJ)V
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p4

    .line 39
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 44
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzc:Lcom/google/android/gms/internal/ads/zzanh;

    .line 1
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zze(I)Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzd:Lcom/google/android/gms/internal/ads/zzanh;

    .line 2
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zze(I)Z

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:Z

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzanh;->zzb()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanh;->zzb()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzanh;->zza:[B

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzb:I

    .line 4
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzanh;->zza:[B

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzanh;->zzb:I

    .line 5
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzanh;->zza:[B

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzb:I

    .line 6
    invoke-static {v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzfm;->zzd([BII)Lcom/google/android/gms/internal/ads/zzfl;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzanh;->zza:[B

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzanh;->zzb:I

    .line 7
    invoke-static {v7, v3, v8}, Lcom/google/android/gms/internal/ads/zzfm;->zzg([BII)Lcom/google/android/gms/internal/ads/zzfk;

    move-result-object v7

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzfl;->zza:I

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzb:I

    iget v10, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzc:I

    .line 8
    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzdd;->zza(III)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzt;

    .line 9
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:Ljava/lang/String;

    .line 10
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzb:Ljava/lang/String;

    .line 11
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v11, "video/avc"

    .line 12
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 13
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzfl;->zze:I

    .line 14
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzt(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzf:I

    .line 15
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzh;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzh;-><init>()V

    iget v11, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzj:I

    .line 16
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzh;->zza(I)Lcom/google/android/gms/internal/ads/zzh;

    iget v11, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzk:I

    .line 17
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)Lcom/google/android/gms/internal/ads/zzh;

    iget v11, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzl:I

    .line 18
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)Lcom/google/android/gms/internal/ads/zzh;

    iget v11, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzh:I

    add-int/lit8 v11, v11, 0x8

    .line 19
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzh;->zze(I)Lcom/google/android/gms/internal/ads/zzh;

    iget v11, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzi:I

    add-int/lit8 v11, v11, 0x8

    .line 20
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzh;->zzf(I)Lcom/google/android/gms/internal/ads/zzh;

    .line 21
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzh;->zzg()Lcom/google/android/gms/internal/ads/zzi;

    move-result-object v8

    .line 22
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzC(Lcom/google/android/gms/internal/ads/zzi;)Lcom/google/android/gms/internal/ads/zzt;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzg:F

    .line 23
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzz(F)Lcom/google/android/gms/internal/ads/zzt;

    .line 24
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzfl;->zzm:I

    .line 25
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzo(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 26
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v8

    .line 9
    invoke-interface {v9, v8}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:Z

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzant;

    .line 27
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzant;->zzb(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:Lcom/google/android/gms/internal/ads/zzamw;

    .line 28
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzamw;->zza(Lcom/google/android/gms/internal/ads/zzfl;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:Lcom/google/android/gms/internal/ads/zzamw;

    .line 29
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzamw;->zzb(Lcom/google/android/gms/internal/ads/zzfk;)V

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzanh;->zza()V

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanh;->zza()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzanh;->zzb()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzanh;->zza:[B

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzb:I

    .line 32
    invoke-static {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzfm;->zzd([BII)Lcom/google/android/gms/internal/ads/zzfl;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzant;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzfl;->zzm:I

    .line 33
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzant;->zzb(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:Lcom/google/android/gms/internal/ads/zzamw;

    .line 34
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzamw;->zza(Lcom/google/android/gms/internal/ads/zzfl;)V

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzanh;->zza()V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanh;->zzb()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzanh;->zza:[B

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzanh;->zzb:I

    .line 36
    invoke-static {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzfm;->zzg([BII)Lcom/google/android/gms/internal/ads/zzfk;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:Lcom/google/android/gms/internal/ads/zzamw;

    .line 37
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzamw;->zzb(Lcom/google/android/gms/internal/ads/zzfk;)V

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzanh;->zza()V

    .line 39
    :cond_3
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamx;->zze:Lcom/google/android/gms/internal/ads/zzanh;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzanh;->zze(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzanh;->zza:[B

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzanh;->zzb:I

    .line 40
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzfm;->zza([BI)I

    move-result v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzn:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzanh;->zza:[B

    .line 41
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzb([BI)V

    .line 42
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzant;

    move-wide/from16 v2, p5

    .line 43
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzant;->zzc(JLcom/google/android/gms/internal/ads/zzeg;)V

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:Lcom/google/android/gms/internal/ads/zzamw;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzk:Z

    move-wide v3, p1

    move v5, p3

    .line 44
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzamw;->zze(JIZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzf:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzg:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfm;->zzi([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzc:Lcom/google/android/gms/internal/ads/zzanh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanh;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzd:Lcom/google/android/gms/internal/ads/zzanh;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanh;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zze:Lcom/google/android/gms/internal/ads/zzanh;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanh;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzant;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzant;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:Lcom/google/android/gms/internal/ads/zzamw;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamw;->zzc()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzh:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zzb()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzu(II)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(Lcom/google/android/gms/internal/ads/zzaem;ZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzj:Lcom/google/android/gms/internal/ads/zzamw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzant;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzant;->zza(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaoe;)V

    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:J

    and-int/lit8 p1, p3, 0x2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzm:Z

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzeg;)V
    .locals 15

    move-object v7, p0

    .line 1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzamx;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v9

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzamx;->zzf:J

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/zzamx;->zzf:J

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzamx;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v2

    move-object/from16 v3, p1

    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    :goto_0
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzamx;->zzg:[Z

    .line 4
    invoke-static {v9, v0, v8, v1}, Lcom/google/android/gms/internal/ads/zzfm;->zzh([BII[Z)I

    move-result v1

    if-eq v1, v8, :cond_3

    add-int/lit8 v2, v1, 0x3

    .line 5
    aget-byte v2, v9, v2

    and-int/lit8 v10, v2, 0x1f

    const/4 v2, 0x3

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 6
    aget-byte v4, v9, v3

    if-nez v4, :cond_0

    const/4 v2, 0x4

    move v12, v2

    move v11, v3

    goto :goto_1

    :cond_0
    move v11, v1

    move v12, v2

    :goto_1
    sub-int v1, v11, v0

    if-lez v1, :cond_1

    .line 7
    invoke-direct {p0, v9, v0, v11}, Lcom/google/android/gms/internal/ads/zzamx;->zzg([BII)V

    :cond_1
    sub-int v3, v8, v11

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzamx;->zzf:J

    int-to-long v13, v3

    sub-long v13, v4, v13

    if-gez v1, :cond_2

    neg-int v0, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v4, v0

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzamx;->zzl:J

    move-object v0, p0

    move-wide v1, v13

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzamx;->zzh(JIIJ)V

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzamx;->zzl:J

    move v3, v10

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzamx;->zzf(JIJ)V

    add-int v0, v11, v12

    goto :goto_0

    .line 10
    :cond_3
    invoke-direct {p0, v9, v0, v8}, Lcom/google/android/gms/internal/ads/zzamx;->zzg([BII)V

    return-void
.end method

.method public final zze(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzi:Lcom/google/android/gms/internal/ads/zzaem;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zza:Lcom/google/android/gms/internal/ads/zzant;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzant;->zzd()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzf:J

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:J

    const/4 v3, 0x0

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzamx;->zzh(JIIJ)V

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzf:J

    const/16 v10, 0x9

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:J

    move-object v7, p0

    .line 4
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzamx;->zzf(JIJ)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzf:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzamx;->zzl:J

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzamx;->zzh(JIIJ)V

    :cond_0
    return-void
.end method
