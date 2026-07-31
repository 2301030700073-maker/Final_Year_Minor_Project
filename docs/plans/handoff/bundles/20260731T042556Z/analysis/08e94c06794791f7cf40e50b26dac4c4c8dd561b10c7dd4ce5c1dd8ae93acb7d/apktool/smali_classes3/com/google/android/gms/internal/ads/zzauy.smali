.class public final Lcom/google/android/gms/internal/ads/zzauy;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/ads/zzauy;

.field private static volatile zzk:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzauy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzauy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauy;->zzj:Lcom/google/android/gms/internal/ads/zzauy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzauy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzi:J

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzaux;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzauy;->zzj:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaux;

    return-object v0
.end method

.method static synthetic zzh()Lcom/google/android/gms/internal/ads/zzauy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzauy;->zzj:Lcom/google/android/gms/internal/ads/zzauy;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzb:J

    return-void
.end method

.method final synthetic zzc(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzd:J

    return-void
.end method

.method final synthetic zzd(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzauy;->zze:J

    return-void
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwn;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzauy;->zzk:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzauy;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauy;->zzk:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzauy;->zzj:Lcom/google/android/gms/internal/ads/zzauy;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzauy;->zzk:Lcom/google/android/gms/internal/ads/zzhyh;

    .line 4
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 7
    :cond_2
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzauy;->zzj:Lcom/google/android/gms/internal/ads/zzauy;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzaux;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzauy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzauy;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string v0, "zza"

    const-string v1, "zzb"

    const-string v2, "zzc"

    const-string v3, "zzd"

    const-string v4, "zze"

    const-string v5, "zzf"

    const-string v6, "zzg"

    const-string v7, "zzh"

    const-string v8, "zzi"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzauy;->zzj:Lcom/google/android/gms/internal/ads/zzauy;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1002\u0007"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzauy;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzf:J

    return-void
.end method

.method final synthetic zzg(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzauy;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzauy;->zzg:J

    return-void
.end method
