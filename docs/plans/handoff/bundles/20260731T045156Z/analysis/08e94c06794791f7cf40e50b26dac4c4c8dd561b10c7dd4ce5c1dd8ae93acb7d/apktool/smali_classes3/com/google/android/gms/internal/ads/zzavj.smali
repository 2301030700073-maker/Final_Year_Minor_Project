.class public final Lcom/google/android/gms/internal/ads/zzavj;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/zzavj;

.field private static volatile zzi:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:J

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavj;->zzh:Lcom/google/android/gms/internal/ads/zzavj;

    const-class v1, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zzc:Ljava/lang/String;

    const-string v0, "D"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzavi;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavj;->zzh:Lcom/google/android/gms/internal/ads/zzavj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavi;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/ads/zzavj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavj;->zzh:Lcom/google/android/gms/internal/ads/zzavj;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->zzb:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzc(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->zzc:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzd(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->zzd:J

    return-void
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzavj;->zzi:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzavj;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavj;->zzi:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzavj;->zzh:Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzavj;->zzi:Lcom/google/android/gms/internal/ads/zzhyh;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavj;->zzh:Lcom/google/android/gms/internal/ads/zzavj;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavi;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzavi;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzavj;-><init>()V

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

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzavj;->zzh:Lcom/google/android/gms/internal/ads/zzavj;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1008\u0003\u0005\u1002\u0004\u0006\u1002\u0005"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzavj;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->zze:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzg(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->zzf:J

    return-void
.end method

.method final synthetic zzh(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavj;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzavj;->zzg:J

    return-void
.end method
