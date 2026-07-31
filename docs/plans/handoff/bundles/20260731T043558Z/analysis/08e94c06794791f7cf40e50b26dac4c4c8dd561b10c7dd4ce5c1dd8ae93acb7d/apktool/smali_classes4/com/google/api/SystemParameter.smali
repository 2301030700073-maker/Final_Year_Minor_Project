.class public final Lcom/google/api/SystemParameter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SystemParameter.java"

# interfaces
.implements Lcom/google/api/SystemParameterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/SystemParameter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/SystemParameter;",
        "Lcom/google/api/SystemParameter$Builder;",
        ">;",
        "Lcom/google/api/SystemParameterOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

.field public static final HTTP_HEADER_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SystemParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_QUERY_PARAMETER_FIELD_NUMBER:I = 0x3


# instance fields
.field private httpHeader_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private urlQueryParameter_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 615
    new-instance v0, Lcom/google/api/SystemParameter;

    invoke-direct {v0}, Lcom/google/api/SystemParameter;-><init>()V

    .line 618
    sput-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    .line 619
    const-class v1, Lcom/google/api/SystemParameter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/SystemParameter;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/SystemParameter;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/SystemParameter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/api/SystemParameter;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/SystemParameter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/SystemParameter;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setHttpHeader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/SystemParameter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/api/SystemParameter;->clearHttpHeader()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/SystemParameter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setHttpHeaderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/SystemParameter;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setUrlQueryParameter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/SystemParameter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/api/SystemParameter;->clearUrlQueryParameter()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/SystemParameter;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameter;->setUrlQueryParameterBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearHttpHeader()V
    .locals 1

    .line 147
    invoke-static {}, Lcom/google/api/SystemParameter;->getDefaultInstance()Lcom/google/api/SystemParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getHttpHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/google/api/SystemParameter;->getDefaultInstance()Lcom/google/api/SystemParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearUrlQueryParameter()V
    .locals 1

    .line 219
    invoke-static {}, Lcom/google/api/SystemParameter;->getDefaultInstance()Lcom/google/api/SystemParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getUrlQueryParameter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/SystemParameter;
    .locals 1

    .line 624
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/SystemParameter$Builder;
    .locals 1

    .line 314
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/SystemParameter;)Lcom/google/api/SystemParameter$Builder;
    .locals 1

    .line 317
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-virtual {v0, p0}, Lcom/google/api/SystemParameter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/api/SystemParameter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/api/SystemParameter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 253
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 240
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameter;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SystemParameter;",
            ">;"
        }
    .end annotation

    .line 630
    sget-object v0, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-virtual {v0}, Lcom/google/api/SystemParameter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHttpHeader(Ljava/lang/String;)V
    .locals 0

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    iput-object p1, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    return-void
.end method

.method private setHttpHeaderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 160
    invoke-static {p1}, Lcom/google/api/SystemParameter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 161
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iput-object p1, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 88
    invoke-static {p1}, Lcom/google/api/SystemParameter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    return-void
.end method

.method private setUrlQueryParameter(Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    iput-object p1, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-void
.end method

.method private setUrlQueryParameterBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 232
    invoke-static {p1}, Lcom/google/api/SystemParameter;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 233
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 564
    sget-object p2, Lcom/google/api/SystemParameter$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 608
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 602
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 587
    :pswitch_2
    sget-object p1, Lcom/google/api/SystemParameter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 589
    const-class p2, Lcom/google/api/SystemParameter;

    monitor-enter p2

    .line 590
    :try_start_0
    sget-object p1, Lcom/google/api/SystemParameter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 592
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 595
    sput-object p1, Lcom/google/api/SystemParameter;->PARSER:Lcom/google/protobuf/Parser;

    .line 597
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

    .line 584
    :pswitch_3
    sget-object p1, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    return-object p1

    .line 572
    :pswitch_4
    const-string p1, "name_"

    const-string p2, "httpHeader_"

    const-string p3, "urlQueryParameter_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 577
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 580
    sget-object p3, Lcom/google/api/SystemParameter;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameter;

    invoke-static {p3, p2, p1}, Lcom/google/api/SystemParameter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 569
    :pswitch_5
    new-instance p1, Lcom/google/api/SystemParameter$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/SystemParameter$Builder;-><init>(Lcom/google/api/SystemParameter$1;)V

    return-object p1

    .line 566
    :pswitch_6
    new-instance p1, Lcom/google/api/SystemParameter;

    invoke-direct {p1}, Lcom/google/api/SystemParameter;-><init>()V

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

.method public getHttpHeader()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/api/SystemParameter;->httpHeader_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/api/SystemParameter;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUrlQueryParameter()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlQueryParameterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/api/SystemParameter;->urlQueryParameter_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
