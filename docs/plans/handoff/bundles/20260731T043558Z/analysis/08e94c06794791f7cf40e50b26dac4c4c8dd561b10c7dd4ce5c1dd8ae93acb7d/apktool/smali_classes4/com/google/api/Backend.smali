.class public final Lcom/google/api/Backend;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Backend.java"

# interfaces
.implements Lcom/google/api/BackendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Backend$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Backend;",
        "Lcom/google/api/Backend$Builder;",
        ">;",
        "Lcom/google/api/BackendOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Backend;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Backend;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULES_FIELD_NUMBER:I = 0x1


# instance fields
.field private rules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 513
    new-instance v0, Lcom/google/api/Backend;

    invoke-direct {v0}, Lcom/google/api/Backend;-><init>()V

    .line 516
    sput-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    .line 517
    const-class v1, Lcom/google/api/Backend;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    invoke-static {}, Lcom/google/api/Backend;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Backend;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/api/Backend;->setRules(ILcom/google/api/BackendRule;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Backend;Lcom/google/api/BackendRule;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/Backend;->addRules(Lcom/google/api/BackendRule;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Backend;ILcom/google/api/BackendRule;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/api/Backend;->addRules(ILcom/google/api/BackendRule;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Backend;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/Backend;->addAllRules(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/Backend;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/Backend;->clearRules()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/Backend;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/Backend;->removeRules(I)V

    return-void
.end method

.method private addAllRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/BackendRule;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 153
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addRules(ILcom/google/api/BackendRule;)V
    .locals 1

    .line 137
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 139
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRules(Lcom/google/api/BackendRule;)V
    .locals 1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 124
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearRules()V
    .locals 1

    .line 166
    invoke-static {}, Lcom/google/api/Backend;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureRulesIsMutable()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 91
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Backend;
    .locals 1

    .line 522
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Backend$Builder;
    .locals 1

    .line 259
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-virtual {v0}, Lcom/google/api/Backend;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Backend$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Backend;)Lcom/google/api/Backend$Builder;
    .locals 1

    .line 262
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-virtual {v0, p0}, Lcom/google/api/Backend;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/api/Backend;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/api/Backend;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Backend;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 217
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Backend;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Backend;",
            ">;"
        }
    .end annotation

    .line 528
    sget-object v0, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-virtual {v0}, Lcom/google/api/Backend;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeRules(I)V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 179
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setRules(ILcom/google/api/BackendRule;)V
    .locals 1

    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-direct {p0}, Lcom/google/api/Backend;->ensureRulesIsMutable()V

    .line 110
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 464
    sget-object p2, Lcom/google/api/Backend$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 506
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 500
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 485
    :pswitch_2
    sget-object p1, Lcom/google/api/Backend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 487
    const-class p2, Lcom/google/api/Backend;

    monitor-enter p2

    .line 488
    :try_start_0
    sget-object p1, Lcom/google/api/Backend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 490
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 493
    sput-object p1, Lcom/google/api/Backend;->PARSER:Lcom/google/protobuf/Parser;

    .line 495
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

    .line 482
    :pswitch_3
    sget-object p1, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    return-object p1

    .line 472
    :pswitch_4
    const-string p1, "rules_"

    const-class p2, Lcom/google/api/BackendRule;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 476
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 478
    sget-object p3, Lcom/google/api/Backend;->DEFAULT_INSTANCE:Lcom/google/api/Backend;

    invoke-static {p3, p2, p1}, Lcom/google/api/Backend;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 469
    :pswitch_5
    new-instance p1, Lcom/google/api/Backend$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/Backend$Builder;-><init>(Lcom/google/api/Backend$1;)V

    return-object p1

    .line 466
    :pswitch_6
    new-instance p1, Lcom/google/api/Backend;

    invoke-direct {p1}, Lcom/google/api/Backend;-><init>()V

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

.method public getRules(I)Lcom/google/api/BackendRule;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRule;

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/BackendRule;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lcom/google/api/BackendRuleOrBuilder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/BackendRuleOrBuilder;

    return-object p1
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/BackendRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/api/Backend;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
