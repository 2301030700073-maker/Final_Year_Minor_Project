.class public Lcom/google/android/gms/internal/zzlv;
.super Ljava/lang/Object;


# static fields
.field private static zzakU:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/zzlv;->zzakU:I

    return-void
.end method

.method public static zzam(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlv;->zzap(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzan(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlv;->zzao(Landroid/content/Context;)I

    move-result p0

    rem-int/lit16 p0, p0, 0x3e8

    div-int/lit8 p0, p0, 0x64

    add-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private static zzao(Landroid/content/Context;)I
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p0, "Fitness"

    const-string v0, "Could not find package info for Google Play Services"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static zzap(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/google/android/gms/internal/zzlv;->zzakU:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlv;->zzan(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlv;->zzaq(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    sput p0, Lcom/google/android/gms/internal/zzlv;->zzakU:I

    :cond_3
    sget p0, Lcom/google/android/gms/internal/zzlv;->zzakU:I

    return p0
.end method

.method private static zzaq(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
