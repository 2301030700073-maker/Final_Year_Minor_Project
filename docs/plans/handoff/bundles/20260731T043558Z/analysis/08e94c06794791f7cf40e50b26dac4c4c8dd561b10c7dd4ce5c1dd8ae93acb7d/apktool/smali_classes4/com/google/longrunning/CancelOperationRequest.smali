.class public final Lcom/google/longrunning/CancelOperationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CancelOperationRequest.java"

# interfaces
.implements Lcom/google/longrunning/CancelOperationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/longrunning/CancelOperationRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/longrunning/CancelOperationRequest;",
        "Lcom/google/longrunning/CancelOperationRequest$Builder;",
        ">;",
        "Lcom/google/longrunning/CancelOperationRequestOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/CancelOperationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 314
    new-instance v0, Lcom/google/longrunning/CancelOperationRequest;

    invoke-direct {v0}, Lcom/google/longrunning/CancelOperationRequest;-><init>()V

    .line 317
    sput-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    .line 318
    const-class v1, Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/longrunning/CancelOperationRequest;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/longrunning/CancelOperationRequest;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/longrunning/CancelOperationRequest;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/longrunning/CancelOperationRequest;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/longrunning/CancelOperationRequest;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/longrunning/CancelOperationRequest;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/longrunning/CancelOperationRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/longrunning/CancelOperationRequest;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/google/longrunning/CancelOperationRequest;->getDefaultInstance()Lcom/google/longrunning/CancelOperationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/longrunning/CancelOperationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/longrunning/CancelOperationRequest;->name_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/longrunning/CancelOperationRequest;
    .locals 1

    .line 323
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/longrunning/CancelOperationRequest$Builder;
    .locals 1

    .line 166
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/CancelOperationRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/longrunning/CancelOperationRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/longrunning/CancelOperationRequest;)Lcom/google/longrunning/CancelOperationRequest$Builder;
    .locals 1

    .line 169
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-virtual {v0, p0}, Lcom/google/longrunning/CancelOperationRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0}, Lcom/google/longrunning/CancelOperationRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/longrunning/CancelOperationRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/longrunning/CancelOperationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/longrunning/CancelOperationRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/longrunning/CancelOperationRequest;",
            ">;"
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-virtual {v0}, Lcom/google/longrunning/CancelOperationRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iput-object p1, p0, Lcom/google/longrunning/CancelOperationRequest;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/google/longrunning/CancelOperationRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/longrunning/CancelOperationRequest;->name_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 266
    sget-object p2, Lcom/google/longrunning/CancelOperationRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 307
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 301
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 286
    :pswitch_2
    sget-object p1, Lcom/google/longrunning/CancelOperationRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 288
    const-class p2, Lcom/google/longrunning/CancelOperationRequest;

    monitor-enter p2

    .line 289
    :try_start_0
    sget-object p1, Lcom/google/longrunning/CancelOperationRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 291
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 294
    sput-object p1, Lcom/google/longrunning/CancelOperationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 296
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

    .line 283
    :pswitch_3
    sget-object p1, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    return-object p1

    .line 274
    :pswitch_4
    const-string p1, "name_"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 277
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 279
    sget-object p3, Lcom/google/longrunning/CancelOperationRequest;->DEFAULT_INSTANCE:Lcom/google/longrunning/CancelOperationRequest;

    invoke-static {p3, p2, p1}, Lcom/google/longrunning/CancelOperationRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 271
    :pswitch_5
    new-instance p1, Lcom/google/longrunning/CancelOperationRequest$Builder;

    invoke-direct {p1, p2}, Lcom/google/longrunning/CancelOperationRequest$Builder;-><init>(Lcom/google/longrunning/CancelOperationRequest$1;)V

    return-object p1

    .line 268
    :pswitch_6
    new-instance p1, Lcom/google/longrunning/CancelOperationRequest;

    invoke-direct {p1}, Lcom/google/longrunning/CancelOperationRequest;-><init>()V

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/longrunning/CancelOperationRequest;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
