.class public final Lcom/google/rpc/ErrorInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ErrorInfo.java"

# interfaces
.implements Lcom/google/rpc/ErrorInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/ErrorInfo$Builder;,
        Lcom/google/rpc/ErrorInfo$MetadataDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/ErrorInfo;",
        "Lcom/google/rpc/ErrorInfo$Builder;",
        ">;",
        "Lcom/google/rpc/ErrorInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

.field public static final DOMAIN_FIELD_NUMBER:I = 0x2

.field public static final METADATA_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/ErrorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_FIELD_NUMBER:I = 0x1


# instance fields
.field private domain_:Ljava/lang/String;

.field private metadata_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reason_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 892
    new-instance v0, Lcom/google/rpc/ErrorInfo;

    invoke-direct {v0}, Lcom/google/rpc/ErrorInfo;-><init>()V

    .line 895
    sput-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    .line 896
    const-class v1, Lcom/google/rpc/ErrorInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 225
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/ErrorInfo;->metadata_:Lcom/google/protobuf/MapFieldLite;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/rpc/ErrorInfo;->reason_:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/google/rpc/ErrorInfo;->domain_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/rpc/ErrorInfo;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/rpc/ErrorInfo;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/rpc/ErrorInfo;->setReason(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/rpc/ErrorInfo;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo;->clearReason()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/rpc/ErrorInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/rpc/ErrorInfo;->setReasonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/rpc/ErrorInfo;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/rpc/ErrorInfo;->setDomain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/rpc/ErrorInfo;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo;->clearDomain()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/rpc/ErrorInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/rpc/ErrorInfo;->setDomainBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/rpc/ErrorInfo;)Ljava/util/Map;
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo;->getMutableMetadataMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private clearDomain()V
    .locals 1

    .line 191
    invoke-static {}, Lcom/google/rpc/ErrorInfo;->getDefaultInstance()Lcom/google/rpc/ErrorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/ErrorInfo;->domain_:Ljava/lang/String;

    return-void
.end method

.method private clearReason()V
    .locals 1

    .line 105
    invoke-static {}, Lcom/google/rpc/ErrorInfo;->getDefaultInstance()Lcom/google/rpc/ErrorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/ErrorInfo;->reason_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/ErrorInfo;
    .locals 1

    .line 901
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    return-object v0
.end method

.method private getMutableMetadataMap()Ljava/util/Map;
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

    .line 359
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo;->internalGetMutableMetadata()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMetadata()Lcom/google/protobuf/MapFieldLite;
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

    .line 228
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo;->metadata_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableMetadata()Lcom/google/protobuf/MapFieldLite;
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

    .line 232
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo;->metadata_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo;->metadata_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/ErrorInfo;->metadata_:Lcom/google/protobuf/MapFieldLite;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo;->metadata_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 439
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/ErrorInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/ErrorInfo;)Lcom/google/rpc/ErrorInfo$Builder;
    .locals 1

    .line 442
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0, p0}, Lcom/google/rpc/ErrorInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0}, Lcom/google/rpc/ErrorInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/ErrorInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 378
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 385
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/ErrorInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/ErrorInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/ErrorInfo;",
            ">;"
        }
    .end annotation

    .line 907
    sget-object v0, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-virtual {v0}, Lcom/google/rpc/ErrorInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDomain(Ljava/lang/String;)V
    .locals 0

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    iput-object p1, p0, Lcom/google/rpc/ErrorInfo;->domain_:Ljava/lang/String;

    return-void
.end method

.method private setDomainBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 207
    invoke-static {p1}, Lcom/google/rpc/ErrorInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 208
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/ErrorInfo;->domain_:Ljava/lang/String;

    return-void
.end method

.method private setReason(Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    iput-object p1, p0, Lcom/google/rpc/ErrorInfo;->reason_:Ljava/lang/String;

    return-void
.end method

.method private setReasonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 120
    invoke-static {p1}, Lcom/google/rpc/ErrorInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 121
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/rpc/ErrorInfo;->reason_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public containsMetadata(Ljava/lang/String;)Z
    .locals 1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo;->internalGetMetadata()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 840
    sget-object p2, Lcom/google/rpc/ErrorInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 885
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 879
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 864
    :pswitch_2
    sget-object p1, Lcom/google/rpc/ErrorInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 866
    const-class p2, Lcom/google/rpc/ErrorInfo;

    monitor-enter p2

    .line 867
    :try_start_0
    sget-object p1, Lcom/google/rpc/ErrorInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 869
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 872
    sput-object p1, Lcom/google/rpc/ErrorInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 874
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

    .line 861
    :pswitch_3
    sget-object p1, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    return-object p1

    .line 848
    :pswitch_4
    const-string p1, "reason_"

    const-string p2, "domain_"

    const-string p3, "metadata_"

    sget-object v0, Lcom/google/rpc/ErrorInfo$MetadataDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 854
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0001\u0000\u0000\u0001\u0208\u0002\u0208\u00032"

    .line 857
    sget-object p3, Lcom/google/rpc/ErrorInfo;->DEFAULT_INSTANCE:Lcom/google/rpc/ErrorInfo;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/ErrorInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 845
    :pswitch_5
    new-instance p1, Lcom/google/rpc/ErrorInfo$Builder;

    invoke-direct {p1, p2}, Lcom/google/rpc/ErrorInfo$Builder;-><init>(Lcom/google/rpc/ErrorInfo$1;)V

    return-object p1

    .line 842
    :pswitch_6
    new-instance p1, Lcom/google/rpc/ErrorInfo;

    invoke-direct {p1}, Lcom/google/rpc/ErrorInfo;-><init>()V

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

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo;->domain_:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo;->domain_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Ljava/util/Map;
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

    .line 269
    invoke-virtual {p0}, Lcom/google/rpc/ErrorInfo;->getMetadataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataCount()I
    .locals 1

    .line 240
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo;->internalGetMetadata()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getMetadataMap()Ljava/util/Map;
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

    .line 289
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo;->internalGetMetadata()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 288
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo;->internalGetMetadata()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 315
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

.method public getMetadataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    invoke-direct {p0}, Lcom/google/rpc/ErrorInfo;->internalGetMetadata()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 338
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 339
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo;->reason_:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/rpc/ErrorInfo;->reason_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
