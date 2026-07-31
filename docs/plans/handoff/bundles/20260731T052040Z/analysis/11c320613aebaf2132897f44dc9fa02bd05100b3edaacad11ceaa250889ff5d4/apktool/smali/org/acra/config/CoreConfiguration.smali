.class public final Lorg/acra/config/CoreConfiguration;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final additionalDropBoxTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final additionalSharedPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final alsoReportToAndroidFramework:Z

.field private final applicationLogFile:Ljava/lang/String;

.field private final applicationLogFileDir:Lorg/acra/file/Directory;

.field private final applicationLogFileLines:I

.field private final attachmentUriProvider:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final attachmentUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final buildConfigClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final deleteUnapprovedReportsOnApplicationStart:Z

.field private final dropboxCollectionMinutes:I

.field private final excludeMatchingSettingsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final excludeMatchingSharedPreferencesKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final includeDropBoxSystemTags:Z

.field private final logcatArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logcatFilterByPid:Z

.field private final logcatReadNonBlocking:Z

.field private final parallel:Z

.field private final pluginConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/acra/config/CoreConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLoader:Lorg/acra/plugins/PluginLoader;

.field private final reportContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation
.end field

.field private final reportFormat:Lorg/acra/data/StringFormat;

.field private final reportSendFailureToast:Ljava/lang/String;

.field private final reportSendSuccessToast:Ljava/lang/String;

.field private final retryPolicyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/config/DefaultRetryPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final sendReportsInDevMode:Z

.field private final sharedPreferencesName:Ljava/lang/String;

.field private final stopServicesOnCrash:Z


