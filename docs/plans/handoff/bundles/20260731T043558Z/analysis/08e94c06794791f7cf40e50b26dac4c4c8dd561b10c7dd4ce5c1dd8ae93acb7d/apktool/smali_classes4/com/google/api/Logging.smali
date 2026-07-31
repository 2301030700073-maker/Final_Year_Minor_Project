.class public final Lcom/google/api/Logging;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Logging.java"

# interfaces
.implements Lcom/google/api/LoggingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Logging$LoggingDestination;,
        Lcom/google/api/Logging$LoggingDestinationOrBuilder;,
        Lcom/google/api/Logging$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Logging;",
        "Lcom/google/api/Logging$Builder;",
        ">;",
        "Lcom/google/api/LoggingOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONSUMER_DESTINATIONS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/api/Logging;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Logging;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCER_DESTINATIONS_FIELD_NUMBER:I = 0x1


# instance fields
.field private consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation
.end field

.field private producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1684
    new-instance v0, Lcom/google/api/Logging;

    invoke-direct {v0}, Lcom/google/api/Logging;-><init>()V

    .line 1687
    sput-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    .line 1688
    const-class v1, Lcom/google/api/Logging;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/api/Logging;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 49
    invoke-static {}, Lcom/google/api/Logging;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000()Lcom/google/api/Logging;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/api/Logging;->setProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->addProducerDestinations(Lcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/api/Logging;->addProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/Logging;Ljava/lang/Iterable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->addAllProducerDestinations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/Logging;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/api/Logging;->clearProducerDestinations()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/Logging;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->removeProducerDestinations(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/api/Logging;->setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/api/Logging;->addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/Logging;Ljava/lang/Iterable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->addAllConsumerDestinations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/Logging;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/api/Logging;->clearConsumerDestinations()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/api/Logging;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/api/Logging;->removeConsumerDestinations(I)V

    return-void
.end method

.method private addAllConsumerDestinations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)V"
        }
    .end annotation

    .line 1092
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1093
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllProducerDestinations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)V"
        }
    .end annotation

    .line 921
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 922
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)V
    .locals 1

    .line 1076
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1077
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1078
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination;)V
    .locals 1

    .line 1060
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1062
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)V
    .locals 1

    .line 905
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 906
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 907
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addProducerDestinations(Lcom/google/api/Logging$LoggingDestination;)V
    .locals 1

    .line 889
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 890
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 891
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearConsumerDestinations()V
    .locals 1

    .line 1107
    invoke-static {}, Lcom/google/api/Logging;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearProducerDestinations()V
    .locals 1

    .line 936
    invoke-static {}, Lcom/google/api/Logging;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureConsumerDestinationsIsMutable()V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1027
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureProducerDestinationsIsMutable()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 856
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 858
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Logging;
    .locals 1

    .line 1693
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1201
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Logging$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Logging;)Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1204
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-virtual {v0, p0}, Lcom/google/api/Logging;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/api/Logging;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1184
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/api/Logging;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1140
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1147
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1189
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1196
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1127
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1134
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1152
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Logging;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1159
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Logging;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Logging;",
            ">;"
        }
    .end annotation

    .line 1699
    sget-object v0, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeConsumerDestinations(I)V
    .locals 1

    .line 1120
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1121
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeProducerDestinations(I)V
    .locals 1

    .line 949
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 950
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)V
    .locals 1

    .line 1045
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1046
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureConsumerDestinationsIsMutable()V

    .line 1047
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)V
    .locals 1

    .line 874
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    invoke-direct {p0}, Lcom/google/api/Logging;->ensureProducerDestinationsIsMutable()V

    .line 876
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1632
    sget-object p2, Lcom/google/api/Logging$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1677
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1671
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1656
    :pswitch_2
    sget-object p1, Lcom/google/api/Logging;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1658
    const-class p2, Lcom/google/api/Logging;

    monitor-enter p2

    .line 1659
    :try_start_0
    sget-object p1, Lcom/google/api/Logging;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1661
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1664
    sput-object p1, Lcom/google/api/Logging;->PARSER:Lcom/google/protobuf/Parser;

    .line 1666
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

    .line 1653
    :pswitch_3
    sget-object p1, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    return-object p1

    .line 1640
    :pswitch_4
    const-string p1, "producerDestinations_"

    const-class p2, Lcom/google/api/Logging$LoggingDestination;

    const-string p3, "consumerDestinations_"

    const-class v0, Lcom/google/api/Logging$LoggingDestination;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 1646
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b"

    .line 1649
    sget-object p3, Lcom/google/api/Logging;->DEFAULT_INSTANCE:Lcom/google/api/Logging;

    invoke-static {p3, p2, p1}, Lcom/google/api/Logging;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1637
    :pswitch_5
    new-instance p1, Lcom/google/api/Logging$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/Logging$Builder;-><init>(Lcom/google/api/Logging$1;)V

    return-object p1

    .line 1634
    :pswitch_6
    new-instance p1, Lcom/google/api/Logging;

    invoke-direct {p1}, Lcom/google/api/Logging;-><init>()V

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

.method public getConsumerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging$LoggingDestination;

    return-object p1
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getConsumerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 967
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getConsumerDestinationsOrBuilder(I)Lcom/google/api/Logging$LoggingDestinationOrBuilder;
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging$LoggingDestinationOrBuilder;

    return-object p1
.end method

.method public getConsumerDestinationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/Logging$LoggingDestinationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/google/api/Logging;->consumerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProducerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging$LoggingDestination;

    return-object p1
.end method

.method public getProducerDestinationsCount()I
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getProducerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getProducerDestinationsOrBuilder(I)Lcom/google/api/Logging$LoggingDestinationOrBuilder;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Logging$LoggingDestinationOrBuilder;

    return-object p1
.end method

.method public getProducerDestinationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/Logging$LoggingDestinationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/google/api/Logging;->producerDestinations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
