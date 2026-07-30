.class public final Lcom/google/android/gms/internal/ads/zzids;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzn:Lcom/google/android/gms/internal/ads/zzids;

.field private static volatile zzo:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:I

.field private zze:I

.field private zzf:Z

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/zzidx;

.field private zzl:Ljava/lang/String;

.field private zzm:Lcom/google/android/gms/internal/ads/zzidr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzids;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzids;->zzn:Lcom/google/android/gms/internal/ads/zzids;

    const-class v1, Lcom/google/android/gms/internal/ads/zzids;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzids;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzids;->zzc:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzids;->zze:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzids;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzids;->zzl:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzids;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzids;->zzn:Lcom/google/android/gms/internal/ads/zzids;

    return-object v0
.end method


# virtual methods
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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzids;->zzo:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzids;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzids;->zzo:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzids;->zzn:Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzids;->zzo:Lcom/google/android/gms/internal/ads/zzhyh;

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

    .line 7
    :cond_2
    throw v2

    .line 2
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzids;->zzn:Lcom/google/android/gms/internal/ads/zzids;

    return-object v0

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzidp;

    .line 6
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidp;-><init>([B)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzids;-><init>()V

    return-object v0

    .line 2
    :cond_6
    const-string v1, "zza"

    const-string v2, "zzb"

    const-string v3, "zzc"

    const-string v4, "zzd"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzieb;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    const-string v6, "zze"

    sget-object v7, Lcom/google/android/gms/internal/ads/zziea;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    const-string v8, "zzf"

    const-string v9, "zzg"

    const-string v10, "zzh"

    const-string v11, "zzi"

    const-string v12, "zzj"

    sget-object v13, Lcom/google/android/gms/internal/ads/zzidt;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    const-string v14, "zzk"

    const-string v15, "zzl"

    const-string v16, "zzm"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzids;->zzn:Lcom/google/android/gms/internal/ads/zzids;

    const-string v2, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u1007\u0004\u0006\u1008\u0005\u0007\u1007\u0006\u0008\u1004\u0007\t\u180c\u0008\n\u1009\t\u000b\u1008\n\u000c\u1009\u000b"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzids;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