# direct methods
.method public constructor <init>()V
    .locals 31

    .line 40
    const v29, 0xfffffff

    const/16 v30, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v30}, Lorg/acra/config/CoreConfiguration;-><init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lorg/acra/ReportField;",
            ">;ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Lorg/acra/file/Directory;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/acra/config/DefaultRetryPolicy;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/acra/data/StringFormat;",
            "Z",
            "Lorg/acra/plugins/PluginLoader;",
            "Ljava/util/List<",
            "+",
            "Lorg/acra/config/CoreConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->sharedPreferencesName:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lorg/acra/config/CoreConfiguration;->includeDropBoxSystemTags:Z

    .line 14
    iput-object p3, p0, Lorg/acra/config/CoreConfiguration;->additionalDropBoxTags:Ljava/util/List;

    .line 15
    iput p4, p0, Lorg/acra/config/CoreConfiguration;->dropboxCollectionMinutes:I

    .line 16
    iput-object p5, p0, Lorg/acra/config/CoreConfiguration;->logcatArguments:Ljava/util/List;

    .line 17
    iput-object p6, p0, Lorg/acra/config/CoreConfiguration;->reportContent:Ljava/util/List;

    .line 18
    iput-boolean p7, p0, Lorg/acra/config/CoreConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    .line 19
    iput-boolean p8, p0, Lorg/acra/config/CoreConfiguration;->alsoReportToAndroidFramework:Z

    .line 20
    iput-object p9, p0, Lorg/acra/config/CoreConfiguration;->additionalSharedPreferences:Ljava/util/List;

    .line 21
    iput-boolean p10, p0, Lorg/acra/config/CoreConfiguration;->logcatFilterByPid:Z

    .line 22
    iput-boolean p11, p0, Lorg/acra/config/CoreConfiguration;->logcatReadNonBlocking:Z

    .line 23
    iput-boolean p12, p0, Lorg/acra/config/CoreConfiguration;->sendReportsInDevMode:Z

    .line 24
    iput-object p13, p0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSharedPreferencesKeys:Ljava/util/List;

    .line 25
    iput-object p14, p0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSettingsKeys:Ljava/util/List;

    .line 26
    iput-object p15, p0, Lorg/acra/config/CoreConfiguration;->buildConfigClass:Ljava/lang/Class;

    move-object/from16 p1, p16

    .line 27
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFile:Ljava/lang/String;

    move/from16 p1, p17

    .line 28
    iput p1, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFileLines:I

    move-object/from16 p1, p18

    .line 29
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFileDir:Lorg/acra/file/Directory;

    move-object/from16 p1, p19

    .line 30
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->retryPolicyClass:Ljava/lang/Class;

    move/from16 p1, p20

    .line 31
    iput-boolean p1, p0, Lorg/acra/config/CoreConfiguration;->stopServicesOnCrash:Z

    move-object/from16 p1, p21

    .line 32
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->attachmentUris:Ljava/util/List;

    move-object/from16 p1, p22

    .line 33
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->attachmentUriProvider:Ljava/lang/Class;

    move-object/from16 p1, p23

    .line 34
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->reportSendSuccessToast:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 35
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->reportSendFailureToast:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 36
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->reportFormat:Lorg/acra/data/StringFormat;

    move/from16 p1, p26

    .line 37
    iput-boolean p1, p0, Lorg/acra/config/CoreConfiguration;->parallel:Z

    move-object/from16 p1, p27

    .line 38
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->pluginLoader:Lorg/acra/plugins/PluginLoader;

    move-object/from16 p1, p28

    .line 39
    iput-object p1, p0, Lorg/acra/config/CoreConfiguration;->pluginConfigurations:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p29

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 1
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    goto :goto_3

    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    .line 2
    const-string v8, "-v"

    const-string/jumbo v9, "time"

    const-string v10, "-t"

    const-string v11, "100"

    filled-new-array {v10, v11, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 3
    sget-object v9, Lorg/acra/ACRAConstants;->DEFAULT_REPORT_FIELDS:Ljava/util/List;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    goto :goto_6

    :cond_6
    move/from16 v10, p7

    :goto_6
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    goto :goto_7

    :cond_7
    move/from16 v12, p8

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    move-object v13, v6

    goto :goto_8

    :cond_8
    move-object/from16 v13, p9

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    goto :goto_9

    :cond_9
    move/from16 v14, p10

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move/from16 v15, p11

    :goto_a
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_b

    :cond_b
    move/from16 v2, p12

    :goto_b
    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_c

    move-object v4, v6

    goto :goto_c

    :cond_c
    move-object/from16 v4, p13

    :goto_c
    and-int/lit16 v11, v0, 0x2000

    if-eqz v11, :cond_d

    move-object v11, v6

    goto :goto_d

    :cond_d
    move-object/from16 v11, p14

    :goto_d
    move-object/from16 v16, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v1, p15

    :goto_e
    const v17, 0x8000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v17, p16

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    const/16 v18, 0x64

    goto :goto_10

    :cond_10
    move/from16 v18, p17

    :goto_10
    const/high16 v19, 0x20000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    .line 4
    sget-object v19, Lorg/acra/file/Directory;->FILES_LEGACY:Lorg/acra/file/Directory;

    goto :goto_11

    :cond_11
    move-object/from16 v19, p18

    :goto_11
    const/high16 v20, 0x40000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    .line 5
    const-class v20, Lorg/acra/config/DefaultRetryPolicy;

    goto :goto_12

    :cond_12
    move-object/from16 v20, p19

    :goto_12
    const/high16 v21, 0x80000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    goto :goto_13

    :cond_13
    move/from16 v21, p20

    :goto_13
    const/high16 v22, 0x100000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    move-object/from16 v22, v6

    goto :goto_14

    :cond_14
    move-object/from16 v22, p21

    :goto_14
    const/high16 v23, 0x200000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    .line 6
    const-class v23, Landroidx/work/OperationKt;

    goto :goto_15

    :cond_15
    move-object/from16 v23, p22

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v24, p23

    :goto_16
    const/high16 v25, 0x800000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v25, p24

    :goto_17
    const/high16 v26, 0x1000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    .line 7
    sget-object v26, Lorg/acra/data/StringFormat;->JSON:Lorg/acra/data/StringFormat;

    goto :goto_18

    :cond_18
    move-object/from16 v26, p25

    :goto_18
    const/high16 v27, 0x2000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    const/16 v27, 0x1

    goto :goto_19

    :cond_19
    move/from16 v27, p26

    :goto_19
    const/high16 v28, 0x4000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1a

    .line 8
    new-instance v28, Lorg/acra/plugins/ServicePluginLoader;

    .line 9
    invoke-direct/range {v28 .. v28}, Ljava/lang/Object;-><init>()V

    goto :goto_1a

    :cond_1a
    move-object/from16 v28, p27

    :goto_1a
    const/high16 v29, 0x8000000

    and-int v0, v0, v29

    if-eqz v0, :cond_1b

    move-object/from16 p29, v6

    :goto_1b
    move-object/from16 p1, p0

    move-object/from16 p16, v1

    move/from16 p13, v2

    move/from16 p3, v3

    move-object/from16 p14, v4

    move-object/from16 p4, v5

    move/from16 p5, v7

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move/from16 p8, v10

    move-object/from16 p15, v11

    move/from16 p9, v12

    move-object/from16 p10, v13

    move/from16 p11, v14

    move/from16 p12, v15

    move-object/from16 p2, v16

    move-object/from16 p17, v17

    move/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move/from16 p21, v21

    move-object/from16 p22, v22

    move-object/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v25

    move-object/from16 p26, v26

    move/from16 p27, v27

    move-object/from16 p28, v28

    goto :goto_1c

    :cond_1b
    move-object/from16 p29, p28

    goto :goto_1b

    .line 10
    :goto_1c
    invoke-direct/range {p1 .. p29}, Lorg/acra/config/CoreConfiguration;-><init>(Ljava/lang/String;ZLjava/util/List;ILjava/util/List;Ljava/util/List;ZZLjava/util/List;ZZZLjava/util/List;Ljava/util/List;Ljava/lang/Class;Ljava/lang/String;ILorg/acra/file/Directory;Ljava/lang/Class;ZLjava/util/List;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/acra/data/StringFormat;ZLorg/acra/plugins/PluginLoader;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getAdditionalDropBoxTags()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->additionalDropBoxTags:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAdditionalSharedPreferences()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->additionalSharedPreferences:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAlsoReportToAndroidFramework()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->alsoReportToAndroidFramework:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getApplicationLogFile()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFile:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApplicationLogFileDir()Lorg/acra/file/Directory;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFileDir:Lorg/acra/file/Directory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getApplicationLogFileLines()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/acra/config/CoreConfiguration;->applicationLogFileLines:I

    .line 2
    .line 3
    return p0
.end method

.method public final getBuildConfigClass()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->buildConfigClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDeleteUnapprovedReportsOnApplicationStart()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->deleteUnapprovedReportsOnApplicationStart:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getDropboxCollectionMinutes()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/acra/config/CoreConfiguration;->dropboxCollectionMinutes:I

    .line 2
    .line 3
    return p0
.end method

.method public final getExcludeMatchingSettingsKeys()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSettingsKeys:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getExcludeMatchingSharedPreferencesKeys()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->excludeMatchingSharedPreferencesKeys:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIncludeDropBoxSystemTags()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->includeDropBoxSystemTags:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getLogcatArguments()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->logcatArguments:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLogcatReadNonBlocking()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->logcatReadNonBlocking:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getParallel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->parallel:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getPluginConfigurations()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->pluginConfigurations:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getPluginLoader()Lorg/acra/plugins/PluginLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->pluginLoader:Lorg/acra/plugins/PluginLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReportContent()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->reportContent:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReportSendFailureToast()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->reportSendFailureToast:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReportSendSuccessToast()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->reportSendSuccessToast:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRetryPolicyClass()Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->retryPolicyClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSendReportsInDevMode()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->sendReportsInDevMode:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getSharedPreferencesName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/acra/config/CoreConfiguration;->sharedPreferencesName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStopServicesOnCrash()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/acra/config/CoreConfiguration;->stopServicesOnCrash:Z

    .line 2
    .line 3
    return p0
.end method
