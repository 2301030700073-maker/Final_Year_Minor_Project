.class public final Lcom/google/api/Service;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Service.java"

# interfaces
.implements Lcom/google/api/ServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Service$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Service;",
        "Lcom/google/api/Service$Builder;",
        ">;",
        "Lcom/google/api/ServiceOrBuilder;"
    }
.end annotation


# static fields
.field public static final APIS_FIELD_NUMBER:I = 0x3

.field public static final AUTHENTICATION_FIELD_NUMBER:I = 0xb

.field public static final BACKEND_FIELD_NUMBER:I = 0x8

.field public static final BILLING_FIELD_NUMBER:I = 0x1a

.field public static final CONFIG_VERSION_FIELD_NUMBER:I = 0x14

.field public static final CONTEXT_FIELD_NUMBER:I = 0xc

.field public static final CONTROL_FIELD_NUMBER:I = 0x15

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Service;

.field public static final DOCUMENTATION_FIELD_NUMBER:I = 0x6

.field public static final ENDPOINTS_FIELD_NUMBER:I = 0x12

.field public static final ENUMS_FIELD_NUMBER:I = 0x5

.field public static final HTTP_FIELD_NUMBER:I = 0x9

.field public static final ID_FIELD_NUMBER:I = 0x21

.field public static final LOGGING_FIELD_NUMBER:I = 0x1b

.field public static final LOGS_FIELD_NUMBER:I = 0x17

.field public static final METRICS_FIELD_NUMBER:I = 0x18

.field public static final MONITORED_RESOURCES_FIELD_NUMBER:I = 0x19

.field public static final MONITORING_FIELD_NUMBER:I = 0x1c

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Service;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCER_PROJECT_ID_FIELD_NUMBER:I = 0x16

.field public static final QUOTA_FIELD_NUMBER:I = 0xa

.field public static final SOURCE_INFO_FIELD_NUMBER:I = 0x25

.field public static final SYSTEM_PARAMETERS_FIELD_NUMBER:I = 0x1d

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final TYPES_FIELD_NUMBER:I = 0x4

.field public static final USAGE_FIELD_NUMBER:I = 0xf


# instance fields
.field private apis_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation
.end field

.field private authentication_:Lcom/google/api/Authentication;

.field private backend_:Lcom/google/api/Backend;

.field private billing_:Lcom/google/api/Billing;

.field private bitField0_:I

.field private configVersion_:Lcom/google/protobuf/UInt32Value;

.field private context_:Lcom/google/api/Context;

.field private control_:Lcom/google/api/Control;

.field private documentation_:Lcom/google/api/Documentation;

.field private endpoints_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field private enums_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation
.end field

.field private http_:Lcom/google/api/Http;

.field private id_:Ljava/lang/String;

.field private logging_:Lcom/google/api/Logging;

.field private logs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private metrics_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private monitoring_:Lcom/google/api/Monitoring;

.field private name_:Ljava/lang/String;

.field private producerProjectId_:Ljava/lang/String;

.field private quota_:Lcom/google/api/Quota;

.field private sourceInfo_:Lcom/google/api/SourceInfo;

.field private systemParameters_:Lcom/google/api/SystemParameters;

.field private title_:Ljava/lang/String;

.field private types_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation
.end field

