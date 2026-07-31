.class public final Lcom/google/rpc/context/AttributeContext$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/context/AttributeContext$Request$Builder;,
        Lcom/google/rpc/context/AttributeContext$Request$HeadersDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/context/AttributeContext$Request;",
        "Lcom/google/rpc/context/AttributeContext$Request$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$RequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTH_FIELD_NUMBER:I = 0xd

.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

.field public static final HEADERS_FIELD_NUMBER:I = 0x3

.field public static final HOST_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final METHOD_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x4

.field public static final PROTOCOL_FIELD_NUMBER:I = 0xb

.field public static final QUERY_FIELD_NUMBER:I = 0x7

.field public static final REASON_FIELD_NUMBER:I = 0xc

.field public static final SCHEME_FIELD_NUMBER:I = 0x6

.field public static final SIZE_FIELD_NUMBER:I = 0xa

.field public static final TIME_FIELD_NUMBER:I = 0x9


# instance fields
.field private auth_:Lcom/google/rpc/context/AttributeContext$Auth;

.field private bitField0_:I

.field private headers_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private method_:Ljava/lang/String;

.field private path_:Ljava/lang/String;

.field private protocol_:Ljava/lang/String;

.field private query_:Ljava/lang/String;

.field private reason_:Ljava/lang/String;

.field private scheme_:Ljava/lang/String;

.field private size_:J

