.class public final Lcom/google/rpc/Help;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Help.java"

# interfaces
.implements Lcom/google/rpc/HelpOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/Help$Link;,
        Lcom/google/rpc/Help$LinkOrBuilder;,
        Lcom/google/rpc/Help$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/Help;",
        "Lcom/google/rpc/Help$Builder;",
        ">;",
        "Lcom/google/rpc/HelpOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/Help;

.field public static final LINKS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/Help;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private links_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/rpc/Help$Link;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 984
    new-instance v0, Lcom/google/rpc/Help;

    invoke-direct {v0}, Lcom/google/rpc/Help;-><init>()V

    .line 987
    sput-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    .line 988
    const-class v1, Lcom/google/rpc/Help;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/rpc/Help;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/rpc/Help;Lcom/google/rpc/Help$Link;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/Help;->addLinks(Lcom/google/rpc/Help$Link;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/rpc/Help;ILcom/google/rpc/Help$Link;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/Help;->addLinks(ILcom/google/rpc/Help$Link;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/rpc/Help;Ljava/lang/Iterable;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/Help;->addAllLinks(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/rpc/Help;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/rpc/Help;->clearLinks()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/rpc/Help;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/google/rpc/Help;->removeLinks(I)V

    return-void
.end method

.method static synthetic access$800()Lcom/google/rpc/Help;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/rpc/Help;ILcom/google/rpc/Help$Link;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/Help;->setLinks(ILcom/google/rpc/Help$Link;)V

    return-void
.end method

.method private addAllLinks(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/Help$Link;",
            ">;)V"
        }
    .end annotation

    .line 647
    invoke-direct {p0}, Lcom/google/rpc/Help;->ensureLinksIsMutable()V

    .line 648
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addLinks(ILcom/google/rpc/Help$Link;)V
    .locals 1

    .line 634
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    invoke-direct {p0}, Lcom/google/rpc/Help;->ensureLinksIsMutable()V

    .line 636
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLinks(Lcom/google/rpc/Help$Link;)V
    .locals 1

    .line 621
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 622
    invoke-direct {p0}, Lcom/google/rpc/Help;->ensureLinksIsMutable()V

    .line 623
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearLinks()V
    .locals 1

    .line 659
    invoke-static {}, Lcom/google/rpc/Help;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureLinksIsMutable()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 594
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/Help;
    .locals 1

    .line 993
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 750
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-virtual {v0}, Lcom/google/rpc/Help;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/Help$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/Help;)Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 753
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-virtual {v0, p0}, Lcom/google/rpc/Help;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0}, Lcom/google/rpc/Help;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 733
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/Help;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 689
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 696
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 676
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 683
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 701
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/Help;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 708
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/Help;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/Help;",
            ">;"
        }
    .end annotation

    .line 999
    sget-object v0, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-virtual {v0}, Lcom/google/rpc/Help;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLinks(I)V
    .locals 1

    .line 669
    invoke-direct {p0}, Lcom/google/rpc/Help;->ensureLinksIsMutable()V

    .line 670
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setLinks(ILcom/google/rpc/Help$Link;)V
    .locals 1

    .line 609
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 610
    invoke-direct {p0}, Lcom/google/rpc/Help;->ensureLinksIsMutable()V

    .line 611
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 935
    sget-object p2, Lcom/google/rpc/Help$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 977
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 971
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 956
    :pswitch_2
    sget-object p1, Lcom/google/rpc/Help;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 958
    const-class p2, Lcom/google/rpc/Help;

    monitor-enter p2

    .line 959
    :try_start_0
    sget-object p1, Lcom/google/rpc/Help;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 961
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 964
    sput-object p1, Lcom/google/rpc/Help;->PARSER:Lcom/google/protobuf/Parser;

    .line 966
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

    .line 953
    :pswitch_3
    sget-object p1, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    return-object p1

    .line 943
    :pswitch_4
    const-string p1, "links_"

    const-class p2, Lcom/google/rpc/Help$Link;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 947
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 949
    sget-object p3, Lcom/google/rpc/Help;->DEFAULT_INSTANCE:Lcom/google/rpc/Help;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/Help;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 940
    :pswitch_5
    new-instance p1, Lcom/google/rpc/Help$Builder;

    invoke-direct {p1, p2}, Lcom/google/rpc/Help$Builder;-><init>(Lcom/google/rpc/Help$1;)V

    return-object p1

    .line 937
    :pswitch_6
    new-instance p1, Lcom/google/rpc/Help;

    invoke-direct {p1}, Lcom/google/rpc/Help;-><init>()V

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

.method public getLinks(I)Lcom/google/rpc/Help$Link;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/Help$Link;

    return-object p1
.end method

.method public getLinksCount()I
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLinksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/Help$Link;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLinksOrBuilder(I)Lcom/google/rpc/Help$LinkOrBuilder;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/Help$LinkOrBuilder;

    return-object p1
.end method

.method public getLinksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/rpc/Help$LinkOrBuilder;",
            ">;"
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/google/rpc/Help;->links_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
