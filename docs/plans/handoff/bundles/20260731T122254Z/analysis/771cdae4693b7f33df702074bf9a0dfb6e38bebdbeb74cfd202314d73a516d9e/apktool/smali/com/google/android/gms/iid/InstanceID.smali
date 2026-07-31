.class public Lcom/google/android/gms/iid/InstanceID;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR_BACKOFF:Ljava/lang/String; = "RETRY_LATER"

.field public static final ERROR_MAIN_THREAD:Ljava/lang/String; = "MAIN_THREAD"

.field public static final ERROR_MISSING_INSTANCEID_SERVICE:Ljava/lang/String; = "MISSING_INSTANCEID_SERVICE"

.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final ERROR_TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field static zzawN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/iid/InstanceID;",
            ">;"
        }
    .end annotation
.end field

.field private static zzawO:Lcom/google/android/gms/iid/zzd;

.field private static zzawP:Lcom/google/android/gms/iid/zzc;

.field static zzawT:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field zzawQ:Ljava/security/KeyPair;

.field zzawR:Ljava/lang/String;

.field zzawS:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawN:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/iid/InstanceID;->zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/iid/InstanceID;
    .locals 3

    const-class v0, Lcom/google/android/gms/iid/InstanceID;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string v1, ""

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v1, "subtype"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/iid/zzd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/iid/zzd;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    new-instance v2, Lcom/google/android/gms/iid/zzc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/iid/zzc;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/google/android/gms/iid/InstanceID;->zzawP:Lcom/google/android/gms/iid/zzc;

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->zzau(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/iid/InstanceID;->zzawT:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/iid/InstanceID;->zzawN:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/iid/InstanceID;

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/android/gms/iid/InstanceID;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/gms/iid/InstanceID;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p0, Lcom/google/android/gms/iid/InstanceID;->zzawN:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method static zza(Ljava/security/KeyPair;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    const/16 v1, 0x8

    const/16 v2, 0xb

    invoke-static {p0, v0, v1, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p0, "InstanceID"

    const-string v0, "Unexpected error, device missing required alghorithms"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static zzau(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "InstanceID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Never happens: can\'t find own package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static zzm([B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteInstanceID()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "*"

    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/iid/InstanceID;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzuf()V

    return-void
.end method

.method public deleteToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/iid/InstanceID;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getCreationTime()J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawS:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    const-string v2, "cre"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/iid/zzd;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawS:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawS:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzue()Ljava/security/KeyPair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/iid/InstanceID;->zza(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MAIN_THREAD"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzui()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/iid/zzd;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p3, v0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/iid/InstanceID;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/iid/InstanceID;->zzawT:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/iid/zzd;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v6
.end method

.method public zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "MAIN_THREAD"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/iid/zzd;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v0, "sender"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p2, "subscription"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "delete"

    const-string v0, "1"

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-delete"

    const-string v0, "1"

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "subtype"

    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    :goto_0
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "X-subtype"

    const-string v0, ""

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    :goto_1
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/iid/InstanceID;->zzawP:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzue()Ljava/security/KeyPair;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/iid/zzc;->zza(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/iid/InstanceID;->zzawP:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/iid/zzc;->zzp(Landroid/content/Intent;)Ljava/lang/String;

    return-void
.end method

.method public zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "sender"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p2, p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    :goto_0
    const-string v0, "legacy.register"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "subscription"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "subtype"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-subscription"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "X-subtype"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/google/android/gms/iid/InstanceID;->zzawP:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/iid/InstanceID;->zzue()Ljava/security/KeyPair;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/iid/zzc;->zza(Landroid/os/Bundle;Ljava/security/KeyPair;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/iid/InstanceID;->zzawP:Lcom/google/android/gms/iid/zzc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/iid/zzc;->zzp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method zzue()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawQ:Ljava/security/KeyPair;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzdg(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawQ:Ljava/security/KeyPair;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawQ:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawS:J

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/iid/InstanceID;->zzawS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/iid/zzd;->zze(Ljava/lang/String;J)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawQ:Ljava/security/KeyPair;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawQ:Ljava/security/KeyPair;

    return-object v0
.end method

.method zzuf()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawS:J

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    iget-object v1, p0, Lcom/google/android/gms/iid/InstanceID;->zzawR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->zzdh(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/iid/InstanceID;->zzawQ:Ljava/security/KeyPair;

    return-void
.end method

.method zzug()Lcom/google/android/gms/iid/zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    return-object v0
.end method

.method zzuh()Lcom/google/android/gms/iid/zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawP:Lcom/google/android/gms/iid/zzc;

    return-object v0
.end method

.method zzui()Z
    .locals 8

    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    const-string v1, "appVersion"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/iid/zzd;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v2, Lcom/google/android/gms/iid/InstanceID;->zzawT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/iid/InstanceID;->zzawO:Lcom/google/android/gms/iid/zzd;

    const-string v2, "lastToken"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/iid/zzd;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/32 v2, 0x93a80

    cmp-long v0, v6, v2

    if-lez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    return v1
.end method