.field private time_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6298
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Request;-><init>()V

    .line 6301
    sput-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    .line 6302
    const-class v1, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4315
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4483
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/MapFieldLite;

    .line 4316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/String;

    .line 4317
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/String;

    .line 4318
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/String;

    .line 4319
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/String;

    .line 4320
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/String;

    .line 4321
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/String;

    .line 4322
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/String;

    .line 4323
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4900()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1

    .line 4310
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearId()V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setMethod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearMethod()V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setMethodBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/util/Map;
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getMutableHeadersMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5700(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearPath()V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setPathBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setHost(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearHost()V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setHostBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setScheme(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearScheme()V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setSchemeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearQuery()V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setQueryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->mergeTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearTime()V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/rpc/context/AttributeContext$Request;J)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request;->setSize(J)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearSize()V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setProtocol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearProtocol()V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setProtocolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setReason(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearReason()V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setReasonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->setAuth(Lcom/google/rpc/context/AttributeContext$Auth;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)V
    .locals 0

    .line 4310
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->mergeAuth(Lcom/google/rpc/context/AttributeContext$Auth;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/rpc/context/AttributeContext$Request;)V
    .locals 0

    .line 4310
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->clearAuth()V

    return-void
.end method

.method private clearAuth()V
    .locals 1

    const/4 v0, 0x0

    .line 5198
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    .line 5199
    iget v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    return-void
.end method

.method private clearHost()V
    .locals 1

    .line 4712
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/String;

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 4384
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearMethod()V
    .locals 1

    .line 4453
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/String;

    return-void
.end method

.method private clearPath()V
    .locals 1

    .line 4645
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/String;

    return-void
.end method

.method private clearProtocol()V
    .locals 1

    .line 5039
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/String;

    return-void
.end method

.method private clearQuery()V
    .locals 1

    .line 4850
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/String;

    return-void
.end method

.method private clearReason()V
    .locals 1

    .line 5113
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/String;

    return-void
.end method

.method private clearScheme()V
    .locals 1

    .line 4779
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/String;

    return-void
.end method

.method private clearSize()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4974
    iput-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->size_:J

    return-void
.end method

.method private clearTime()V
    .locals 1

    const/4 v0, 0x0

    .line 4935
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    .line 4936
    iget v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1

    .line 6307
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    return-object v0
.end method

.method private getMutableHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4592
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetMutableHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetHeaders()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4486
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableHeaders()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4490
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4491
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/MapFieldLite;

    .line 4493
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->headers_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeAuth(Lcom/google/rpc/context/AttributeContext$Auth;)V
    .locals 2

    .line 5180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5181
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    if-eqz v0, :cond_0

    .line 5182
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Auth;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5183
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    .line 5184
    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->newBuilder(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$Auth$Builder;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/context/AttributeContext$Auth;

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    goto :goto_0

    .line 5186
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    .line 5188
    :goto_0
    iget p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    return-void
.end method

.method private mergeTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 4917
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4918
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 4919
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4920
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    .line 4921
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 4923
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    .line 4925
    :goto_0
    iget p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5279
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5282
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$Request;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5255
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0}, Lcom/google/rpc/context/AttributeContext$Request;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5262
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5218
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5225
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5267
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5274
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5242
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5249
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5205
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5212
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5230
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5237
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Request;",
            ">;"
        }
    .end annotation

    .line 6313
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAuth(Lcom/google/rpc/context/AttributeContext$Auth;)V
    .locals 0

    .line 5166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5167
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    .line 5168
    iget p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    return-void
.end method

.method private setHost(Ljava/lang/String;)V
    .locals 0

    .line 4699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4701
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/String;

    return-void
.end method

.method private setHostBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4724
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4725
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/String;

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 4369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4371
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4398
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4399
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/String;

    return-void
.end method

.method private setMethod(Ljava/lang/String;)V
    .locals 0

    .line 4440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4442
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/String;

    return-void
.end method

.method private setMethodBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4465
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4466
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/String;

    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 0

    .line 4632
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4634
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/String;

    return-void
.end method

.method private setPathBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4657
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4658
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/String;

    return-void
.end method

.method private setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 5023
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5025
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/String;

    return-void
.end method

.method private setProtocolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5054
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5055
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/String;

    return-void
.end method

.method private setQuery(Ljava/lang/String;)V
    .locals 0

    .line 4836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4838
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/String;

    return-void
.end method

.method private setQueryBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4863
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4864
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/String;

    return-void
.end method

.method private setReason(Ljava/lang/String;)V
    .locals 0

    .line 5099
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5101
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/String;

    return-void
.end method

.method private setReasonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5126
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5127
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/String;

    return-void
.end method

.method private setScheme(Ljava/lang/String;)V
    .locals 0

    .line 4766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4768
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/String;

    return-void
.end method

.method private setSchemeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4791
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Request;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4792
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/String;

    return-void
.end method

.method private setSize(J)V
    .locals 0

    .line 4963
    iput-wide p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->size_:J

    return-void
.end method

.method private setTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 4903
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4904
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    .line 4905
    iget p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    return-void
.end method


# virtual methods
.method public containsHeaders(Ljava/lang/String;)Z
    .locals 1

    .line 4513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4514
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 6235
    sget-object v0, Lcom/google/rpc/context/AttributeContext$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    .line 6285
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 6270
    :pswitch_2
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    .line 6272
    const-class v1, Lcom/google/rpc/context/AttributeContext$Request;

    monitor-enter v1

    .line 6273
    :try_start_0
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    .line 6275
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6278
    sput-object v0, Lcom/google/rpc/context/AttributeContext$Request;->PARSER:Lcom/google/protobuf/Parser;

    .line 6280
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

    .line 6267
    :pswitch_3
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    return-object v0

    .line 6243
    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "id_"

    const-string v3, "method_"

    const-string v4, "headers_"

    sget-object v5, Lcom/google/rpc/context/AttributeContext$Request$HeadersDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    const-string v6, "path_"

    const-string v7, "host_"

    const-string v8, "scheme_"

    const-string v9, "query_"

    const-string v10, "time_"

    const-string v11, "size_"

    const-string v12, "protocol_"

    const-string v13, "reason_"

    const-string v14, "auth_"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 6259
    const-string v1, "\u0000\u000c\u0000\u0001\u0001\r\u000c\u0001\u0000\u0000\u0001\u0208\u0002\u0208\u00032\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0208\t\u1009\u0000\n\u0002\u000b\u0208\u000c\u0208\r\u1009\u0001"

    .line 6263
    sget-object v2, Lcom/google/rpc/context/AttributeContext$Request;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v2, v1, v0}, Lcom/google/rpc/context/AttributeContext$Request;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6240
    :pswitch_5
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Request$Builder;

    invoke-direct {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request$Builder;-><init>(Lcom/google/rpc/context/AttributeContext$1;)V

    return-object v0

    .line 6237
    :pswitch_6
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Request;-><init>()V

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

.method public getAuth()Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1

    .line 5155
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->auth_:Lcom/google/rpc/context/AttributeContext$Auth;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Auth;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4522
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 4498
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4537
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 4536
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4555
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4557
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 4558
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getHeadersOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4575
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request;->internalGetHeaders()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 4576
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4579
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 4577
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 4674
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4687
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->host_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 4340
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4355
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 4415
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4428
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->method_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 4607
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4620
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->path_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 4992
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5008
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->protocol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 4809
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4823
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->query_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 5072
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5086
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->reason_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 4741
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4754
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->scheme_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 4951
    iget-wide v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->size_:J

    return-wide v0
.end method

.method public getTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 4892
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->time_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAuth()Z
    .locals 1

    .line 5143
    iget v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTime()Z
    .locals 2

    .line 4880
    iget v0, p0, Lcom/google/rpc/context/AttributeContext$Request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
