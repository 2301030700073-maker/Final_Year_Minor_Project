.class public final Lcom/google/android/gms/internal/ads/zzcej;
.super Lcom/google/android/gms/internal/ads/zzccx;
.source "com.google.android.gms:play-services-ads@@24.7.0"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/gms/internal/ads/zzcdh;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzcdr;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcds;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcdq;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdvi;

.field private zzg:Lcom/google/android/gms/internal/ads/zzccw;

.field private zzh:Landroid/view/Surface;

.field private zzi:Lcom/google/android/gms/internal/ads/zzcdi;

.field private zzj:Ljava/lang/String;

.field private zzk:[Ljava/lang/String;

.field private zzl:Z

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzcdp;

.field private final zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:I

.field private zzs:I

.field private zzt:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcds;Lcom/google/android/gms/internal/ads/zzcdr;ZZLcom/google/android/gms/internal/ads/zzcdq;Lcom/google/android/gms/internal/ads/zzdvi;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzccx;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzm:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzc:Lcom/google/android/gms/internal/ads/zzcdr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzd:Lcom/google/android/gms/internal/ads/zzcds;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzo:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcej;->zze:Lcom/google/android/gms/internal/ads/zzcdq;

    .line 2
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzcds;->zza(Lcom/google/android/gms/internal/ads/zzccx;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzf:Lcom/google/android/gms/internal/ads/zzdvi;

    return-void
.end method

.method private final zzT()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzU()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzm:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzV(ZLjava/lang/Integer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcdi;->zzn(Ljava/lang/Integer;)V

    return-void

    .line 1
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzj:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzh:Landroid/view/Surface;

    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzT()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzw()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzW()V

    goto :goto_1

    .line 33
    :cond_3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "No valid ExoPlayerAdapter exists when switch source."

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzj:Ljava/lang/String;

    const-string v0, "cache:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzc:Lcom/google/android/gms/internal/ads/zzcdr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzj:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzcdr;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcfe;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzcfn;

    if-eqz v1, :cond_6

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfn;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfn;->zza()Lcom/google/android/gms/internal/ads/zzcdi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcdi;->zzn(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzB()Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_3

    .line 9
    :cond_5
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Precached video player has been released."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_6
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v1, :cond_8

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzF()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzu()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzt()Z

    move-result v3

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzs()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    .line 16
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Stream cache URL is null."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzcej;->zzE(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzcdi;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    .line 19
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {p2, v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdi;->zzr([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzj:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Stream cache miss: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 22
    :cond_9
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzcej;->zzE(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzcdi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzF()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzk:[Ljava/lang/String;

    .line 24
    array-length p2, p2

    new-array p2, p2, [Landroid/net/Uri;

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzk:[Ljava/lang/String;

    .line 25
    array-length v3, v2

    if-ge v1, v3, :cond_a

    .line 26
    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    .line 27
    invoke-virtual {v1, p2, p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzq([Landroid/net/Uri;Ljava/lang/String;)V

    .line 8
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    .line 28
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzs(Lcom/google/android/gms/internal/ads/zzcdh;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzh:Landroid/view/Surface;

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcej;->zzX(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzB()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzC()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzm:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_b

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzY()V

    :cond_b
    :goto_4
    return-void
.end method

.method private final zzW()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcej;->zzX(Landroid/view/Surface;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzs(Lcom/google/android/gms/internal/ads/zzcdh;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdi;->zzt()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzm:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzq:Z

    :cond_1
    return-void
.end method

.method private final zzX(Landroid/view/Surface;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdi;->zzu(Landroid/view/Surface;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, ""

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Trying to set surface before player is initialized."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method private final zzY()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzp:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzp:Z

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdw;-><init>(Lcom/google/android/gms/internal/ads/zzcej;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzd:Lcom/google/android/gms/internal/ads/zzcds;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcds;->zzb()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzq:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zze()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static zzZ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzaa()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzr:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzs:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcej;->zzab(II)V

    return-void
.end method

.method private final zzab(II)V
    .locals 0

    if-lez p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzt:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzt:F

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcej;->requestLayout()V

    :cond_1
    return-void
.end method

.method private final zzac()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzM(Z)V

    :cond_0
    return-void
.end method

.method private final zzad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzM(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzccx;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/zzcej;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzccx;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcej;->getMeasuredWidth()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcej;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzt:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    if-nez v1, :cond_1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float v2, v1, v2

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    div-float/2addr v1, v0

    float-to-int p2, v1

    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    int-to-float p1, p2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcej;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdp;->zzc(II)V

    :cond_2
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzo:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeu;->zzon:Lcom/google/android/gms/internal/ads/zzbel;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbes;->zzd(Lcom/google/android/gms/internal/ads/zzbel;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzf:Lcom/google/android/gms/internal/ads/zzdvi;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvi;->zza()Lcom/google/android/gms/internal/ads/zzdvh;

    move-result-object v0

    const-string v2, "action"

    const-string v3, "svp_aepv"

    .line 4
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdvh;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd()V

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcej;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcdp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcdp;->zzb(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdp;->start()V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdp;->zze()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdp;->zzd()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    .line 9
    :cond_2
    :goto_0
    new-instance v0, Landroid/view/Surface;

    .line 11
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzh:Landroid/view/Surface;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcej;->zzV(ZLjava/lang/Integer;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 13
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzcej;->zzX(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zze:Lcom/google/android/gms/internal/ads/zzcdq;

    .line 14
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcdq;->zza:Z

    if-nez p1, :cond_4

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzac()V

    .line 12
    :cond_4
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzr:I

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzs:I

    if-nez p1, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzaa()V

    goto :goto_3

    .line 16
    :cond_6
    :goto_2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcej;->zzab(II)V

    .line 18
    :goto_3
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzced;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzced;-><init>(Lcom/google/android/gms/internal/ads/zzcej;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzf()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdp;->zzd()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzad()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzh:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzh:Landroid/view/Surface;

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcej;->zzX(Landroid/view/Surface;Z)V

    .line 6
    :cond_2
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcef;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcef;-><init>(Lcom/google/android/gms/internal/ads/zzcej;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcdp;->zzc(II)V

    .line 2
    :cond_0
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcee;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcee;-><init>(Lcom/google/android/gms/internal/ads/zzcej;II)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzd:Lcom/google/android/gms/internal/ads/zzcds;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcds;->zzd(Lcom/google/android/gms/internal/ads/zzccx;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zza:Lcom/google/android/gms/internal/ads/zzcdl;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzb(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzccw;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2e

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AdExoPlayerView3 window visibility changed to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzceg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzceg;-><init>(Lcom/google/android/gms/internal/ads/zzcej;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzccx;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final zzA(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzy(I)V

    :cond_0
    return-void
.end method

.method public final zzB(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzz(I)V

    :cond_0
    return-void
.end method

.method public final zzC(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzA(I)V

    :cond_0
    return-void
.end method

.method public final zzD()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdy;-><init>(Lcom/google/android/gms/internal/ads/zzcej;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzE(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzcdi;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zze:Lcom/google/android/gms/internal/ads/zzcdq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzc:Lcom/google/android/gms/internal/ads/zzcdr;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcgg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdq;Lcom/google/android/gms/internal/ads/zzcdr;Ljava/lang/Integer;)V

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "ExoPlayerAdapter initialized."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    return-object v0
.end method

.method final zzF()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzc:Lcom/google/android/gms/internal/ads/zzcdr;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcdr;->zzs()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzG()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzb:Lcom/google/android/gms/internal/ads/zzcdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzc()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcdi;->zzv(FZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, ""

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Trying to set volume before player is initialized."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzH()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccw;->zzb()V

    :cond_0
    return-void
.end method

.method final synthetic zzI()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccw;->zze()V

    :cond_0
    return-void
.end method

.method final synthetic zzJ(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter error"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzccw;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzK()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccw;->zzc()V

    :cond_0
    return-void
.end method

.method final synthetic zzL()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccw;->zzd()V

    :cond_0
    return-void
.end method

.method final synthetic zzM()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccw;->zza()V

    :cond_0
    return-void
.end method

.method final synthetic zzN(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzccw;->zzj(II)V

    :cond_0
    return-void
.end method

.method final synthetic zzO()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccw;->zzh()V

    :cond_0
    return-void
.end method

.method final synthetic zzP(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzccw;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method final synthetic zzQ(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzc:Lcom/google/android/gms/internal/ads/zzcdr;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcdr;->zzu(ZJ)V

    return-void
.end method

.method final synthetic zzR(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    const-string v1, "ExoPlayerAdapter exception"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzccw;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzS()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccw;->zzk()V

    :cond_0
    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzo:Z

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, " spherical"

    :goto_0
    const-string v1, "ExoPlayer/2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzccw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzg:Lcom/google/android/gms/internal/ads/zzccw;

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/gms/internal/ads/zzccx;->zzx(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzw()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzW()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzd:Lcom/google/android/gms/internal/ads/zzcds;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcds;->zzf()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzb:Lcom/google/android/gms/internal/ads/zzcdv;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zze()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcds;->zzc()V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzU()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zze:Lcom/google/android/gms/internal/ads/zzcdq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcdq;->zza:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzac()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzE(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzd:Lcom/google/android/gms/internal/ads/zzcds;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcds;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzb:Lcom/google/android/gms/internal/ads/zzcdv;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zza:Lcom/google/android/gms/internal/ads/zzcdl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zza()V

    .line 7
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzceb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzceb;-><init>(Lcom/google/android/gms/internal/ads/zzcej;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzq:Z

    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzU()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zze:Lcom/google/android/gms/internal/ads/zzcdq;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcdq;->zza:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzad()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzE(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzd:Lcom/google/android/gms/internal/ads/zzcds;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcds;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzb:Lcom/google/android/gms/internal/ads/zzcdv;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdv;->zze()V

    .line 6
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcec;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcec;-><init>(Lcom/google/android/gms/internal/ads/zzcej;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zzg()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzH()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzD()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdi;->zzx(J)V

    :cond_0
    return-void
.end method

.method public final zzj(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzn:Lcom/google/android/gms/internal/ads/zzcdp;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdp;->zzf(FF)V

    :cond_0
    return-void
.end method

.method public final zzk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzr:I

    return v0
.end method

.method public final zzl()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzs:I

    return v0
.end method

.method public final zzm()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzI()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzn()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzJ()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzo()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzK()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzp()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzL()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzq()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcei;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcei;-><init>(Lcom/google/android/gms/internal/ads/zzcej;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzr(ZJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzc:Lcom/google/android/gms/internal/ads/zzcdr;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbv;->zzf:Lcom/google/android/gms/internal/ads/zzgus;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzceh;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzceh;-><init>(Lcom/google/android/gms/internal/ads/zzcej;ZJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgus;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final zzs(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzm:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzm:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zze:Lcom/google/android/gms/internal/ads/zzcdq;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzcdq;->zza:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzad()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzd:Lcom/google/android/gms/internal/ads/zzcds;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcds;->zzf()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzb:Lcom/google/android/gms/internal/ads/zzcdv;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcdv;->zze()V

    .line 5
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdz;-><init>(Lcom/google/android/gms/internal/ads/zzcej;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzY()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final zzt(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzr:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzs:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzaa()V

    return-void
.end method

.method public final zzu(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcej;->zzZ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExoPlayerAdapter error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zze:Lcom/google/android/gms/internal/ads/zzcdq;

    .line 4
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzcdq;->zza:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcej;->zzad()V

    .line 6
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcea;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcea;-><init>(Lcom/google/android/gms/internal/ads/zzcej;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    const-string p1, "AdExoPlayerView.onError"

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcbj;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzv(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string p1, "onLoadException"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcej;->zzZ(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExoPlayerAdapter exception: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const-string v0, "AdExoPlayerView.onException"

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcbj;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcbj;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfuz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcdx;-><init>(Lcom/google/android/gms/internal/ads/zzcej;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfuz;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzw()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzj()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzx(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 2
    new-array p2, v0, [Ljava/lang/String;

    aput-object p1, p2, v1

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzk:[Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    array-length v2, p2

    .line 1
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzk:[Ljava/lang/String;

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzj:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zze:Lcom/google/android/gms/internal/ads/zzcdq;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzcdq;->zzk:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzm:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzj:Ljava/lang/String;

    .line 4
    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzcej;->zzV(ZLjava/lang/Integer;)V

    return-void
.end method

.method public final zzy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzF(I)V

    :cond_0
    return-void
.end method

.method public final zzz(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcej;->zzi:Lcom/google/android/gms/internal/ads/zzcdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdi;->zzG(I)V

    :cond_0
    return-void
.end method
