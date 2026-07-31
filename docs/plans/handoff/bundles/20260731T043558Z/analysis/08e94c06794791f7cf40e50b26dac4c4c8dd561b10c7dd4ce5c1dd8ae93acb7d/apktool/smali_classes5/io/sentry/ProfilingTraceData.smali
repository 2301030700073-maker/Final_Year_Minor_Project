.class public final Lio/sentry/ProfilingTraceData;
.super Ljava/lang/Object;
.source "ProfilingTraceData.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/ProfilingTraceData$JsonKeys;,
        Lio/sentry/ProfilingTraceData$Deserializer;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENVIRONMENT:Ljava/lang/String; = "production"

.field public static final TRUNCATION_REASON_BACKGROUNDED:Ljava/lang/String; = "backgrounded"

.field public static final TRUNCATION_REASON_NORMAL:Ljava/lang/String; = "normal"

.field public static final TRUNCATION_REASON_TIMEOUT:Ljava/lang/String; = "timeout"


# instance fields
.field private androidApiLevel:I

.field private buildId:Ljava/lang/String;

.field private cpuArchitecture:Ljava/lang/String;

.field private deviceCpuFrequencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceCpuFrequenciesReader:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private deviceIsEmulator:Z

.field private deviceLocale:Ljava/lang/String;

.field private deviceManufacturer:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceOsBuildNumber:Ljava/lang/String;

.field private deviceOsName:Ljava/lang/String;

.field private deviceOsVersion:Ljava/lang/String;

.field private devicePhysicalMemoryBytes:Ljava/lang/String;

.field private durationNs:Ljava/lang/String;

.field private environment:Ljava/lang/String;

.field private final measurementsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field private profileId:Ljava/lang/String;

.field private release:Ljava/lang/String;

.field private sampledProfile:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private final traceFile:Ljava/io/File;

.field private traceId:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;

.field private transactionName:Ljava/lang/String;

.field private transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;"
        }
    .end annotation
.end field

