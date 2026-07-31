.class public final Lcom/google/android/gms/internal/ads/zzand;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamq;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeg;

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaem;

.field private zzh:D

.field private zzi:D

.field private zzj:Z

.field private zzk:Z

.field private zzl:I

.field private zzm:I

.field private zzn:Z

.field private zzo:I

.field private zzp:I

.field private final zzq:Lcom/google/android/gms/internal/ads/zzane;

.field private zzr:I

.field private zzs:I

.field private zzt:I

.field private zzu:J

.field private zzv:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zza:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zze:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    const/16 v0, 0xf

    new-array v0, v0, [B

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzef;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzef;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzc:Lcom/google/android/gms/internal/ads/zzef;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzeg;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzd:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzane;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzq:Lcom/google/android/gms/internal/ads/zzane;

    const p1, -0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzr:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzs:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzu:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzk:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzn:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzh:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzi:D

    return-void
.end method

.method private static final zzf(Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeg;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v3

    .line 2
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzm([BII)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzeg;->zzk(I)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzm:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzp:I

    const v1, -0x7fffffff

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzr:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzs:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzt:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzu:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzj:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzk:Z

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzh:D

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzi:D

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzaoe;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoe;->zzb()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzu(II)Lcom/google/android/gms/internal/ads/zzaem;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    return-void
.end method

.method public final zzc(JI)V
    .locals 2

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzl:I

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzk:Z

    if-nez p3, :cond_1

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzp:I

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzn:Z

    if-nez p3, :cond_1

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzj:Z

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzj:Z

    long-to-double p1, p1

    if-eqz p3, :cond_2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzi:D

    return-void

    :cond_2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzh:D

    :cond_3
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzeg;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzat;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v0

    if-lez v0, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zze:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const/4 v3, 0x2

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzq:Lcom/google/android/gms/internal/ads/zzane;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzane;->zza:I

    const/16 v5, 0x11

    if-eq v4, v1, :cond_1

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzand;->zzd:Lcom/google/android/gms/internal/ads/zzeg;

    .line 6
    invoke-static {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzand;->zzf(Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeg;Z)V

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzane;->zzc:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzand;->zzo:I

    sub-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzand;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    .line 8
    invoke-interface {v6, p1, v4}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzand;->zzo:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzand;->zzo:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzane;->zzc:I

    if-ne v6, v4, :cond_0

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzane;->zza:I

    if-ne v4, v1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzd:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v2

    .line 9
    array-length v4, v2

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzef;-><init>([BI)V

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzang;->zzb(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzanf;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzanf;->zzb:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzr:I

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzanf;->zzc:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzs:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzu:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzane;->zzb:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzand;->zzu:J

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzanf;->zza:I

    const/4 v3, -0x1

    const-string v4, "mhm1"

    if-eq v0, v3, :cond_3

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, ".%02X"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzanf;->zzd:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzep;->zzb:[B

    .line 13
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzgpe;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v2

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzt;

    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzf:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zza:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v3, "audio/mhm1"

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzr:I

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 19
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    .line 22
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzaem;->zzu(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzv:Z

    goto :goto_3

    :cond_6
    if-ne v4, v5, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzd:Lcom/google/android/gms/internal/ads/zzeg;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v0

    .line 23
    array-length v5, v0

    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/ads/zzef;-><init>([BI)V

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzef;->zzi()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/16 v0, 0xd

    .line 26
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzj(I)I

    move-result v2

    :cond_7
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzt:I

    goto :goto_3

    :cond_8
    if-ne v4, v3, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzv:Z

    if-eqz v0, :cond_9

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzk:Z

    move v6, v1

    goto :goto_1

    :cond_9
    move v6, v2

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzs:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzt:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzr:I

    int-to-double v3, v3

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzand;->zzh:D

    .line 27
    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzand;->zzj:Z

    if-eqz v5, :cond_a

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzj:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzi:D

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzh:D

    goto :goto_2

    :cond_a
    int-to-double v9, v0

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    div-double/2addr v9, v3

    .line 28
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzh:D

    add-double/2addr v3, v9

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzh:D

    .line 27
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzp:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v4, v7

    move v7, v0

    move v8, v9

    move-object v9, v10

    .line 28
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaem;->zzx(JIIILcom/google/android/gms/internal/ads/zzael;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzv:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzt:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzp:I

    .line 22
    :cond_b
    :goto_3
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zze:I

    goto/16 :goto_0

    .line 5
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzb:Lcom/google/android/gms/internal/ads/zzeg;

    .line 29
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzand;->zzf(Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeg;Z)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzand;->zzc:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzi()[B

    move-result-object v6

    .line 31
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzb([BI)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzand;->zzq:Lcom/google/android/gms/internal/ads/zzane;

    .line 32
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzang;->zza(Lcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzane;)Z

    move-result v4

    if-eqz v4, :cond_d

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzo:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzand;->zzp:I

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzane;->zzc:I

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzand;->zzp:I

    .line 34
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzg:Lcom/google/android/gms/internal/ads/zzaem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v4

    .line 35
    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzaem;->zzz(Lcom/google/android/gms/internal/ads/zzeg;I)V

    .line 36
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzd:Lcom/google/android/gms/internal/ads/zzeg;

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzane;->zzc:I

    .line 37
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzeg;->zza(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzn:Z

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzand;->zze:I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v3

    add-int/2addr v3, v1

    .line 33
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzeg;->zzf(I)V

    :cond_e
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzn:Z

    goto/16 :goto_0

    .line 28
    :cond_f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzl:I

    and-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zze()I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    goto/16 :goto_0

    :cond_10
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_12

    .line 3
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzd()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzm:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzm:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzs()I

    move-result v3

    or-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzm:I

    const v3, 0xffffff

    and-int/2addr v0, v3

    const v3, 0xc001a5

    if-ne v0, v3, :cond_11

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzg()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzh(I)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzm:I

    :cond_12
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zze:I

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    return-void
.end method
