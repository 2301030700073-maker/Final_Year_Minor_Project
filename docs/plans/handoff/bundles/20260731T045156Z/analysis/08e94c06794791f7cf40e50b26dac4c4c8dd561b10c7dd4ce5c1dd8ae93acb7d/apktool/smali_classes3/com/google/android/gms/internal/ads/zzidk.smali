.class public final Lcom/google/android/gms/internal/ads/zzidk;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzp:Lcom/google/android/gms/internal/ads/zzidk;

.field private static volatile zzu:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzhxa;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Z

.field private zzi:D

.field private zzj:Lcom/google/android/gms/internal/ads/zzhxa;

.field private zzk:I

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzidk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzidk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzidk;->zzp:Lcom/google/android/gms/internal/ads/zzidk;

    const-class v1, Lcom/google/android/gms/internal/ads/zzidk;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidk;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidk;->zzc:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzidk;->zzd:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzidk;->zze:Lcom/google/android/gms/internal/ads/zzhxa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidk;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidk;->zzg:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidk;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidk;->zzj:Lcom/google/android/gms/internal/ads/zzhxa;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzidk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzidk;->zzp:Lcom/google/android/gms/internal/ads/zzidk;

    return-object v0
.end method


# virtual methods
.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzidk;->zzu:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/ads/zzidk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzidk;->zzu:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzidk;->zzp:Lcom/google/android/gms/internal/ads/zzidk;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzidk;->zzu:Lcom/google/android/gms/internal/ads/zzhyh;

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
    sget-object v0, Lcom/google/android/gms/internal/ads/zzidk;->zzp:Lcom/google/android/gms/internal/ads/zzidk;

    return-object v0

    .line 5
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzidf;

    .line 6
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzidf;-><init>([B)V

    return-object v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzidk;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzidk;-><init>()V

    return-object v0

    .line 2
    :cond_6
    const-string v1, "zza"

    const-string v2, "zzb"

    const-string v3, "zzd"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidj;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    const-string v5, "zze"

    const-string v6, "zzf"

    const-string v7, "zzg"

    const-string v8, "zzh"

    const-string v9, "zzi"

    const-string v10, "zzj"

    const-class v11, Lcom/google/android/gms/internal/ads/zzidi;

    const-string v12, "zzc"

    const-string v13, "zzk"

    sget-object v14, Lcom/google/android/gms/internal/ads/zzidg;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    const-string v15, "zzl"

    const-string v16, "zzm"

    const-string v17, "zzn"

    const-string v18, "zzo"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzidk;->zzp:Lcom/google/android/gms/internal/ads/zzidk;

    const-string v2, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0002\u0003\u001a\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1007\u0005\u0007\u1000\u0006\u0008\u001b\t\u1008\u0001\n\u180c\u0007\u000b\u1007\u0008\u000c\u1007\t\r\u1007\n\u000e\u1007\u000b"

    .line 5
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzidk;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
