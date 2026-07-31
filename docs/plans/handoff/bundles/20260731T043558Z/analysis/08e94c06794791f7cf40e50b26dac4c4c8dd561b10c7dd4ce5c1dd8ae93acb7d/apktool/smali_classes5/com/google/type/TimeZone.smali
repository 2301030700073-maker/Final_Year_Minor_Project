.class public final Lcom/google/type/TimeZone;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TimeZone.java"

# interfaces
.implements Lcom/google/type/TimeZoneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/TimeZone$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/TimeZone;",
        "Lcom/google/type/TimeZone$Builder;",
        ">;",
        "Lcom/google/type/TimeZoneOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private id_:Ljava/lang/String;

.field private version_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 455
    new-instance v0, Lcom/google/type/TimeZone;

    invoke-direct {v0}, Lcom/google/type/TimeZone;-><init>()V

    .line 458
    sput-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    .line 459
    const-class v1, Lcom/google/type/TimeZone;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/google/type/TimeZone;->id_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/type/TimeZone;->version_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/type/TimeZone;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/TimeZone;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/type/TimeZone;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/TimeZone;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/type/TimeZone;->clearId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/TimeZone;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/type/TimeZone;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/TimeZone;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/type/TimeZone;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/type/TimeZone;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/type/TimeZone;->clearVersion()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/type/TimeZone;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/type/TimeZone;->setVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 74
    invoke-static {}, Lcom/google/type/TimeZone;->getDefaultInstance()Lcom/google/type/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/TimeZone;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 141
    invoke-static {}, Lcom/google/type/TimeZone;->getDefaultInstance()Lcom/google/type/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/type/TimeZone;->version_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/TimeZone;
    .locals 1

    .line 464
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 235
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/TimeZone$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/TimeZone;)Lcom/google/type/TimeZone$Builder;
    .locals 1

    .line 238
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-virtual {v0, p0}, Lcom/google/type/TimeZone;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0}, Lcom/google/type/TimeZone;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0, p1}, Lcom/google/type/TimeZone;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/TimeZone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/TimeZone;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/TimeZone;",
            ">;"
        }
    .end annotation

    .line 470
    sget-object v0, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-virtual {v0}, Lcom/google/type/TimeZone;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iput-object p1, p0, Lcom/google/type/TimeZone;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 86
    invoke-static {p1}, Lcom/google/type/TimeZone;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 87
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/type/TimeZone;->id_:Ljava/lang/String;

    return-void
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    iput-object p1, p0, Lcom/google/type/TimeZone;->version_:Ljava/lang/String;

    return-void
.end method

.method private setVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 153
    invoke-static {p1}, Lcom/google/type/TimeZone;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 154
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/type/TimeZone;->version_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 405
    sget-object p2, Lcom/google/type/TimeZone$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 448
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 442
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 427
    :pswitch_2
    sget-object p1, Lcom/google/type/TimeZone;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 429
    const-class p2, Lcom/google/type/TimeZone;

    monitor-enter p2

    .line 430
    :try_start_0
    sget-object p1, Lcom/google/type/TimeZone;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 432
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 435
    sput-object p1, Lcom/google/type/TimeZone;->PARSER:Lcom/google/protobuf/Parser;

    .line 437
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

    .line 424
    :pswitch_3
    sget-object p1, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    return-object p1

    .line 413
    :pswitch_4
    const-string p1, "id_"

    const-string p2, "version_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 417
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 420
    sget-object p3, Lcom/google/type/TimeZone;->DEFAULT_INSTANCE:Lcom/google/type/TimeZone;

    invoke-static {p3, p2, p1}, Lcom/google/type/TimeZone;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 410
    :pswitch_5
    new-instance p1, Lcom/google/type/TimeZone$Builder;

    invoke-direct {p1, p2}, Lcom/google/type/TimeZone$Builder;-><init>(Lcom/google/type/TimeZone$1;)V

    return-object p1

    .line 407
    :pswitch_6
    new-instance p1, Lcom/google/type/TimeZone;

    invoke-direct {p1}, Lcom/google/type/TimeZone;-><init>()V

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

.method public getId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/type/TimeZone;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/type/TimeZone;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/type/TimeZone;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/type/TimeZone;->version_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
