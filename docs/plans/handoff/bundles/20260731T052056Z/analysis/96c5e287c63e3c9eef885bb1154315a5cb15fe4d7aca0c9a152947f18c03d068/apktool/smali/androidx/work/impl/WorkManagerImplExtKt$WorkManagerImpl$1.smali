.class public final synthetic Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# static fields
.field public static final INSTANCE:Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;

    .line 2
    .line 3
    const-string v4, "createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;"

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const/4 v1, 0x6

    .line 7
    const-class v2, Landroidx/work/Operation$State;

    .line 8
    .line 9
    const-string v3, "createSchedulers"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;->INSTANCE:Landroidx/work/impl/WorkManagerImplExtKt$WorkManagerImpl$1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/content/Context;

    .line 2
    .line 3
    check-cast p2, Landroidx/work/Configuration;

    .line 4
    .line 5
    check-cast p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 6
    .line 7
    check-cast p4, Landroidx/work/impl/WorkDatabase;

    .line 8
    .line 9
    check-cast p5, Landroidx/work/impl/constraints/trackers/Trackers;

    .line 10
    .line 11
    check-cast p6, Landroidx/work/impl/Processor;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-object p0, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Landroidx/work/impl/background/systemjob/SystemJobScheduler;

    .line 25
    .line 26
    invoke-direct {v0, p1, p4, p2}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;)V

    .line 27
    .line 28
    .line 29
    const-class p0, Landroidx/work/impl/background/systemjob/SystemJobService;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-static {p1, p0, v1}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    sget-object p4, Landroidx/work/impl/Schedulers;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, "Created SystemJobScheduler and enabled SystemJobService"

    .line 42
    .line 43
    invoke-virtual {p0, p4, v2}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Landroidx/work/impl/background/greedy/GreedyScheduler;

    .line 47
    .line 48
    move-object p4, p6

    .line 49
    move-object p6, p3

    .line 50
    move-object p3, p5

    .line 51
    new-instance p5, Lcoil3/svg/internal/AndroidSvg;

    .line 52
    .line 53
    invoke-direct {p5, p4, p6}, Lcoil3/svg/internal/AndroidSvg;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 54
    .line 55
    .line 56
    invoke-direct/range {p0 .. p6}, Landroidx/work/impl/background/greedy/GreedyScheduler;-><init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;Lcoil3/svg/internal/AndroidSvg;Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x2

    .line 60
    new-array p1, p1, [Landroidx/work/impl/Scheduler;

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    aput-object v0, p1, p2

    .line 64
    .line 65
    aput-object p0, p1, v1

    .line 66
    .line 67
    invoke-static {p1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method
