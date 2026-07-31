.class public final Lcom/google/api/MonitoredResourceMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MonitoredResourceMetadata.java"

# interfaces
.implements Lcom/google/api/MonitoredResourceMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/MonitoredResourceMetadata$Builder;,
        Lcom/google/api/MonitoredResourceMetadata$UserLabelsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/MonitoredResourceMetadata;",
        "Lcom/google/api/MonitoredResourceMetadata$Builder;",
        ">;",
        "Lcom/google/api/MonitoredResourceMetadataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/MonitoredResourceMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_LABELS_FIELD_NUMBER:I = 0x1

.field public static final USER_LABELS_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private systemLabels_:Lcom/google/protobuf/Struct;

.field private userLabels_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 671
    new-instance v0, Lcom/google/api/MonitoredResourceMetadata;

    invoke-direct {v0}, Lcom/google/api/MonitoredResourceMetadata;-><init>()V

    .line 674
    sput-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    .line 675
    const-class v1, Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 151
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/MonitoredResourceMetadata;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/MonitoredResourceMetadata;Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceMetadata;->setSystemLabels(Lcom/google/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/MonitoredResourceMetadata;Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/google/api/MonitoredResourceMetadata;->mergeSystemLabels(Lcom/google/protobuf/Struct;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/MonitoredResourceMetadata;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->clearSystemLabels()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/MonitoredResourceMetadata;)Ljava/util/Map;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->getMutableUserLabelsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private clearSystemLabels()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    .line 135
    iget v0, p0, Lcom/google/api/MonitoredResourceMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/api/MonitoredResourceMetadata;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/MonitoredResourceMetadata;
    .locals 1

    .line 680
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    return-object v0
.end method

.method private getMutableUserLabelsMap()Ljava/util/Map;
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

    .line 250
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetMutableUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableUserLabels()Lcom/google/protobuf/MapFieldLite;
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

    .line 158
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;
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

    .line 154
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->userLabels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergeSystemLabels(Lcom/google/protobuf/Struct;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    .line 112
    invoke-static {v0}, Lcom/google/protobuf/Struct;->newBuilder(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Struct$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct;

    iput-object p1, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    .line 116
    :goto_0
    iget p1, p0, Lcom/google/api/MonitoredResourceMetadata;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/api/MonitoredResourceMetadata;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 330
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/MonitoredResourceMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/MonitoredResourceMetadata;)Lcom/google/api/MonitoredResourceMetadata$Builder;
    .locals 1

    .line 333
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0, p0}, Lcom/google/api/MonitoredResourceMetadata;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/api/MonitoredResourceMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/api/MonitoredResourceMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 269
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 281
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/MonitoredResourceMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 288
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/MonitoredResourceMetadata;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/MonitoredResourceMetadata;",
            ">;"
        }
    .end annotation

    .line 686
    sget-object v0, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-virtual {v0}, Lcom/google/api/MonitoredResourceMetadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setSystemLabels(Lcom/google/protobuf/Struct;)V
    .locals 0

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    iput-object p1, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    .line 88
    iget p1, p0, Lcom/google/api/MonitoredResourceMetadata;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/api/MonitoredResourceMetadata;->bitField0_:I

    return-void
.end method


# virtual methods
.method public containsUserLabels(Ljava/lang/String;)Z
    .locals 1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 619
    sget-object p2, Lcom/google/api/MonitoredResourceMetadata$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 664
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 658
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 643
    :pswitch_2
    sget-object p1, Lcom/google/api/MonitoredResourceMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 645
    const-class p2, Lcom/google/api/MonitoredResourceMetadata;

    monitor-enter p2

    .line 646
    :try_start_0
    sget-object p1, Lcom/google/api/MonitoredResourceMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 648
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 651
    sput-object p1, Lcom/google/api/MonitoredResourceMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 653
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

    .line 640
    :pswitch_3
    sget-object p1, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    return-object p1

    .line 627
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "systemLabels_"

    const-string p3, "userLabels_"

    sget-object v0, Lcom/google/api/MonitoredResourceMetadata$UserLabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 633
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0001\u0000\u0000\u0001\u1009\u0000\u00022"

    .line 636
    sget-object p3, Lcom/google/api/MonitoredResourceMetadata;->DEFAULT_INSTANCE:Lcom/google/api/MonitoredResourceMetadata;

    invoke-static {p3, p2, p1}, Lcom/google/api/MonitoredResourceMetadata;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 624
    :pswitch_5
    new-instance p1, Lcom/google/api/MonitoredResourceMetadata$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/MonitoredResourceMetadata$Builder;-><init>(Lcom/google/api/MonitoredResourceMetadata$1;)V

    return-object p1

    .line 621
    :pswitch_6
    new-instance p1, Lcom/google/api/MonitoredResourceMetadata;

    invoke-direct {p1}, Lcom/google/api/MonitoredResourceMetadata;-><init>()V

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

.method public getSystemLabels()Lcom/google/protobuf/Struct;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/api/MonitoredResourceMetadata;->systemLabels_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserLabels()Ljava/util/Map;
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

    .line 188
    invoke-virtual {p0}, Lcom/google/api/MonitoredResourceMetadata;->getUserLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserLabelsCount()I
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getUserLabelsMap()Ljava/util/Map;
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

    .line 201
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 200
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUserLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 220
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

.method public getUserLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    invoke-direct {p0}, Lcom/google/api/MonitoredResourceMetadata;->internalGetUserLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 236
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 237
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public hasSystemLabels()Z
    .locals 2

    .line 47
    iget v0, p0, Lcom/google/api/MonitoredResourceMetadata;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
