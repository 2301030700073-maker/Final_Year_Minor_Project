.class public final synthetic Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/acra/sender/JobSenderService;

    .line 15
    .line 16
    check-cast v3, Lorg/acra/config/CoreConfiguration;

    .line 17
    .line 18
    check-cast v2, Landroid/os/PersistableBundle;

    .line 19
    .line 20
    check-cast v1, Landroid/app/job/JobParameters;

    .line 21
    .line 22
    sget v0, Lorg/acra/sender/JobSenderService;->$r8$clinit:I

    .line 23
    .line 24
    new-instance v0, Lorg/acra/util/ProcessFinisher;

    .line 25
    .line 26
    invoke-direct {v0, p0, v3}, Lorg/acra/util/ProcessFinisher;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2, v3}, Lorg/acra/util/ProcessFinisher;->sendReports(ZLandroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    check-cast p0, Lorg/acra/collector/Collector;

    .line 43
    .line 44
    check-cast v3, Lorg/acra/data/CrashReportDataFactory;

    .line 45
    .line 46
    check-cast v2, Lorg/acra/builder/ReportBuilder;

    .line 47
    .line 48
    check-cast v1, Lorg/acra/data/CrashReportData;

    .line 49
    .line 50
    const-string v0, "ACRA"

    .line 51
    .line 52
    :try_start_0
    sget-object v4, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 53
    .line 54
    iget-object v4, v3, Lorg/acra/data/CrashReportDataFactory;->context:Lorg/schabi/newpipe/App;

    .line 55
    .line 56
    iget-object v3, v3, Lorg/acra/data/CrashReportDataFactory;->config:Lorg/acra/config/CoreConfiguration;

    .line 57
    .line 58
    invoke-interface {p0, v4, v3, v2, v1}, Lorg/acra/collector/Collector;->collect(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/builder/ReportBuilder;Lorg/acra/data/CrashReportData;)V
    :try_end_0
    .catch Lorg/acra/collector/CollectorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    move-exception v1

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :goto_0
    sget-object v2, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    const-string v2, "Error in collector "

    .line 77
    .line 78
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v0, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_1
    sget-object v1, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 87
    .line 88
    const-string v1, ""

    .line 89
    .line 90
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void

    .line 94
    :pswitch_1
    check-cast p0, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 95
    .line 96
    check-cast v3, Lcom/google/android/exoplayer2/source/MediaSourceEventListener;

    .line 97
    .line 98
    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 99
    .line 100
    check-cast v1, Lcom/google/android/exoplayer2/source/MediaLoadData;

    .line 101
    .line 102
    invoke-static {p0, v3, v2, v1}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->$r8$lambda$QH64QAjbtLmv5GJw9uCjGyEn9Ls(Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_2
    check-cast p0, Ljava/util/List;

    .line 107
    .line 108
    check-cast v3, Landroidx/work/impl/model/WorkGenerationalId;

    .line 109
    .line 110
    check-cast v2, Landroidx/work/Configuration;

    .line 111
    .line 112
    check-cast v1, Landroidx/work/impl/WorkDatabase;

    .line 113
    .line 114
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_0

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Landroidx/work/impl/Scheduler;

    .line 129
    .line 130
    iget-object v5, v3, Landroidx/work/impl/model/WorkGenerationalId;->workSpecId:Ljava/lang/String;

    .line 131
    .line 132
    invoke-interface {v4, v5}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_0
    invoke-static {v2, v1, p0}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
