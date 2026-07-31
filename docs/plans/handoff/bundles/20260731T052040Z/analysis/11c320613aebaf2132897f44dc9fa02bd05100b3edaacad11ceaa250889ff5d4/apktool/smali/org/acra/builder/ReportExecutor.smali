.class public final Lorg/acra/builder/ReportExecutor;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final config:Lorg/acra/config/CoreConfiguration;

.field public final context:Lorg/schabi/newpipe/App;

.field public final crashReportDataFactory:Lorg/acra/data/CrashReportDataFactory;

.field public final defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public isEnabled:Z

.field public final lastActivityManager:Lorg/acra/builder/LastActivityManager;

.field public final processFinisher:Lorg/acra/util/ProcessFinisher;

.field public final reportingAdministrators:Ljava/util/ArrayList;

.field public final schedulerStarter:Lcom/grack/nanojson/JsonBuilder;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;Lorg/acra/data/CrashReportDataFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Lorg/acra/util/ProcessFinisher;Lcom/grack/nanojson/JsonBuilder;Lorg/acra/builder/LastActivityManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/acra/builder/ReportExecutor;->context:Lorg/schabi/newpipe/App;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/acra/builder/ReportExecutor;->config:Lorg/acra/config/CoreConfiguration;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/acra/builder/ReportExecutor;->crashReportDataFactory:Lorg/acra/data/CrashReportDataFactory;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/acra/builder/ReportExecutor;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/acra/builder/ReportExecutor;->processFinisher:Lorg/acra/util/ProcessFinisher;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/acra/builder/ReportExecutor;->schedulerStarter:Lcom/grack/nanojson/JsonBuilder;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/acra/builder/ReportExecutor;->lastActivityManager:Lorg/acra/builder/LastActivityManager;

    .line 17
    .line 18
    invoke-virtual {p2}, Lorg/acra/config/CoreConfiguration;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-class p3, Lorg/acra/config/ReportingAdministrator;

    .line 23
    .line 24
    check-cast p1, Lorg/acra/plugins/ServicePluginLoader;

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Lorg/acra/plugins/ServicePluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lorg/acra/builder/ReportExecutor;->reportingAdministrators:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final handReportToDefaultExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    const-string v0, "ACRA is disabled for "

    .line 2
    .line 3
    iget-object v1, p0, Lorg/acra/builder/ReportExecutor;->context:Lorg/schabi/newpipe/App;

    .line 4
    .line 5
    const-string v2, "ACRA"

    .line 6
    .line 7
    iget-object p0, p0, Lorg/acra/builder/ReportExecutor;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    sget-object v3, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, " - forwarding uncaught Exception on to default ExceptionHandler"

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    sget-object p0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, " - no default ExceptionHandler"

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v0, "ACRA caught a "

    .line 80
    .line 81
    const-string v1, " for "

    .line 82
    .line 83
    invoke-static {v0, p0, v1, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v2, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    return-void
.end method
