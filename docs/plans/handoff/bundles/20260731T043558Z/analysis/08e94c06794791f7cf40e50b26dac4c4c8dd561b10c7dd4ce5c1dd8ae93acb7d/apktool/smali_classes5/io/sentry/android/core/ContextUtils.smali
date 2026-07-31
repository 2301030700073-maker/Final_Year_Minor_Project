.class public final Lio/sentry/android/core/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
    }
.end annotation


# static fields
.field private static final applicationName:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final deviceName:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final isForegroundImportance:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticAppInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticAppInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticPackageInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticPackageInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/android/core/util/AndroidLazyEvaluator<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->deviceName:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 75
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->isForegroundImportance:Lio/sentry/util/LazyEvaluator;

    .line 95
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 107
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 117
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->applicationName:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 142
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 156
    new-instance v0, Lio/sentry/android/core/util/AndroidLazyEvaluator;

    new-instance v1, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lio/sentry/android/core/ContextUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;-><init>(Lio/sentry/android/core/util/AndroidLazyEvaluator$AndroidEvaluator;)V

    sput-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method static getApplicationInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 221
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 222
    sget-object p1, Lio/sentry/android/core/ContextUtils;->staticAppInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0

    .line 224
    :cond_0
    sget-object p1, Lio/sentry/android/core/ContextUtils;->staticAppInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 331
    sget-object v0, Lio/sentry/android/core/ContextUtils;->applicationName:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getArchitectures(Lio/sentry/android/core/BuildInfoProvider;)[Ljava/lang/String;
    .locals 2

    .line 372
    invoke-virtual {p0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p0

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    .line 373
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 375
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v1, p0, v0

    :goto_0
    return-object p0
.end method

.method static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 365
    sget-object v0, Lio/sentry/android/core/ContextUtils;->deviceName:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getDisplayMetrics(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 342
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 344
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting DisplayMetrics."

    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getFamily(Lio/sentry/ILogger;)Ljava/lang/String;
    .locals 3

    .line 357
    :try_start_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, " "

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 359
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting device family."

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getKernelVersion(Lio/sentry/ILogger;)Ljava/lang/String;
    .locals 4

    .line 282
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/version"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 288
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 288
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    .line 291
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Exception while attempting to read kernel information"

    invoke-interface {p0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static getMemInfo(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;
    .locals 3

    .line 388
    const-string v0, "Error getting MemoryInfo."

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "activity"

    .line 389
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 390
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz p0, :cond_0

    .line 392
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    return-object v2

    .line 395
    :cond_0
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 398
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p1, v2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method static getPackageInfo(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 197
    :try_start_0
    invoke-virtual {p3}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p3

    const/16 v0, 0x21

    if-lt p3, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 205
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p3, "Error getting package info."

    invoke-interface {p2, p1, p3, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 176
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    .line 177
    sget-object p1, Lio/sentry/android/core/ContextUtils;->staticPackageInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    return-object p0

    .line 179
    :cond_0
    sget-object p1, Lio/sentry/android/core/ContextUtils;->staticPackageInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->getValue(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method static getVersionCode(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;
    .locals 1

    .line 238
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 239
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 241
    :cond_0
    invoke-static {p0}, Lio/sentry/android/core/ContextUtils;->getVersionCodeDep(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getVersionCodeDep(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 0

    .line 257
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getVersionName(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 0

    .line 252
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public static isForegroundImportance()Z
    .locals 1

    .line 268
    sget-object v0, Lio/sentry/android/core/ContextUtils;->isForegroundImportance:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_name"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$1()Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    .line 79
    :try_start_0
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 81
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 82
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 86
    :catchall_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$2(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 100
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$static$3(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$static$4(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 122
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_1

    .line 124
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 125
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$static$5(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x80

    .line 150
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    .line 148
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$static$6(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 161
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static registerReceiver(Landroid/content/Context;Lio/sentry/SentryOptions;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .line 409
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    invoke-static {p0, v0, p2, p3}, Lio/sentry/android/core/ContextUtils;->registerReceiver(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static registerReceiver(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .line 419
    invoke-virtual {p1}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    const/4 p1, 0x4

    .line 424
    invoke-virtual {p0, p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 426
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static resetInstance()V
    .locals 1

    .line 476
    sget-object v0, Lio/sentry/android/core/ContextUtils;->deviceName:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 477
    sget-object v0, Lio/sentry/android/core/ContextUtils;->isForegroundImportance:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->resetValue()V

    .line 478
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 479
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticPackageInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 480
    sget-object v0, Lio/sentry/android/core/ContextUtils;->applicationName:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 481
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo33:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    .line 482
    sget-object v0, Lio/sentry/android/core/ContextUtils;->staticAppInfo:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->resetValue()V

    return-void
.end method

.method static retrieveSideLoadedInfo(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
    .locals 3

    const/4 v0, 0x0

    .line 304
    :try_start_0
    invoke-static {p0, p2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 308
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 315
    new-instance v1, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2, p0}, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;-><init>(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_0
    move-object p2, v0

    .line 319
    :catch_1
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "%s package isn\'t installed."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method static setAppPackageInfo(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/protocol/App;)V
    .locals 5

    .line 434
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lio/sentry/protocol/App;->setAppIdentifier(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lio/sentry/protocol/App;->setAppVersion(Ljava/lang/String;)V

    .line 436
    invoke-static {p0, p1}, Lio/sentry/android/core/ContextUtils;->getVersionCode(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/sentry/protocol/App;->setAppBuild(Ljava/lang/String;)V

    .line 438
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 439
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 440
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v0, :cond_1

    .line 442
    array-length v1, v0

    if-lez v1, :cond_1

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 446
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 447
    aget-object v2, v0, v1

    const/16 v3, 0x2e

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    aget v3, p0, v1

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 453
    const-string v3, "granted"

    goto :goto_1

    :cond_0
    const-string v3, "not_granted"

    :goto_1
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {p2, p1}, Lio/sentry/protocol/App;->setPermissions(Ljava/util/Map;)V

    return-void
.end method
