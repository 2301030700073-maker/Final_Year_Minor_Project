.class public final Lcom/google/android/gms/internal/ads/zzibq;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/ads/zzibq;

.field private static volatile zzj:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzibp;

.field private zzc:Lcom/google/android/gms/internal/ads/zzhxa;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhvi;

.field private zze:Lcom/google/android/gms/internal/ads/zzhvi;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzhvi;

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzibq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzibq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zzi:Lcom/google/android/gms/internal/ads/zzibq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzibq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzibq;->zzh:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibq;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzibq;->zzc:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvi;->zzb:Lcom/google/android/gms/internal/ads/zzhvi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzibq;->zzd:Lcom/google/android/gms/internal/ads/zzhvi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzibq;->zze:Lcom/google/android/gms/internal/ads/zzhvi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzibq;->zzg:Lcom/google/android/gms/internal/ads/zzhvi;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzibq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibq;->zzi:Lcom/google/android/gms/internal/ads/zzibq;

    return-object v0
.end method


# virtual methods
.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwn;->ordinal()I

    move-result p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8
    throw p3

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzibq;->zzj:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzibq;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzibq;->zzj:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzibq;->zzi:Lcom/google/android/gms/internal/ads/zzibq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzibq;->zzj:Lcom/google/android/gms/internal/ads/zzhyh;

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

    .line 2
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzibq;->zzi:Lcom/google/android/gms/internal/ads/zzibq;

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibn;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibn;-><init>([B)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibq;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzibq;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string v0, "zza"

    const-string v1, "zzb"

    const-string v2, "zzc"

    const-class v3, Lcom/google/android/gms/internal/ads/zzibi;

    const-string v4, "zzd"

    const-string v5, "zze"

    const-string v6, "zzf"

    const-string v7, "zzg"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzibq;->zzi:Lcom/google/android/gms/internal/ads/zzibq;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001\u1009\u0000\u0002\u041b\u0003\u100a\u0001\u0004\u100a\u0002\u0005\u1004\u0003\u0006\u100a\u0004"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzibq;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 4
    :goto_1
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzibq;->zzh:B

    return-object p3

    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzibq;->zzh:B

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
