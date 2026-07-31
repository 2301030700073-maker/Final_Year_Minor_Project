.class public final Lcom/google/android/gms/internal/ads/zzicl;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhya;


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/zzicl;

.field private static volatile zzm:Lcom/google/android/gms/internal/ads/zzhyh;


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/ads/zzibm;

.field private zze:Lcom/google/android/gms/internal/ads/zzibq;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzhww;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzhxa;

.field private zzk:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzicl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzicl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzicl;->zzl:Lcom/google/android/gms/internal/ads/zzicl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzicl;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzk:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzc:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzicl;->zzbC()Lcom/google/android/gms/internal/ads/zzhww;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzg:Lcom/google/android/gms/internal/ads/zzhww;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzh:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzj:Lcom/google/android/gms/internal/ads/zzhxa;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzick;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzicl;->zzl:Lcom/google/android/gms/internal/ads/zzicl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzick;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/ads/zzicl;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzicl;->zzl:Lcom/google/android/gms/internal/ads/zzicl;

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzj:Lcom/google/android/gms/internal/ads/zzhxa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhxa;->size()I

    move-result v0

    return v0
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwn;->ordinal()I

    move-result p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8
    throw p3

    .line 1
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzicl;->zzm:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzicl;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzicl;->zzm:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzicl;->zzl:Lcom/google/android/gms/internal/ads/zzicl;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzicl;->zzm:Lcom/google/android/gms/internal/ads/zzhyh;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzicl;->zzl:Lcom/google/android/gms/internal/ads/zzicl;

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzick;

    .line 6
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzick;-><init>([B)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzicl;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzicl;-><init>()V

    return-object p1

    .line 2
    :pswitch_4
    const-string v0, "zza"

    const-string v1, "zzb"

    const-string v2, "zzc"

    const-string v3, "zzd"

    const-string v4, "zze"

    const-string v5, "zzf"

    const-string v6, "zzg"

    const-string v7, "zzh"

    const-string v8, "zzi"

    sget-object v9, Lcom/google/android/gms/internal/ads/zzici;->zza:Lcom/google/android/gms/internal/ads/zzhwu;

    const-string v10, "zzj"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzicl;->zzl:Lcom/google/android/gms/internal/ads/zzicl;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u180c\u0006\t\u001a"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzicl;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

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
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzk:B

    return-object p3

    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzk:B

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

.method final synthetic zzg(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzb:I

    return-void
.end method

.method final synthetic zzh(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzc:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzibm;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzd:Lcom/google/android/gms/internal/ads/zzibm;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zza:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zza:I

    return-void
.end method

.method final synthetic zzj(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzj:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhxa;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbN(Lcom/google/android/gms/internal/ads/zzhxa;)Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzj:Lcom/google/android/gms/internal/ads/zzhxa;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzj:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhxa;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzl(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zzi:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zza:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzicl;->zza:I

    return-void
.end method
