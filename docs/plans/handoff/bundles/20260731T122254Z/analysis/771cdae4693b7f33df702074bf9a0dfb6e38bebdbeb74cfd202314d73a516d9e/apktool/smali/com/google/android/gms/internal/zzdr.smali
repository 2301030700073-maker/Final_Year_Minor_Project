.class public Lcom/google/android/gms/internal/zzdr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# static fields
.field private static final zzwF:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzwG:Ljava/text/DecimalFormat;


# instance fields
.field private zzoA:Lcom/google/android/gms/internal/zzid;

.field private zzwH:Ljava/io/File;

.field private zzwI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzdr;->zzwG:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzid;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdr;->zzoA:Lcom/google/android/gms/internal/zzid;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzid;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Context.getCacheDir() returned null"

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "admobVideoStreams"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not create preload cache directory at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {p1, v2, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not set cache file permissions at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    return-void
.end method

.method private zzX(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzk;->zzcA()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdr;)Lcom/google/android/gms/internal/zzid;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzdr;->zzoA:Lcom/google/android/gms/internal/zzid;

    return-object p0
.end method

.method private zza(Ljava/io/File;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".done"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private zza(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzGF:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdr$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzdr$3;-><init>(Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/io/File;I)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzGF:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdr$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzdr$2;-><init>(Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/io/File;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zza(Ljava/lang/String;Ljava/io/File;II)V
    .locals 8

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzGF:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzdr$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzdr$1;-><init>(Lcom/google/android/gms/internal/zzdr;Ljava/lang/String;Ljava/io/File;II)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static zzb(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwI:Z

    return-void
.end method

.method public zzW(Ljava/lang/String;)Z
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    return v5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdr;->zzdQ()I

    move-result v3

    sget-object v6, Lcom/google/android/gms/internal/zzbz;->zztO:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v3, v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzdr;->zzdR()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Unable to expire stream cache"

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    return v5

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzdr;->zzX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-direct {v6, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stream cache hit at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    invoke-direct {v1, v2, v6, v3}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;I)V

    return v8

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    monitor-enter v9

    :try_start_0
    sget-object v10, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stream cache already in progress at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    monitor-exit v9

    return v5

    :cond_3
    sget-object v10, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/zzbz;->zztS:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v10, v9, Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_4

    move-object v10, v9

    check-cast v10, Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0x190

    if-lt v10, v11, :cond_4

    new-instance v3, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP status code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentLength()I

    move-result v10

    if-gez v10, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stream cache aborted, missing content-length header at "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v5

    :cond_5
    sget-object v11, Lcom/google/android/gms/internal/zzdr;->zzwG:Ljava/text/DecimalFormat;

    int-to-long v12, v10

    invoke-virtual {v11, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/zzbz;->zztP:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v10, v12, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content length "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " exceeds limit at "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v5

    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Caching "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " bytes from "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v9

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const/high16 v13, 0x100000

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzo;->zzbz()Lcom/google/android/gms/internal/zzlb;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v15

    sget-object v5, Lcom/google/android/gms/internal/zzbz;->zztR:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    move-object/from16 v17, v9

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v5, Lcom/google/android/gms/internal/zzhq;

    invoke-direct {v5, v8, v9}, Lcom/google/android/gms/internal/zzhq;-><init>(J)V

    sget-object v8, Lcom/google/android/gms/internal/zzbz;->zztQ:Lcom/google/android/gms/internal/zzbv;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzbv;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v19, v3

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    const/4 v3, 0x0

    :goto_0
    :try_start_3
    invoke-interface {v7, v13}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v17
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    if-ltz v17, :cond_c

    add-int v3, v3, v17

    if-le v3, v12, :cond_7

    :try_start_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "stream cache file size limit exceeded"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v4, v11

    move-object/from16 v7, v18

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_1
    invoke-virtual {v4, v13}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v17

    if-lez v17, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface {v14}, Lcom/google/android/gms/internal/zzlb;->currentTimeMillis()J

    move-result-wide v20

    const/16 v17, 0x0

    sub-long v22, v20, v15

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v8

    cmp-long v17, v22, v20

    if-lez v17, :cond_9

    new-instance v3, Ljava/io/IOException;

    const-string v4, "stream cache time limit exceeded"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    move-object/from16 v24, v4

    iget-boolean v4, v1, Lcom/google/android/gms/internal/zzdr;->zzwI:Z

    if-eqz v4, :cond_a

    new-instance v3, Ljava/io/IOException;

    const-string v4, "abort requested"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzhq;->tryAcquire()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {v1, v2, v6, v3, v10}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_b
    move-object/from16 v4, v24

    goto :goto_0

    :cond_c
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzL(I)Z

    move-result v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v4, :cond_d

    :try_start_6
    sget-object v4, Lcom/google/android/gms/internal/zzdr;->zzwG:Ljava/text/DecimalFormat;

    int-to-long v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preloaded "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bytes from "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzay(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_7
    invoke-virtual {v6, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-object/from16 v4, v19

    invoke-static {v4}, Lcom/google/android/gms/internal/zzdr;->zzb(Ljava/io/File;)V

    invoke-direct {v1, v2, v6, v3}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;I)V

    sget-object v3, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v7, v18

    :try_start_8
    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    return v5

    :catch_1
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    move-object v3, v0

    move-object v4, v11

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v3, v0

    :goto_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    iget-boolean v4, v1, Lcom/google/android/gms/internal/zzdr;->zzwI:Z

    if-eqz v4, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preload aborted for URL \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaA(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preload failed for URL \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete partial cache file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    :cond_f
    invoke-direct {v1, v2, v6}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/lang/String;Ljava/io/File;)V

    sget-object v2, Lcom/google/android/gms/internal/zzdr;->zzwF:Ljava/util/Set;

    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v2
.end method

.method public zzdQ()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public zzdR()Z
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdr;->zzwH:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move-wide v6, v2

    move-object v2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".done"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-gez v10, :cond_1

    move-object v2, v3

    move-wide v6, v8

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzdr;->zza(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    and-int/2addr v1, v0

    :cond_3
    return v1
.end method
