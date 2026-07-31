.class public final Lcom/google/api/DocumentationRule;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DocumentationRule.java"

# interfaces
.implements Lcom/google/api/DocumentationRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/DocumentationRule$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/DocumentationRule;",
        "Lcom/google/api/DocumentationRule$Builder;",
        ">;",
        "Lcom/google/api/DocumentationRuleOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

.field public static final DEPRECATION_DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/DocumentationRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECTOR_FIELD_NUMBER:I = 0x1


# instance fields
.field private deprecationDescription_:Ljava/lang/String;

.field private description_:Ljava/lang/String;

.field private selector_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 651
    new-instance v0, Lcom/google/api/DocumentationRule;

    invoke-direct {v0}, Lcom/google/api/DocumentationRule;-><init>()V

    .line 654
    sput-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    .line 655
    const-class v1, Lcom/google/api/DocumentationRule;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/DocumentationRule;->selector_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/api/DocumentationRule;->description_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/api/DocumentationRule;->deprecationDescription_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/DocumentationRule;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/DocumentationRule;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/DocumentationRule;->setSelector(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/DocumentationRule;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/DocumentationRule;->clearSelector()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/DocumentationRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/DocumentationRule;->setSelectorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/DocumentationRule;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/DocumentationRule;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/DocumentationRule;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/DocumentationRule;->clearDescription()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/DocumentationRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/DocumentationRule;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/DocumentationRule;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/DocumentationRule;->setDeprecationDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/DocumentationRule;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/DocumentationRule;->clearDeprecationDescription()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/DocumentationRule;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/DocumentationRule;->setDeprecationDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDeprecationDescription()V
    .locals 1

    .line 237
    invoke-static {}, Lcom/google/api/DocumentationRule;->getDefaultInstance()Lcom/google/api/DocumentationRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDeprecationDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/DocumentationRule;->deprecationDescription_:Ljava/lang/String;

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 166
    invoke-static {}, Lcom/google/api/DocumentationRule;->getDefaultInstance()Lcom/google/api/DocumentationRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/DocumentationRule;->description_:Ljava/lang/String;

    return-void
.end method

.method private clearSelector()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/google/api/DocumentationRule;->getDefaultInstance()Lcom/google/api/DocumentationRule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/DocumentationRule;->selector_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/DocumentationRule;
    .locals 1

    .line 660
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 332
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/DocumentationRule$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/DocumentationRule;)Lcom/google/api/DocumentationRule$Builder;
    .locals 1

    .line 335
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-virtual {v0, p0}, Lcom/google/api/DocumentationRule;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0}, Lcom/google/api/DocumentationRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0, p1}, Lcom/google/api/DocumentationRule;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/DocumentationRule;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 290
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/DocumentationRule;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/DocumentationRule;",
            ">;"
        }
    .end annotation

    .line 666
    sget-object v0, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-virtual {v0}, Lcom/google/api/DocumentationRule;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDeprecationDescription(Ljava/lang/String;)V
    .locals 0

    .line 223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    iput-object p1, p0, Lcom/google/api/DocumentationRule;->deprecationDescription_:Ljava/lang/String;

    return-void
.end method

.method private setDeprecationDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 250
    invoke-static {p1}, Lcom/google/api/DocumentationRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 251
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/DocumentationRule;->deprecationDescription_:Ljava/lang/String;

    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    iput-object p1, p0, Lcom/google/api/DocumentationRule;->description_:Ljava/lang/String;

    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 178
    invoke-static {p1}, Lcom/google/api/DocumentationRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 179
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/DocumentationRule;->description_:Ljava/lang/String;

    return-void
.end method

.method private setSelector(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iput-object p1, p0, Lcom/google/api/DocumentationRule;->selector_:Ljava/lang/String;

    return-void
.end method

.method private setSelectorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 111
    invoke-static {p1}, Lcom/google/api/DocumentationRule;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 112
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/DocumentationRule;->selector_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 600
    sget-object p2, Lcom/google/api/DocumentationRule$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 644
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 638
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 623
    :pswitch_2
    sget-object p1, Lcom/google/api/DocumentationRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 625
    const-class p2, Lcom/google/api/DocumentationRule;

    monitor-enter p2

    .line 626
    :try_start_0
    sget-object p1, Lcom/google/api/DocumentationRule;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 628
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 631
    sput-object p1, Lcom/google/api/DocumentationRule;->PARSER:Lcom/google/protobuf/Parser;

    .line 633
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

    .line 620
    :pswitch_3
    sget-object p1, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    return-object p1

    .line 608
    :pswitch_4
    const-string p1, "selector_"

    const-string p2, "description_"

    const-string p3, "deprecationDescription_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 613
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 616
    sget-object p3, Lcom/google/api/DocumentationRule;->DEFAULT_INSTANCE:Lcom/google/api/DocumentationRule;

    invoke-static {p3, p2, p1}, Lcom/google/api/DocumentationRule;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 605
    :pswitch_5
    new-instance p1, Lcom/google/api/DocumentationRule$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/DocumentationRule$Builder;-><init>(Lcom/google/api/DocumentationRule$1;)V

    return-object p1

    .line 602
    :pswitch_6
    new-instance p1, Lcom/google/api/DocumentationRule;

    invoke-direct {p1}, Lcom/google/api/DocumentationRule;-><init>()V

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

.method public getDeprecationDescription()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/api/DocumentationRule;->deprecationDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeprecationDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/api/DocumentationRule;->deprecationDescription_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/api/DocumentationRule;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/api/DocumentationRule;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/api/DocumentationRule;->selector_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/api/DocumentationRule;->selector_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
