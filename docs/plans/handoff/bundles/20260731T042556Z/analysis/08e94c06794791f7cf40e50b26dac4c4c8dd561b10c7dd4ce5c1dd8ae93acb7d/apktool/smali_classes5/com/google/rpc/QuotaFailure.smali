.class public final Lcom/google/rpc/QuotaFailure;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "QuotaFailure.java"

# interfaces
.implements Lcom/google/rpc/QuotaFailureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/rpc/QuotaFailure$Violation;,
        Lcom/google/rpc/QuotaFailure$ViolationOrBuilder;,
        Lcom/google/rpc/QuotaFailure$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/rpc/QuotaFailure;",
        "Lcom/google/rpc/QuotaFailure$Builder;",
        ">;",
        "Lcom/google/rpc/QuotaFailureOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/QuotaFailure;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIOLATIONS_FIELD_NUMBER:I = 0x1


# instance fields
.field private violations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1094
    new-instance v0, Lcom/google/rpc/QuotaFailure;

    invoke-direct {v0}, Lcom/google/rpc/QuotaFailure;-><init>()V

    .line 1097
    sput-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    .line 1098
    const-class v1, Lcom/google/rpc/QuotaFailure;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/rpc/QuotaFailure;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/rpc/QuotaFailure;Lcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure;->addViolations(Lcom/google/rpc/QuotaFailure$Violation;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/QuotaFailure;->addViolations(ILcom/google/rpc/QuotaFailure$Violation;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/rpc/QuotaFailure;Ljava/lang/Iterable;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure;->addAllViolations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/rpc/QuotaFailure;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->clearViolations()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/rpc/QuotaFailure;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/rpc/QuotaFailure;->removeViolations(I)V

    return-void
.end method

.method static synthetic access$800()Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/rpc/QuotaFailure;ILcom/google/rpc/QuotaFailure$Violation;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/rpc/QuotaFailure;->setViolations(ILcom/google/rpc/QuotaFailure$Violation;)V

    return-void
.end method

.method private addAllViolations(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;)V"
        }
    .end annotation

    .line 751
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 752
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addViolations(ILcom/google/rpc/QuotaFailure$Violation;)V
    .locals 1

    .line 738
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 739
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 740
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addViolations(Lcom/google/rpc/QuotaFailure$Violation;)V
    .locals 1

    .line 725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 727
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearViolations()V
    .locals 1

    .line 763
    invoke-static {}, Lcom/google/rpc/QuotaFailure;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureViolationsIsMutable()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 698
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/rpc/QuotaFailure;
    .locals 1

    .line 1103
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 854
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/rpc/QuotaFailure$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/rpc/QuotaFailure;)Lcom/google/rpc/QuotaFailure$Builder;
    .locals 1

    .line 857
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-virtual {v0, p0}, Lcom/google/rpc/QuotaFailure;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/rpc/QuotaFailure;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 837
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/rpc/QuotaFailure;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 793
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 800
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 842
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 824
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 780
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 787
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 805
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/rpc/QuotaFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 812
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/rpc/QuotaFailure;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/rpc/QuotaFailure;",
            ">;"
        }
    .end annotation

    .line 1109
    sget-object v0, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-virtual {v0}, Lcom/google/rpc/QuotaFailure;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeViolations(I)V
    .locals 1

    .line 773
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 774
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setViolations(ILcom/google/rpc/QuotaFailure$Violation;)V
    .locals 1

    .line 713
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    invoke-direct {p0}, Lcom/google/rpc/QuotaFailure;->ensureViolationsIsMutable()V

    .line 715
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1045
    sget-object p2, Lcom/google/rpc/QuotaFailure$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1087
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1081
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1066
    :pswitch_2
    sget-object p1, Lcom/google/rpc/QuotaFailure;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1068
    const-class p2, Lcom/google/rpc/QuotaFailure;

    monitor-enter p2

    .line 1069
    :try_start_0
    sget-object p1, Lcom/google/rpc/QuotaFailure;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1071
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1074
    sput-object p1, Lcom/google/rpc/QuotaFailure;->PARSER:Lcom/google/protobuf/Parser;

    .line 1076
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

    .line 1063
    :pswitch_3
    sget-object p1, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    return-object p1

    .line 1053
    :pswitch_4
    const-string p1, "violations_"

    const-class p2, Lcom/google/rpc/QuotaFailure$Violation;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1057
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 1059
    sget-object p3, Lcom/google/rpc/QuotaFailure;->DEFAULT_INSTANCE:Lcom/google/rpc/QuotaFailure;

    invoke-static {p3, p2, p1}, Lcom/google/rpc/QuotaFailure;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1050
    :pswitch_5
    new-instance p1, Lcom/google/rpc/QuotaFailure$Builder;

    invoke-direct {p1, p2}, Lcom/google/rpc/QuotaFailure$Builder;-><init>(Lcom/google/rpc/QuotaFailure$1;)V

    return-object p1

    .line 1047
    :pswitch_6
    new-instance p1, Lcom/google/rpc/QuotaFailure;

    invoke-direct {p1}, Lcom/google/rpc/QuotaFailure;-><init>()V

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

.method public getViolations(I)Lcom/google/rpc/QuotaFailure$Violation;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/QuotaFailure$Violation;

    return-object p1
.end method

.method public getViolationsCount()I
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/QuotaFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getViolationsOrBuilder(I)Lcom/google/rpc/QuotaFailure$ViolationOrBuilder;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/QuotaFailure$ViolationOrBuilder;

    return-object p1
.end method

.method public getViolationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/rpc/QuotaFailure$ViolationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/google/rpc/QuotaFailure;->violations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
