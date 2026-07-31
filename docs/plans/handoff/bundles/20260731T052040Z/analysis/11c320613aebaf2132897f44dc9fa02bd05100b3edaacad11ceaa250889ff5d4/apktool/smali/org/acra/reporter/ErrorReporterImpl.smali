.class public final Lorg/acra/reporter/ErrorReporterImpl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lorg/acra/ErrorReporter;


# instance fields
.field public final context:Lorg/schabi/newpipe/App;

.field public final customData:Ljava/util/HashMap;

.field public final defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final reportExecutor:Lorg/acra/builder/ReportExecutor;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;Z)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Lorg/schabi/newpipe/App;

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/acra/reporter/ErrorReporterImpl;->customData:Ljava/util/HashMap;

    .line 12
    .line 13
    new-instance v4, Lorg/acra/data/CrashReportDataFactory;

    .line 14
    .line 15
    invoke-direct {v4, p1, p2}, Lorg/acra/data/CrashReportDataFactory;-><init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v4, Lorg/acra/data/CrashReportDataFactory;->collectors:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    move-object v1, v0

    .line 35
    check-cast v1, Lorg/acra/collector/Collector;

    .line 36
    .line 37
    instance-of v0, v1, Lorg/acra/collector/ApplicationStartupCollector;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    :try_start_0
    move-object v0, v1

    .line 42
    check-cast v0, Lorg/acra/collector/ApplicationStartupCollector;

    .line 43
    .line 44
    iget-object v2, v4, Lorg/acra/data/CrashReportDataFactory;->context:Lorg/schabi/newpipe/App;

    .line 45
    .line 46
    iget-object v3, v4, Lorg/acra/data/CrashReportDataFactory;->config:Lorg/acra/config/CoreConfiguration;

    .line 47
    .line 48
    invoke-interface {v0, v2, v3}, Lorg/acra/collector/ApplicationStartupCollector;->collectApplicationStartUp(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    sget-object v2, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, " failed to collect its startup data"

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "ACRA"

    .line 70
    .line 71
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iput-object v5, p0, Lorg/acra/reporter/ErrorReporterImpl;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 80
    .line 81
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 82
    .line 83
    .line 84
    new-instance v8, Lorg/acra/builder/LastActivityManager;

    .line 85
    .line 86
    iget-object p1, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Lorg/schabi/newpipe/App;

    .line 87
    .line 88
    invoke-direct {v8, p1}, Lorg/acra/builder/LastActivityManager;-><init>(Lorg/schabi/newpipe/App;)V

    .line 89
    .line 90
    .line 91
    new-instance v6, Lorg/acra/util/ProcessFinisher;

    .line 92
    .line 93
    iget-object p1, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Lorg/schabi/newpipe/App;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-direct {v6, v0, p1, p2, v8}, Lorg/acra/util/ProcessFinisher;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v7, Lcom/grack/nanojson/JsonBuilder;

    .line 100
    .line 101
    invoke-direct {v7, p1, p2}, Lcom/grack/nanojson/JsonBuilder;-><init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lorg/acra/builder/ReportExecutor;

    .line 105
    .line 106
    iget-object v2, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Lorg/schabi/newpipe/App;

    .line 107
    .line 108
    move-object v3, p2

    .line 109
    invoke-direct/range {v1 .. v8}, Lorg/acra/builder/ReportExecutor;-><init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;Lorg/acra/data/CrashReportDataFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Lorg/acra/util/ProcessFinisher;Lcom/grack/nanojson/JsonBuilder;Lorg/acra/builder/LastActivityManager;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 113
    .line 114
    iput-boolean p3, v1, Lorg/acra/builder/ReportExecutor;->isEnabled:Z

    .line 115
    .line 116
    new-instance p1, Lcoil3/ComponentRegistry$Builder;

    .line 117
    .line 118
    iget-object p0, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Lorg/schabi/newpipe/App;

    .line 119
    .line 120
    invoke-direct {p1, p0, v3, v7}, Lcoil3/ComponentRegistry$Builder;-><init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;Lcom/grack/nanojson/JsonBuilder;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const/16 v1, 0xc

    .line 128
    .line 129
    const/4 v2, -0x1

    .line 130
    invoke-virtual {p2, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 131
    .line 132
    .line 133
    new-instance v1, Landroid/os/Handler;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    .line 141
    .line 142
    new-instance p0, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;

    .line 143
    .line 144
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/acra/startup/StartupProcessorExecutor$$ExternalSyntheticLambda0;-><init>(Lcoil3/ComponentRegistry$Builder;Ljava/util/Calendar;ZI)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    .line 149
    .line 150
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "acra.disable"

    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "acra.enable"

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 23
    const/4 v1, 0x1

    .line 24
    :try_start_0
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    xor-int/2addr p2, v1

    .line 29
    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    sget-object p1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const-string p1, "enabled"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-string p1, "disabled"

    .line 41
    .line 42
    :goto_1
    iget-object p2, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Lorg/schabi/newpipe/App;

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "ACRA is "

    .line 51
    .line 52
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p1, " for "

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string p2, "ACRA"

    .line 71
    .line 72
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 76
    .line 77
    iput-boolean v1, p0, Lorg/acra/builder/ReportExecutor;->isEnabled:Z

    .line 78
    .line 79
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const-string v0, "ACRA"

    .line 2
    .line 3
    const-string v1, "ACRA caught a "

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lorg/acra/reporter/ErrorReporterImpl;->reportExecutor:Lorg/acra/builder/ReportExecutor;

    .line 12
    .line 13
    iget-boolean v3, v2, Lorg/acra/builder/ReportExecutor;->isEnabled:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Lorg/acra/builder/ReportExecutor;->handReportToDefaultExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    :try_start_0
    sget-object v3, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lorg/acra/reporter/ErrorReporterImpl;->context:Lorg/schabi/newpipe/App;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " for "

    .line 46
    .line 47
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    new-instance v1, Lorg/acra/builder/ReportBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Lorg/acra/builder/ReportBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, v1, Lorg/acra/builder/ReportBuilder;->uncaughtExceptionThread:Ljava/lang/Thread;

    .line 66
    .line 67
    iput-object p2, v1, Lorg/acra/builder/ReportBuilder;->exception:Ljava/lang/Throwable;

    .line 68
    .line 69
    iget-object p0, p0, Lorg/acra/reporter/ErrorReporterImpl;->customData:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iget-object v3, v1, Lorg/acra/builder/ReportBuilder;->customData:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v3, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x1

    .line 80
    iput-boolean p0, v1, Lorg/acra/builder/ReportBuilder;->isEndApplication:Z

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lorg/acra/builder/ReportBuilder;->build(Lorg/acra/builder/ReportExecutor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    move-exception p0

    .line 87
    sget-object v1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 88
    .line 89
    const-string v1, "ACRA failed to capture the error - handing off to native error reporter"

    .line 90
    .line 91
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p1, p2}, Lorg/acra/builder/ReportExecutor;->handReportToDefaultExceptionHandler(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
