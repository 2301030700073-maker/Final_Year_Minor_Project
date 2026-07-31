.class public abstract Lcom/google/android/gms/internal/ads/zzte;
.super Lcom/google/android/gms/internal/ads/zzhr;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:Ljava/util/ArrayDeque;

.field private zzB:Lcom/google/android/gms/internal/ads/zztb;

.field private zzC:Lcom/google/android/gms/internal/ads/zzsy;

.field private zzD:I

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:Z

.field private zzI:Z

.field private zzJ:J

.field private zzK:Z

.field private zzL:J

.field private zzM:I

.field private zzN:I

.field private zzO:Ljava/nio/ByteBuffer;

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:Z

.field private zzT:Z

.field private zzU:Z

.field private zzV:I

.field private zzW:I

.field private zzX:I

.field private zzY:Z

.field private zzZ:Z

.field protected zza:Lcom/google/android/gms/internal/ads/zzhs;

.field private zzaa:Z

.field private zzab:J

.field private zzac:Z

.field private zzad:Z

.field private zzae:Z

.field private zzaf:Lcom/google/android/gms/internal/ads/zztd;

.field private zzag:J

.field private zzah:Z

.field private zzai:Z

.field private zzaj:Z

.field private zzak:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzst;

.field private final zzd:Lcom/google/android/gms/internal/ads/zztg;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzsm;

.field private final zzj:Landroid/media/MediaCodec$BufferInfo;

.field private final zzk:Ljava/util/ArrayDeque;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzrm;

.field private zzm:Lcom/google/android/gms/internal/ads/zzv;

.field private zzn:Lcom/google/android/gms/internal/ads/zzv;

.field private zzo:Lcom/google/android/gms/internal/ads/zzrs;

.field private zzp:Lcom/google/android/gms/internal/ads/zzrs;

.field private zzq:Lcom/google/android/gms/internal/ads/zzlm;

.field private zzr:Landroid/media/MediaCrypto;

.field private zzs:J

.field private zzt:F

.field private zzu:F

.field private zzv:Lcom/google/android/gms/internal/ads/zzsv;

.field private zzw:Lcom/google/android/gms/internal/ads/zzv;

.field private zzx:Landroid/media/MediaFormat;

.field private zzy:Z

