.class public final Lcom/google/android/gms/internal/ads/zzbdz$zzi;
.super Lcom/google/android/gms/internal/ads/zzhwo;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdz$zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzhwo<",
        "Lcom/google/android/gms/internal/ads/zzbdz$zzi;",
        "Lcom/google/android/gms/internal/ads/zzbdz$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbdz$zzj;"
    }
.end annotation


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field private static final zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

.field private static volatile zzm:Lcom/google/android/gms/internal/ads/zzhyh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzhyh<",
            "Lcom/google/android/gms/internal/ads/zzbdz$zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/ads/zzhxa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzhxa<",
            "Lcom/google/android/gms/internal/ads/zzbdz$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:I

.field private zzj:I

.field private zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzg:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzk:I

    return-void
.end method

.method public static zzC(Lcom/google/android/gms/internal/ads/zzbdz$zzi;)Lcom/google/android/gms/internal/ads/zzbdz$zzi$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbo(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi$zza;

    return-object p0
.end method

.method public static zzD()Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object v0
.end method

.method public static zzE()Lcom/google/android/gms/internal/ads/zzhyh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzhyh<",
            "Lcom/google/android/gms/internal/ads/zzbdz$zzi;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbd()Lcom/google/android/gms/internal/ads/zzhyh;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzU()Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object v0
.end method

.method private zzV(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzg:Ljava/lang/String;

    return-void
.end method

.method private zzW()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzD()Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzg:Ljava/lang/String;

    return-void
.end method

.method private zzX(Lcom/google/android/gms/internal/ads/zzhvi;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhvi;->zzw()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzg:Ljava/lang/String;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    return-void
.end method

.method private zzY()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhxa;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbN(Lcom/google/android/gms/internal/ads/zzhxa;)Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    :cond_0
    return-void
.end method

.method private zzZ(ILcom/google/android/gms/internal/ads/zzbdz$zzd;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhxa;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zzaa(Lcom/google/android/gms/internal/ads/zzbdz$zzd;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhxa;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private zzab(ILcom/google/android/gms/internal/ads/zzbdz$zzd;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhxa;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private zzac(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbdz$zzd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhur;->zzaW(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzad()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzbM()Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    return-void
.end method

.method private zzae(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzY()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhxa;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private zzaf(Lcom/google/android/gms/internal/ads/zzbdz$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzi:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    return-void
.end method

.method private zzag()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzi:I

    return-void
.end method

.method private zzah(Lcom/google/android/gms/internal/ads/zzbdz$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzj:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    return-void
.end method

.method private zzai()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzj:I

    return-void
.end method

.method private zzaj(Lcom/google/android/gms/internal/ads/zzbdz$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzk:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    return-void
.end method

.method private zzak()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzk:I

    return-void
.end method

.method public static zzj(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbR(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzk(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbQ(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbS(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbT(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzn([B)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbU(Lcom/google/android/gms/internal/ads/zzhwo;[B)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzo([BLcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbV(Lcom/google/android/gms/internal/ads/zzhwo;[BLcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzp(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbW(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzq(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbX(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzr(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzca(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzu(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzcb(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzv(Lcom/google/android/gms/internal/ads/zzhvn;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbY(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzy(Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzbdz$zzi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbZ(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p0
.end method

.method public static zzz()Lcom/google/android/gms/internal/ads/zzbdz$zzi$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdz$zzi$zza;

    return-object v0
.end method


# virtual methods
.method public zzA()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzB()Lcom/google/android/gms/internal/ads/zzbdz$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzk:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zzc(I)Lcom/google/android/gms/internal/ads/zzbdz$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zzc:Lcom/google/android/gms/internal/ads/zzbdz$zzq;

    :cond_0
    return-object v0
.end method

.method final synthetic zzF(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzV(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzG()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzW()V

    return-void
.end method

.method final synthetic zzH(Lcom/google/android/gms/internal/ads/zzhvi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzX(Lcom/google/android/gms/internal/ads/zzhvi;)V

    return-void
.end method

.method final synthetic zzI(ILcom/google/android/gms/internal/ads/zzbdz$zzd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzZ(ILcom/google/android/gms/internal/ads/zzbdz$zzd;)V

    return-void
.end method

.method final synthetic zzJ(Lcom/google/android/gms/internal/ads/zzbdz$zzd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzaa(Lcom/google/android/gms/internal/ads/zzbdz$zzd;)V

    return-void
.end method

.method final synthetic zzK(ILcom/google/android/gms/internal/ads/zzbdz$zzd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzab(ILcom/google/android/gms/internal/ads/zzbdz$zzd;)V

    return-void
.end method

.method final synthetic zzL(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzac(Ljava/lang/Iterable;)V

    return-void
.end method

.method final synthetic zzM()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzad()V

    return-void
.end method

.method final synthetic zzN(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzae(I)V

    return-void
.end method

.method final synthetic zzO(Lcom/google/android/gms/internal/ads/zzbdz$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzaf(Lcom/google/android/gms/internal/ads/zzbdz$zzq;)V

    return-void
.end method

.method final synthetic zzP()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzag()V

    return-void
.end method

.method final synthetic zzQ(Lcom/google/android/gms/internal/ads/zzbdz$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzah(Lcom/google/android/gms/internal/ads/zzbdz$zzq;)V

    return-void
.end method

.method final synthetic zzR()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzai()V

    return-void
.end method

.method final synthetic zzS(Lcom/google/android/gms/internal/ads/zzbdz$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzaj(Lcom/google/android/gms/internal/ads/zzbdz$zzq;)V

    return-void
.end method

.method final synthetic zzT()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzak()V

    return-void
.end method

.method public zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzhvi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzg:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhvi;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhvi;

    move-result-object v0

    return-object v0
.end method

.method public zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbdz$zze;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    return-object v0
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzm:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzm:Lcom/google/android/gms/internal/ads/zzhyh;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhwj;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhwj;-><init>(Lcom/google/android/gms/internal/ads/zzhwo;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzm:Lcom/google/android/gms/internal/ads/zzhyh;

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

    .line 9
    :cond_2
    throw p3

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdz$zzi$zza;

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbdz$zzi$zza;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;-><init>()V

    return-object p1

    .line 2
    :cond_6
    const-string v0, "zzf"

    const-string v1, "zzg"

    const-string v2, "zzh"

    const-class v3, Lcom/google/android/gms/internal/ads/zzbdz$zzd;

    const-string v4, "zzi"

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zze()Lcom/google/android/gms/internal/ads/zzhwu;

    move-result-object v5

    const-string v6, "zzj"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zze()Lcom/google/android/gms/internal/ads/zzhwu;

    move-result-object v7

    const-string v8, "zzk"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zze()Lcom/google/android/gms/internal/ads/zzhwu;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzl:Lcom/google/android/gms/internal/ads/zzbdz$zzi;

    const-string p3, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u180c\u0001\u0004\u180c\u0002\u0005\u180c\u0003"

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zze(I)Lcom/google/android/gms/internal/ads/zzbdz$zze;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhxa;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdz$zze;

    return-object p1
.end method

.method public zzg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbdz$zzd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    return-object v0
.end method

.method public zzh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhxa;->size()I

    move-result v0

    return v0
.end method

.method public zzi(I)Lcom/google/android/gms/internal/ads/zzbdz$zzd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzh:Lcom/google/android/gms/internal/ads/zzhxa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhxa;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbdz$zzd;

    return-object p1
.end method

.method public zzs()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzt()Lcom/google/android/gms/internal/ads/zzbdz$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzi:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zzc(I)Lcom/google/android/gms/internal/ads/zzbdz$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zzc:Lcom/google/android/gms/internal/ads/zzbdz$zzq;

    :cond_0
    return-object v0
.end method

.method public zzw()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzf:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzx()Lcom/google/android/gms/internal/ads/zzbdz$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdz$zzi;->zzj:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zzc(I)Lcom/google/android/gms/internal/ads/zzbdz$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdz$zzq;->zzc:Lcom/google/android/gms/internal/ads/zzbdz$zzq;

    :cond_0
    return-object v0
.end method
