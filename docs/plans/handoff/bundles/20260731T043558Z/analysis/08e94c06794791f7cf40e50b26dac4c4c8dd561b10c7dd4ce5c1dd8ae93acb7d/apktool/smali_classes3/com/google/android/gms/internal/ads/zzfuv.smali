.class public final Lcom/google/android/gms/internal/ads/zzfuv;
.super Lcom/google/android/gms/internal/ads/zzfuj;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgmv<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzgmv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzgmv<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/ads/zzful;

.field private zzd:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfuu;->zza:Lcom/google/android/gms/internal/ads/zzfuu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfum;->zza:Lcom/google/android/gms/internal/ads/zzfum;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuv;-><init>(Lcom/google/android/gms/internal/ads/zzgmv;Lcom/google/android/gms/internal/ads/zzgmv;Lcom/google/android/gms/internal/ads/zzful;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgmv;Lcom/google/android/gms/internal/ads/zzgmv;Lcom/google/android/gms/internal/ads/zzful;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgmv<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgmv<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzful;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfuj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zza:Lcom/google/android/gms/internal/ads/zzgmv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzb:Lcom/google/android/gms/internal/ads/zzgmv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzc:Lcom/google/android/gms/internal/ads/zzful;

    return-void
.end method

.method private static synthetic zzA()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic zzB()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static zzi(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuk;->zzb()V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method static synthetic zzk()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuv;->zzB()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzl()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuv;->zzA()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzm(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzz(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzn(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzy(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzo(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzx(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzp(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzw(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzq(Landroid/net/Network;Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfuv;->zzv(Landroid/net/Network;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzr(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzu(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzs(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzt(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzu(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzv(Landroid/net/Network;Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzw(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzx(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzy(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfue;->zzb:I

    .line 2
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzz(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzd:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzi(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public zzf(Ljava/net/URL;I)Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfun;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfun;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zza:Lcom/google/android/gms/internal/ads/zzgmv;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfuo;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfuo;-><init>(Ljava/net/URL;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzc:Lcom/google/android/gms/internal/ads/zzful;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzj()Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public zzg(Landroid/net/Network;Ljava/net/URL;II)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfup;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzfup;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zza:Lcom/google/android/gms/internal/ads/zzgmv;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfuq;

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/ads/zzfuq;-><init>(I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzb:Lcom/google/android/gms/internal/ads/zzgmv;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfur;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzfur;-><init>(Landroid/net/Network;Ljava/net/URL;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzc:Lcom/google/android/gms/internal/ads/zzful;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzj()Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public zzh(Lcom/google/android/gms/internal/ads/zzful;II)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfus;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfus;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zza:Lcom/google/android/gms/internal/ads/zzgmv;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfut;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfut;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzb:Lcom/google/android/gms/internal/ads/zzgmv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzc:Lcom/google/android/gms/internal/ads/zzful;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfuv;->zzj()Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public zzj()Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zza:Lcom/google/android/gms/internal/ads/zzgmv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzb:Lcom/google/android/gms/internal/ads/zzgmv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgmv;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuk;->zza(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzc:Lcom/google/android/gms/internal/ads/zzful;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzful;->zza()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuv;->zzd:Ljava/net/HttpURLConnection;

    return-object v0
.end method
