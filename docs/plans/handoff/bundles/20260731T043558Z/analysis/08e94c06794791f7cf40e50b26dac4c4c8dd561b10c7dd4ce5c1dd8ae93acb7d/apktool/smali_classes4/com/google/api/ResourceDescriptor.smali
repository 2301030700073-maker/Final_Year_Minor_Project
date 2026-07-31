.class public final Lcom/google/api/ResourceDescriptor;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ResourceDescriptor.java"

# interfaces
.implements Lcom/google/api/ResourceDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ResourceDescriptor$History;,
        Lcom/google/api/ResourceDescriptor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/ResourceDescriptor;",
        "Lcom/google/api/ResourceDescriptor$Builder;",
        ">;",
        "Lcom/google/api/ResourceDescriptorOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

.field public static final HISTORY_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_FIELD_NUMBER:I = 0x2

.field public static final PLURAL_FIELD_NUMBER:I = 0x5

.field public static final SINGULAR_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private history_:I

.field private nameField_:Ljava/lang/String;

.field private pattern_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private plural_:Ljava/lang/String;

.field private singular_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2078
    new-instance v0, Lcom/google/api/ResourceDescriptor;

    invoke-direct {v0}, Lcom/google/api/ResourceDescriptor;-><init>()V

    .line 2081
    sput-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    .line 2082
    const-class v1, Lcom/google/api/ResourceDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 129
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/ResourceDescriptor;
    .locals 1

    .line 121
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/ResourceDescriptor;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearNameField()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setNameFieldBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/ResourceDescriptor;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setHistoryValue(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/ResourceDescriptor;Lcom/google/api/ResourceDescriptor$History;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setHistory(Lcom/google/api/ResourceDescriptor$History;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/ResourceDescriptor;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearHistory()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setPlural(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/ResourceDescriptor;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearPlural()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setPluralBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setSingular(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/ResourceDescriptor;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearSingular()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/ResourceDescriptor;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearType()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setSingularBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/ResourceDescriptor;ILjava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/google/api/ResourceDescriptor;->setPattern(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->addPattern(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/ResourceDescriptor;Ljava/lang/Iterable;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->addAllPattern(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/ResourceDescriptor;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->clearPattern()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->addPatternBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/google/api/ResourceDescriptor;->setNameField(Ljava/lang/String;)V

    return-void
.end method

.method private addAllPattern(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 604
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->ensurePatternIsMutable()V

    .line 605
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPattern(Ljava/lang/String;)V
    .locals 1

    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->ensurePatternIsMutable()V

    .line 574
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPatternBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 664
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 665
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->ensurePatternIsMutable()V

    .line 666
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearHistory()V
    .locals 1

    const/4 v0, 0x0

    .line 870
    iput v0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    return-void
.end method

.method private clearNameField()V
    .locals 1

    .line 723
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getNameField()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    return-void
.end method

.method private clearPattern()V
    .locals 1

    .line 634
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPlural()V
    .locals 1

    .line 935
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPlural()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    return-void
.end method

.method private clearSingular()V
    .locals 1

    .line 1013
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getSingular()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 352
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->getDefaultInstance()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    return-void
.end method

.method private ensurePatternIsMutable()V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 506
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/ResourceDescriptor;
    .locals 1

    .line 2087
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1109
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/ResourceDescriptor$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/ResourceDescriptor;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1112
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0, p0}, Lcom/google/api/ResourceDescriptor;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/api/ResourceDescriptor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1092
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/api/ResourceDescriptor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1048
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1055
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1104
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1079
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1035
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1042
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1060
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1067
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ResourceDescriptor;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ResourceDescriptor;",
            ">;"
        }
    .end annotation

    .line 2093
    sget-object v0, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHistory(Lcom/google/api/ResourceDescriptor$History;)V
    .locals 0

    .line 844
    invoke-virtual {p1}, Lcom/google/api/ResourceDescriptor$History;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    return-void
.end method

.method private setHistoryValue(I)V
    .locals 0

    .line 819
    iput p1, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    return-void
.end method

.method private setNameField(Ljava/lang/String;)V
    .locals 0

    .line 709
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 711
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    return-void
.end method

.method private setNameFieldBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 736
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 737
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    return-void
.end method

.method private setPattern(ILjava/lang/String;)V
    .locals 1

    .line 540
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 541
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor;->ensurePatternIsMutable()V

    .line 542
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPlural(Ljava/lang/String;)V
    .locals 0

    .line 919
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 921
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    return-void
.end method

.method private setPluralBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 950
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 951
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    return-void
.end method

.method private setSingular(Ljava/lang/String;)V
    .locals 0

    .line 998
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1000
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    return-void
.end method

.method private setSingularBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1027
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1028
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 373
    invoke-static {p1}, Lcom/google/api/ResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 374
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2024
    sget-object p2, Lcom/google/api/ResourceDescriptor$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2071
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2065
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2050
    :pswitch_2
    sget-object p1, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2052
    const-class p2, Lcom/google/api/ResourceDescriptor;

    monitor-enter p2

    .line 2053
    :try_start_0
    sget-object p1, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2055
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2058
    sput-object p1, Lcom/google/api/ResourceDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    .line 2060
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

    .line 2047
    :pswitch_3
    sget-object p1, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    return-object p1

    .line 2032
    :pswitch_4
    const-string v0, "type_"

    const-string v1, "pattern_"

    const-string v2, "nameField_"

    const-string v3, "history_"

    const-string v4, "plural_"

    const-string v5, "singular_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 2040
    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u021a\u0003\u0208\u0004\u000c\u0005\u0208\u0006\u0208"

    .line 2043
    sget-object p3, Lcom/google/api/ResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/ResourceDescriptor;

    invoke-static {p3, p2, p1}, Lcom/google/api/ResourceDescriptor;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2029
    :pswitch_5
    new-instance p1, Lcom/google/api/ResourceDescriptor$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/ResourceDescriptor$Builder;-><init>(Lcom/google/api/ResourceDescriptor$1;)V

    return-object p1

    .line 2026
    :pswitch_6
    new-instance p1, Lcom/google/api/ResourceDescriptor;

    invoke-direct {p1}, Lcom/google/api/ResourceDescriptor;-><init>()V

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

.method public getHistory()Lcom/google/api/ResourceDescriptor$History;
    .locals 1

    .line 793
    iget v0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor$History;->forNumber(I)Lcom/google/api/ResourceDescriptor$History;

    move-result-object v0

    if-nez v0, :cond_0

    .line 794
    sget-object v0, Lcom/google/api/ResourceDescriptor$History;->UNRECOGNIZED:Lcom/google/api/ResourceDescriptor$History;

    :cond_0
    return-object v0
.end method

.method public getHistoryValue()I
    .locals 1

    .line 767
    iget v0, p0, Lcom/google/api/ResourceDescriptor;->history_:I

    return v0
.end method

.method public getNameField()Ljava/lang/String;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameFieldBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->nameField_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPattern(I)Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getPatternBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 502
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 501
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPatternCount()I
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPatternList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->pattern_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPlural()Ljava/lang/String;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    return-object v0
.end method

.method public getPluralBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->plural_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSingular()Ljava/lang/String;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    return-object v0
.end method

.method public getSingularBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->singular_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
