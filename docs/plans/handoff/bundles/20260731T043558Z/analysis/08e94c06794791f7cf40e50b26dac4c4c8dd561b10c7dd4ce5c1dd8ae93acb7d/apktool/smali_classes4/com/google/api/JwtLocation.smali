.class public final Lcom/google/api/JwtLocation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "JwtLocation.java"

# interfaces
.implements Lcom/google/api/JwtLocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/JwtLocation$InCase;,
        Lcom/google/api/JwtLocation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/JwtLocation;",
        "Lcom/google/api/JwtLocation$Builder;",
        ">;",
        "Lcom/google/api/JwtLocationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

.field public static final HEADER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/JwtLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x2

.field public static final VALUE_PREFIX_FIELD_NUMBER:I = 0x3


# instance fields
.field private inCase_:I

.field private in_:Ljava/lang/Object;

.field private valuePrefix_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 780
    new-instance v0, Lcom/google/api/JwtLocation;

    invoke-direct {v0}, Lcom/google/api/JwtLocation;-><init>()V

    .line 783
    sput-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    .line 784
    const-class v1, Lcom/google/api/JwtLocation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/google/api/JwtLocation;->valuePrefix_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/JwtLocation;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/JwtLocation;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/JwtLocation;->clearIn()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/JwtLocation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/JwtLocation;->setValuePrefixBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/JwtLocation;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/JwtLocation;->setHeader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/JwtLocation;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/JwtLocation;->clearHeader()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/JwtLocation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/JwtLocation;->setHeaderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/JwtLocation;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/JwtLocation;->setQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/JwtLocation;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/JwtLocation;->clearQuery()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/JwtLocation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/JwtLocation;->setQueryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/JwtLocation;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/api/JwtLocation;->setValuePrefix(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/JwtLocation;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/api/JwtLocation;->clearValuePrefix()V

    return-void
.end method

.method private clearHeader()V
    .locals 2

    .line 133
    iget v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearIn()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    return-void
.end method

.method private clearQuery()V
    .locals 2

    .line 221
    iget v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearValuePrefix()V
    .locals 1

    .line 319
    invoke-static {}, Lcom/google/api/JwtLocation;->getDefaultInstance()Lcom/google/api/JwtLocation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getValuePrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/JwtLocation;->valuePrefix_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/JwtLocation;
    .locals 1

    .line 789
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 420
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/JwtLocation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/JwtLocation;)Lcom/google/api/JwtLocation$Builder;
    .locals 1

    .line 423
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-virtual {v0, p0}, Lcom/google/api/JwtLocation;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0}, Lcom/google/api/JwtLocation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0, p1}, Lcom/google/api/JwtLocation;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 359
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 366
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 353
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/JwtLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 378
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/JwtLocation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/JwtLocation;",
            ">;"
        }
    .end annotation

    .line 795
    sget-object v0, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-virtual {v0}, Lcom/google/api/JwtLocation;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeader(Ljava/lang/String;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 122
    iput v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    .line 123
    iput-object p1, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    return-void
.end method

.method private setHeaderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 148
    invoke-static {p1}, Lcom/google/api/JwtLocation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 149
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 150
    iput p1, p0, Lcom/google/api/JwtLocation;->inCase_:I

    return-void
.end method

.method private setQuery(Ljava/lang/String;)V
    .locals 1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 210
    iput v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    .line 211
    iput-object p1, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    return-void
.end method

.method private setQueryBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 236
    invoke-static {p1}, Lcom/google/api/JwtLocation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 237
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 238
    iput p1, p0, Lcom/google/api/JwtLocation;->inCase_:I

    return-void
.end method

.method private setValuePrefix(Ljava/lang/String;)V
    .locals 0

    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    iput-object p1, p0, Lcom/google/api/JwtLocation;->valuePrefix_:Ljava/lang/String;

    return-void
.end method

.method private setValuePrefixBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 338
    invoke-static {p1}, Lcom/google/api/JwtLocation;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 339
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/JwtLocation;->valuePrefix_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 729
    sget-object p2, Lcom/google/api/JwtLocation$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 773
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 767
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 752
    :pswitch_2
    sget-object p1, Lcom/google/api/JwtLocation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 754
    const-class p2, Lcom/google/api/JwtLocation;

    monitor-enter p2

    .line 755
    :try_start_0
    sget-object p1, Lcom/google/api/JwtLocation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 757
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 760
    sput-object p1, Lcom/google/api/JwtLocation;->PARSER:Lcom/google/protobuf/Parser;

    .line 762
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

    .line 749
    :pswitch_3
    sget-object p1, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    return-object p1

    .line 737
    :pswitch_4
    const-string p1, "in_"

    const-string p2, "inCase_"

    const-string p3, "valuePrefix_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 742
    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u023b\u0000\u0002\u023b\u0000\u0003\u0208"

    .line 745
    sget-object p3, Lcom/google/api/JwtLocation;->DEFAULT_INSTANCE:Lcom/google/api/JwtLocation;

    invoke-static {p3, p2, p1}, Lcom/google/api/JwtLocation;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 734
    :pswitch_5
    new-instance p1, Lcom/google/api/JwtLocation$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/JwtLocation$Builder;-><init>(Lcom/google/api/JwtLocation$1;)V

    return-object p1

    .line 731
    :pswitch_6
    new-instance p1, Lcom/google/api/JwtLocation;

    invoke-direct {p1}, Lcom/google/api/JwtLocation;-><init>()V

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

.method public getHeader()Ljava/lang/String;
    .locals 2

    .line 89
    iget v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 106
    iget v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_0
    const-string v0, ""

    .line 109
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInCase()Lcom/google/api/JwtLocation$InCase;
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    invoke-static {v0}, Lcom/google/api/JwtLocation$InCase;->forNumber(I)Lcom/google/api/JwtLocation$InCase;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .line 177
    iget v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 194
    iget v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/api/JwtLocation;->in_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 194
    :cond_0
    const-string v0, ""

    .line 197
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValuePrefix()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/api/JwtLocation;->valuePrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getValuePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/api/JwtLocation;->valuePrefix_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasHeader()Z
    .locals 2

    .line 76
    iget v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasQuery()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/google/api/JwtLocation;->inCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
