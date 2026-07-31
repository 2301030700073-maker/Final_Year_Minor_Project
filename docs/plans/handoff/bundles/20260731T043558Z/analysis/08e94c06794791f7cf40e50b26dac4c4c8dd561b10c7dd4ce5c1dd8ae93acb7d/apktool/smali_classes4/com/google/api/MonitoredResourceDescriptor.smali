.class public final Lcom/google/api/MonitoredResourceDescriptor;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MonitoredResourceDescriptor.java"

# interfaces
.implements Lcom/google/api/MonitoredResourceDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/MonitoredResourceDescriptor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/MonitoredResourceDescriptor;",
        "Lcom/google/api/MonitoredResourceDescriptor$Builder;",
        ">;",
        "Lcom/google/api/MonitoredResourceDescriptorOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x2

.field public static final LABELS_FIELD_NUMBER:I = 0x4

.field public static final LAUNCH_STAGE_FIELD_NUMBER:I = 0x7

.field public static final NAME_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private description_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private launchStage_:I

.field private name_:Ljava/lang/String;

.field private type_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1321
    new-instance v0, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-direct {v0}, Lcom/google/api/MonitoredResourceDescriptor;-><init>()V

    .line 1324
    sput-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    .line 1325
    const-class v1, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->name_:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->type_:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->displayName_:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->description_:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->clearDescription()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->setLabels(ILcom/google/api/LabelDescriptor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LabelDescriptor;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->addLabels(Lcom/google/api/LabelDescriptor;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/MonitoredResourceDescriptor;ILcom/google/api/LabelDescriptor;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/api/MonitoredResourceDescriptor;->addLabels(ILcom/google/api/LabelDescriptor;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/Iterable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->addAllLabels(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->clearLabels()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/MonitoredResourceDescriptor;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->removeLabels(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/api/MonitoredResourceDescriptor;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setLaunchStageValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->clearName()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/api/LaunchStage;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setLaunchStage(Lcom/google/api/LaunchStage;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->clearLaunchStage()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->clearType()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/MonitoredResourceDescriptor;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/MonitoredResourceDescriptor;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->clearDisplayName()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/MonitoredResourceDescriptor;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllLabels(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LabelDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 487
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->ensureLabelsIsMutable()V

    .line 488
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addLabels(ILcom/google/api/LabelDescriptor;)V
    .locals 1

    .line 472
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->ensureLabelsIsMutable()V

    .line 474
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLabels(Lcom/google/api/LabelDescriptor;)V
    .locals 1

    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->ensureLabelsIsMutable()V

    .line 459
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 339
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->getDefaultInstance()Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->description_:Ljava/lang/String;

    return-void
.end method

.method private clearDisplayName()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->getDefaultInstance()Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private clearLabels()V
    .locals 1

    .line 501
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLaunchStage()V
    .locals 1

    const/4 v0, 0x0

    .line 576
    iput v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->launchStage_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 104
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->getDefaultInstance()Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 184
    invoke-static {}, Lcom/google/api/MonitoredResourceDescriptor;->getDefaultInstance()Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->type_:Ljava/lang/String;

    return-void
.end method

.method private ensureLabelsIsMutable()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 426
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1

    .line 1330
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 656
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceDescriptor$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/MonitoredResourceDescriptor$Builder;
    .locals 1

    .line 659
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0, p0}, Lcom/google/api/MonitoredResourceDescriptor;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/api/MonitoredResourceDescriptor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/api/MonitoredResourceDescriptor;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 595
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 602
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 619
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 582
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 589
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 607
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 614
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceDescriptor;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation

    .line 1336
    sget-object v0, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceDescriptor;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLabels(I)V
    .locals 1

    .line 513
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->ensureLabelsIsMutable()V

    .line 514
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    iput-object p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->description_:Ljava/lang/String;

    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 352
    invoke-static {p1}, Lcom/google/api/MonitoredResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 353
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->description_:Ljava/lang/String;

    return-void
.end method

.method private setDisplayName(Ljava/lang/String;)V
    .locals 0

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    iput-object p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private setDisplayNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 280
    invoke-static {p1}, Lcom/google/api/MonitoredResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 281
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->displayName_:Ljava/lang/String;

    return-void
.end method

.method private setLabels(ILcom/google/api/LabelDescriptor;)V
    .locals 1

    .line 443
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 444
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceDescriptor;->ensureLabelsIsMutable()V

    .line 445
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLaunchStage(Lcom/google/api/LaunchStage;)V
    .locals 0

    .line 564
    invoke-virtual {p1}, Lcom/google/api/LaunchStage;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->launchStage_:I

    return-void
.end method

.method private setLaunchStageValue(I)V
    .locals 0

    .line 553
    iput p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->launchStage_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    iput-object p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 121
    invoke-static {p1}, Lcom/google/api/MonitoredResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 122
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->name_:Ljava/lang/String;

    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    iput-object p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->type_:Ljava/lang/String;

    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 198
    invoke-static {p1}, Lcom/google/api/MonitoredResourceDescriptor;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 199
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/MonitoredResourceDescriptor;->type_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1266
    sget-object p2, Lcom/google/api/MonitoredResourceDescriptor$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1314
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1308
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1293
    :pswitch_2
    sget-object p1, Lcom/google/api/MonitoredResourceDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1295
    const-class p2, Lcom/google/api/MonitoredResourceDescriptor;

    monitor-enter p2

    .line 1296
    :try_start_0
    sget-object p1, Lcom/google/api/MonitoredResourceDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1298
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1301
    sput-object p1, Lcom/google/api/MonitoredResourceDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    .line 1303
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

    .line 1290
    :pswitch_3
    sget-object p1, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    return-object p1

    .line 1274
    :pswitch_4
    const-string v0, "type_"

    const-string v1, "displayName_"

    const-string v2, "description_"

    const-string v3, "labels_"

    const-class v4, Lcom/google/api/LabelDescriptor;

    const-string v5, "name_"

    const-string v6, "launchStage_"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 1283
    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0007\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u001b\u0005\u0208\u0007\u000c"

    .line 1286
    sget-object p3, Lcom/google/api/MonitoredResourceDescriptor;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {p3, p2, p1}, Lcom/google/api/MonitoredResourceDescriptor;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1271
    :pswitch_5
    new-instance p1, Lcom/google/api/MonitoredResourceDescriptor$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/MonitoredResourceDescriptor$Builder;-><init>(Lcom/google/api/MonitoredResourceDescriptor$1;)V

    return-object p1

    .line 1268
    :pswitch_6
    new-instance p1, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-direct {p1}, Lcom/google/api/MonitoredResourceDescriptor;-><init>()V

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

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->displayName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptor;

    return-object p1
.end method

.method public getLabelsCount()I
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLabelsOrBuilder(I)Lcom/google/api/LabelDescriptorOrBuilder;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/LabelDescriptorOrBuilder;

    return-object p1
.end method

.method public getLabelsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/LabelDescriptorOrBuilder;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->labels_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLaunchStage()Lcom/google/api/LaunchStage;
    .locals 1

    .line 541
    iget v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->launchStage_:I

    invoke-static {v0}, Lcom/google/api/LaunchStage;->forNumber(I)Lcom/google/api/LaunchStage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 542
    sget-object v0, Lcom/google/api/LaunchStage;->UNRECOGNIZED:Lcom/google/api/LaunchStage;

    :cond_0
    return-object v0
.end method

.method public getLaunchStageValue()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->launchStage_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/api/MonitoredResourceDescriptor;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
