.class public final Lcom/google/android/gms/internal/zzkz;
.super Ljava/lang/Object;


# static fields
.field private static zzacJ:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzkz;->zzacJ:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static zzai(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zzbN(I)I
    .locals 0

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public static zzbO(I)I
    .locals 0

    rem-int/lit16 p0, p0, 0x3e8

    div-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public static zzbP(I)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzkz;->zzbO(I)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