.field private zzz:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzte;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzst;Lcom/google/android/gms/internal/ads/zztg;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzc:Lcom/google/android/gms/internal/ads/zzst;

    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/ads/zztg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzd:Lcom/google/android/gms/internal/ads/zztg;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:F

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhh;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhh;

    .line 5
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhh;

    const/4 p3, 0x2

    .line 6
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzsm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzi:Lcom/google/android/gms/internal/ads/zzsm;

    .line 8
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzj:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzt:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzu:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:J

    new-instance p5, Ljava/util/ArrayDeque;

    .line 9
    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Ljava/util/ArrayDeque;

    sget-object p5, Lcom/google/android/gms/internal/ads/zztd;->zza:Lcom/google/android/gms/internal/ads/zztd;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhh;->zzj(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsm;->zzc:Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzl:Lcom/google/android/gms/internal/ads/zzrm;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzz:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzD:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzM:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzN:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzL:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzag:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzW:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaj:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzak:J

    return-void
.end method

.method private final zzao()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzR:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzat()V

    return-void
.end method

.method private final zzat()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaw()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzT:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzi:Lcom/google/android/gms/internal/ads/zzsm;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzS:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzl:Lcom/google/android/gms/internal/ads/zzrm;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrm;->zzb()V

    return-void
.end method

.method private final zzau()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaK()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaI()V

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzav()V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaj:Z

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzav()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsv;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaN()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaN()V

    .line 4
    throw v0
.end method

.method private final zzaw()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zztd;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzag:J

    return-void
.end method

.method private final zzax(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzH()Lcom/google/android/gms/internal/ads/zzkj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:Lcom/google/android/gms/internal/ads/zzhh;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhr;->zzO(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhh;I)I

    move-result p1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzte;->zzam(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzht;

    return v3

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhc;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzac:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbl()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzay(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzL()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected static zzbd(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzN:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzbf()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzN:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbg()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzM:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzbh()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzN:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzO:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzbi(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zze()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzu:F

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzI()[Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzai(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzz:F

    cmpl-float v2, v0, p1

    if-eqz v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbk()V

    const/4 p1, 0x0

    return p1

    :cond_1
    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 4
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzsv;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzsv;->zzo(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzz:F

    :cond_3
    :goto_0
    return v1
.end method

.method private final zzbj()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzW:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbo()V

    :goto_0
    return v1
.end method

.method private final zzbk()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzW:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaI()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaA()V

    return-void
.end method

.method private final zzbl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzad:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzar()V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaI()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaA()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzav()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbo()V

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzav()V

    return-void
.end method

.method private final zzbm(Lcom/google/android/gms/internal/ads/zztd;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zztd;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzah:Z

    :cond_0
    return-void
.end method

.method private final zzbn()Lcom/google/android/gms/internal/ads/zztd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zztd;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    return-object v0
.end method

.method private final zzbo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzrs;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzrs;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzW:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    return-void
.end method

.method private final zzbp(JJ)Z
    .locals 4

    cmp-long v0, p3, p1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzadz;->zzf(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method protected zzA(JZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzac:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzad:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzR:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzat()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaJ()Z

    .line 1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztd;->zze:Lcom/google/android/gms/internal/ads/zzel;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzel;->zzc()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzae:Z

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzel;->zzb()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method protected zzD()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zztd;->zza:Lcom/google/android/gms/internal/ads/zztd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzte;->zzbm(Lcom/google/android/gms/internal/ads/zztd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzR:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzao()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzau()Z

    return-void
.end method

.method protected zzE()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzao()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzrs;

    return-void

    :catchall_0
    move-exception v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzrs;

    .line 3
    throw v1
.end method

.method public final zzT(JJ)J
    .locals 6

    .line 1
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzK:Z

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzte;->zzah(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public zzV(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzt:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzu:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzte;->zzbi(Lcom/google/android/gms/internal/ads/zzv;)Z

    return-void
.end method

.method public zzX(JJ)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 1
    :try_start_0
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzad:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_20

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzar()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    move v1, v13

    move v3, v14

    :goto_0
    move-object v4, v15

    goto/16 :goto_2c

    :catch_1
    move-exception v0

    move-object v1, v0

    move v3, v14

    :goto_1
    move-object v4, v15

    goto/16 :goto_32

    :cond_0
    :try_start_2
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_20

    const/4 v11, 0x2

    if-nez v1, :cond_2

    .line 2
    :try_start_3
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzte;->zzax(I)Z

    move-result v1
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaA()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzR:Z
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_20

    const/4 v10, 0x0

    if-eqz v1, :cond_1a

    :try_start_5
    const-string v1, "bypassRender"

    .line 4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_3
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzad:Z

    xor-int/2addr v1, v13

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget-object v11, v15, Lcom/google/android/gms/internal/ads/zzte;->zzi:Lcom/google/android/gms/internal/ads/zzsm;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsm;->zzp()Z

    move-result v1
    :try_end_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_c

    if-eqz v1, :cond_5

    :try_start_6
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzsm;->zzc:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzte;->zzN:I

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsm;->zzo()I

    move-result v16

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzsm;->zze:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzG()J

    move-result-wide v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsm;->zzn()J

    move-result-wide v12

    .line 6
    invoke-direct {v15, v1, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zzte;->zzbp(JJ)Z

    move-result v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzhc;->zzb()Z

    move-result v19

    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v12, :cond_4

    .line 7
    move-object v1, v12

    check-cast v1, Lcom/google/android/gms/internal/ads/zzv;
    :try_end_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v20, v4

    move-wide/from16 v4, p3

    move/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v18, v12

    move-wide/from16 v11, v20

    move/from16 v14, v19

    move-object/from16 v15, v18

    .line 8
    :try_start_7
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzte;->zzaq(JJLcom/google/android/gms/internal/ads/zzsv;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzsm;->zzn()J

    move-result-wide v1
    :try_end_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v15, p0

    .line 9
    :try_start_8
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzaV(J)V

    .line 10
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V

    const/4 v14, 0x0

    goto :goto_9

    :cond_3
    move-object/from16 v15, p0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7

    :cond_4
    move-object v14, v10

    .line 41
    throw v14
    :try_end_8
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    :goto_4
    move-object v2, v0

    move-object v4, v15

    :goto_5
    const/4 v1, 0x1

    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_2c

    :catch_5
    move-exception v0

    :goto_7
    move-object v1, v0

    move-object v4, v15

    :goto_8
    const/4 v3, 0x0

    goto/16 :goto_32

    :cond_5
    move-object v14, v10

    move-object/from16 v16, v11

    .line 10
    :goto_9
    :try_start_9
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzac:Z
    :try_end_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_a

    if-eqz v1, :cond_6

    const/4 v13, 0x1

    :try_start_a
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzte;->zzad:Z
    :try_end_a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6

    const/4 v12, 0x0

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object v2, v0

    move v1, v13

    move-object v4, v15

    goto :goto_6

    :cond_6
    const/4 v13, 0x1

    .line 131
    :try_start_b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzS:Z

    if-eqz v1, :cond_7

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    move-object/from16 v2, v16

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzsm;->zzq(Lcom/google/android/gms/internal/ads/zzhh;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V
    :try_end_b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_9

    const/4 v12, 0x0

    :try_start_c
    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzte;->zzS:Z

    goto :goto_a

    :cond_7
    move-object/from16 v2, v16

    const/4 v12, 0x0

    :goto_a
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzT:Z

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsm;->zzp()Z

    move-result v1

    if-nez v1, :cond_8

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzao()V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzte;->zzT:Z

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaA()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzR:Z

    if-eqz v1, :cond_19

    goto :goto_c

    :cond_8
    :goto_b
    move-object v10, v14

    move v14, v12

    goto/16 :goto_3

    :cond_9
    :goto_c
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzac:Z

    xor-int/2addr v1, v13

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzH()Lcom/google/android/gms/internal/ads/zzkj;

    move-result-object v1

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzte;->zzh:Lcom/google/android/gms/internal/ads/zzhh;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V

    .line 17
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V

    .line 18
    invoke-virtual {v15, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzhr;->zzO(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhh;I)I

    move-result v4

    const/4 v10, -0x5

    if-eq v4, v10, :cond_16

    const/4 v5, -0x4

    if-eq v4, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzdb()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbn()Lcom/google/android/gms/internal/ads/zztd;

    move-result-object v1

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zztd;->zzf:J

    goto/16 :goto_f

    .line 38
    :cond_b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhc;->zzb()Z

    move-result v4

    if-eqz v4, :cond_c

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzte;->zzac:Z

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbn()Lcom/google/android/gms/internal/ads/zztd;

    move-result-object v1

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zztd;->zzf:J

    goto/16 :goto_f

    :cond_c
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    .line 19
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzdb()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhc;->zzd()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 20
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbn()Lcom/google/android/gms/internal/ads/zztd;

    move-result-object v4

    iget-wide v5, v15, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/zztd;->zzf:J

    :cond_e
    iget-boolean v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzae:Z
    :try_end_c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    const-string v5, "audio/opus"

    if-eqz v4, :cond_11

    :try_start_d
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v4, :cond_10

    .line 21
    move-object v6, v4

    check-cast v6, Lcom/google/android/gms/internal/ads/zzv;

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    .line 22
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    .line 23
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    .line 24
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    .line 25
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzadz;->zze([B)I

    move-result v4

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzH(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    :cond_f
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    .line 27
    invoke-virtual {v15, v4, v14}, Lcom/google/android/gms/internal/ads/zzte;->zzan(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzte;->zzae:Z

    goto :goto_d

    .line 39
    :cond_10
    throw v14

    .line 28
    :cond_11
    :goto_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhh;->zzl()V

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v4, :cond_13

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    .line 29
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhc;->zze()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzhh;->zza:Lcom/google/android/gms/internal/ads/zzv;

    .line 30
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzte;->zzas(Lcom/google/android/gms/internal/ads/zzhh;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzG()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzadz;->zzf(JJ)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzl:Lcom/google/android/gms/internal/ads/zzrm;

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    .line 31
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzrm;->zza(Lcom/google/android/gms/internal/ads/zzhh;Ljava/util/List;)V

    :cond_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsm;->zzp()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_e

    .line 34
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzG()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsm;->zzn()J

    move-result-wide v6

    .line 32
    invoke-direct {v15, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzte;->zzbp(JJ)Z

    move-result v6

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    .line 33
    invoke-direct {v15, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzte;->zzbp(JJ)Z

    move-result v4

    if-ne v6, v4, :cond_15

    .line 34
    :goto_e
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzsm;->zzq(Lcom/google/android/gms/internal/ads/zzhh;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_15
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzte;->zzS:Z

    goto :goto_f

    .line 37
    :cond_16
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzam(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzht;

    .line 36
    :cond_17
    :goto_f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsm;->zzp()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhh;->zzl()V

    :cond_18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsm;->zzp()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzac:Z

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzT:Z

    if-eqz v1, :cond_19

    goto/16 :goto_b

    .line 40
    :cond_19
    :goto_10
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7

    move v3, v12

    move v1, v13

    move-object v4, v15

    goto/16 :goto_29

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    goto :goto_12

    :catch_9
    move-exception v0

    const/4 v12, 0x0

    goto :goto_11

    :catch_a
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_11

    :catch_b
    move-exception v0

    const/4 v12, 0x0

    goto :goto_12

    :catch_c
    move-exception v0

    move v12, v14

    :goto_11
    move-object v2, v0

    move v3, v12

    move v1, v13

    goto/16 :goto_0

    :catch_d
    move-exception v0

    move v12, v14

    :goto_12
    move-object v1, v0

    move v3, v12

    goto/16 :goto_1

    :cond_1a
    move v12, v14

    move-object v14, v10

    const/4 v10, -0x5

    .line 37
    :try_start_e
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;
    :try_end_e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_e} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1e

    if-eqz v1, :cond_52

    .line 42
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzL()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v8

    const-string v1, "drainAndFeed"

    .line 43
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_13
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-eqz v6, :cond_51

    .line 44
    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsv;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbf()Z

    move-result v1
    :try_end_f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1a

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_28

    :try_start_10
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 45
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zzsv;->zzf(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v4

    if-gez v4, :cond_21

    const/4 v1, -0x2

    if-ne v4, v1, :cond_1d

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzte;->zzaa:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-eqz v1, :cond_1c

    .line 65
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsv;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzsv;->zzg()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzte;->zzD:I

    if-eqz v2, :cond_1b

    const-string v2, "width"

    .line 66
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1b

    const-string v2, "height"

    .line 67
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1b

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzte;->zzH:Z

    goto :goto_15

    .line 106
    :cond_1b
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzx:Landroid/media/MediaFormat;

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzte;->zzy:Z

    goto :goto_15

    .line 73
    :cond_1c
    throw v14

    .line 106
    :cond_1d
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzI:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzac:Z

    if-nez v1, :cond_1e

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzW:I

    if-ne v1, v11, :cond_1f

    .line 74
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbl()V

    :cond_1f
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzJ:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_20

    const-wide/16 v1, 0x64

    add-long/2addr v4, v1

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzL()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zza()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-gez v1, :cond_20

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbl()V

    :cond_20
    :goto_14
    move-wide v1, v8

    move-object/from16 v17, v14

    move-object v4, v15

    goto/16 :goto_20

    .line 46
    :cond_21
    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/zzte;->zzak:J

    sub-long/2addr v10, v2

    iput-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzte;->zzH:Z

    if-eqz v2, :cond_22

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzte;->zzH:Z

    .line 64
    invoke-interface {v6, v4, v12}, Lcom/google/android/gms/internal/ads/zzsv;->zzc(IZ)V

    :goto_15
    move-wide v1, v8

    move-object/from16 v17, v14

    move-object v4, v15

    goto/16 :goto_1c

    .line 47
    :cond_22
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_23

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_23

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbl()V

    goto :goto_14

    :cond_23
    iput v4, v15, Lcom/google/android/gms/internal/ads/zzte;->zzN:I

    .line 48
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/zzsv;->zzi(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/ads/zzte;->zzO:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_24

    .line 49
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzte;->zzO:Ljava/nio/ByteBuffer;

    .line 50
    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 51
    :cond_24
    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    .line 52
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zztd;->zze:Lcom/google/android/gms/internal/ads/zzel;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzel;->zze(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzv;

    if-nez v1, :cond_25

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzte;->zzah:Z

    if-eqz v2, :cond_25

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzte;->zzx:Landroid/media/MediaFormat;

    if-eqz v2, :cond_25

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    .line 53
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zztd;->zze:Lcom/google/android/gms/internal/ads/zzel;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzel;->zzd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzv;

    :cond_25
    if-eqz v1, :cond_26

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_16

    .line 69
    :cond_26
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzy:Z

    if-eqz v1, :cond_28

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v1, :cond_28

    .line 53
    :goto_16
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v1, :cond_27

    .line 54
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzte;->zzx:Landroid/media/MediaFormat;

    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzan(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzte;->zzy:Z

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzte;->zzah:Z

    goto :goto_17

    .line 71
    :cond_27
    throw v14
    :try_end_10
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_7

    .line 54
    :cond_28
    :goto_17
    :try_start_11
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzaj:Z
    :try_end_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_11 .. :try_end_11} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1a

    if-nez v1, :cond_2a

    :try_start_12
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzG()J

    move-result-wide v3
    :try_end_12
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_7

    cmp-long v1, v1, v3

    if-gez v1, :cond_29

    goto :goto_18

    :cond_29
    move v1, v12

    goto :goto_19

    :cond_2a
    :goto_18
    move v1, v13

    :goto_19
    :try_start_13
    iput-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzP:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    .line 56
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zztd;->zzf:J
    :try_end_13
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_13 .. :try_end_13} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1a

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2b

    :try_start_14
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzte;->zzj:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_7

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2b

    move v1, v13

    goto :goto_1a

    :cond_2b
    move v1, v12

    :goto_1a
    :try_start_15
    iput-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzQ:Z

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzte;->zzO:Ljava/nio/ByteBuffer;

    iget v10, v15, Lcom/google/android/gms/internal/ads/zzte;->zzN:I

    iget-object v11, v15, Lcom/google/android/gms/internal/ads/zzte;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 57
    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v2, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v5, v15, Lcom/google/android/gms/internal/ads/zzte;->zzP:Z

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzte;->zzQ:Z

    iget-object v14, v15, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v14, :cond_50

    .line 58
    move-object/from16 v17, v14

    check-cast v17, Lcom/google/android/gms/internal/ads/zzv;
    :try_end_15
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_15 .. :try_end_15} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_1a

    const/16 v17, 0x1

    move/from16 v18, v1

    move-object/from16 v1, p0

    move-wide/from16 v19, v2

    move-wide/from16 v2, p1

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v4, p3

    move-wide/from16 v23, v8

    move v8, v10

    move/from16 v9, v21

    move/from16 v10, v17

    move-object/from16 v25, v11

    move-wide/from16 v11, v19

    move/from16 v13, v22

    move-object/from16 v16, v14

    const/16 v17, 0x0

    move/from16 v14, v18

    move-object/from16 v15, v16

    .line 59
    :try_start_16
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzte;->zzaq(JJLcom/google/android/gms/internal/ads/zzsv;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z

    move-result v1
    :try_end_16
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_16 .. :try_end_16} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_17

    if-eqz v1, :cond_30

    move-object/from16 v1, v25

    .line 60
    :try_start_17
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_17
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_10

    move-object/from16 v4, p0

    :try_start_18
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzte;->zzaV(J)V

    .line 61
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2c

    const/4 v14, 0x1

    goto :goto_1b

    :cond_2c
    const/4 v14, 0x0

    :goto_1b
    if-nez v14, :cond_2d

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Z

    if-eqz v1, :cond_2d

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzte;->zzQ:Z

    if-eqz v1, :cond_2d

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzL()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zza()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzte;->zzJ:J

    .line 63
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbh()V

    if-eqz v14, :cond_2e

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbl()V

    goto :goto_1f

    :cond_2e
    move-wide/from16 v1, v23

    .line 68
    :goto_1c
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzay(J)Z

    move-result v3
    :try_end_18
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_e

    if-nez v3, :cond_2f

    goto :goto_20

    :cond_2f
    move-wide v8, v1

    move-object v15, v4

    move-object/from16 v14, v17

    const/4 v10, -0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_13

    :catch_e
    move-exception v0

    :goto_1d
    move-object v2, v0

    goto/16 :goto_5

    :catch_f
    move-exception v0

    :goto_1e
    move-object v1, v0

    goto/16 :goto_8

    :catch_10
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1d

    :catch_11
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1e

    :cond_30
    move-object/from16 v4, p0

    :goto_1f
    move-wide/from16 v1, v23

    :goto_20
    :try_start_19
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-eqz v5, :cond_4e

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzW:I

    const/4 v12, 0x2

    if-eq v3, v12, :cond_4e

    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzac:Z

    if-eqz v3, :cond_31

    goto/16 :goto_26

    .line 77
    :cond_31
    move-object v3, v5

    check-cast v3, Lcom/google/android/gms/internal/ads/zzsv;

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzM:I
    :try_end_19
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_19 .. :try_end_19} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_15

    if-gez v3, :cond_32

    .line 78
    :try_start_1a
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzsv;->zze()I

    move-result v3

    iput v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzM:I

    if-ltz v3, :cond_4e

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 79
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzsv;->zzh(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v6, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V
    :try_end_1a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_e

    :cond_32
    :try_start_1b
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzW:I
    :try_end_1b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_1b} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_15

    const/4 v13, 0x1

    if-ne v3, v13, :cond_34

    :try_start_1c
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzte;->zzI:Z

    if-nez v1, :cond_33

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzM:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 113
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsv;->zza(IIIJI)V

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbg()V

    :cond_33
    iput v12, v4, Lcom/google/android/gms/internal/ads/zzte;->zzW:I
    :try_end_1c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_12

    goto/16 :goto_26

    :catch_12
    move-exception v0

    move-object v2, v0

    move v1, v13

    goto/16 :goto_6

    :cond_34
    :try_start_1d
    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzG:Z
    :try_end_1d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1d .. :try_end_1d} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_1d} :catch_15

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    :try_start_1e
    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzG:Z

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_35

    .line 81
    move-object v7, v6

    check-cast v7, Ljava/nio/ByteBuffer;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzte;->zzb:[B

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzM:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x26

    .line 82
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsv;->zza(IIIJI)V

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbg()V

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzte;->zzY:Z

    goto/16 :goto_25

    .line 115
    :cond_35
    throw v17
    :try_end_1e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1e .. :try_end_1e} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_13

    :catch_13
    move-exception v0

    move-object v2, v0

    move v1, v13

    goto/16 :goto_2c

    :cond_36
    const/4 v3, 0x0

    .line 112
    :try_start_1f
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzV:I
    :try_end_1f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1f .. :try_end_1f} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_1f} :catch_19

    if-ne v6, v13, :cond_3a

    move v14, v3

    :goto_21
    :try_start_20
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v6, :cond_39

    .line 84
    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_38

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    .line 85
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_37

    .line 86
    move-object v8, v7

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_21

    .line 116
    :cond_37
    throw v17

    .line 86
    :cond_38
    iput v12, v4, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    goto :goto_22

    .line 127
    :cond_39
    throw v17
    :try_end_20
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_20 .. :try_end_20} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_20} :catch_13

    .line 86
    :cond_3a
    :goto_22
    :try_start_21
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_4d

    .line 87
    move-object v8, v7

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzH()Lcom/google/android/gms/internal/ads/zzkj;

    move-result-object v8
    :try_end_21
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_21 .. :try_end_21} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_21} :catch_19

    .line 89
    :try_start_22
    invoke-virtual {v4, v8, v6, v3}, Lcom/google/android/gms/internal/ads/zzhr;->zzO(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhh;I)I

    move-result v6
    :try_end_22
    .catch Lcom/google/android/gms/internal/ads/zzhg; {:try_start_22 .. :try_end_22} :catch_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_22 .. :try_end_22} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_22} :catch_19

    const/4 v9, -0x3

    if-ne v6, v9, :cond_3b

    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzdb()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbn()Lcom/google/android/gms/internal/ads/zztd;

    move-result-object v1

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zztd;->zzf:J

    goto/16 :goto_27

    :cond_3b
    const/4 v14, -0x5

    if-ne v6, v14, :cond_3d

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    if-ne v5, v12, :cond_3c

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    .line 93
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    .line 94
    :cond_3c
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzte;->zzam(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzht;
    :try_end_23
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_23 .. :try_end_23} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_23} :catch_13

    goto/16 :goto_25

    :cond_3d
    :try_start_24
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzhh;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhc;->zzb()Z

    move-result v8
    :try_end_24
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_24 .. :try_end_24} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_24} :catch_19

    if-eqz v8, :cond_40

    .line 118
    :try_start_25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbn()Lcom/google/android/gms/internal/ads/zztd;

    move-result-object v1

    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zztd;->zzf:J

    iget v1, v4, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    if-ne v1, v12, :cond_3e

    .line 119
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    :cond_3e
    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzte;->zzac:Z

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzte;->zzY:Z

    if-nez v1, :cond_3f

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbl()V

    goto/16 :goto_27

    :cond_3f
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzte;->zzI:Z

    if-nez v1, :cond_4f

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zzM:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 121
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsv;->zza(IIIJI)V

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbg()V
    :try_end_25
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_25 .. :try_end_25} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_25} :catch_13

    goto/16 :goto_27

    :cond_40
    :try_start_26
    iget-boolean v8, v4, Lcom/google/android/gms/internal/ads/zzte;->zzY:Z
    :try_end_26
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_26 .. :try_end_26} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_26} :catch_19

    if-nez v8, :cond_41

    :try_start_27
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhc;->zzc()Z

    move-result v8

    if-nez v8, :cond_41

    .line 111
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhc;->zza()V

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    if-ne v5, v12, :cond_4c

    iput v13, v4, Lcom/google/android/gms/internal/ads/zzte;->zzV:I
    :try_end_27
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_27 .. :try_end_27} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_27} :catch_13

    goto/16 :goto_25

    .line 95
    :cond_41
    :try_start_28
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzte;->zzaT(Lcom/google/android/gms/internal/ads/zzhh;)Z

    move-result v8

    if-nez v8, :cond_4c

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzk()Z

    move-result v8
    :try_end_28
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_28 .. :try_end_28} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_28} :catch_19

    if-eqz v8, :cond_42

    :try_start_29
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzhh;->zzb:Lcom/google/android/gms/internal/ads/zzhe;

    .line 96
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzhe;->zzc(I)V
    :try_end_29
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_29 .. :try_end_29} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_29} :catch_13

    :cond_42
    :try_start_2a
    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/zzhh;->zze:J

    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/zzte;->zzae:Z
    :try_end_2a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2a .. :try_end_2a} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_2a} :catch_19

    if-eqz v7, :cond_44

    .line 97
    :try_start_2b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbn()Lcom/google/android/gms/internal/ads/zztd;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zztd;->zze:Lcom/google/android/gms/internal/ads/zzel;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v11, :cond_43

    move-object v15, v11

    check-cast v15, Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v7, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzel;->zza(JLjava/lang/Object;)V

    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzae:Z

    goto :goto_23

    .line 124
    :cond_43
    throw v17
    :try_end_2b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2b .. :try_end_2b} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2b} :catch_13

    .line 97
    :cond_44
    :goto_23
    :try_start_2c
    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    .line 98
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzdb()Z

    move-result v7
    :try_end_2c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2c .. :try_end_2c} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_2c} :catch_19

    if-nez v7, :cond_45

    :try_start_2d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhc;->zzd()Z

    move-result v7
    :try_end_2d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2d .. :try_end_2d} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_2d} :catch_13

    if-eqz v7, :cond_46

    .line 99
    :cond_45
    :try_start_2e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbn()Lcom/google/android/gms/internal/ads/zztd;

    move-result-object v7

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iput-wide v14, v7, Lcom/google/android/gms/internal/ads/zztd;->zzf:J

    .line 100
    :cond_46
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhh;->zzl()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhc;->zze()Z

    move-result v7
    :try_end_2e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2e .. :try_end_2e} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_2e} :catch_19

    if-eqz v7, :cond_47

    .line 101
    :try_start_2f
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzte;->zzas(Lcom/google/android/gms/internal/ads/zzhh;)V
    :try_end_2f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2f .. :try_end_2f} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_2f} :catch_13

    :cond_47
    :try_start_30
    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/zzte;->zzaj:Z

    if-eqz v7, :cond_49

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    cmp-long v7, v9, v14

    if-gtz v7, :cond_48

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzte;->zzak:J

    sub-long/2addr v14, v9

    const-wide/16 v18, 0x1

    add-long v14, v14, v18

    add-long/2addr v12, v14

    iput-wide v12, v4, Lcom/google/android/gms/internal/ads/zzte;->zzak:J

    :cond_48
    iput-wide v9, v4, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzaj:Z

    .line 102
    :cond_49
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzte;->zzaR(Lcom/google/android/gms/internal/ads/zzhh;)V

    .line 103
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzte;->zzaS(Lcom/google/android/gms/internal/ads/zzhh;)I

    move-result v11

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzte;->zzak:J

    add-long/2addr v9, v12

    if-eqz v8, :cond_4a

    .line 107
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsv;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzte;->zzM:I

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzhh;->zzb:Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v12, 0x0

    move v6, v7

    move v7, v12

    .line 108
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsv;->zzb(IILcom/google/android/gms/internal/ads/zzhe;JI)V

    goto :goto_24

    .line 104
    :cond_4a
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsv;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzte;->zzM:I

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_4b

    .line 105
    move-object v8, v6

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v12, 0x0

    move v6, v7

    move v7, v12

    .line 106
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzsv;->zza(IIIJI)V

    .line 109
    :goto_24
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbg()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzte;->zzY:Z

    iput v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 110
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzhs;->zzc:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/google/android/gms/internal/ads/zzhs;->zzc:I

    goto :goto_25

    .line 123
    :cond_4b
    throw v17

    :catch_14
    move-exception v0

    move-object v5, v0

    .line 90
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzte;->zzal(Ljava/lang/Exception;)V

    .line 91
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzte;->zzax(I)Z

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzav()V

    .line 112
    :cond_4c
    :goto_25
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzay(J)Z

    move-result v5

    if-eqz v5, :cond_4f

    goto/16 :goto_20

    .line 126
    :cond_4d
    throw v17

    :cond_4e
    :goto_26
    const/4 v3, 0x0

    .line 125
    :cond_4f
    :goto_27
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v1, 0x1

    goto :goto_29

    :catch_15
    move-exception v0

    const/4 v3, 0x0

    goto :goto_28

    :catch_16
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_31

    :catch_17
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto :goto_28

    :catch_18
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_31

    :cond_50
    move v3, v12

    move-object v4, v15

    const/16 v17, 0x0

    .line 70
    throw v17

    :cond_51
    move v3, v12

    move-object/from16 v17, v14

    move-object v4, v15

    .line 128
    throw v17
    :try_end_30
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_30 .. :try_end_30} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_30} :catch_19

    :catch_19
    move-exception v0

    goto :goto_28

    :catch_1a
    move-exception v0

    move v3, v12

    move-object v4, v15

    :goto_28
    move-object v2, v0

    const/4 v1, 0x1

    goto :goto_2c

    :cond_52
    move v3, v12

    move-object v4, v15

    .line 69
    :try_start_31
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 129
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzhr;->zzP(J)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzd:I
    :try_end_31
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_31 .. :try_end_31} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_31} :catch_1c

    const/4 v1, 0x1

    .line 130
    :try_start_32
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzax(I)Z

    .line 40
    :goto_29
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 131
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhs;->zza()V
    :try_end_32
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_32 .. :try_end_32} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_32} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    goto :goto_2b

    :catch_1c
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2b

    :catch_1d
    move-exception v0

    goto/16 :goto_31

    :catch_1e
    move-exception v0

    move v3, v12

    move v1, v13

    goto :goto_2a

    :catch_1f
    move-exception v0

    move v3, v12

    goto :goto_30

    :catch_20
    move-exception v0

    move v1, v13

    move v3, v14

    :goto_2a
    move-object v4, v15

    :goto_2b
    move-object v2, v0

    .line 132
    :goto_2c
    instance-of v5, v2, Landroid/media/MediaCodec$CodecException;

    if-eqz v5, :cond_53

    goto :goto_2d

    .line 133
    :cond_53
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 134
    array-length v7, v6

    if-lez v7, :cond_57

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.MediaCodec"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 136
    :goto_2d
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzal(Ljava/lang/Exception;)V

    if-eqz v5, :cond_54

    .line 137
    move-object v5, v2

    check-cast v5, Landroid/media/MediaCodec$CodecException;

    .line 138
    invoke-virtual {v5}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v5

    if-eqz v5, :cond_54

    move v14, v1

    goto :goto_2e

    :cond_54
    move v14, v3

    :goto_2e
    if-eqz v14, :cond_55

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaI()V

    :cond_55
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzte;->zzC:Lcom/google/android/gms/internal/ads/zzsy;

    .line 140
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzaP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsy;)Lcom/google/android/gms/internal/ads/zzsx;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzsx;->zza:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_56

    const/16 v2, 0xfa6

    goto :goto_2f

    :cond_56
    const/16 v2, 0xfa3

    :goto_2f
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    .line 141
    invoke-virtual {v4, v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/zzhr;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v1

    throw v1

    .line 135
    :cond_57
    throw v2

    :catch_21
    move-exception v0

    move v3, v14

    :goto_30
    move-object v4, v15

    :goto_31
    move-object v1, v0

    .line 130
    :goto_32
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    .line 142
    invoke-virtual {v1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzep;->zzF(I)I

    move-result v5

    .line 143
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzhr;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v1

    .line 144
    throw v1
.end method

.method public zzY()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zzZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzad:Z

    return v0
.end method

.method protected final zzaA()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    const-string v9, "MediaCodecRenderer"

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-nez v0, :cond_1a

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzR:Z

    if-nez v0, :cond_1a

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v10, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzte;->zzaB(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzao()V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzi:Lcom/google/android/gms/internal/ads/zzsm;

    .line 7
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzsm;->zzm(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzi:Lcom/google/android/gms/internal/ads/zzsm;

    const/16 v1, 0x20

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsm;->zzm(I)V

    .line 7
    :goto_0
    iput-boolean v11, v8, Lcom/google/android/gms/internal/ads/zzte;->zzR:Z

    return-void

    .line 6
    :cond_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzrs;

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgmd;->zzh(Z)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzrs;

    .line 9
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzsb;->zza:Z

    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzrs;->zza()Lcom/google/android/gms/internal/ads/zzrr;

    :cond_3
    const/4 v12, 0x0

    :try_start_0
    const-string v13, "Failed to initialize decoder: "

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v15, 0x0

    if-eqz v14, :cond_19

    .line 11
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzA:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zztb; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzd:Lcom/google/android/gms/internal/ads/zztg;

    .line 12
    invoke-virtual {v8, v0, v14, v12}, Lcom/google/android/gms/internal/ads/zzte;->zzad(Lcom/google/android/gms/internal/ads/zztg;Lcom/google/android/gms/internal/ads/zzv;Z)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzte;->zzA:Ljava/util/ArrayDeque;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzte;->zzA:Ljava/util/ArrayDeque;

    .line 16
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v15, v8, Lcom/google/android/gms/internal/ads/zzte;->zzB:Lcom/google/android/gms/internal/ads/zztb;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzti; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zztb; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    :catch_0
    move-exception v0

    .line 80
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zztb;

    const v2, -0xc34e

    .line 17
    invoke-direct {v1, v14, v0, v12, v2}, Lcom/google/android/gms/internal/ads/zztb;-><init>(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 16
    :cond_5
    :goto_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzA:Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 19
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzte;->zzA:Ljava/util/ArrayDeque;

    if-eqz v6, :cond_17

    .line 20
    move-object v0, v6

    check-cast v0, Ljava/util/ArrayDeque;

    :goto_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-nez v0, :cond_16

    .line 21
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsy;

    if-eqz v7, :cond_15

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsy;

    .line 22
    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzte;->zzaQ(Lcom/google/android/gms/internal/ads/zzv;)Z

    .line 23
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzte;->zzaC(Lcom/google/android/gms/internal/ads/zzsy;)Z

    move-result v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zztb; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v0, :cond_1a

    :try_start_3
    const-string v0, "createCodec:"

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzte;->zzC:Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v1, :cond_12

    .line 24
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/lang/String;

    iget v3, v8, Lcom/google/android/gms/internal/ads/zzte;->zzu:F

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzI()[Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    invoke-virtual {v8, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzte;->zzai(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F

    move-result v3

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzte;->zze:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_6

    const/high16 v3, -0x40800000    # -1.0f

    .line 26
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzL()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v4

    .line 27
    invoke-virtual {v8, v7, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzte;->zzaf(Lcom/google/android/gms/internal/ads/zzsy;Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v11

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v15, 0x1f

    if-lt v12, v15, :cond_7

    .line 28
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzK()Lcom/google/android/gms/internal/ads/zzpc;

    move-result-object v12

    .line 29
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpc;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v12

    .line 30
    sget-object v15, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v12, v15}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzss;->zzb:Landroid/media/MediaFormat;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v17, v6

    :try_start_5
    const-string v6, "log-session-id"

    .line 31
    invoke-virtual {v12}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v6, v12}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v17, v6

    :goto_3
    move-object v12, v7

    move-object/from16 v11, v17

    goto/16 :goto_a

    :cond_7
    move-object/from16 v17, v6

    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    new-instance v12, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzc:Lcom/google/android/gms/internal/ads/zzst;

    .line 34
    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/ads/zzst;->zzb(Lcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zzsv;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    new-instance v6, Lcom/google/android/gms/internal/ads/zztc;

    const/4 v12, 0x0

    .line 35
    invoke-direct {v6, v8, v12}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzte;[B)V

    .line 36
    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzsv;->zzl(Lcom/google/android/gms/internal/ads/zzsu;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzK:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 37
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzL()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v18

    .line 40
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzc(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Format exceeds selected codec\'s capabilities [%s, %s]"

    .line 41
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzv;->zze(Lcom/google/android/gms/internal/ads/zzv;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v6

    .line 42
    sget-object v12, Lcom/google/android/gms/internal/ads/zzep;->zza:Ljava/lang/String;

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 43
    invoke-static {v12, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iput v3, v8, Lcom/google/android/gms/internal/ads/zzte;->zzz:F

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v3, 0x2

    if-gt v0, v1, :cond_a

    const-string v0, "OMX.Exynos.avc.dec.secure"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "SM-T585"

    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "SM-A510"

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "SM-A520"

    .line 48
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "SM-J700"

    .line 49
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    iput v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzD:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1d

    if-ne v0, v6, :cond_b

    const-string v0, "c2.android.aac.decoder"

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzE:Z

    const/4 v12, 0x0

    .line 56
    iput-boolean v12, v8, Lcom/google/android/gms/internal/ads/zzte;->zzF:Z

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/lang/String;

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v12, v1, :cond_d

    const-string v1, "OMX.rk.video_decoder.avc"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    :goto_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v6, :cond_e

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_e
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "AFTS"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzsy;->zzf:Z

    if-eqz v0, :cond_f

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzI:Z

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-eqz v0, :cond_11

    .line 65
    check-cast v0, Lcom/google/android/gms/internal/ads/zzsv;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zze()I

    move-result v0

    if-ne v0, v3, :cond_10

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzL()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v0

    const-wide/16 v20, 0x3e8

    add-long v0, v0, v20

    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzL:J

    :cond_10
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 67
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhs;->zza:I

    const/4 v12, 0x1

    add-int/2addr v1, v12

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzhs;->zza:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    sub-long v15, v18, v4

    move-object/from16 v1, p0

    move-object v3, v11

    move-wide/from16 v4, v18

    move-object v12, v7

    move-object/from16 v11, v17

    move-wide v6, v15

    .line 68
    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzte;->zzaj(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzss;JJ)V

    goto :goto_c

    :cond_11
    move-object v12, v7

    move-object/from16 v11, v17

    const/4 v1, 0x0

    .line 69
    throw v1

    :catchall_0
    move-exception v0

    move-object v12, v7

    move-object/from16 v11, v17

    .line 37
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    throw v0

    :cond_12
    move-object v11, v6

    move-object v12, v7

    move-object v1, v15

    .line 70
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v11, v6

    move-object v12, v7

    .line 78
    :goto_a
    :try_start_9
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztb;

    const/4 v2, 0x0

    .line 73
    invoke-direct {v1, v14, v0, v2, v12}, Lcom/google/android/gms/internal/ads/zztb;-><init>(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzsy;)V

    .line 74
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzal(Ljava/lang/Exception;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzB:Lcom/google/android/gms/internal/ads/zztb;

    if-nez v0, :cond_13

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzte;->zzB:Lcom/google/android/gms/internal/ads/zztb;

    goto :goto_b

    .line 75
    :cond_13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztb;->zza(Lcom/google/android/gms/internal/ads/zztb;)Lcom/google/android/gms/internal/ads/zztb;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzB:Lcom/google/android/gms/internal/ads/zztb;

    .line 76
    :goto_b
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    :goto_c
    move-object v6, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_14
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzte;->zzB:Lcom/google/android/gms/internal/ads/zztb;

    .line 77
    throw v0

    :cond_15
    move-object v1, v15

    .line 78
    throw v1

    :cond_16
    move-object v1, v15

    .line 54
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzte;->zzA:Ljava/util/ArrayDeque;

    return-void

    :cond_17
    move-object v1, v15

    .line 79
    throw v1

    :cond_18
    move-object v1, v15

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zztb;

    const v2, -0xc34f

    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v14, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zztb;-><init>(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_19
    move-object v1, v15

    .line 80
    throw v1
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zztb; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-exception v0

    const/16 v1, 0xfa1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {v8, v0, v10, v2, v1}, Lcom/google/android/gms/internal/ads/zzhr;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object v0

    .line 82
    throw v0

    :cond_1a
    :goto_d
    return-void
.end method

.method protected final zzaB(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzrs;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzte;->zzae(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected zzaC(Lcom/google/android/gms/internal/ads/zzsy;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final zzaD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzR:Z

    return v0
.end method

.method protected final zzaE()Lcom/google/android/gms/internal/ads/zzsv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    return-object v0
.end method

.method protected final zzaF()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    return-object v0
.end method

.method protected final zzaG()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzx:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected final zzaH()Lcom/google/android/gms/internal/ads/zzsy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzC:Lcom/google/android/gms/internal/ads/zzsy;

    return-object v0
.end method

.method protected final zzaI()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzsv;->zzk()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzhs;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzC:Lcom/google/android/gms/internal/ads/zzsy;

    if-eqz v1, :cond_0

    .line 3
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzak(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzr:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzrs;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaO()V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzr:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzrs;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaO()V

    .line 6
    throw v1
.end method

.method protected final zzaJ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzau()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaA()V

    :cond_0
    return v0
.end method

.method protected zzaK()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzE:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaa:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzF:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Z

    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbo()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzib; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v3, "Failed to update the DRM session, releasing the codec instead."

    .line 2
    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    return v2
.end method

.method protected zzaL()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzaM()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzak:J

    return-wide v0
.end method

.method protected zzaN()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbg()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbh()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaw()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzL:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzY:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzG:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzH:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzP:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzQ:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzW:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzU:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaj:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzak:J

    return-void
.end method

.method protected final zzaO()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaN()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzA:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzC:Lcom/google/android/gms/internal/ads/zzsy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzx:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzy:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaa:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzz:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzD:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzE:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzI:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzU:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    return-void
.end method

.method protected zzaP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsy;)Lcom/google/android/gms/internal/ads/zzsx;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsx;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsx;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsy;)V

    return-object v0
.end method

.method protected zzaQ(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaR(Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    return-void
.end method

.method protected zzaS(Lcom/google/android/gms/internal/ads/zzhh;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected zzaT(Lcom/google/android/gms/internal/ads/zzhh;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzaU()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzag:J

    return-wide v0
.end method

.method protected zzaV(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzag:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zztd;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zztd;->zzb:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zztd;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zztd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzte;->zzbm(Lcom/google/android/gms/internal/ads/zztd;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzap()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final zzaW()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzQ()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbf()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzL:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhr;->zzL()Lcom/google/android/gms/internal/ads/zzdc;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzL:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method protected final zzaX()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzt:F

    return v0
.end method

.method protected final zzaY()Lcom/google/android/gms/internal/ads/zzlm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzlm;

    return-object v0
.end method

.method protected final zzaZ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzte;->zzbi(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    return v0
.end method

.method public final zzab(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzd:Lcom/google/android/gms/internal/ads/zztg;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzte;->zzac(Lcom/google/android/gms/internal/ads/zztg;Lcom/google/android/gms/internal/ads/zzv;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzti; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhr;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    .line 3
    throw p1
.end method

.method protected abstract zzac(Lcom/google/android/gms/internal/ads/zztg;Lcom/google/android/gms/internal/ads/zzv;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzti;
        }
    .end annotation
.end method

.method protected abstract zzad(Lcom/google/android/gms/internal/ads/zztg;Lcom/google/android/gms/internal/ads/zzv;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzti;
        }
    .end annotation
.end method

.method protected zzae(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zzaf(Lcom/google/android/gms/internal/ads/zzsy;Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzss;
.end method

.method protected zzag(Lcom/google/android/gms/internal/ads/zzsy;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzah(JJZ)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhr;->zzT(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected zzai(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzaj(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzss;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzak(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzal(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzam(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzht;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzae:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 2
    const-string v4, "video/av01"

    .line 4
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "video/x-vnd.on2.vp9"

    .line 5
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    :cond_1
    move-object v9, v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzv;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzR:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzT:Z

    return-object v5

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-nez p1, :cond_3

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzA:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaA()V

    return-object v5

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzC:Lcom/google/android/gms/internal/ads/zzsy;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    .line 22
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/ads/zzv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzrs;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzrs;

    if-ne v2, v4, :cond_11

    .line 11
    invoke-virtual {p0, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzte;->zzag(Lcom/google/android/gms/internal/ads/zzsy;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v5

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzht;->zzd:I

    const/4 v7, 0x3

    if-eqz v6, :cond_d

    const/16 v10, 0x10

    const/4 v11, 0x2

    if-eq v6, v0, :cond_9

    if-eq v6, v11, :cond_5

    .line 12
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzte;->zzbi(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v4, v2, :cond_e

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbj()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    .line 14
    :cond_5
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzte;->zzbi(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_1

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzU:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzV:I

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzte;->zzD:I

    if-eq v10, v11, :cond_8

    if-ne v10, v0, :cond_7

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    iget v12, v8, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    if-ne v10, v12, :cond_7

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    iget v12, v8, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-ne v10, v12, :cond_7

    goto :goto_0

    :cond_7
    move v0, v3

    :cond_8
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzG:Z

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v4, v2, :cond_e

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbj()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    .line 16
    :cond_9
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzte;->zzbi(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v12

    if-nez v12, :cond_a

    :goto_1
    move v11, v10

    goto :goto_3

    :cond_a
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v4, v2, :cond_b

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbj()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_b
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzY:Z

    if-eqz v2, :cond_e

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzW:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzF:Z

    if-eqz v2, :cond_c

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    goto :goto_3

    :cond_c
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    goto :goto_2

    .line 18
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbk()V

    :cond_e
    :goto_2
    move v11, v3

    :goto_3
    if-eqz v6, :cond_10

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zzsv;

    if-ne v0, p1, :cond_f

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:I

    if-ne p1, v7, :cond_10

    :cond_f
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    const/4 v10, 0x0

    move-object v6, p1

    .line 19
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object p1

    :cond_10
    return-object v5

    .line 20
    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzbk()V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    const/4 v10, 0x0

    const/16 v11, 0x80

    move-object v6, p1

    .line 21
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object p1

    .line 1
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    .line 3
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzhr;->zzN(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzib;

    move-result-object p1

    .line 2
    throw p1
.end method

.method protected zzan(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzap()V
    .locals 0

    return-void
.end method

.method protected abstract zzaq(JJLcom/google/android/gms/internal/ads/zzsv;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation
.end method

.method protected zzar()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method protected zzas(Lcom/google/android/gms/internal/ads/zzhh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzaz()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzai:Z

    return-void
.end method

.method protected final zzba()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zztd;->zzf:J

    return-wide v0
.end method

.method protected final zzbb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zztd;->zzd:J

    return-wide v0
.end method

.method protected final zzbc()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zztd;->zzc:J

    return-wide v0
.end method

.method final synthetic zzbe()Lcom/google/android/gms/internal/ads/zzlm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzlm;

    return-object v0
.end method

.method public final zzu()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public zzx(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzlm;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzlm;

    :cond_0
    return-void
.end method

.method protected zzy(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zza:Lcom/google/android/gms/internal/ads/zzhs;

    return-void
.end method

.method protected zzz([Lcom/google/android/gms/internal/ads/zzv;JJLcom/google/android/gms/internal/ads/zzuu;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzib;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zztd;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zztd;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zztd;-><init>(JJJ)V

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzbm(Lcom/google/android/gms/internal/ads/zztd;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzte;->zzai:Z

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzap()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzte;->zzag:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_3

    cmp-long v2, v7, v5

    if-ltz v2, :cond_3

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zztd;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zztd;-><init>(JJJ)V

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzbm(Lcom/google/android/gms/internal/ads/zztd;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzte;->zzaf:Lcom/google/android/gms/internal/ads/zztd;

    .line 7
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zztd;->zzd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzap()V

    :cond_2
    return-void

    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/ads/zztd;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzte;->zzab:J

    move-object v2, v9

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zztd;-><init>(JJJ)V

    .line 5
    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
