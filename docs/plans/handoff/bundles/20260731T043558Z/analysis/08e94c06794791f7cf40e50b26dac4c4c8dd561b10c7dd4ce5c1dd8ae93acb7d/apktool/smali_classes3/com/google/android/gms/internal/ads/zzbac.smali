.class public final Lcom/google/android/gms/internal/ads/zzbac;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zze:Lcom/google/android/gms/internal/ads/zzbac;

.field private static volatile zzf:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzbai;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhvi;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhvi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbac;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbac;->zze:Lcom/google/android/gms/internal/ads/zzbac;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbac;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvi;->zzb:Lcom/google/android/gms/internal/ads/zzhvi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzc:Lcom/google/android/gms/internal/ads/zzhvi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzd:Lcom/google/android/gms/internal/ads/zzhvi;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzbac;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbac;->zze:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbT(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbac;

    return-object p0
.end method

.method public static zze([BLcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzbac;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbac;->zze:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbV(Lcom/google/android/gms/internal/ads/zzhwo;[BLcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbac;

    return-object p0
.end method

.method static synthetic zzg()Lcom/google/android/gms/internal/ads/zzbac;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbac;->zze:Lcom/google/android/gms/internal/ads/zzbac;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbai;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzb:Lcom/google/android/gms/internal/ads/zzbai;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbai;->zzj()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhvi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzc:Lcom/google/android/gms/internal/ads/zzhvi;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhvi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzd:Lcom/google/android/gms/internal/ads/zzhvi;

    return-object v0
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbac;->zzf:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbac;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbac;->zzf:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbac;->zze:Lcom/google/android/gms/internal/ads/zzbac;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbac;->zzf:Lcom/google/android/gms/internal/ads/zzhyh;

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

    .line 8
    :cond_2
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbac;->zze:Lcom/google/android/gms/internal/ads/zzbac;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbab;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbab;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbac;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbac;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string p1, "zza"

    const-string p2, "zzb"

    const-string p3, "zzc"

    const-string v0, "zzd"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbac;->zze:Lcom/google/android/gms/internal/ads/zzbac;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbac;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
