.class public final Lcom/google/android/gms/internal/ads/zzatm;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzo:Lcom/google/android/gms/internal/ads/zzatm;

.field private static volatile zzp:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;

.field private zzc:J

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:J

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Lcom/google/android/gms/internal/ads/zzhxa;

.field private zzn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzo:Lcom/google/android/gms/internal/ads/zzatm;

    const-class v1, Lcom/google/android/gms/internal/ads/zzatm;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzl:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzatm;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzm:Lcom/google/android/gms/internal/ads/zzhxa;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzati;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzo:Lcom/google/android/gms/internal/ads/zzatm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzati;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/ads/zzatm;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzo:Lcom/google/android/gms/internal/ads/zzatm;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzb:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzc(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzc:J

    return-void
.end method

.method final synthetic zzd(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzd:Ljava/lang/String;

    return-void
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzp:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzatm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzp:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzatm;->zzo:Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzp:Lcom/google/android/gms/internal/ads/zzhyh;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzatm;->zzo:Lcom/google/android/gms/internal/ads/zzatm;

    return-object v0

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzati;

    .line 6
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzati;-><init>([B)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzatm;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzatm;-><init>()V

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

    const-class v14, Lcom/google/android/gms/internal/ads/zzatk;

    const-string v15, "zzn"

    sget-object v16, Lcom/google/android/gms/internal/ads/zzatl;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzatm;->zzo:Lcom/google/android/gms/internal/ads/zzatm;

    const-string v2, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1008\u0007\t\u1002\u0008\n\u1008\t\u000b\u1008\n\u000c\u001b\r\u180c\u000b"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzatm;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzg(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzf:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzh(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzl:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzj(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zzn:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatm;->zza:I

    return-void
.end method