.field private usage_:Lcom/google/api/Usage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5290
    new-instance v0, Lcom/google/api/Service;

    invoke-direct {v0}, Lcom/google/api/Service;-><init>()V

    .line 5293
    sput-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    .line 5294
    const-class v1, Lcom/google/api/Service;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 47
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 48
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 49
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 50
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 51
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 52
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Service;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setConfigVersion(Lcom/google/protobuf/UInt32Value;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/Service;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearTitle()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/Service;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setProducerProjectId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearProducerProjectId()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setProducerProjectIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setApis(ILcom/google/protobuf/Api;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/Service;Lcom/google/protobuf/Api;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addApis(Lcom/google/protobuf/Api;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addApis(ILcom/google/protobuf/Api;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllApis(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeConfigVersion(Lcom/google/protobuf/UInt32Value;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearApis()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/Service;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeApis(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setTypes(ILcom/google/protobuf/Type;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/api/Service;Lcom/google/protobuf/Type;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addTypes(Lcom/google/protobuf/Type;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addTypes(ILcom/google/protobuf/Type;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllTypes(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearTypes()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/api/Service;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeTypes(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setEnums(ILcom/google/protobuf/Enum;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/api/Service;Lcom/google/protobuf/Enum;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addEnums(Lcom/google/protobuf/Enum;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearConfigVersion()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addEnums(ILcom/google/protobuf/Enum;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllEnums(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearEnums()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/api/Service;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeEnums(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/api/Service;Lcom/google/api/Documentation;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setDocumentation(Lcom/google/api/Documentation;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/api/Service;Lcom/google/api/Documentation;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeDocumentation(Lcom/google/api/Documentation;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearDocumentation()V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/api/Service;Lcom/google/api/Backend;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setBackend(Lcom/google/api/Backend;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/api/Service;Lcom/google/api/Backend;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeBackend(Lcom/google/api/Backend;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearBackend()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Service;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/api/Service;Lcom/google/api/Http;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setHttp(Lcom/google/api/Http;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/api/Service;Lcom/google/api/Http;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeHttp(Lcom/google/api/Http;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearHttp()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/api/Service;Lcom/google/api/Quota;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setQuota(Lcom/google/api/Quota;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/api/Service;Lcom/google/api/Quota;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeQuota(Lcom/google/api/Quota;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearQuota()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/api/Service;Lcom/google/api/Authentication;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setAuthentication(Lcom/google/api/Authentication;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/api/Service;Lcom/google/api/Authentication;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeAuthentication(Lcom/google/api/Authentication;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearAuthentication()V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/api/Service;Lcom/google/api/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setContext(Lcom/google/api/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearName()V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/api/Service;Lcom/google/api/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeContext(Lcom/google/api/Context;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearContext()V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/api/Service;Lcom/google/api/Usage;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setUsage(Lcom/google/api/Usage;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/api/Service;Lcom/google/api/Usage;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeUsage(Lcom/google/api/Usage;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearUsage()V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setEndpoints(ILcom/google/api/Endpoint;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/api/Service;Lcom/google/api/Endpoint;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addEndpoints(Lcom/google/api/Endpoint;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addEndpoints(ILcom/google/api/Endpoint;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllEndpoints(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearEndpoints()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/api/Service;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeEndpoints(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/api/Service;Lcom/google/api/Control;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setControl(Lcom/google/api/Control;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/api/Service;Lcom/google/api/Control;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeControl(Lcom/google/api/Control;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearControl()V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setLogs(ILcom/google/api/LogDescriptor;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/api/Service;Lcom/google/api/LogDescriptor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addLogs(Lcom/google/api/LogDescriptor;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addLogs(ILcom/google/api/LogDescriptor;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllLogs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearLogs()V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/api/Service;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeLogs(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/Service;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setMetrics(ILcom/google/api/MetricDescriptor;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/api/Service;Lcom/google/api/MetricDescriptor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addMetrics(Lcom/google/api/MetricDescriptor;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addMetrics(ILcom/google/api/MetricDescriptor;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllMetrics(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearMetrics()V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/api/Service;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeMetrics(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/api/Service;Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/api/Service;->addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/api/Service;Ljava/lang/Iterable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->addAllMonitoredResources(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearId()V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearMonitoredResources()V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/api/Service;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->removeMonitoredResources(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/api/Service;Lcom/google/api/Billing;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setBilling(Lcom/google/api/Billing;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/api/Service;Lcom/google/api/Billing;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeBilling(Lcom/google/api/Billing;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearBilling()V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/api/Service;Lcom/google/api/Logging;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setLogging(Lcom/google/api/Logging;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/api/Service;Lcom/google/api/Logging;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeLogging(Lcom/google/api/Logging;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearLogging()V

    return-void
.end method

.method static synthetic access$8800(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setMonitoring(Lcom/google/api/Monitoring;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeMonitoring(Lcom/google/api/Monitoring;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearMonitoring()V

    return-void
.end method

.method static synthetic access$9100(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setSystemParameters(Lcom/google/api/SystemParameters;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeSystemParameters(Lcom/google/api/SystemParameters;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearSystemParameters()V

    return-void
.end method

.method static synthetic access$9400(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->setSourceInfo(Lcom/google/api/SourceInfo;)V

    return-void
.end method

.method static synthetic access$9500(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/api/Service;->mergeSourceInfo(Lcom/google/api/SourceInfo;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/google/api/Service;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/Service;->clearSourceInfo()V

    return-void
.end method

.method private addAllApis(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Api;",
            ">;)V"
        }
    .end annotation

    .line 577
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 578
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllEndpoints(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Endpoint;",
            ">;)V"
        }
    .end annotation

    .line 1622
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1623
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllEnums(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Enum;",
            ">;)V"
        }
    .end annotation

    .line 992
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 993
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllLogs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LogDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1830
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1831
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllMetrics(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MetricDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1968
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1969
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllMonitoredResources(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 2115
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2116
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllTypes(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Type;",
            ">;)V"
        }
    .end annotation

    .line 786
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 787
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addApis(ILcom/google/protobuf/Api;)V
    .locals 1

    .line 560
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 561
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 562
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addApis(Lcom/google/protobuf/Api;)V
    .locals 1

    .line 543
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 545
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addEndpoints(ILcom/google/api/Endpoint;)V
    .locals 1

    .line 1607
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1608
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1609
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addEndpoints(Lcom/google/api/Endpoint;)V
    .locals 1

    .line 1592
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1593
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1594
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addEnums(ILcom/google/protobuf/Enum;)V
    .locals 1

    .line 973
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 975
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addEnums(Lcom/google/protobuf/Enum;)V
    .locals 1

    .line 954
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 955
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 956
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLogs(ILcom/google/api/LogDescriptor;)V
    .locals 1

    .line 1817
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1818
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1819
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLogs(Lcom/google/api/LogDescriptor;)V
    .locals 1

    .line 1804
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1805
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1806
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMetrics(ILcom/google/api/MetricDescriptor;)V
    .locals 1

    .line 1955
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1956
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1957
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMetrics(Lcom/google/api/MetricDescriptor;)V
    .locals 1

    .line 1942
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1943
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1944
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)V
    .locals 1

    .line 2101
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2102
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2103
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 1

    .line 2087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2088
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2089
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTypes(ILcom/google/protobuf/Type;)V
    .locals 1

    .line 766
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 767
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 768
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTypes(Lcom/google/protobuf/Type;)V
    .locals 1

    .line 746
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 748
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearApis()V
    .locals 1

    .line 593
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearAuthentication()V
    .locals 1

    const/4 v0, 0x0

    .line 1356
    iput-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    .line 1357
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearBackend()V
    .locals 1

    const/4 v0, 0x0

    .line 1158
    iput-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    .line 1159
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearBilling()V
    .locals 1

    const/4 v0, 0x0

    .line 2205
    iput-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    .line 2206
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearConfigVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    .line 133
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearContext()V
    .locals 1

    const/4 v0, 0x0

    .line 1422
    iput-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    .line 1423
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearControl()V
    .locals 1

    const/4 v0, 0x0

    .line 1714
    iput-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    .line 1715
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearDocumentation()V
    .locals 1

    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    .line 1093
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearEndpoints()V
    .locals 1

    .line 1636
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearEnums()V
    .locals 1

    .line 1010
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearHttp()V
    .locals 1

    const/4 v0, 0x0

    .line 1224
    iput-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    .line 1225
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 276
    invoke-static {}, Lcom/google/api/Service;->getDefaultInstance()Lcom/google/api/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Service;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearLogging()V
    .locals 1

    const/4 v0, 0x0

    .line 2271
    iput-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    .line 2272
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearLogs()V
    .locals 1

    .line 1842
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearMetrics()V
    .locals 1

    .line 1980
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearMonitoredResources()V
    .locals 1

    .line 2128
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearMonitoring()V
    .locals 1

    const/4 v0, 0x0

    .line 2337
    iput-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    .line 2338
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 198
    invoke-static {}, Lcom/google/api/Service;->getDefaultInstance()Lcom/google/api/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Service;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearProducerProjectId()V
    .locals 1

    .line 412
    invoke-static {}, Lcom/google/api/Service;->getDefaultInstance()Lcom/google/api/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Service;->getProducerProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    return-void
.end method

.method private clearQuota()V
    .locals 1

    const/4 v0, 0x0

    .line 1290
    iput-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    .line 1291
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearSourceInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 2469
    iput-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    .line 2470
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearSystemParameters()V
    .locals 1

    const/4 v0, 0x0

    .line 2403
    iput-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    .line 2404
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 345
    invoke-static {}, Lcom/google/api/Service;->getDefaultInstance()Lcom/google/api/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/Service;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    return-void
.end method

.method private clearTypes()V
    .locals 1

    .line 805
    invoke-static {}, Lcom/google/api/Service;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearUsage()V
    .locals 1

    const/4 v0, 0x0

    .line 1488
    iput-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    .line 1489
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private ensureApisIsMutable()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 508
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureEndpointsIsMutable()V
    .locals 2

    .line 1560
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1561
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1563
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureEnumsIsMutable()V
    .locals 2

    .line 914
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 915
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureLogsIsMutable()V
    .locals 2

    .line 1776
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1777
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1779
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureMetricsIsMutable()V
    .locals 2

    .line 1914
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1915
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1917
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureMonitoredResourcesIsMutable()V
    .locals 2

    .line 2057
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2058
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2060
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureTypesIsMutable()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 705
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Service;
    .locals 1

    .line 5299
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    return-object v0
.end method

.method private mergeAuthentication(Lcom/google/api/Authentication;)V
    .locals 2

    .line 1339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    iget-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-eqz v0, :cond_0

    .line 1341
    invoke-static {}, Lcom/google/api/Authentication;->getDefaultInstance()Lcom/google/api/Authentication;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    .line 1343
    invoke-static {v0}, Lcom/google/api/Authentication;->newBuilder(Lcom/google/api/Authentication;)Lcom/google/api/Authentication$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Authentication$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Authentication$Builder;

    invoke-virtual {p1}, Lcom/google/api/Authentication$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Authentication;

    iput-object p1, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    goto :goto_0

    .line 1345
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    .line 1347
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeBackend(Lcom/google/api/Backend;)V
    .locals 2

    .line 1141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1142
    iget-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-eqz v0, :cond_0

    .line 1143
    invoke-static {}, Lcom/google/api/Backend;->getDefaultInstance()Lcom/google/api/Backend;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    .line 1145
    invoke-static {v0}, Lcom/google/api/Backend;->newBuilder(Lcom/google/api/Backend;)Lcom/google/api/Backend$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Backend$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Backend$Builder;

    invoke-virtual {p1}, Lcom/google/api/Backend$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Backend;

    iput-object p1, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    goto :goto_0

    .line 1147
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    .line 1149
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeBilling(Lcom/google/api/Billing;)V
    .locals 2

    .line 2188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2189
    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-eqz v0, :cond_0

    .line 2190
    invoke-static {}, Lcom/google/api/Billing;->getDefaultInstance()Lcom/google/api/Billing;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    .line 2192
    invoke-static {v0}, Lcom/google/api/Billing;->newBuilder(Lcom/google/api/Billing;)Lcom/google/api/Billing$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Billing$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Billing$Builder;

    invoke-virtual {p1}, Lcom/google/api/Billing$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Billing;

    iput-object p1, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    goto :goto_0

    .line 2194
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    .line 2196
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeConfigVersion(Lcom/google/protobuf/UInt32Value;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    iget-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    .line 116
    invoke-static {v0}, Lcom/google/protobuf/UInt32Value;->newBuilder(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UInt32Value$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/UInt32Value$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/UInt32Value;

    iput-object p1, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    .line 120
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeContext(Lcom/google/api/Context;)V
    .locals 2

    .line 1405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1406
    iget-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-eqz v0, :cond_0

    .line 1407
    invoke-static {}, Lcom/google/api/Context;->getDefaultInstance()Lcom/google/api/Context;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    .line 1409
    invoke-static {v0}, Lcom/google/api/Context;->newBuilder(Lcom/google/api/Context;)Lcom/google/api/Context$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Context$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Context$Builder;

    invoke-virtual {p1}, Lcom/google/api/Context$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Context;

    iput-object p1, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    goto :goto_0

    .line 1411
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    .line 1413
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeControl(Lcom/google/api/Control;)V
    .locals 2

    .line 1697
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1698
    iget-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-eqz v0, :cond_0

    .line 1699
    invoke-static {}, Lcom/google/api/Control;->getDefaultInstance()Lcom/google/api/Control;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    .line 1701
    invoke-static {v0}, Lcom/google/api/Control;->newBuilder(Lcom/google/api/Control;)Lcom/google/api/Control$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Control$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Control$Builder;

    invoke-virtual {p1}, Lcom/google/api/Control$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Control;

    iput-object p1, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    goto :goto_0

    .line 1703
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    .line 1705
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeDocumentation(Lcom/google/api/Documentation;)V
    .locals 2

    .line 1075
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    iget-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-eqz v0, :cond_0

    .line 1077
    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    .line 1079
    invoke-static {v0}, Lcom/google/api/Documentation;->newBuilder(Lcom/google/api/Documentation;)Lcom/google/api/Documentation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Documentation$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Documentation$Builder;

    invoke-virtual {p1}, Lcom/google/api/Documentation$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Documentation;

    iput-object p1, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    goto :goto_0

    .line 1081
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    .line 1083
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeHttp(Lcom/google/api/Http;)V
    .locals 2

    .line 1207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1208
    iget-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-eqz v0, :cond_0

    .line 1209
    invoke-static {}, Lcom/google/api/Http;->getDefaultInstance()Lcom/google/api/Http;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    .line 1211
    invoke-static {v0}, Lcom/google/api/Http;->newBuilder(Lcom/google/api/Http;)Lcom/google/api/Http$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Http$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Http$Builder;

    invoke-virtual {p1}, Lcom/google/api/Http$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Http;

    iput-object p1, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    goto :goto_0

    .line 1213
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    .line 1215
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeLogging(Lcom/google/api/Logging;)V
    .locals 2

    .line 2254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2255
    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-eqz v0, :cond_0

    .line 2256
    invoke-static {}, Lcom/google/api/Logging;->getDefaultInstance()Lcom/google/api/Logging;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2257
    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    .line 2258
    invoke-static {v0}, Lcom/google/api/Logging;->newBuilder(Lcom/google/api/Logging;)Lcom/google/api/Logging$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Logging$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging$Builder;

    invoke-virtual {p1}, Lcom/google/api/Logging$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging;

    iput-object p1, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    goto :goto_0

    .line 2260
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    .line 2262
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeMonitoring(Lcom/google/api/Monitoring;)V
    .locals 2

    .line 2320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2321
    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-eqz v0, :cond_0

    .line 2322
    invoke-static {}, Lcom/google/api/Monitoring;->getDefaultInstance()Lcom/google/api/Monitoring;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    .line 2324
    invoke-static {v0}, Lcom/google/api/Monitoring;->newBuilder(Lcom/google/api/Monitoring;)Lcom/google/api/Monitoring$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring$Builder;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Monitoring;

    iput-object p1, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    goto :goto_0

    .line 2326
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    .line 2328
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeQuota(Lcom/google/api/Quota;)V
    .locals 2

    .line 1273
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1274
    iget-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-eqz v0, :cond_0

    .line 1275
    invoke-static {}, Lcom/google/api/Quota;->getDefaultInstance()Lcom/google/api/Quota;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    .line 1277
    invoke-static {v0}, Lcom/google/api/Quota;->newBuilder(Lcom/google/api/Quota;)Lcom/google/api/Quota$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Quota$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Quota$Builder;

    invoke-virtual {p1}, Lcom/google/api/Quota$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Quota;

    iput-object p1, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    goto :goto_0

    .line 1279
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    .line 1281
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeSourceInfo(Lcom/google/api/SourceInfo;)V
    .locals 2

    .line 2452
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2453
    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-eqz v0, :cond_0

    .line 2454
    invoke-static {}, Lcom/google/api/SourceInfo;->getDefaultInstance()Lcom/google/api/SourceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    .line 2456
    invoke-static {v0}, Lcom/google/api/SourceInfo;->newBuilder(Lcom/google/api/SourceInfo;)Lcom/google/api/SourceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/SourceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/SourceInfo$Builder;

    invoke-virtual {p1}, Lcom/google/api/SourceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/SourceInfo;

    iput-object p1, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    goto :goto_0

    .line 2458
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    .line 2460
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeSystemParameters(Lcom/google/api/SystemParameters;)V
    .locals 2

    .line 2386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2387
    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-eqz v0, :cond_0

    .line 2388
    invoke-static {}, Lcom/google/api/SystemParameters;->getDefaultInstance()Lcom/google/api/SystemParameters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    .line 2390
    invoke-static {v0}, Lcom/google/api/SystemParameters;->newBuilder(Lcom/google/api/SystemParameters;)Lcom/google/api/SystemParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/SystemParameters$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/SystemParameters$Builder;

    invoke-virtual {p1}, Lcom/google/api/SystemParameters$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/SystemParameters;

    iput-object p1, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    goto :goto_0

    .line 2392
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    .line 2394
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private mergeUsage(Lcom/google/api/Usage;)V
    .locals 2

    .line 1471
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1472
    iget-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-eqz v0, :cond_0

    .line 1473
    invoke-static {}, Lcom/google/api/Usage;->getDefaultInstance()Lcom/google/api/Usage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    .line 1475
    invoke-static {v0}, Lcom/google/api/Usage;->newBuilder(Lcom/google/api/Usage;)Lcom/google/api/Usage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/Usage$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/api/Usage$Builder;

    invoke-virtual {p1}, Lcom/google/api/Usage$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Usage;

    iput-object p1, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    goto :goto_0

    .line 1477
    :cond_0
    iput-object p1, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    .line 1479
    :goto_0
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2550
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Service$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Service;)Lcom/google/api/Service$Builder;
    .locals 1

    .line 2553
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-virtual {v0, p0}, Lcom/google/api/Service;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2526
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/api/Service;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2533
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/api/Service;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2489
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2496
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2538
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2545
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2513
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2520
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2476
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2483
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2501
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2508
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Service;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Service;",
            ">;"
        }
    .end annotation

    .line 5305
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeApis(I)V
    .locals 1

    .line 607
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 608
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeEndpoints(I)V
    .locals 1

    .line 1648
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1649
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeEnums(I)V
    .locals 1

    .line 1026
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 1027
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeLogs(I)V
    .locals 1

    .line 1852
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1853
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeMetrics(I)V
    .locals 1

    .line 1990
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1991
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeMonitoredResources(I)V
    .locals 1

    .line 2139
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2140
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeTypes(I)V
    .locals 1

    .line 822
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 823
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setApis(ILcom/google/protobuf/Api;)V
    .locals 1

    .line 527
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    invoke-direct {p0}, Lcom/google/api/Service;->ensureApisIsMutable()V

    .line 529
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAuthentication(Lcom/google/api/Authentication;)V
    .locals 0

    .line 1326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1327
    iput-object p1, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    .line 1328
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setBackend(Lcom/google/api/Backend;)V
    .locals 0

    .line 1128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1129
    iput-object p1, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    .line 1130
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setBilling(Lcom/google/api/Billing;)V
    .locals 0

    .line 2175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2176
    iput-object p1, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    .line 2177
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setConfigVersion(Lcom/google/protobuf/UInt32Value;)V
    .locals 0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    iput-object p1, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    .line 98
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setContext(Lcom/google/api/Context;)V
    .locals 0

    .line 1392
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1393
    iput-object p1, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    .line 1394
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setControl(Lcom/google/api/Control;)V
    .locals 0

    .line 1684
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1685
    iput-object p1, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    .line 1686
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setDocumentation(Lcom/google/api/Documentation;)V
    .locals 0

    .line 1062
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1063
    iput-object p1, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    .line 1064
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setEndpoints(ILcom/google/api/Endpoint;)V
    .locals 1

    .line 1578
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1579
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEndpointsIsMutable()V

    .line 1580
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setEnums(ILcom/google/protobuf/Enum;)V
    .locals 1

    .line 936
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 937
    invoke-direct {p0}, Lcom/google/api/Service;->ensureEnumsIsMutable()V

    .line 938
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setHttp(Lcom/google/api/Http;)V
    .locals 0

    .line 1194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1195
    iput-object p1, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    .line 1196
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    iput-object p1, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 290
    invoke-static {p1}, Lcom/google/api/Service;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 291
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    return-void
.end method

.method private setLogging(Lcom/google/api/Logging;)V
    .locals 0

    .line 2241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2242
    iput-object p1, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    .line 2243
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setLogs(ILcom/google/api/LogDescriptor;)V
    .locals 1

    .line 1792
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1793
    invoke-direct {p0}, Lcom/google/api/Service;->ensureLogsIsMutable()V

    .line 1794
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMetrics(ILcom/google/api/MetricDescriptor;)V
    .locals 1

    .line 1930
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1931
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMetricsIsMutable()V

    .line 1932
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)V
    .locals 1

    .line 2074
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2075
    invoke-direct {p0}, Lcom/google/api/Service;->ensureMonitoredResourcesIsMutable()V

    .line 2076
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMonitoring(Lcom/google/api/Monitoring;)V
    .locals 0

    .line 2307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2308
    iput-object p1, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    .line 2309
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    iput-object p1, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 213
    invoke-static {p1}, Lcom/google/api/Service;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 214
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    return-void
.end method

.method private setProducerProjectId(Ljava/lang/String;)V
    .locals 0

    .line 399
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    iput-object p1, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    return-void
.end method

.method private setProducerProjectIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 424
    invoke-static {p1}, Lcom/google/api/Service;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 425
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    return-void
.end method

.method private setQuota(Lcom/google/api/Quota;)V
    .locals 0

    .line 1260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1261
    iput-object p1, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    .line 1262
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setSourceInfo(Lcom/google/api/SourceInfo;)V
    .locals 0

    .line 2439
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2440
    iput-object p1, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    .line 2441
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setSystemParameters(Lcom/google/api/SystemParameters;)V
    .locals 0

    .line 2373
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2374
    iput-object p1, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    .line 2375
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    iput-object p1, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    return-void
.end method

.method private setTitleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 357
    invoke-static {p1}, Lcom/google/api/Service;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 358
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    return-void
.end method

.method private setTypes(ILcom/google/protobuf/Type;)V
    .locals 1

    .line 727
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 728
    invoke-direct {p0}, Lcom/google/api/Service;->ensureTypesIsMutable()V

    .line 729
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setUsage(Lcom/google/api/Usage;)V
    .locals 0

    .line 1458
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1459
    iput-object p1, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    .line 1460
    iget p1, p0, Lcom/google/api/Service;->bitField0_:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/api/Service;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 5206
    sget-object v0, Lcom/google/api/Service$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 5283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    .line 5277
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 5262
    :pswitch_2
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    .line 5264
    const-class v1, Lcom/google/api/Service;

    monitor-enter v1

    .line 5265
    :try_start_0
    sget-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 5267
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5270
    sput-object v0, Lcom/google/api/Service;->PARSER:Lcom/google/protobuf/Parser;

    .line 5272
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    .line 5259
    :pswitch_3
    sget-object v0, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    return-object v0

    .line 5214
    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "name_"

    const-string v3, "title_"

    const-string v4, "apis_"

    const-class v5, Lcom/google/protobuf/Api;

    const-string v6, "types_"

    const-class v7, Lcom/google/protobuf/Type;

    const-string v8, "enums_"

    const-class v9, Lcom/google/protobuf/Enum;

    const-string v10, "documentation_"

    const-string v11, "backend_"

    const-string v12, "http_"

    const-string v13, "quota_"

    const-string v14, "authentication_"

    const-string v15, "context_"

    const-string v16, "usage_"

    const-string v17, "endpoints_"

    const-class v18, Lcom/google/api/Endpoint;

    const-string v19, "configVersion_"

    const-string v20, "control_"

    const-string v21, "producerProjectId_"

    const-string v22, "logs_"

    const-class v23, Lcom/google/api/LogDescriptor;

    const-string v24, "metrics_"

    const-class v25, Lcom/google/api/MetricDescriptor;

    const-string v26, "monitoredResources_"

    const-class v27, Lcom/google/api/MonitoredResourceDescriptor;

    const-string v28, "billing_"

    const-string v29, "logging_"

    const-string v30, "monitoring_"

    const-string v31, "systemParameters_"

    const-string v32, "id_"

    const-string v33, "sourceInfo_"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/Object;

    move-result-object v0

    .line 5249
    const-string v1, "\u0000\u0019\u0000\u0001\u0001%\u0019\u0000\u0007\u0000\u0001\u0208\u0002\u0208\u0003\u001b\u0004\u001b\u0005\u001b\u0006\u1009\u0001\u0008\u1009\u0002\t\u1009\u0003\n\u1009\u0004\u000b\u1009\u0005\u000c\u1009\u0006\u000f\u1009\u0007\u0012\u001b\u0014\u1009\u0000\u0015\u1009\u0008\u0016\u0208\u0017\u001b\u0018\u001b\u0019\u001b\u001a\u1009\t\u001b\u1009\n\u001c\u1009\u000b\u001d\u1009\u000c!\u0208%\u1009\r"

    .line 5255
    sget-object v2, Lcom/google/api/Service;->DEFAULT_INSTANCE:Lcom/google/api/Service;

    invoke-static {v2, v1, v0}, Lcom/google/api/Service;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5211
    :pswitch_5
    new-instance v0, Lcom/google/api/Service$Builder;

    invoke-direct {v0, v1}, Lcom/google/api/Service$Builder;-><init>(Lcom/google/api/Service$1;)V

    return-object v0

    .line 5208
    :pswitch_6
    new-instance v0, Lcom/google/api/Service;

    invoke-direct {v0}, Lcom/google/api/Service;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getApis(I)Lcom/google/protobuf/Api;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Api;

    return-object p1
.end method

.method public getApisCount()I
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getApisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getApisOrBuilder(I)Lcom/google/protobuf/ApiOrBuilder;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ApiOrBuilder;

    return-object p1
.end method

.method public getApisOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/ApiOrBuilder;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/google/api/Service;->apis_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAuthentication()Lcom/google/api/Authentication;
    .locals 1

    .line 1316
    iget-object v0, p0, Lcom/google/api/Service;->authentication_:Lcom/google/api/Authentication;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Authentication;->getDefaultInstance()Lcom/google/api/Authentication;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBackend()Lcom/google/api/Backend;
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/google/api/Service;->backend_:Lcom/google/api/Backend;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Backend;->getDefaultInstance()Lcom/google/api/Backend;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBilling()Lcom/google/api/Billing;
    .locals 1

    .line 2165
    iget-object v0, p0, Lcom/google/api/Service;->billing_:Lcom/google/api/Billing;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Billing;->getDefaultInstance()Lcom/google/api/Billing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConfigVersion()Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/api/Service;->configVersion_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContext()Lcom/google/api/Context;
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/google/api/Service;->context_:Lcom/google/api/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Context;->getDefaultInstance()Lcom/google/api/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getControl()Lcom/google/api/Control;
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/google/api/Service;->control_:Lcom/google/api/Control;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Control;->getDefaultInstance()Lcom/google/api/Control;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDocumentation()Lcom/google/api/Documentation;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/google/api/Service;->documentation_:Lcom/google/api/Documentation;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Documentation;->getDefaultInstance()Lcom/google/api/Documentation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEndpoints(I)Lcom/google/api/Endpoint;
    .locals 1

    .line 1544
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Endpoint;

    return-object p1
.end method

.method public getEndpointsCount()I
    .locals 1

    .line 1531
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getEndpointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation

    .line 1505
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEndpointsOrBuilder(I)Lcom/google/api/EndpointOrBuilder;
    .locals 1

    .line 1557
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/EndpointOrBuilder;

    return-object p1
.end method

.method public getEndpointsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/EndpointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1518
    iget-object v0, p0, Lcom/google/api/Service;->endpoints_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEnums(I)Lcom/google/protobuf/Enum;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Enum;

    return-object p1
.end method

.method public getEnumsCount()I
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getEnumsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEnumsOrBuilder(I)Lcom/google/protobuf/EnumOrBuilder;
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/EnumOrBuilder;

    return-object p1
.end method

.method public getEnumsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/EnumOrBuilder;",
            ">;"
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/google/api/Service;->enums_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getHttp()Lcom/google/api/Http;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/google/api/Service;->http_:Lcom/google/api/Http;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Http;->getDefaultInstance()Lcom/google/api/Http;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/api/Service;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLogging()Lcom/google/api/Logging;
    .locals 1

    .line 2231
    iget-object v0, p0, Lcom/google/api/Service;->logging_:Lcom/google/api/Logging;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Logging;->getDefaultInstance()Lcom/google/api/Logging;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLogs(I)Lcom/google/api/LogDescriptor;
    .locals 1

    .line 1762
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/LogDescriptor;

    return-object p1
.end method

.method public getLogsCount()I
    .locals 1

    .line 1751
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLogsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation

    .line 1729
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLogsOrBuilder(I)Lcom/google/api/LogDescriptorOrBuilder;
    .locals 1

    .line 1773
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/LogDescriptorOrBuilder;

    return-object p1
.end method

.method public getLogsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/LogDescriptorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Lcom/google/api/Service;->logs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMetrics(I)Lcom/google/api/MetricDescriptor;
    .locals 1

    .line 1900
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptor;

    return-object p1
.end method

.method public getMetricsCount()I
    .locals 1

    .line 1889
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation

    .line 1867
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMetricsOrBuilder(I)Lcom/google/api/MetricDescriptorOrBuilder;
    .locals 1

    .line 1911
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/MetricDescriptorOrBuilder;

    return-object p1
.end method

.method public getMetricsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/MetricDescriptorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1878
    iget-object v0, p0, Lcom/google/api/Service;->metrics_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1

    .line 2042
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p1
.end method

.method public getMonitoredResourcesCount()I
    .locals 1

    .line 2030
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getMonitoredResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMonitoredResourcesOrBuilder(I)Lcom/google/api/MonitoredResourceDescriptorOrBuilder;
    .locals 1

    .line 2054
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/MonitoredResourceDescriptorOrBuilder;

    return-object p1
.end method

.method public getMonitoredResourcesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/MonitoredResourceDescriptorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2018
    iget-object v0, p0, Lcom/google/api/Service;->monitoredResources_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMonitoring()Lcom/google/api/Monitoring;
    .locals 1

    .line 2297
    iget-object v0, p0, Lcom/google/api/Service;->monitoring_:Lcom/google/api/Monitoring;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Monitoring;->getDefaultInstance()Lcom/google/api/Monitoring;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/api/Service;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProducerProjectId()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    return-object v0
.end method

.method public getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/google/api/Service;->producerProjectId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuota()Lcom/google/api/Quota;
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/google/api/Service;->quota_:Lcom/google/api/Quota;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Quota;->getDefaultInstance()Lcom/google/api/Quota;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSourceInfo()Lcom/google/api/SourceInfo;
    .locals 1

    .line 2429
    iget-object v0, p0, Lcom/google/api/Service;->sourceInfo_:Lcom/google/api/SourceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/SourceInfo;->getDefaultInstance()Lcom/google/api/SourceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSystemParameters()Lcom/google/api/SystemParameters;
    .locals 1

    .line 2363
    iget-object v0, p0, Lcom/google/api/Service;->systemParameters_:Lcom/google/api/SystemParameters;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/SystemParameters;->getDefaultInstance()Lcom/google/api/SystemParameters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/api/Service;->title_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypes(I)Lcom/google/protobuf/Type;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Type;

    return-object p1
.end method

.method public getTypesCount()I
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTypesOrBuilder(I)Lcom/google/protobuf/TypeOrBuilder;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/TypeOrBuilder;

    return-object p1
.end method

.method public getTypesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/TypeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/google/api/Service;->types_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUsage()Lcom/google/api/Usage;
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/google/api/Service;->usage_:Lcom/google/api/Usage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/api/Usage;->getDefaultInstance()Lcom/google/api/Usage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAuthentication()Z
    .locals 1

    .line 1305
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .line 1107
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBilling()Z
    .locals 1

    .line 2154
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConfigVersion()Z
    .locals 2

    .line 69
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasContext()Z
    .locals 1

    .line 1371
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasControl()Z
    .locals 1

    .line 1663
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDocumentation()Z
    .locals 1

    .line 1041
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttp()Z
    .locals 1

    .line 1173
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLogging()Z
    .locals 1

    .line 2220
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMonitoring()Z
    .locals 1

    .line 2286
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQuota()Z
    .locals 1

    .line 1239
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceInfo()Z
    .locals 1

    .line 2418
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSystemParameters()Z
    .locals 1

    .line 2352
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUsage()Z
    .locals 1

    .line 1437
    iget v0, p0, Lcom/google/api/Service;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
