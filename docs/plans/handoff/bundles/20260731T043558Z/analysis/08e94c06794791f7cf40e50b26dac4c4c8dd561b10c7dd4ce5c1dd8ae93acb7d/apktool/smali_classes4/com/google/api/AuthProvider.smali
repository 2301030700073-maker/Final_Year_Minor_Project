.class public final Lcom/google/api/AuthProvider;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AuthProvider.java"

# interfaces
.implements Lcom/google/api/AuthProviderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/AuthProvider$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/AuthProvider;",
        "Lcom/google/api/AuthProvider$Builder;",
        ">;",
        "Lcom/google/api/AuthProviderOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUDIENCES_FIELD_NUMBER:I = 0x4

.field public static final AUTHORIZATION_URL_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final ISSUER_FIELD_NUMBER:I = 0x2

.field public static final JWKS_URI_FIELD_NUMBER:I = 0x3

.field public static final JWT_LOCATIONS_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audiences_:Ljava/lang/String;

.field private authorizationUrl_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private issuer_:Ljava/lang/String;

.field private jwksUri_:Ljava/lang/String;

.field private jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/JwtLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1850
    new-instance v0, Lcom/google/api/AuthProvider;

    invoke-direct {v0}, Lcom/google/api/AuthProvider;-><init>()V

    .line 1853
    sput-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    .line 1854
    const-class v1, Lcom/google/api/AuthProvider;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/google/api/AuthProvider;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/AuthProvider;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setAudiences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearAudiences()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setAudiencesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setAuthorizationUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearAuthorizationUrl()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setAuthorizationUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/api/AuthProvider;->setJwtLocations(ILcom/google/api/JwtLocation;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/AuthProvider;Lcom/google/api/JwtLocation;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->addJwtLocations(Lcom/google/api/JwtLocation;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/AuthProvider;ILcom/google/api/JwtLocation;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/api/AuthProvider;->addJwtLocations(ILcom/google/api/JwtLocation;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/AuthProvider;Ljava/lang/Iterable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->addAllJwtLocations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearId()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearJwtLocations()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/AuthProvider;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->removeJwtLocations(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setIssuer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearIssuer()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setIssuerBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/AuthProvider;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setJwksUri(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/AuthProvider;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->clearJwksUri()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/AuthProvider;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/AuthProvider;->setJwksUriBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllJwtLocations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/JwtLocation;",
            ">;)V"
        }
    .end annotation

    .line 780
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 781
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addJwtLocations(ILcom/google/api/JwtLocation;)V
    .locals 1

    .line 751
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 753
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addJwtLocations(Lcom/google/api/JwtLocation;)V
    .locals 1

    .line 722
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 723
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 724
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAudiences()V
    .locals 1

    .line 423
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAudiences()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    return-void
.end method

.method private clearAuthorizationUrl()V
    .locals 1

    .line 506
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getAuthorizationUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 91
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearIssuer()V
    .locals 1

    .line 181
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    return-void
.end method

.method private clearJwksUri()V
    .locals 1

    .line 297
    invoke-static {}, Lcom/google/api/AuthProvider;->getDefaultInstance()Lcom/google/api/AuthProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getJwksUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    return-void
.end method

.method private clearJwtLocations()V
    .locals 1

    .line 808
    invoke-static {}, Lcom/google/api/AuthProvider;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureJwtLocationsIsMutable()V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 663
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/AuthProvider;
    .locals 1

    .line 1859
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 915
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/AuthProvider$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/AuthProvider;)Lcom/google/api/AuthProvider$Builder;
    .locals 1

    .line 918
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-virtual {v0, p0}, Lcom/google/api/AuthProvider;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/api/AuthProvider;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/api/AuthProvider;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 854
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 861
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 885
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 841
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 848
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 866
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/AuthProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 873
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/AuthProvider;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/AuthProvider;",
            ">;"
        }
    .end annotation

    .line 1865
    sget-object v0, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-virtual {v0}, Lcom/google/api/AuthProvider;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeJwtLocations(I)V
    .locals 1

    .line 834
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 835
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAudiences(Ljava/lang/String;)V
    .locals 0

    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    iput-object p1, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    return-void
.end method

.method private setAudiencesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 447
    invoke-static {p1}, Lcom/google/api/AuthProvider;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 448
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    return-void
.end method

.method private setAuthorizationUrl(Ljava/lang/String;)V
    .locals 0

    .line 492
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    iput-object p1, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    return-void
.end method

.method private setAuthorizationUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 519
    invoke-static {p1}, Lcom/google/api/AuthProvider;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 520
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    iput-object p1, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 106
    invoke-static {p1}, Lcom/google/api/AuthProvider;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 107
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIssuer(Ljava/lang/String;)V
    .locals 0

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    iput-object p1, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    return-void
.end method

.method private setIssuerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 198
    invoke-static {p1}, Lcom/google/api/AuthProvider;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 199
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    return-void
.end method

.method private setJwksUri(Ljava/lang/String;)V
    .locals 0

    .line 273
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    iput-object p1, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    return-void
.end method

.method private setJwksUriBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 320
    invoke-static {p1}, Lcom/google/api/AuthProvider;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 321
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    return-void
.end method

.method private setJwtLocations(ILcom/google/api/JwtLocation;)V
    .locals 1

    .line 694
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 695
    invoke-direct {p0}, Lcom/google/api/AuthProvider;->ensureJwtLocationsIsMutable()V

    .line 696
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1795
    sget-object p2, Lcom/google/api/AuthProvider$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1843
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1837
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1822
    :pswitch_2
    sget-object p1, Lcom/google/api/AuthProvider;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1824
    const-class p2, Lcom/google/api/AuthProvider;

    monitor-enter p2

    .line 1825
    :try_start_0
    sget-object p1, Lcom/google/api/AuthProvider;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1827
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1830
    sput-object p1, Lcom/google/api/AuthProvider;->PARSER:Lcom/google/protobuf/Parser;

    .line 1832
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

    .line 1819
    :pswitch_3
    sget-object p1, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    return-object p1

    .line 1803
    :pswitch_4
    const-string v0, "id_"

    const-string v1, "issuer_"

    const-string v2, "jwksUri_"

    const-string v3, "audiences_"

    const-string v4, "authorizationUrl_"

    const-string v5, "jwtLocations_"

    const-class v6, Lcom/google/api/JwtLocation;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 1812
    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u001b"

    .line 1815
    sget-object p3, Lcom/google/api/AuthProvider;->DEFAULT_INSTANCE:Lcom/google/api/AuthProvider;

    invoke-static {p3, p2, p1}, Lcom/google/api/AuthProvider;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1800
    :pswitch_5
    new-instance p1, Lcom/google/api/AuthProvider$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/AuthProvider$Builder;-><init>(Lcom/google/api/AuthProvider$1;)V

    return-object p1

    .line 1797
    :pswitch_6
    new-instance p1, Lcom/google/api/AuthProvider;

    invoke-direct {p1}, Lcom/google/api/AuthProvider;-><init>()V

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

.method public getAudiences()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    return-object v0
.end method

.method public getAudiencesBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/api/AuthProvider;->audiences_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationUrl()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/google/api/AuthProvider;->authorizationUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/api/AuthProvider;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/api/AuthProvider;->issuer_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJwksUri()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getJwksUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwksUri_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJwtLocations(I)Lcom/google/api/JwtLocation;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/JwtLocation;

    return-object p1
.end method

.method public getJwtLocationsCount()I
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getJwtLocationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/JwtLocation;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getJwtLocationsOrBuilder(I)Lcom/google/api/JwtLocationOrBuilder;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/JwtLocationOrBuilder;

    return-object p1
.end method

.method public getJwtLocationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/JwtLocationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/google/api/AuthProvider;->jwtLocations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
