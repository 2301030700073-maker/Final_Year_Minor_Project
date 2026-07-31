.class public final Lcom/google/android/gms/internal/ads/zzgdo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.7.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgjd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgbk;

.field private final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgjd;Lcom/google/android/gms/internal/ads/zzgbk;Lcom/google/android/gms/internal/ads/zzfxt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzb:Lcom/google/android/gms/internal/ads/zzgjd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzc:Lcom/google/android/gms/internal/ads/zzgbk;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzfxt;->zzb()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(ZJ)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzb:Lcom/google/android/gms/internal/ads/zzgjd;

    const/16 v0, 0x37

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgjd;->zza(I)Lcom/google/android/gms/internal/ads/zzgjb;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjb;->zza()V

    const-string v0, "0.808261137"

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavj;->zza()Lcom/google/android/gms/internal/ads/zzavi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzd:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzavi;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavi;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzavi;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zza:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzavi;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzavi;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzavi;->zzc(J)Lcom/google/android/gms/internal/ads/zzavi;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzavi;->zzf(J)Lcom/google/android/gms/internal/ads/zzavi;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 10
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long p2, p2

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzavi;->zze(J)Lcom/google/android/gms/internal/ads/zzavi;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const-wide/16 p2, -0x1

    .line 11
    :try_start_2
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzavi;->zze(J)Lcom/google/android/gms/internal/ads/zzavi;

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdo;->zzc:Lcom/google/android/gms/internal/ads/zzgbk;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgbk;->zzc()Z

    move-result p3

    if-nez p3, :cond_0

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgbk;->zza()V

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object p3

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgbk;->zzf([BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzavp;

    move-result-object p2

    const/4 p3, 0x5

    .line 16
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzavp;->zzc(I)Lcom/google/android/gms/internal/ads/zzavp;

    const/4 p3, 0x2

    .line 17
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzavp;->zzd(I)Lcom/google/android/gms/internal/ads/zzavp;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhwi;->zzbm()Lcom/google/android/gms/internal/ads/zzhwo;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzavq;

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhur;->zzaN()[B

    move-result-object p2

    const/4 p3, 0x1

    .line 20
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzfyo;->zza([BZ)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 21
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgjb;->zzb(Ljava/lang/Throwable;)V

    .line 22
    throw p2

    :catch_1
    move-exception p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgjb;->zzb(Ljava/lang/Throwable;)V

    const/4 p2, 0x7

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    return-object p2

    :catchall_1
    move-exception p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjb;->zzc()V

    .line 26
    throw p2
.end method
