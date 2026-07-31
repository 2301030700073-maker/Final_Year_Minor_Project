.class public final Lorg/schabi/newpipe/NewVersionWorker;
.super Landroidx/work/Worker;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/NewVersionWorker$Companion;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/NewVersionWorker$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/NewVersionWorker;->Companion:Lorg/schabi/newpipe/NewVersionWorker$Companion;

    .line 7
    .line 8
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 9
    .line 10
    const-string v0, "NewVersionWorker"

    .line 11
    .line 12
    sput-object v0, Lorg/schabi/newpipe/NewVersionWorker;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static final enqueueNewVersionCheckingWork(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    sget-object v0, Lorg/schabi/newpipe/NewVersionWorker;->Companion:Lorg/schabi/newpipe/NewVersionWorker$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-class v2, Lorg/schabi/newpipe/NewVersionWorker;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(ILjava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v2, Lkotlin/Pair;

    .line 22
    .line 23
    const-string v3, "isManual"

    .line 24
    .line 25
    invoke-direct {v2, v3, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    new-array p1, p1, [Lkotlin/Pair;

    .line 30
    .line 31
    aput-object v2, p1, v1

    .line 32
    .line 33
    new-instance v2, Landroidx/work/Data$Builder;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Landroidx/work/Data$Builder;-><init>(I)V

    .line 36
    .line 37
    .line 38
    aget-object p1, p1, v1

    .line 39
    .line 40
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1, v1}, Landroidx/work/Data$Builder;->put(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v1, v0, Landroidx/work/OneTimeWorkRequest$Builder;->workSpec:Landroidx/work/impl/model/WorkSpec;

    .line 58
    .line 59
    iput-object p1, v1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 66
    .line 67
    invoke-static {p0}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkManagerImpl;->enqueue(Landroidx/work/OneTimeWorkRequest;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final checkNewVersion()V
    .locals 8

    .line 1
    invoke-static {}, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->isReleaseApk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 16
    .line 17
    const-string v2, "isManual"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    :cond_1
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const v1, 0x7f130519

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-wide/16 v4, 0x0

    .line 50
    .line 51
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    invoke-static {v3, v4}, Lj$/time/Instant;->ofEpochSecond(J)Lj$/time/Instant;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v3}, Lj$/time/Instant;->compareTo(Lj$/time/Instant;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-gez v0, :cond_4

    .line 68
    .line 69
    :cond_2
    sget-object v0, Lorg/schabi/newpipe/DownloaderImpl;->instance:Lorg/schabi/newpipe/DownloaderImpl;

    .line 70
    .line 71
    const-string v3, "https://newpipe.net/api/data.json"

    .line 72
    .line 73
    invoke-virtual {v0, v3}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;)Landroidx/recyclerview/widget/ChildHelper;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :try_start_0
    const-string v4, "expires"

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/ChildHelper;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {}, Lj$/time/ZonedDateTime;->now()Lj$/time/ZonedDateTime;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const-wide/16 v6, 0x6

    .line 92
    .line 93
    invoke-virtual {v5, v6, v7}, Lj$/time/ZonedDateTime;->plusHours(J)Lj$/time/ZonedDateTime;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-eqz v4, :cond_3

    .line 98
    .line 99
    sget-object v6, Lj$/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 100
    .line 101
    invoke-virtual {v6, v4}, Lj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Lj$/time/temporal/TemporalAccessor;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static {v4}, Lj$/time/ZonedDateTime;->from(Lj$/time/temporal/TemporalAccessor;)Lj$/time/ZonedDateTime;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const-wide/16 v6, 0x42

    .line 110
    .line 111
    invoke-virtual {v5, v6, v7}, Lj$/time/ZonedDateTime;->plusHours(J)Lj$/time/ZonedDateTime;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v4, v5, v6}, Lkotlin/ranges/RangesKt;->coerceIn(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    move-object v5, v4

    .line 120
    check-cast v5, Lj$/time/ZonedDateTime;

    .line 121
    .line 122
    :cond_3
    invoke-interface {v5}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    .line 142
    .line 143
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lokhttp3/ConnectionPool;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v0, v0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 151
    .line 152
    check-cast v0, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Lokhttp3/ConnectionPool;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 159
    .line 160
    const-string v1, "flavors"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v1, "newpipe"

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    const-string/jumbo v1, "version"

    .line 173
    .line 174
    .line 175
    const/4 v2, 0x0

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string/jumbo v3, "version_code"

    .line 181
    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    invoke-virtual {v0, v4, v3}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    const-string v4, "apk"

    .line 189
    .line 190
    invoke-virtual {v0, v4, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v1, v3, v0}, Lorg/schabi/newpipe/NewVersionWorker;->compareAppVersionAndShowNotification(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    .line 199
    .line 200
    :catch_1
    :cond_4
    :goto_0
    return-void
.end method

.method public final compareAppVersionAndShowNotification(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    const/16 v0, 0x3f6

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/work/ListenableWorker;->mAppContext:Landroid/content/Context;

    .line 5
    .line 6
    if-lt v0, p2, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/work/ListenableWorker;->mWorkerParams:Landroidx/work/WorkerParameters;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/work/WorkerParameters;->mInputData:Landroidx/work/Data;

    .line 11
    .line 12
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    iget-object p1, p1, Landroidx/work/Data;->values:Ljava/util/HashMap;

    .line 15
    .line 16
    const-string p3, "isManual"

    .line 17
    .line 18
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    instance-of p3, p1, Ljava/lang/Boolean;

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    move-object p2, p1

    .line 27
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 p2, 0x1c

    .line 38
    .line 39
    if-lt p1, p2, :cond_1

    .line 40
    .line 41
    invoke-static {v2}, Lorg/acra/util/PackageManagerWrapperKt;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Landroidx/core/os/ExecutorCompat$HandlerExecutor;

    .line 56
    .line 57
    invoke-direct {p2, p1, v1}, Landroidx/core/os/ExecutorCompat$HandlerExecutor;-><init>(Ljava/lang/Object;I)V

    .line 58
    .line 59
    .line 60
    move-object p1, p2

    .line 61
    :goto_0
    new-instance p2, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/16 p3, 0x17

    .line 64
    .line 65
    invoke-direct {p2, p0, p3}, Lorg/acra/builder/ReportExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    new-instance p0, Landroid/content/Intent;

    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 p2, 0x0

    .line 85
    :goto_1
    const-string p3, "android.intent.action.VIEW"

    .line 86
    .line 87
    invoke-direct {p0, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    .line 89
    .line 90
    const/high16 p2, 0x10000000

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v1, p0, v1}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const p2, 0x7f13003f

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance p3, Landroidx/core/app/NotificationCompat$Builder;

    .line 110
    .line 111
    invoke-direct {p3, v2, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const p2, 0x7f08012e

    .line 115
    .line 116
    .line 117
    iget-object v0, p3, Landroidx/core/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 118
    .line 119
    iput p2, v0, Landroid/app/Notification;->icon:I

    .line 120
    .line 121
    const/4 p2, 0x1

    .line 122
    iput p2, p3, Landroidx/core/app/NotificationCompat$Builder;->mVisibility:I

    .line 123
    .line 124
    const/16 v0, 0x10

    .line 125
    .line 126
    invoke-virtual {p3, v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setFlag(IZ)V

    .line 127
    .line 128
    .line 129
    iput-object p0, p3, Landroidx/core/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 130
    .line 131
    const p0, 0x7f13003d

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    iput-object p0, p3, Landroidx/core/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 143
    .line 144
    new-array p0, p2, [Ljava/lang/Object;

    .line 145
    .line 146
    aput-object p1, p0, v1

    .line 147
    .line 148
    const p1, 0x7f13003c

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    iput-object p0, p3, Landroidx/core/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 160
    .line 161
    new-instance p0, Landroidx/core/app/NotificationManagerCompat;

    .line 162
    .line 163
    invoke-direct {p0, v2}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-eqz p1, :cond_4

    .line 171
    .line 172
    const/16 p1, 0x7d0

    .line 173
    .line 174
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p0, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    return-void
.end method

.method public final doWork()Landroidx/work/ListenableWorker$Result;
    .locals 2

    .line 1
    sget-object v0, Lorg/schabi/newpipe/NewVersionWorker;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/NewVersionWorker;->checkNewVersion()V

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroidx/work/ListenableWorker$Result$Success;

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Success;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    const-string v1, "ReCaptchaException should never happen here."

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    new-instance p0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p0

    .line 25
    const-string v1, "Could not fetch NewPipe API: probably network problem"

    .line 26
    .line 27
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    new-instance p0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 31
    .line 32
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object p0
.end method
