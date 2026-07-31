.class public final Lcom/google/rpc/context/AttributeContext$Auth;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$AuthOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Auth"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/context/AttributeContext$Auth;",
        "Lcom/google/rpc/context/AttributeContext$Auth$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$AuthOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCESS_LEVELS_FIELD_NUMBER:I = 0x5

.field public static final AUDIENCES_FIELD_NUMBER:I = 0x2

.field public static final CLAIMS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Auth;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRESENTER_FIELD_NUMBER:I = 0x3

.field public static final PRINCIPAL_FIELD_NUMBER:I = 0x1


# instance fields
.field private accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private audiences_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private claims_:Lcom/google/protobuf/Struct;

.field private presenter_:Ljava/lang/String;

.field private principal_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3986
    new-instance v0, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-direct {v0}, Lcom/google/rpc/context/AttributeContext$Auth;-><init>()V

    .line 3989
    sput-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    .line 3990
    const-class v1, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2326
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->principal_:Ljava/lang/String;

    .line 2328
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2329
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->presenter_:Ljava/lang/String;

    .line 2330
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$2800()Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1

    .line 2321
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/String;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->setPrincipal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/rpc/context/AttributeContext$Auth;)V
    .locals 0

    .line 2321
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->clearPrincipal()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->setPrincipalBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/rpc/context/AttributeContext$Auth;ILjava/lang/String;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Auth;->setAudiences(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/String;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->addAudiences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/Iterable;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->addAllAudiences(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/rpc/context/AttributeContext$Auth;)V
    .locals 0

    .line 2321
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->clearAudiences()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->addAudiencesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/String;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->setPresenter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/rpc/context/AttributeContext$Auth;)V
    .locals 0

    .line 2321
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->clearPresenter()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->setPresenterBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->setClaims(Lcom/google/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->mergeClaims(Lcom/google/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/google/rpc/context/AttributeContext$Auth;)V
    .locals 0

    .line 2321
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->clearClaims()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/rpc/context/AttributeContext$Auth;ILjava/lang/String;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Auth;->setAccessLevels(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/String;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->addAccessLevels(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/rpc/context/AttributeContext$Auth;Ljava/lang/Iterable;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->addAllAccessLevels(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/rpc/context/AttributeContext$Auth;)V
    .locals 0

    .line 2321
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->clearAccessLevels()V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/rpc/context/AttributeContext$Auth;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2321
    invoke-direct {p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->addAccessLevelsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAccessLevels(Ljava/lang/String;)V
    .locals 1

    .line 3006
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3007
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->ensureAccessLevelsIsMutable()V

    .line 3008
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAccessLevelsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 3062
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Auth;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3063
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->ensureAccessLevelsIsMutable()V

    .line 3064
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAccessLevels(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3026
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->ensureAccessLevelsIsMutable()V

    .line 3027
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllAudiences(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2611
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->ensureAudiencesIsMutable()V

    .line 2612
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAudiences(Ljava/lang/String;)V
    .locals 1

    .line 2584
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2585
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->ensureAudiencesIsMutable()V

    .line 2586
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAudiencesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 2661
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Auth;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2662
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->ensureAudiencesIsMutable()V

    .line 2663
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAccessLevels()V
    .locals 1

    .line 3044
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearAudiences()V
    .locals 1

    .line 2636
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearClaims()V
    .locals 1

    const/4 v0, 0x0

    .line 2880
    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->claims_:Lcom/google/protobuf/Struct;

    .line 2881
    iget v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->bitField0_:I

    return-void
.end method

.method private clearPresenter()V
    .locals 1

    .line 2728
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Auth;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getPresenter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->presenter_:Ljava/lang/String;

    return-void
.end method

.method private clearPrincipal()V
    .locals 1

    .line 2399
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Auth;->getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getPrincipal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->principal_:Ljava/lang/String;

    return-void
.end method

.method private ensureAccessLevelsIsMutable()V
    .locals 2

    .line 2963
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2964
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2966
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureAudiencesIsMutable()V
    .locals 2

    .line 2527
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2528
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2530
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1

    .line 3995
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    return-object v0
.end method

.method private mergeClaims(Lcom/google/protobuf/Struct;)V
    .locals 2

    .line 2849
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2850
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->claims_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 2851
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2852
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->claims_:Lcom/google/protobuf/Struct;

    .line 2853
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct;

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->claims_:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 2855
    :cond_0
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->claims_:Lcom/google/protobuf/Struct;

    .line 2857
    :goto_0
    iget p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1

    .line 3144
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Auth$Builder;
    .locals 1

    .line 3147
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0, p0}, Lcom/google/rpc/context/AttributeContext$Auth;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3120
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0}, Lcom/google/rpc/context/AttributeContext$Auth;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3127
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3083
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3090
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3132
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3139
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3107
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3114
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3070
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3077
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3095
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3102
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/context/AttributeContext$Auth;",
            ">;"
        }
    .end annotation

    .line 4001
    sget-object v0, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Auth;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccessLevels(ILjava/lang/String;)V
    .locals 1

    .line 2986
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2987
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->ensureAccessLevelsIsMutable()V

    .line 2988
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAudiences(ILjava/lang/String;)V
    .locals 1

    .line 2557
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2558
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Auth;->ensureAudiencesIsMutable()V

    .line 2559
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setClaims(Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 2822
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2823
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->claims_:Lcom/google/protobuf/Struct;

    .line 2824
    iget p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->bitField0_:I

    return-void
.end method

.method private setPresenter(Ljava/lang/String;)V
    .locals 0

    .line 2712
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2714
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->presenter_:Ljava/lang/String;

    return-void
.end method

.method private setPresenterBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2743
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Auth;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2744
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->presenter_:Ljava/lang/String;

    return-void
.end method

.method private setPrincipal(Ljava/lang/String;)V
    .locals 0

    .line 2382
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2384
    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->principal_:Ljava/lang/String;

    return-void
.end method

.method private setPrincipalBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2415
    invoke-static {p1}, Lcom/google/rpc/context/AttributeContext$Auth;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2416
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/context/AttributeContext$Auth;->principal_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 3932
    sget-object p2, Lcom/google/rpc/context/AttributeContext$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3979
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 3973
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3958
    :pswitch_2
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Auth;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3960
    const-class p2, Lcom/google/rpc/context/AttributeContext$Auth;

    monitor-enter p2

    .line 3961
    :try_start_0
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Auth;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3963
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3966
    sput-object p1, Lcom/google/rpc/context/AttributeContext$Auth;->PARSER:Lcom/google/protobuf/Parser;

    .line 3968
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 3955
    :pswitch_3
    sget-object p1, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    return-object p1

    .line 3940
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "principal_"

    const-string v2, "audiences_"

    const-string v3, "presenter_"

    const-string v4, "claims_"

    const-string v5, "accessLevels_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 3948
    const-string p2, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u0208\u0002\u021a\u0003\u0208\u0004\u1009\u0000\u0005\u021a"

    .line 3951
    sget-object p3, Lcom/google/rpc/context/AttributeContext$Auth;->DEFAULT_INSTANCE:Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/context/AttributeContext$Auth;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3937
    :pswitch_5
    new-instance p1, Lcom/google/rpc/context/AttributeContext$Auth$Builder;

    invoke-direct {p1, p2}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;-><init>(Lcom/google/rpc/context/AttributeContext$1;)V

    return-object p1

    .line 3934
    :pswitch_6
    new-instance p1, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-direct {p1}, Lcom/google/rpc/context/AttributeContext$Auth;-><init>()V

    return-object p1

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

.method public getAccessLevels(I)Ljava/lang/String;
    .locals 1

    .line 2939
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAccessLevelsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2959
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2960
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2959
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAccessLevelsCount()I
    .locals 1

    .line 2920
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAccessLevelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2902
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->accessLevels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAudiences(I)Ljava/lang/String;
    .locals 1

    .line 2496
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAudiencesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2523
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2524
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2523
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAudiencesCount()I
    .locals 1

    .line 2470
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAudiencesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2445
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->audiences_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getClaims()Lcom/google/protobuf/Struct;
    .locals 1

    .line 2798
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->claims_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPresenter()Ljava/lang/String;
    .locals 1

    .line 2681
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->presenter_:Ljava/lang/String;

    return-object v0
.end method

.method public getPresenterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2697
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->presenter_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipal()Ljava/lang/String;
    .locals 1

    .line 2349
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->principal_:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipalBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2366
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->principal_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasClaims()Z
    .locals 2

    .line 2773
    iget v0, p0, Lcom/google/rpc/context/AttributeContext$Auth;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
