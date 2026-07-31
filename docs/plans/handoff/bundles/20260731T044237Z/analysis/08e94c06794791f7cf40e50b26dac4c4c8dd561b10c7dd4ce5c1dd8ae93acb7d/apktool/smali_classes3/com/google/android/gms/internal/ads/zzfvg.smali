.class public final Lcom/google/android/gms/internal/ads/zzfvg;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/ads/zzfvg;

.field private static volatile zzo:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;

.field private zzc:J

.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/ads/zzhwz;

.field private zzl:Lcom/google/android/gms/internal/ads/zzhwz;

.field private zzm:Lcom/google/android/gms/internal/ads/zzhwz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfvg;->zzn:Lcom/google/android/gms/internal/ads/zzfvg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfvg;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzb:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvg;->zzbE()Lcom/google/android/gms/internal/ads/zzhwz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzk:Lcom/google/android/gms/internal/ads/zzhwz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvg;->zzbE()Lcom/google/android/gms/internal/ads/zzhwz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzl:Lcom/google/android/gms/internal/ads/zzhwz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvg;->zzbE()Lcom/google/android/gms/internal/ads/zzhwz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzm:Lcom/google/android/gms/internal/ads/zzhwz;

    return-void
.end method

.method static synthetic zzD()Lcom/google/android/gms/internal/ads/zzfvg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvg;->zzn:Lcom/google/android/gms/internal/ads/zzfvg;

    return-object v0
.end method

.method public static zzp()Lcom/google/android/gms/internal/ads/zzfvg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvg;->zzn:Lcom/google/android/gms/internal/ads/zzfvg;

    return-object v0
.end method


# virtual methods
.method final synthetic zzA(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzl:Lcom/google/android/gms/internal/ads/zzhwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhwz;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbF(Lcom/google/android/gms/internal/ads/zzhwz;)Lcom/google/android/gms/internal/ads/zzhwz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzl:Lcom/google/android/gms/internal/ads/zzhwz;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzl:Lcom/google/android/gms/internal/ads/zzhwz;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwz;->zzd(J)V

    return-void
.end method

.method final synthetic zzB(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzm:Lcom/google/android/gms/internal/ads/zzhwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhwz;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbF(Lcom/google/android/gms/internal/ads/zzhwz;)Lcom/google/android/gms/internal/ads/zzhwz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzm:Lcom/google/android/gms/internal/ads/zzhwz;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzm:Lcom/google/android/gms/internal/ads/zzhwz;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwz;->zzd(J)V

    return-void
.end method

.method final synthetic zzC()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvg;->zzbE()Lcom/google/android/gms/internal/ads/zzhwz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzm:Lcom/google/android/gms/internal/ads/zzhwz;

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzc:J

    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzd:I

    return v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zze:Z

    return v0
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwn;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvg;->zzo:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzfvg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvg;->zzo:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfvg;->zzn:Lcom/google/android/gms/internal/ads/zzfvg;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfvg;->zzo:Lcom/google/android/gms/internal/ads/zzhyh;

    .line 4
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    .line 8
    :cond_2
    throw v2

    .line 2
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvg;->zzn:Lcom/google/android/gms/internal/ads/zzfvg;

    return-object v0

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvf;

    .line 6
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzfvf;-><init>([B)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvg;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfvg;-><init>()V

    return-object v0

    .line 2
    :cond_6
    const-string v1, "zza"

    const-string v2, "zzb"

    const-string v3, "zzc"

    const-string v4, "zzd"

    const-string v5, "zze"

    const-string v6, "zzf"

    const-string v7, "zzg"

    const-string v8, "zzh"

    const-string v9, "zzi"

    const-string v10, "zzj"

    const-string v11, "zzk"

    const-string v12, "zzl"

    const-string v13, "zzm"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfvg;->zzn:Lcom/google/android/gms/internal/ads/zzfvg;

    const-string v2, "\u0004\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0003\u0000\u0001\u0208\u0002\u1002\u0000\u0003\u1004\u0001\u0004\u1007\u0002\u0005\u1007\u0003\u0006\u1002\u0004\u0007\u0002\u0008\u1002\u0005\t\u1002\u0006\n%\u000b%\u000c%"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfvg;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzf:Z

    return v0
.end method

.method public final zzg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzg:J

    return-wide v0
.end method

.method public final zzh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzh:J

    return-wide v0
.end method

.method public final zzi()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzi:J

    return-wide v0
.end method

.method public final zzj()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzk:Lcom/google/android/gms/internal/ads/zzhwz;

    return-object v0
.end method

.method public final zzl()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzk:Lcom/google/android/gms/internal/ads/zzhwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhwz;->size()I

    move-result v0

    return v0
.end method

.method public final zzm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzl:Lcom/google/android/gms/internal/ads/zzhwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhwz;->size()I

    move-result v0

    return v0
.end method

.method public final zzn()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzm:Lcom/google/android/gms/internal/ads/zzhwz;

    return-object v0
.end method

.method public final zzo()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzm:Lcom/google/android/gms/internal/ads/zzhwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhwz;->size()I

    move-result v0

    return v0
.end method

.method final synthetic zzq(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzb:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzr(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzc:J

    return-void
.end method

.method final synthetic zzs(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzd:I

    return-void
.end method

.method final synthetic zzt(Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zze:Z

    return-void
.end method

.method final synthetic zzu(Z)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzf:Z

    return-void
.end method

.method final synthetic zzv(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzg:J

    return-void
.end method

.method final synthetic zzw(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzh:J

    return-void
.end method

.method final synthetic zzx(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzi:J

    return-void
.end method

.method final synthetic zzy(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzj:J

    return-void
.end method

.method final synthetic zzz(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzk:Lcom/google/android/gms/internal/ads/zzhwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhwz;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbF(Lcom/google/android/gms/internal/ads/zzhwz;)Lcom/google/android/gms/internal/ads/zzhwz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzk:Lcom/google/android/gms/internal/ads/zzhwz;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvg;->zzk:Lcom/google/android/gms/internal/ads/zzhwz;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwz;->zzd(J)V

    return-void
.end method
