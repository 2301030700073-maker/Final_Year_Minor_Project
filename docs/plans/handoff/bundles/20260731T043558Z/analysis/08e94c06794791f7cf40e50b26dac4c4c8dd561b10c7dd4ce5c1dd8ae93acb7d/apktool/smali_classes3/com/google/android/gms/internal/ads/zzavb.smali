.class public final Lcom/google/android/gms/internal/ads/zzavb;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/zzavb;

.field private static volatile zzm:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:J

.field private zzc:I

.field private zzd:Z

.field private zze:Lcom/google/android/gms/internal/ads/zzhww;

.field private zzf:J

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzhxa;

.field private zzi:I

.field private zzj:I

.field private zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavb;->zzl:Lcom/google/android/gms/internal/ads/zzavb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzavb;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavb;->zzbC()Lcom/google/android/gms/internal/ads/zzhww;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavb;->zze:Lcom/google/android/gms/internal/ads/zzhww;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavb;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavb;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzavb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavb;->zzl:Lcom/google/android/gms/internal/ads/zzavb;

    return-object v0
.end method


# virtual methods
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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavb;->zzm:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzavb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavb;->zzm:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzavb;->zzl:Lcom/google/android/gms/internal/ads/zzavb;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavb;->zzm:Lcom/google/android/gms/internal/ads/zzhyh;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavb;->zzl:Lcom/google/android/gms/internal/ads/zzavb;

    return-object v0

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzava;

    .line 6
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzava;-><init>([B)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavb;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavb;-><init>()V

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

    const-class v9, Lcom/google/android/gms/internal/ads/zzavf;

    const-string v10, "zzi"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzglj;->zza()Lcom/google/android/gms/internal/ads/zzhwu;

    move-result-object v11

    const-string v12, "zzj"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziae;->zza()Lcom/google/android/gms/internal/ads/zzhwu;

    move-result-object v13

    const-string v14, "zzk"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziac;->zza()Lcom/google/android/gms/internal/ads/zzhwu;

    move-result-object v15

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzavb;->zzl:Lcom/google/android/gms/internal/ads/zzavb;

    const-string v2, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0002\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1007\u0002\u0004\u0016\u0005\u1003\u0003\u0006\u1007\u0004\u0007\u001b\u0008\u180c\u0005\t\u180c\u0006\n\u180c\u0007"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzavb;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
