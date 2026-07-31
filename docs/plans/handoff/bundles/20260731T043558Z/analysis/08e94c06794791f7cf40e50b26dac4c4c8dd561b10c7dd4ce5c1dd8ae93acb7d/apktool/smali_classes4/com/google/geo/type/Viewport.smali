.class public final Lcom/google/geo/type/Viewport;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Viewport.java"

# interfaces
.implements Lcom/google/geo/type/ViewportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/geo/type/Viewport$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/geo/type/Viewport;",
        "Lcom/google/geo/type/Viewport$Builder;",
        ">;",
        "Lcom/google/geo/type/ViewportOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

.field public static final HIGH_FIELD_NUMBER:I = 0x2

.field public static final LOW_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/geo/type/Viewport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private high_:Lcom/google/type/LatLng;

.field private low_:Lcom/google/type/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 523
    new-instance v0, Lcom/google/geo/type/Viewport;

    invoke-direct {v0}, Lcom/google/geo/type/Viewport;-><init>()V

    .line 526
    sput-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    .line 527
    const-class v1, Lcom/google/geo/type/Viewport;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/geo/type/Viewport;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/geo/type/Viewport;->setLow(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/geo/type/Viewport;->mergeLow(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/geo/type/Viewport;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/geo/type/Viewport;->clearLow()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/geo/type/Viewport;->setHigh(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/geo/type/Viewport;Lcom/google/type/LatLng;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/geo/type/Viewport;->mergeHigh(Lcom/google/type/LatLng;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/geo/type/Viewport;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/geo/type/Viewport;->clearHigh()V

    return-void
.end method

.method private clearHigh()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    .line 185
    iget v0, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    return-void
.end method

.method private clearLow()V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    .line 119
    iget v0, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/geo/type/Viewport;
    .locals 1

    .line 532
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    return-object v0
.end method

.method private mergeHigh(Lcom/google/type/LatLng;)V
    .locals 2

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    .line 171
    invoke-static {v0}, Lcom/google/type/LatLng;->newBuilder(Lcom/google/type/LatLng;)Lcom/google/type/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/type/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/type/LatLng$Builder;

    invoke-virtual {p1}, Lcom/google/type/LatLng$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/type/LatLng;

    iput-object p1, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    goto :goto_0

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    .line 175
    :goto_0
    iget p1, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    return-void
.end method

.method private mergeLow(Lcom/google/type/LatLng;)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    .line 105
    invoke-static {v0}, Lcom/google/type/LatLng;->newBuilder(Lcom/google/type/LatLng;)Lcom/google/type/LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/type/LatLng$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/type/LatLng$Builder;

    invoke-virtual {p1}, Lcom/google/type/LatLng$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/type/LatLng;

    iput-object p1, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    goto :goto_0

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    .line 109
    :goto_0
    iget p1, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 265
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-virtual {v0}, Lcom/google/geo/type/Viewport;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/geo/type/Viewport$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/geo/type/Viewport;)Lcom/google/geo/type/Viewport$Builder;
    .locals 1

    .line 268
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-virtual {v0, p0}, Lcom/google/geo/type/Viewport;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/geo/type/Viewport;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/geo/type/Viewport;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 216
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/geo/type/Viewport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/geo/type/Viewport;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/geo/type/Viewport;",
            ">;"
        }
    .end annotation

    .line 538
    sget-object v0, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-virtual {v0}, Lcom/google/geo/type/Viewport;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHigh(Lcom/google/type/LatLng;)V
    .locals 0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    iput-object p1, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    .line 156
    iget p1, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    return-void
.end method

.method private setLow(Lcom/google/type/LatLng;)V
    .locals 0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    iput-object p1, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    .line 90
    iget p1, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 472
    sget-object p2, Lcom/google/geo/type/Viewport$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 516
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 510
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 495
    :pswitch_2
    sget-object p1, Lcom/google/geo/type/Viewport;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 497
    const-class p2, Lcom/google/geo/type/Viewport;

    monitor-enter p2

    .line 498
    :try_start_0
    sget-object p1, Lcom/google/geo/type/Viewport;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 500
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 503
    sput-object p1, Lcom/google/geo/type/Viewport;->PARSER:Lcom/google/protobuf/Parser;

    .line 505
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

    .line 492
    :pswitch_3
    sget-object p1, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    return-object p1

    .line 480
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "low_"

    const-string p3, "high_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 485
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    .line 488
    sget-object p3, Lcom/google/geo/type/Viewport;->DEFAULT_INSTANCE:Lcom/google/geo/type/Viewport;

    invoke-static {p3, p2, p1}, Lcom/google/geo/type/Viewport;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 477
    :pswitch_5
    new-instance p1, Lcom/google/geo/type/Viewport$Builder;

    invoke-direct {p1, p2}, Lcom/google/geo/type/Viewport$Builder;-><init>(Lcom/google/geo/type/Viewport$1;)V

    return-object p1

    .line 474
    :pswitch_6
    new-instance p1, Lcom/google/geo/type/Viewport;

    invoke-direct {p1}, Lcom/google/geo/type/Viewport;-><init>()V

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

.method public getHigh()Lcom/google/type/LatLng;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->high_:Lcom/google/type/LatLng;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLow()Lcom/google/type/LatLng;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/geo/type/Viewport;->low_:Lcom/google/type/LatLng;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasHigh()Z
    .locals 1

    .line 133
    iget v0, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLow()Z
    .locals 2

    .line 67
    iget v0, p0, Lcom/google/geo/type/Viewport;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
