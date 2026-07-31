.class public abstract Lcom/google/android/gms/internal/ads/zzhwo;
.super Lcom/google/android/gms/internal/ads/zzhur;
.source "com.google.android.gms:play-services-ads-api@@24.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzhwo<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzhwi<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzhur<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zza:I = -0x80000000

.field private static final zzb:I = 0x7fffffff

.field private static zzd:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "**>;>;"
        }
    .end annotation
.end field

.field static final zzr:I = 0x7fffffff

.field static final zzs:I


# instance fields
.field private zzc:I

.field protected zzt:Lcom/google/android/gms/internal/ads/zzhzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwo;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhur;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzc:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhzd;->zza()Lcom/google/android/gms/internal/ads/zzhzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    return-void
.end method

.method static varargs zzbA(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x2b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Generated message class \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static varargs zzbB(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 8
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zzbC()Lcom/google/android/gms/internal/ads/zzhww;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwp;->zzd()Lcom/google/android/gms/internal/ads/zzhwp;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbD(Lcom/google/android/gms/internal/ads/zzhww;)Lcom/google/android/gms/internal/ads/zzhww;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhww;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzhww;->zze(I)Lcom/google/android/gms/internal/ads/zzhww;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbE()Lcom/google/android/gms/internal/ads/zzhwz;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhxn;->zzg()Lcom/google/android/gms/internal/ads/zzhxn;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbF(Lcom/google/android/gms/internal/ads/zzhwz;)Lcom/google/android/gms/internal/ads/zzhwz;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhwz;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzhwz;->zzf(I)Lcom/google/android/gms/internal/ads/zzhwz;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbG()Lcom/google/android/gms/internal/ads/zzhwv;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwf;->zzd()Lcom/google/android/gms/internal/ads/zzhwf;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbH(Lcom/google/android/gms/internal/ads/zzhwv;)Lcom/google/android/gms/internal/ads/zzhwv;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhwv;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzhwv;->zze(I)Lcom/google/android/gms/internal/ads/zzhwv;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbI()Lcom/google/android/gms/internal/ads/zzhwr;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhvv;->zzd()Lcom/google/android/gms/internal/ads/zzhvv;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbJ(Lcom/google/android/gms/internal/ads/zzhwr;)Lcom/google/android/gms/internal/ads/zzhwr;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhwr;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzhwr;->zze(I)Lcom/google/android/gms/internal/ads/zzhwr;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbK()Lcom/google/android/gms/internal/ads/zzhwq;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhuy;->zzd()Lcom/google/android/gms/internal/ads/zzhuy;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbL(Lcom/google/android/gms/internal/ads/zzhwq;)Lcom/google/android/gms/internal/ads/zzhwq;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhwq;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzhwq;->zze(I)Lcom/google/android/gms/internal/ads/zzhwq;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbM()Lcom/google/android/gms/internal/ads/zzhxa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzhxa<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyk;->zzd()Lcom/google/android/gms/internal/ads/zzhyk;

    move-result-object v0

    return-object v0
.end method

.method protected static zzbN(Lcom/google/android/gms/internal/ads/zzhxa;)Lcom/google/android/gms/internal/ads/zzhxa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzhxa<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzhxa<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhxa;->size()I

    move-result v0

    add-int/2addr v0, v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzhxa;->zzh(I)Lcom/google/android/gms/internal/ads/zzhxa;

    move-result-object p0

    return-object p0
.end method

.method static zzbO(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzhvn;",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbg()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyj;->zza()Lcom/google/android/gms/internal/ads/zzhyj;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhvo;->zza(Lcom/google/android/gms/internal/ads/zzhvn;)Lcom/google/android/gms/internal/ads/zzhvo;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhyr;->zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhym;Lcom/google/android/gms/internal/ads/zzhvy;)V

    .line 5
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzhyr;->zzk(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzhzb; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzhxd;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhxd;

    throw p0

    .line 8
    :cond_0
    throw p0

    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzhxd;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhxd;

    throw p0

    .line 13
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhxd;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhxd;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzb;->zza()Lcom/google/android/gms/internal/ads/zzhxd;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhxd;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhxd;

    .line 14
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhxd;-><init>(Ljava/io/IOException;)V

    .line 13
    throw p1

    :cond_2
    throw p0
.end method

.method protected static zzbP(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzhvn;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Lcom/google/android/gms/internal/ads/zzhvy;

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbO(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbQ(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhvn;->zzf:I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    .line 4
    invoke-static {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzhvn;->zzG([BIIZ)Lcom/google/android/gms/internal/ads/zzhvn;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/gms/internal/ads/zzhvm;->zza:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhzj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhvm;

    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhvm;-><init>(Ljava/nio/ByteBuffer;Z[B)V

    move-object p1, v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 9
    invoke-static {v2, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzhvn;->zzG([BIIZ)Lcom/google/android/gms/internal/ads/zzhvn;

    move-result-object p1

    .line 1
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbZ(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method protected static zzbR(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Lcom/google/android/gms/internal/ads/zzhvy;

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbQ(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbS(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzhvi;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Lcom/google/android/gms/internal/ads/zzhvy;

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbT(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method protected static zzbT(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzhvi;",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwo;->zzj(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method protected static zzbU(Lcom/google/android/gms/internal/ads/zzhwo;[B)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:I

    .line 3
    sget v1, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Lcom/google/android/gms/internal/ads/zzhvy;

    const/4 v2, 0x0

    .line 4
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzh(Lcom/google/android/gms/internal/ads/zzhwo;[BIILcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method protected static zzbV(Lcom/google/android/gms/internal/ads/zzhwo;[BLcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    array-length v1, p1

    .line 2
    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhwo;->zzh(Lcom/google/android/gms/internal/ads/zzhwo;[BIILcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method protected static zzbW(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhvn;->zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzhvn;

    move-result-object p1

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:I

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Lcom/google/android/gms/internal/ads/zzhvy;

    .line 4
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbO(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method protected static zzbX(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhvn;->zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzhvn;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbO(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method protected static zzbY(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzhvn;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Lcom/google/android/gms/internal/ads/zzhvy;

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbZ(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    return-object p0
.end method

.method protected static zzbZ(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzhvn;",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbO(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method static zzbt(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwo;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwo;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwo;->zzd:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwo;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 3
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhzj;->zzc(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbe()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwo;->zzd:Ljava/util/Map;

    .line 7
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhwo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzaY()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwo;->zzd:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static zzbv(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhyl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhyl;-><init>(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zzby(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhxz;Lcom/google/android/gms/internal/ads/zzhwt;ILcom/google/android/gms/internal/ads/zzhzp;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhwm;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/ads/zzhxz;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/android/gms/internal/ads/zzhxz;",
            "Lcom/google/android/gms/internal/ads/zzhwt;",
            "I",
            "Lcom/google/android/gms/internal/ads/zzhzp;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzhwm<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzhwm;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzhwl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhwl;-><init>(Lcom/google/android/gms/internal/ads/zzhwt;ILcom/google/android/gms/internal/ads/zzhzp;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhwm;-><init>(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhxz;Lcom/google/android/gms/internal/ads/zzhwl;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static zzbz(Lcom/google/android/gms/internal/ads/zzhxz;Lcom/google/android/gms/internal/ads/zzhxz;Lcom/google/android/gms/internal/ads/zzhwt;ILcom/google/android/gms/internal/ads/zzhzp;ZLjava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhwm;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/ads/zzhxz;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/android/gms/internal/ads/zzhxz;",
            "Lcom/google/android/gms/internal/ads/zzhwt;",
            "I",
            "Lcom/google/android/gms/internal/ads/zzhzp;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzhwm<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyk;->zzd()Lcom/google/android/gms/internal/ads/zzhyk;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzhwm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzhwl;

    const/4 v11, 0x1

    move-object v7, v4

    move-object v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v12, p5

    .line 2
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzhwl;-><init>(Lcom/google/android/gms/internal/ads/zzhwt;ILcom/google/android/gms/internal/ads/zzhzp;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhwm;-><init>(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhxz;Lcom/google/android/gms/internal/ads/zzhwl;Ljava/lang/Class;)V

    return-object v6
.end method

.method private zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhzd;->zza()Lcom/google/android/gms/internal/ads/zzhzd;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhzd;->zzb()Lcom/google/android/gms/internal/ads/zzhzd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    :cond_0
    return-void
.end method

.method protected static zzca(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhvy;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzhuv;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvy;->zza:Lcom/google/android/gms/internal/ads/zzhvy;

    .line 3
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzk(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method protected static zzcb(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwo;->zzk(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;

    return-object p0
.end method

.method static synthetic zzcd(Lcom/google/android/gms/internal/ads/zzhwo;Z)Z
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzg(Lcom/google/android/gms/internal/ads/zzhwo;Z)Z

    move-result p0

    return p0
.end method

.method private zzd(Lcom/google/android/gms/internal/ads/zzhyr;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzhyr<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyj;->zza()Lcom/google/android/gms/internal/ads/zzhyj;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhyj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;

    move-result-object p1

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzhyr;->zze(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzhyr;->zze(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzhvw;)Lcom/google/android/gms/internal/ads/zzhwm;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/ads/zzhwk<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzhvw<",
            "TMessageType;TT;>;)",
            "Lcom/google/android/gms/internal/ads/zzhwm<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/zzhwm;

    return-object p0
.end method

.method private static final zzg(Lcom/google/android/gms/internal/ads/zzhwo;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwn;->zza:Lcom/google/android/gms/internal/ads/zzhwn;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyj;->zza()Lcom/google/android/gms/internal/ads/zzhyj;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhyj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;

    move-result-object v0

    .line 2
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzhyr;->zzl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    if-eq v2, v0, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhwn;->zzb:Lcom/google/android/gms/internal/ads/zzhwn;

    .line 4
    invoke-virtual {p0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzhwo;[BIILcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    if-nez p3, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbg()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyj;->zza()Lcom/google/android/gms/internal/ads/zzhyj;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;

    move-result-object v6

    add-int v4, p2, p3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzhuw;

    .line 4
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/zzhuw;-><init>(Lcom/google/android/gms/internal/ads/zzhvy;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhyr;->zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzhuw;)V

    .line 5
    invoke-interface {v6, p0}, Lcom/google/android/gms/internal/ads/zzhyr;->zzk(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/ads/zzhzb; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 9
    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzhxd;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhxd;-><init>(Ljava/lang/String;)V

    .line 7
    throw p0

    :catch_1
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzhxd;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhxd;

    throw p0

    .line 11
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhxd;

    .line 10
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhxd;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzb;->zza()Lcom/google/android/gms/internal/ads/zzhxd;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhxd;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhxd;

    .line 13
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhxd;-><init>(Ljava/io/IOException;)V

    .line 12
    throw p1

    :cond_2
    throw p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhur;->zzaU()Lcom/google/android/gms/internal/ads/zzhzb;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzb;->zza()Lcom/google/android/gms/internal/ads/zzhxd;

    move-result-object p0

    .line 4
    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvi;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzhvi;",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhvi;->zzp()Lcom/google/android/gms/internal/ads/zzhvn;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbO(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhvn;->zzb(I)V

    return-object p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzhwo;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/android/gms/internal/ads/zzhvy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhxd;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhvn;->zzM(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhxd; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhup;

    .line 6
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzhup;-><init>(Ljava/io/InputStream;I)V

    const/16 p1, 0x1000

    .line 7
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzhvn;->zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzhvn;

    move-result-object p1

    .line 8
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbO(Lcom/google/android/gms/internal/ads/zzhwo;Lcom/google/android/gms/internal/ads/zzhvn;Lcom/google/android/gms/internal/ads/zzhvy;)Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p0

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhvn;->zzb(I)V

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhxd;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhxd;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhxd;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhxd;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzhxd;-><init>(Ljava/io/IOException;)V

    .line 5
    throw p1

    :cond_1
    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyj;->zza()Lcom/google/android/gms/internal/ads/zzhyj;

    move-result-object v1

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzhyj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;

    move-result-object v0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwo;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhyr;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzaX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbh()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbh()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzba(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzaZ()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhyb;->zza(Lcom/google/android/gms/internal/ads/zzhxz;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzaQ()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzc:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method zzaR(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzc:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzc:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "serialized size must be non-negative, was "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method zzaT(Lcom/google/android/gms/internal/ads/zzhyr;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzaX()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzd(Lcom/google/android/gms/internal/ads/zzhyr;)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "serialized size must be non-negative, was "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhur;->zzaQ()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhur;->zzaQ()I

    move-result p1

    return p1

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzd(Lcom/google/android/gms/internal/ads/zzhyr;)I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhur;->zzaR(I)V

    return p1
.end method

.method zzaX()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzc:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method zzaY()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzc:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzc:I

    return-void
.end method

.method zzaZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzq:I

    return v0
.end method

.method zzba(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzq:I

    return-void
.end method

.method zzbb()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzq:I

    return-void
.end method

.method zzbc()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzaZ()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbd()Lcom/google/android/gms/internal/ads/zzhyh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzhyh<",
            "TMessageType;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwn;->zzg:Lcom/google/android/gms/internal/ads/zzhwn;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhyh;

    return-object v0
.end method

.method public final zzbe()Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwn;->zzf:Lcom/google/android/gms/internal/ads/zzhwn;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwo;

    return-object v0
.end method

.method public final zzbf()Lcom/google/android/gms/internal/ads/zzhwi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwn;->zze:Lcom/google/android/gms/internal/ads/zzhwn;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwi;

    return-object v0
.end method

.method zzbg()Lcom/google/android/gms/internal/ads/zzhwo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwn;->zzd:Lcom/google/android/gms/internal/ads/zzhwn;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwo;

    return-object v0
.end method

.method zzbh()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyj;->zza()Lcom/google/android/gms/internal/ads/zzhyj;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzhyr;->zzc(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzbi()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzg(Lcom/google/android/gms/internal/ads/zzhwo;Z)Z

    move-result v0

    return v0
.end method

.method protected zzbj(ILcom/google/android/gms/internal/ads/zzhvn;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhzd;->zzl(ILcom/google/android/gms/internal/ads/zzhvn;)Z

    move-result p1

    return p1
.end method

.method protected zzbk(II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzd;->zze()V

    if-eqz p1, :cond_0

    int-to-long v1, p2

    shl-int/lit8 p1, p1, 0x3

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhzd;->zzk(ILjava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected zzbl(ILcom/google/android/gms/internal/ads/zzhvi;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzd;->zze()V

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhzd;->zzk(ILjava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected zzbm()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyj;->zza()Lcom/google/android/gms/internal/ads/zzhyj;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;

    move-result-object v0

    .line 1
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzhyr;->zzk(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzaY()V

    return-void
.end method

.method protected final zzbn()Lcom/google/android/gms/internal/ads/zzhwi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType2:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TMessageType2;TBuilderType2;>;BuilderType2:",
            "Lcom/google/android/gms/internal/ads/zzhwi<",
            "TMessageType2;TBuilderType2;>;>()TBuilderType2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwn;->zze:Lcom/google/android/gms/internal/ads/zzhwn;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwi;

    return-object v0
.end method

.method protected final zzbo(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType2:",
            "Lcom/google/android/gms/internal/ads/zzhwo<",
            "TMessageType2;TBuilderType2;>;BuilderType2:",
            "Lcom/google/android/gms/internal/ads/zzhwi<",
            "TMessageType2;TBuilderType2;>;>(TMessageType2;)TBuilderType2;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbn()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbo(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwi;

    return-object v0
.end method

.method public final zzbp()Lcom/google/android/gms/internal/ads/zzhwi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwn;->zze:Lcom/google/android/gms/internal/ads/zzhwn;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhwi;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbo(Lcom/google/android/gms/internal/ads/zzhwo;)Lcom/google/android/gms/internal/ads/zzhwi;

    return-object v0
.end method

.method zzbq()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhur;->zzaR(I)V

    return-void
.end method

.method public zzbr()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhur;->zzaT(Lcom/google/android/gms/internal/ads/zzhyr;)I

    move-result v0

    return v0
.end method

.method zzbs()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwn;->zzc:Lcom/google/android/gms/internal/ads/zzhwn;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzhwo;->zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzbw()Lcom/google/android/gms/internal/ads/zzhxz;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbe()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object v0

    return-object v0
.end method

.method protected final zzbx(Lcom/google/android/gms/internal/ads/zzhzd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhzd;->zzc(Lcom/google/android/gms/internal/ads/zzhzd;Lcom/google/android/gms/internal/ads/zzhzd;)Lcom/google/android/gms/internal/ads/zzhzd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhwo;->zzt:Lcom/google/android/gms/internal/ads/zzhzd;

    return-void
.end method

.method public bridge synthetic zzcc()Lcom/google/android/gms/internal/ads/zzhxy;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbp()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    return-object v0
.end method

.method public zzdc(Lcom/google/android/gms/internal/ads/zzhvt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhyj;->zza()Lcom/google/android/gms/internal/ads/zzhyj;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhyj;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhyr;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhvu;->zza(Lcom/google/android/gms/internal/ads/zzhvt;)Lcom/google/android/gms/internal/ads/zzhvu;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhyr;->zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhzr;)V

    return-void
.end method

.method public bridge synthetic zzdd()Lcom/google/android/gms/internal/ads/zzhxy;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhwo;->zzbf()Lcom/google/android/gms/internal/ads/zzhwi;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzdh(Lcom/google/android/gms/internal/ads/zzhwn;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
