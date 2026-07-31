.class public final Lcom/fsck/k9/Core;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# static fields
.field public static final appConfig$delegate:Lkotlin/Lazy;

.field public static final appCoroutineScope$delegate:Lkotlin/Lazy;

.field public static final context$delegate:Lkotlin/Lazy;

.field public static final jobManager$delegate:Lkotlin/Lazy;

.field public static final notificationController$delegate:Lkotlin/Lazy;

.field public static final preferences$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/fsck/k9/Core;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Lcom/fsck/k9/Core;->context$delegate:Lkotlin/Lazy;

    .line 20
    .line 21
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 22
    .line 23
    const/16 v3, 0x9

    .line 24
    .line 25
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 26
    .line 27
    .line 28
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Lcom/fsck/k9/Core;->appConfig$delegate:Lkotlin/Lazy;

    .line 33
    .line 34
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 35
    .line 36
    const/16 v3, 0xa

    .line 37
    .line 38
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Lcom/fsck/k9/Core;->jobManager$delegate:Lkotlin/Lazy;

    .line 46
    .line 47
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 48
    .line 49
    const-string v3, "AppCoroutineScope"

    .line 50
    .line 51
    invoke-direct {v1, v3}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-direct {v3, v0, v1, v4}, Lcom/fsck/k9/Core$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/StringQualifier;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sput-object v1, Lcom/fsck/k9/Core;->appCoroutineScope$delegate:Lkotlin/Lazy;

    .line 65
    .line 66
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 67
    .line 68
    const/16 v3, 0xb

    .line 69
    .line 70
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sput-object v1, Lcom/fsck/k9/Core;->preferences$delegate:Lkotlin/Lazy;

    .line 78
    .line 79
    new-instance v1, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 80
    .line 81
    const/16 v3, 0xc

    .line 82
    .line 83
    invoke-direct {v1, v0, v3}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lcom/fsck/k9/Core;->notificationController$delegate:Lkotlin/Lazy;

    .line 91
    .line 92
    return-void
.end method

.method public static final setServicesEnabled(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-class v0, Lcom/fsck/k9/Preferences;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/fsck/k9/Preferences;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    sget-object v4, Lcom/fsck/k9/Core;->appConfig$delegate:Lkotlin/Lazy;

    .line 39
    .line 40
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/fsck/k9/DefaultAppConfig;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/fsck/k9/DefaultAppConfig;->componentsToDisable:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/Class;

    .line 63
    .line 64
    new-instance v6, Landroid/content/ComponentName;

    .line 65
    .line 66
    invoke-direct {v6, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-ne v6, v2, :cond_2

    .line 74
    .line 75
    move v6, v2

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move v6, v1

    .line 78
    :goto_2
    if-eq v0, v6, :cond_1

    .line 79
    .line 80
    new-instance v6, Landroid/content/ComponentName;

    .line 81
    .line 82
    invoke-direct {v6, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    move v5, v2

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    const/4 v5, 0x2

    .line 90
    :goto_3
    invoke-virtual {v3, v6, v5, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    if-eqz v0, :cond_5

    .line 95
    .line 96
    sget-object p0, Lcom/fsck/k9/Core;->jobManager$delegate:Lkotlin/Lazy;

    .line 97
    .line 98
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Lcom/fsck/k9/job/K9JobManager;

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/fsck/k9/job/K9JobManager;->scheduleAllMailJobs()V

    .line 105
    .line 106
    .line 107
    :cond_5
    return-void
.end method


# virtual methods
.method public final bridge getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
