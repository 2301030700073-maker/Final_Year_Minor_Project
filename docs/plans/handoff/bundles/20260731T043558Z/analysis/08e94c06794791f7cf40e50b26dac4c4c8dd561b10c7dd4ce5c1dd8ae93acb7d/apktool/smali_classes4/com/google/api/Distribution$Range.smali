.class public final Lcom/google/api/Distribution$Range;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$RangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/Distribution$Range$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/Distribution$Range;",
        "Lcom/google/api/Distribution$Range$Builder;",
        ">;",
        "Lcom/google/api/Distribution$RangeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

.field public static final MAX_FIELD_NUMBER:I = 0x2

.field public static final MIN_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution$Range;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private max_:D

.field private min_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 388
    new-instance v0, Lcom/google/api/Distribution$Range;

    invoke-direct {v0}, Lcom/google/api/Distribution$Range;-><init>()V

    .line 391
    sput-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    .line 392
    const-class v1, Lcom/google/api/Distribution$Range;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/Distribution$Range;
    .locals 1

    .line 67
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/Distribution$Range;D)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Range;->setMin(D)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/Distribution$Range;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/google/api/Distribution$Range;->clearMin()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/Distribution$Range;D)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/api/Distribution$Range;->setMax(D)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/Distribution$Range;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/google/api/Distribution$Range;->clearMax()V

    return-void
.end method

.method private clearMax()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lcom/google/api/Distribution$Range;->max_:D

    return-void
.end method

.method private clearMin()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/google/api/Distribution$Range;->min_:D

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/Distribution$Range;
    .locals 1

    .line 397
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/Distribution$Range$Builder;
    .locals 1

    .line 227
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Range;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/Distribution$Range$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/Distribution$Range;)Lcom/google/api/Distribution$Range$Builder;
    .locals 1

    .line 230
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-virtual {v0, p0}, Lcom/google/api/Distribution$Range;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/api/Distribution$Range;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/api/Distribution$Range;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/Distribution$Range;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/Distribution$Range;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/Distribution$Range;",
            ">;"
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Range;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMax(D)V
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/google/api/Distribution$Range;->max_:D

    return-void
.end method

.method private setMin(D)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/google/api/Distribution$Range;->min_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 338
    sget-object p2, Lcom/google/api/Distribution$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 381
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 375
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 360
    :pswitch_2
    sget-object p1, Lcom/google/api/Distribution$Range;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 362
    const-class p2, Lcom/google/api/Distribution$Range;

    monitor-enter p2

    .line 363
    :try_start_0
    sget-object p1, Lcom/google/api/Distribution$Range;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 365
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 368
    sput-object p1, Lcom/google/api/Distribution$Range;->PARSER:Lcom/google/protobuf/Parser;

    .line 370
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

    .line 357
    :pswitch_3
    sget-object p1, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    return-object p1

    .line 346
    :pswitch_4
    const-string p1, "min_"

    const-string p2, "max_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 350
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000"

    .line 353
    sget-object p3, Lcom/google/api/Distribution$Range;->DEFAULT_INSTANCE:Lcom/google/api/Distribution$Range;

    invoke-static {p3, p2, p1}, Lcom/google/api/Distribution$Range;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 343
    :pswitch_5
    new-instance p1, Lcom/google/api/Distribution$Range$Builder;

    invoke-direct {p1, p2}, Lcom/google/api/Distribution$Range$Builder;-><init>(Lcom/google/api/Distribution$1;)V

    return-object p1

    .line 340
    :pswitch_6
    new-instance p1, Lcom/google/api/Distribution$Range;

    invoke-direct {p1}, Lcom/google/api/Distribution$Range;-><init>()V

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

.method public getMax()D
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/google/api/Distribution$Range;->max_:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/google/api/Distribution$Range;->min_:D

    return-wide v0
.end method
