.class final Lcom/google/android/gms/internal/ads/zzql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private zzA:J

.field private zzB:Z

.field private zzC:J

.field private zzD:Lcom/google/android/gms/internal/ads/zzdc;

.field zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzqk;

.field private final zzc:[J

.field private zzd:Landroid/media/AudioTrack;

.field private zze:Lcom/google/android/gms/internal/ads/zzqj;

.field private zzf:I

.field private zzg:J

.field private zzh:F

.field private zzi:Z

.field private zzj:J

.field private zzk:J

.field private zzl:J

.field private zzm:Ljava/lang/reflect/Method;

.field private zzn:J

.field private zzo:Z

.field private zzp:J

.field private zzq:J

.field private zzr:J

.field private zzs:J

.field private zzt:I

.field private zzu:I

.field private zzv:J

.field private zzw:J

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqk;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzb:Lcom/google/android/gms/internal/ads/zzqk;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    .line 2
    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzm:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzc:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzA:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzz:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method

.method private final zzj(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zza:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzj:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v4, p1, v0

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzql;->zzh:F

    sub-long/2addr p1, v0

    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzep;->zzw(JF)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zza()J

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzj:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzb:Lcom/google/android/gms/internal/ads/zzqk;

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqk;->zza(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final zzk(J)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzu:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzv:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzo()J

    move-result-wide p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzep;->zzr(JI)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzm()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzql;->zzk:J

    add-long/2addr p1, v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzh:F

    .line 4
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzep;->zzv(JF)J

    move-result-wide p1

    .line 2
    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzql;->zzn:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzql;->zzv:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzy:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzep;->zzr(JI)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_2
    return-wide p1
.end method

.method private final zzl()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzk:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzu:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzt:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzl:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzz:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzA:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzi:Z

    return-void
.end method

.method private final zzm()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzn()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzep;->zzr(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzn()J
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzy:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzql;->zzq:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzql;->zzd:Landroid/media/AudioTrack;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-object v5, v4

    check-cast v5, Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    int-to-long v6, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x1d

    if-gt v4, v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzql;->zzr:J

    cmp-long v4, v10, v8

    if-lez v4, :cond_2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzql;->zzw:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_5

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzw:J

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzw:J

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzr:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzs:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzs:J

    .line 7
    :cond_4
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzql;->zzr:J

    .line 5
    :cond_5
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzq:J

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzr:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzC:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzs:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzo()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzd:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzx:J

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzep;->zzq(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzv:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzh:F

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzep;->zzv(JF)J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzep;->zzs(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzql;->zzx:J

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public final zza(Landroid/media/AudioTrack;IIIZ)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzd:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzb:Lcom/google/android/gms/internal/ads/zzqk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqj;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzqj;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqk;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzql;->zze:Lcom/google/android/gms/internal/ads/zzqj;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzep;->zzA(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzo:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    .line 4
    div-int/2addr p4, p3

    int-to-long p1, p4

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzep;->zzr(JI)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzg:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzr:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzs:J

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzql;->zzB:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzC:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzv:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzw:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzp:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzn:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzh:F

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzj:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzql;->zza:Z

    return-void
.end method

.method public final zzb()J
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzd:Landroid/media/AudioTrack;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ne v2, v3, :cond_6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzc()J

    move-result-wide v9

    div-long v12, v9, v4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzql;->zzl:J

    sub-long v9, v12, v9

    const-wide/16 v14, 0x7530

    cmp-long v2, v9, v14

    const/4 v9, 0x0

    if-ltz v2, :cond_2

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzql;->zzm()J

    move-result-wide v10

    cmp-long v2, v10, v7

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 17
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:[J

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzql;->zzt:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzql;->zzh:F

    .line 5
    invoke-static {v10, v11, v15}, Lcom/google/android/gms/internal/ads/zzep;->zzw(JF)J

    move-result-wide v10

    sub-long/2addr v10, v12

    aput-wide v10, v2, v14

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzql;->zzt:I

    add-int/2addr v10, v6

    const/16 v11, 0xa

    rem-int/2addr v10, v11

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzql;->zzt:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzql;->zzu:I

    if-ge v10, v11, :cond_1

    add-int/2addr v10, v6

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzql;->zzu:I

    :cond_1
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzql;->zzl:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzql;->zzk:J

    move v10, v9

    :goto_0
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzu:I

    if-ge v10, v11, :cond_2

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzql;->zzk:J

    .line 6
    aget-wide v16, v2, v10

    int-to-long v6, v11

    div-long v16, v16, v6

    add-long v14, v14, v16

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzql;->zzk:J

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzql;->zzo:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzql;->zzm:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzql;->zzp:J

    sub-long v6, v12, v6

    const-wide/32 v10, 0x7a120

    cmp-long v6, v6, v10

    if-ltz v6, :cond_5

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzql;->zzd:Landroid/media/AudioTrack;

    if-eqz v7, :cond_3

    new-array v8, v9, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    move-object v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v7, v2

    mul-long/2addr v7, v4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzql;->zzg:J

    sub-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzql;->zzn:J

    const-wide/16 v9, 0x0

    .line 8
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzql;->zzn:J

    const-wide/32 v14, 0x4c4b40

    cmp-long v2, v7, v14

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzql;->zzb:Lcom/google/android/gms/internal/ads/zzqk;

    .line 9
    invoke-interface {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzqk;->zzd(J)V

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzql;->zzn:J

    goto :goto_1

    .line 10
    :cond_3
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzql;->zzm:Ljava/lang/reflect/Method;

    .line 9
    :cond_4
    :goto_1
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzql;->zzp:J

    :cond_5
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zze:Lcom/google/android/gms/internal/ads/zzqj;

    .line 29
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v2, v11

    check-cast v2, Lcom/google/android/gms/internal/ads/zzqj;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzql;->zzh:F

    .line 12
    invoke-direct {v0, v12, v13}, Lcom/google/android/gms/internal/ads/zzql;->zzk(J)J

    move-result-wide v15

    .line 13
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzqj;->zza(JFJ)V

    .line 4
    :cond_6
    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzc()J

    move-result-wide v6

    div-long/2addr v6, v4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzql;->zze:Lcom/google/android/gms/internal/ads/zzqj;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzqj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqj;->zzb()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzql;->zzh:F

    .line 16
    invoke-virtual {v2, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzqj;->zze(JF)J

    move-result-wide v8

    goto :goto_3

    .line 17
    :cond_7
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzql;->zzk(J)J

    move-result-wide v8

    .line 18
    :goto_3
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v3, :cond_c

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqj;->zzc()Z

    move-result v1

    if-nez v1, :cond_9

    .line 19
    :cond_8
    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzql;->zzj(J)V

    :cond_9
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzA:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    sub-long v1, v6, v1

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzql;->zzz:J

    sub-long v10, v8, v10

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzql;->zzh:F

    .line 20
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzep;->zzv(JF)J

    move-result-wide v1

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzql;->zzz:J

    add-long/2addr v12, v1

    sub-long v14, v12, v8

    const-wide/16 v16, 0x0

    cmp-long v5, v10, v16

    .line 21
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    if-eqz v5, :cond_a

    const-wide/32 v14, 0xf4240

    cmp-long v5, v10, v14

    if-gez v5, :cond_a

    const-wide/16 v10, 0xa

    mul-long/2addr v1, v10

    const-wide/16 v10, 0x64

    div-long/2addr v1, v10

    sub-long v10, v12, v1

    add-long/2addr v12, v1

    .line 22
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v8, v1

    :cond_a
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zza:Z

    if-nez v1, :cond_b

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzi:Z

    if-nez v1, :cond_b

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzz:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    cmp-long v3, v8, v1

    if-lez v3, :cond_b

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzql;->zzi:Z

    sub-long v1, v8, v1

    .line 23
    sget-object v3, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzql;->zzh:F

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v1

    .line 24
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzep;->zzw(JF)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    .line 25
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zza()J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzep;->zzp(J)J

    move-result-wide v1

    sub-long/2addr v3, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzb:Lcom/google/android/gms/internal/ads/zzqk;

    .line 26
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqk;->zza(J)V

    :cond_b
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzql;->zzA:J

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzql;->zzz:J

    goto :goto_4

    :cond_c
    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    :goto_4
    return-wide v8

    .line 27
    :cond_d
    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzql;->zzj(J)V

    return-wide v8
.end method

.method public final zzc()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzep;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzv:J

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzm()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zze:Lcom/google/android/gms/internal/ads/zzqj;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzd()V

    return-void
.end method

.method public final zzd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzd:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzw:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzw:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzf(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzn()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzx:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzep;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzv:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzy:J

    return-void
.end method

.method public final zzg()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzl()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zze:Lcom/google/android/gms/internal/ads/zzqj;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzd()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzn()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzx:J

    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzql;->zzl()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zzd:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzql;->zze:Lcom/google/android/gms/internal/ads/zzqj;

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzdc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzql;->zzD:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method