.field private truncationReason:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private versionCode:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "dummy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Lio/sentry/ITransaction;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/ProfilingTraceData$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lio/sentry/ProfilingTraceData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lio/sentry/ITransaction;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 83
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    move-object v3, v4

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface/range {p2 .. p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-interface/range {p2 .. p2}, Lio/sentry/ITransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v5

    invoke-virtual {v5}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-interface/range {p2 .. p2}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v6

    invoke-virtual {v6}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lio/sentry/ProfilingTraceData$$ExternalSyntheticLambda0;

    move-object v10, v7

    invoke-direct {v7}, Lio/sentry/ProfilingTraceData$$ExternalSyntheticLambda0;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    move-object/from16 v20, v7

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string v7, "0"

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "normal"

    invoke-direct/range {v0 .. v20}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    const/4 v1, 0x0

    .line 73
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    move-object v1, p1

    .line 126
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->traceFile:Ljava/io/File;

    move-object v1, p2

    .line 127
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    move-object v1, p9

    .line 128
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    move-object v1, p10

    .line 129
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequenciesReader:Ljava/util/concurrent/Callable;

    move v1, p8

    .line 132
    iput v1, v0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    .line 133
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    .line 134
    const-string v1, ""

    if-eqz p11, :cond_0

    move-object v2, p11

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    if-eqz p12, :cond_1

    move-object v2, p12

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 135
    :goto_1
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    if-eqz p13, :cond_2

    move-object/from16 v2, p13

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 136
    :goto_2
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    if-eqz p14, :cond_3

    .line 137
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    if-eqz p15, :cond_4

    move-object/from16 v2, p15

    goto :goto_4

    .line 139
    :cond_4
    const-string v2, "0"

    :goto_4
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    .line 140
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    .line 141
    const-string v2, "android"

    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    .line 142
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    if-eqz p16, :cond_5

    move-object/from16 v2, p16

    goto :goto_5

    :cond_5
    move-object v2, v1

    .line 143
    :goto_5
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    move-object v2, p3

    .line 146
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    .line 147
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "unknown"

    goto :goto_6

    :cond_6
    move-object v2, p4

    :goto_6
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    move-object v2, p7

    .line 148
    iput-object v2, v0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    .line 151
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->versionCode:Ljava/lang/String;

    if-eqz p17, :cond_7

    move-object/from16 v1, p17

    .line 152
    :cond_7
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    move-object v1, p5

    .line 155
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    move-object v1, p6

    .line 156
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    .line 157
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    if-eqz p18, :cond_8

    move-object/from16 v1, p18

    goto :goto_7

    .line 158
    :cond_8
    const-string v1, "production"

    :goto_7
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 159
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Lio/sentry/ProfilingTraceData;->isTruncationReasonValid()Z

    move-result v1

    if-nez v1, :cond_9

    .line 161
    const-string v1, "normal"

    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    :cond_9
    move-object/from16 v1, p20

    .line 163
    iput-object v1, v0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$1002(Lio/sentry/ProfilingTraceData;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/ProfilingTraceData;I)I
    .locals 0

    .line 21
    iput p1, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    return p1
.end method

.method static synthetic access$1102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->versionCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lio/sentry/ProfilingTraceData;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2002(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lio/sentry/ProfilingTraceData;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2502(Lio/sentry/ProfilingTraceData;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$2602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lio/sentry/ProfilingTraceData;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    return p1
.end method

.method static synthetic access$902(Lio/sentry/ProfilingTraceData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    return-object p1
.end method

.method private isTruncationReasonValid()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    const-string v1, "timeout"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    const-string v1, "backgrounded"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$new$0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAndroidApiLevel()I
    .locals 1

    .line 179
    iget v0, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    return v0
.end method

.method public getBuildId()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuArchitecture()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCpuFrequencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceLocale()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsBuildNumber()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsName()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePhysicalMemoryBytes()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationNs()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    return-object v0
.end method

.method public getMeasurementsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/profilemeasurements/ProfileMeasurement;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    return-object v0
.end method

.method public getSampledProfile()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 271
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTraceFile()Ljava/io/File;
    .locals 1

    .line 175
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->traceFile:Ljava/io/File;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    return-object v0
.end method

.method public getTruncationReason()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    return-object v0
.end method

.method public isDeviceIsEmulator()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    return v0
.end method

.method public readDeviceCpuFrequencies()V
    .locals 1

    .line 368
    :try_start_0
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequenciesReader:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 409
    const-string v0, "android_api_level"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget v1, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 410
    const-string v0, "device_locale"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 411
    const-string v0, "device_manufacturer"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 412
    const-string v0, "device_model"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 413
    const-string v0, "device_os_build_number"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 414
    const-string v0, "device_os_name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceOsName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 415
    const-string v0, "device_os_version"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 416
    const-string v0, "device_is_emulator"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-boolean v1, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Z)Lio/sentry/ObjectWriter;

    .line 417
    const-string v0, "architecture"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 419
    const-string v0, "device_cpu_frequencies"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 420
    const-string v0, "device_physical_memory_bytes"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 421
    const-string v0, "platform"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->platform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 422
    const-string v0, "build_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 423
    const-string v0, "transaction_name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 424
    const-string v0, "duration_ns"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 425
    const-string v0, "version_name"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 426
    const-string v0, "version_code"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->versionCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 427
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const-string v0, "transactions"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 430
    :cond_0
    const-string v0, "transaction_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 431
    const-string v0, "trace_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 432
    const-string v0, "profile_id"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 433
    const-string v0, "environment"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 434
    const-string v0, "truncation_reason"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 435
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 436
    const-string v0, "sampled_profile"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 438
    :cond_1
    const-string v0, "measurements"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->measurementsMap:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 439
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 440
    iget-object v0, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 441
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 442
    iget-object v2, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 443
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 444
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 447
    :cond_2
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setAndroidApiLevel(I)V
    .locals 0

    .line 279
    iput p1, p0, Lio/sentry/ProfilingTraceData;->androidApiLevel:I

    return-void
.end method

.method public setBuildId(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->buildId:Ljava/lang/String;

    return-void
.end method

.method public setCpuArchitecture(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->cpuArchitecture:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCpuFrequencies(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceCpuFrequencies:Ljava/util/List;

    return-void
.end method

.method public setDeviceIsEmulator(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lio/sentry/ProfilingTraceData;->deviceIsEmulator:Z

    return-void
.end method

.method public setDeviceLocale(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceLocale:Ljava/lang/String;

    return-void
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceManufacturer:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setDeviceOsBuildNumber(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsBuildNumber:Ljava/lang/String;

    return-void
.end method

.method public setDeviceOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->deviceOsVersion:Ljava/lang/String;

    return-void
.end method

.method public setDevicePhysicalMemoryBytes(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->devicePhysicalMemoryBytes:Ljava/lang/String;

    return-void
.end method

.method public setDurationNs(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->durationNs:Ljava/lang/String;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->environment:Ljava/lang/String;

    return-void
.end method

.method public setProfileId(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->profileId:Ljava/lang/String;

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->release:Ljava/lang/String;

    return-void
.end method

.method public setSampledProfile(Ljava/lang/String;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->sampledProfile:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->traceId:Ljava/lang/String;

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public setTransactionName(Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactionName:Ljava/lang/String;

    return-void
.end method

.method public setTransactions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/ProfilingTransactionData;",
            ">;)V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->transactions:Ljava/util/List;

    return-void
.end method

.method public setTruncationReason(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->truncationReason:Ljava/lang/String;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lio/sentry/ProfilingTraceData;->unknown:Ljava/util/Map;

    return-void
.end method
