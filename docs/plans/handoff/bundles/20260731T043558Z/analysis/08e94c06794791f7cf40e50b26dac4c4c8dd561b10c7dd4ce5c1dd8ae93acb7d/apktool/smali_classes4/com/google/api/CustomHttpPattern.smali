.class public final Lcom/google/api/CustomHttpPattern;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CustomHttpPattern.java"

# interfaces
.implements Lcom/google/api/CustomHttpPatternOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/CustomHttpPattern$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/CustomHttpPattern;",
        "Lcom/google/api/CustomHttpPattern$Builder;",
        ">;",
        "Lcom/google/api/CustomHttpPatternOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

.field public static final KIND_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/CustomHttpPattern;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x2


# instance fields
.field private kind_:Ljava/lang/String;

.field private path_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 453
    new-instance v0, Lcom/google/api/CustomHttpPattern;

    invoke-direct {v0}, Lcom/google/api/CustomHttpPattern;-><init>()V

    .line 456
    sput-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    .line 457
    const-class v1, Lcom/google/api/CustomHttpPattern;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/CustomHttpPattern;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/CustomHttpPattern;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/CustomHttpPattern;->setKind(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/CustomHttpPattern;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/CustomHttpPattern;->clearKind()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/CustomHttpPattern;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/CustomHttpPattern;->setKindBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/CustomHttpPattern;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/CustomHttpPattern;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/CustomHttpPattern;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/CustomHttpPattern;->clearPath()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/CustomHttpPattern;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/CustomHttpPattern;->setPathBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearKind()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->getDefaultInstance()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getKind()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    return-void
.end method

.method private clearPath()V
    .locals 1

    .line 140
    invoke-static {}, Lcom/google/api/CustomHttpPattern;->getDefaultInstance()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/CustomHttpPattern;
    .locals 1

    .line 462
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1

    .line 234
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/CustomHttpPattern$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/CustomHttpPattern$Builder;
    .locals 1

    .line 237
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0, p0}, Lcom/google/api/CustomHttpPattern;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/api/CustomHttpPattern;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/api/CustomHttpPattern;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/CustomHttpPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/CustomHttpPattern;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/CustomHttpPattern;",
            ">;"
        }
    .end annotation

    .line 468
    sget-object v0, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-virtual {v0}, Lcom/google/api/CustomHttpPattern;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKind(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iput-object p1, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    return-void
.end method

.method private setKindBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 85
    invoke-static {p1}, Lcom/google/api/CustomHttpPattern;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 86
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 0

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iput-object p1, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    return-void
.end method

.method private setPathBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-static {p1}, Lcom/google/api/CustomHttpPattern;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 153
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 403
    sget-object p2, Lcom/google/api/CustomHttpPattern$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 446
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 440
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 425
    :pswitch_2
    sget-object p1, Lcom/google/api/CustomHttpPattern;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 427
    const-class p2, Lcom/google/api/CustomHttpPattern;

    monitor-enter p2

    .line 428
    :try_start_0
    sget-object p1, Lcom/google/api/CustomHttpPattern;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 430
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 433
    sput-object p1, Lcom/google/api/CustomHttpPattern;->PARSER:Lcom/google/protobuf/Parser;

    .line 435
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

    .line 422
    :pswitch_3
    sget-object p1, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    return-object p1

    .line 411
    :pswitch_4
    const-string p1, "kind_"

    const-string p2, "path_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 415
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 418
    sget-object p3, Lcom/google/api/CustomHttpPattern;->DEFAULT_INSTANCE:Lcom/google/api/CustomHttpPattern;

    invoke-static {p3, p2, p1}, Lcom/google/api/CustomHttpPattern;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 408
    :pswitch_5
    new-instance p1, Lcom/google/api/CustomHttpPattern$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/CustomHttpPattern$Builder;-><init>(Lcom/google/api/CustomHttpPattern$1;)V

    return-object p1

    .line 405
    :pswitch_6
    new-instance p1, Lcom/google/api/CustomHttpPattern;

    invoke-direct {p1}, Lcom/google/api/CustomHttpPattern;-><init>()V

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

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    return-object v0
.end method

.method public getKindBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern;->kind_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/api/CustomHttpPattern;->path_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
