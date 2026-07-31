.class public final Lcom/google/android/gms/internal/ads/zzatg;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/ads/zzatg;

.field private static volatile zzo:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzhxa;

.field private zzc:J

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:J

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zzn:Lcom/google/android/gms/internal/ads/zzatg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzatg;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatg;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzb:Lcom/google/android/gms/internal/ads/zzhxa;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzk:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzatf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zzn:Lcom/google/android/gms/internal/ads/zzatg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzatf;

    return-object v0
.end method

.method static synthetic zzo()Lcom/google/android/gms/internal/ads/zzatg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zzn:Lcom/google/android/gms/internal/ads/zzatg;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzaty;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzb:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhxa;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbN(Lcom/google/android/gms/internal/ads/zzhxa;)Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzb:Lcom/google/android/gms/internal/ads/zzhxa;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzb:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhxa;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzc()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatg;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzb:Lcom/google/android/gms/internal/ads/zzhxa;

    return-void
.end method

.method final synthetic zzd(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzc:J

    return-void
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhwn;->ordinal()I

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zzo:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzatg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zzo:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzatg;->zzn:Lcom/google/android/gms/internal/ads/zzatg;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zzo:Lcom/google/android/gms/internal/ads/zzhyh;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatg;->zzn:Lcom/google/android/gms/internal/ads/zzatg;

    return-object v0

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatf;

    .line 6
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzatf;-><init>([B)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatg;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatg;-><init>()V

    return-object v0

    .line 2
    :cond_6
    const-string v1, "zza"

    const-string v2, "zzb"

    const-class v3, Lcom/google/android/gms/internal/ads/zzaty;

    const-string v4, "zzc"

    const-string v5, "zzd"

    const-string v6, "zze"

    const-string v7, "zzf"

    const-string v8, "zzg"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzatw;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    const-string v10, "zzh"

    const-string v11, "zzi"

    const-string v12, "zzj"

    const-string v13, "zzk"

    const-string v14, "zzl"

    const-string v15, "zzm"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzatg;->zzn:Lcom/google/android/gms/internal/ads/zzatg;

    const-string v2, "\u0004\u000c\u0000\u0001\u0008?\u000c\u0000\u0001\u0000\u0008\u001b\u0015\u1002\u0000\u0016\u1008\u0001\u0017\u1008\u0002\u0018\u1008\u0003\u0019\u180c\u0004(\u1008\u0005)\u1002\u0006<\u1008\u0007=\u1008\u0008>\u1002\t?\u1002\n"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzatg;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zze(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzg(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzh(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzf:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzi(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzh:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzj(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzi:J

    return-void
.end method

.method final synthetic zzk(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzj:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzl(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzk:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzm(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzl:J

    return-void
.end method

.method final synthetic zzn(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzm:J

    return-void
.end method

.method final synthetic zzp(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatg;->zza:I

    return-void
.end method
