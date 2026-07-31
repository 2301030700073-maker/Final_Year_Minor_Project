.class public final Lcom/google/android/gms/internal/ads/zzfmh;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfmh;

.field private static volatile zzd:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzhxa;

.field private zzb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfmh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfmh;->zzc:Lcom/google/android/gms/internal/ads/zzfmh;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfmh;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmh;->zza:Lcom/google/android/gms/internal/ads/zzhxa;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfmg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmh;->zzc:Lcom/google/android/gms/internal/ads/zzfmh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfmg;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/ads/zzfmh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmh;->zzc:Lcom/google/android/gms/internal/ads/zzfmh;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzflb;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmh;->zza:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhxa;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbN(Lcom/google/android/gms/internal/ads/zzhxa;)Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmh;->zza:Lcom/google/android/gms/internal/ads/zzhxa;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmh;->zza:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhxa;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzc(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfmh;->zzb:J

    return-void
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfmh;->zzd:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzfmh;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfmh;->zzd:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzfmh;->zzc:Lcom/google/android/gms/internal/ads/zzfmh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzfmh;->zzd:Lcom/google/android/gms/internal/ads/zzhyh;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfmh;->zzc:Lcom/google/android/gms/internal/ads/zzfmh;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfmg;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfmg;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfmh;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfmh;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string p1, "zza"

    const-class p2, Lcom/google/android/gms/internal/ads/zzflb;

    const-string p3, "zzb"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfmh;->zzc:Lcom/google/android/gms/internal/ads/zzfmh;

    const-string p3, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzfmh;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
