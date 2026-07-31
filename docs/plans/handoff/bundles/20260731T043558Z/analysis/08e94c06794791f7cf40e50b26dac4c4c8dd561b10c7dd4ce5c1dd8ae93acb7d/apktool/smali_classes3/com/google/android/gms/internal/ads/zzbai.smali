.class public final Lcom/google/android/gms/internal/ads/zzbai;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/ads/zzbai;

.field private static volatile zzh:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:J

.field private zze:J

.field private zzf:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbai;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbai;->zzg:Lcom/google/android/gms/internal/ads/zzbai;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbai;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzbai;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbai;->zzg:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbS(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbai;

    return-object p0
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzbai;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbai;->zzg:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbT(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbai;

    return-object p0
.end method

.method public static zzi()Lcom/google/android/gms/internal/ads/zzbah;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbai;->zzg:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbah;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/ads/zzbai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbai;->zzg:Lcom/google/android/gms/internal/ads/zzbai;

    return-object v0
.end method

.method static synthetic zzp()Lcom/google/android/gms/internal/ads/zzbai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbai;->zzg:Lcom/google/android/gms/internal/ads/zzbai;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzd:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zze:J

    return-wide v0
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbai;->zzh:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbai;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbai;->zzh:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbai;->zzg:Lcom/google/android/gms/internal/ads/zzbai;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbai;->zzh:Lcom/google/android/gms/internal/ads/zzhyh;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbai;->zzg:Lcom/google/android/gms/internal/ads/zzbai;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbah;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbah;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbai;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbai;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string v0, "zza"

    const-string v1, "zzb"

    const-string v2, "zzc"

    const-string v3, "zzd"

    const-string v4, "zze"

    const-string v5, "zzf"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbai;->zzg:Lcom/google/android/gms/internal/ads/zzbai;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1003\u0002\u0004\u1003\u0003\u0005\u1003\u0004"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbai;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzf:J

    return-wide v0
.end method

.method final synthetic zzk(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzb:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzl(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzc:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzm(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzd:J

    return-void
.end method

.method final synthetic zzn(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zze:J

    return-void
.end method

.method final synthetic zzo(J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zza:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzf:J

    return-void
.end method
