.class public final Lcom/google/android/gms/internal/ads/zzavq;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/zzavq;

.field private static volatile zzg:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzhxa;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhvi;

.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzf:Lcom/google/android/gms/internal/ads/zzavq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzavq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavq;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvi;->zzb:Lcom/google/android/gms/internal/ads/zzhvi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzc:Lcom/google/android/gms/internal/ads/zzhvi;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zze:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzavp;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzf:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavp;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/ads/zzavq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavq;->zzf:Lcom/google/android/gms/internal/ads/zzavq;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzhvi;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Lcom/google/android/gms/internal/ads/zzhxa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhxa;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbN(Lcom/google/android/gms/internal/ads/zzhxa;)Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Lcom/google/android/gms/internal/ads/zzhxa;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzb:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhxa;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzhvi;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavq;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzc:Lcom/google/android/gms/internal/ads/zzhvi;

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzavq;->zzg:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzavq;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavq;->zzg:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzavq;->zzf:Lcom/google/android/gms/internal/ads/zzavq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzavq;->zzg:Lcom/google/android/gms/internal/ads/zzhyh;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavq;->zzf:Lcom/google/android/gms/internal/ads/zzavq;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavp;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzavp;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavq;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzavq;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string v0, "zza"

    const-string v1, "zzb"

    const-string v2, "zzc"

    const-string v3, "zzd"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzavk;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    const-string v5, "zze"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzavg;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzavq;->zzf:Lcom/google/android/gms/internal/ads/zzavq;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u180c\u0001\u0004\u180c\u0002"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzavq;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(I)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zza:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zza:I

    return-void
.end method

.method final synthetic zzg(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zza:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavq;->zza:I

    return-void
.end method
