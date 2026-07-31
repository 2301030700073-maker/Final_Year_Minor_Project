.class public final Lexpo/modules/application/ApplicationModuleKt;
.super Ljava/lang/Object;
.source "ApplicationModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0001H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "getPackageInfoCompat",
        "Landroid/content/pm/PackageInfo;",
        "Landroid/content/pm/PackageManager;",
        "packageName",
        "",
        "flags",
        "",
        "getLongVersionCode",
        "",
        "info",
        "expo-application_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lexpo/modules/application/ApplicationModuleKt;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getPackageInfoCompat(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lexpo/modules/application/ApplicationModuleKt;->getPackageInfoCompat(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .locals 2

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    goto :goto_0

    .line 125
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, p0

    :goto_0
    return-wide v0
.end method

.method private static final getPackageInfoCompat(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 110
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    int-to-long v0, p2

    .line 111
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 117
    new-instance p1, Lexpo/modules/application/ApplicationPackageNameNotFoundException;

    invoke-direct {p1, p0}, Lexpo/modules/application/ApplicationPackageNameNotFoundException;-><init>(Landroid/content/pm/PackageManager$NameNotFoundException;)V

    throw p1
.end method

.method static synthetic getPackageInfoCompat$default(Landroid/content/pm/PackageManager;Ljava/lang/String;IILjava/lang/Object;)Landroid/content/pm/PackageInfo;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 108
    :cond_0
    invoke-static {p0, p1, p2}, Lexpo/modules/application/ApplicationModuleKt;->getPackageInfoCompat(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method
