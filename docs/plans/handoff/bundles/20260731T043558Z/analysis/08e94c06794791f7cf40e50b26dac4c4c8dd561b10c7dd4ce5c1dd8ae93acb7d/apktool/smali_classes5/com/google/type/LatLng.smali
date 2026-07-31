.class public final Lcom/google/type/LatLng;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LatLng.java"

# interfaces
.implements Lcom/google/type/LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/type/LatLng$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/type/LatLng;",
        "Lcom/google/type/LatLng$Builder;",
        ">;",
        "Lcom/google/type/LatLngOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/type/LatLng;

.field public static final LATITUDE_FIELD_NUMBER:I = 0x1

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/LatLng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private latitude_:D

.field private longitude_:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 343
    new-instance v0, Lcom/google/type/LatLng;

    invoke-direct {v0}, Lcom/google/type/LatLng;-><init>()V

    .line 346
    sput-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    .line 347
    const-class v1, Lcom/google/type/LatLng;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/type/LatLng;
    .locals 1

    .line 18
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/type/LatLng;D)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/type/LatLng;->setLatitude(D)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/type/LatLng;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/type/LatLng;->clearLatitude()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/type/LatLng;D)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/type/LatLng;->setLongitude(D)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/type/LatLng;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/google/type/LatLng;->clearLongitude()V

    return-void
.end method

.method private clearLatitude()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/google/type/LatLng;->latitude_:D

    return-void
.end method

.method private clearLongitude()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 98
    iput-wide v0, p0, Lcom/google/type/LatLng;->longitude_:D

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/type/LatLng;
    .locals 1

    .line 352
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/type/LatLng$Builder;
    .locals 1

    .line 178
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-virtual {v0}, Lcom/google/type/LatLng;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/type/LatLng$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/type/LatLng;)Lcom/google/type/LatLng$Builder;
    .locals 1

    .line 181
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-virtual {v0, p0}, Lcom/google/type/LatLng;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/type/LatLng;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/type/LatLng;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/type/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/type/LatLng;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/type/LatLng;",
            ">;"
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-virtual {v0}, Lcom/google/type/LatLng;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLatitude(D)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/google/type/LatLng;->latitude_:D

    return-void
.end method

.method private setLongitude(D)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/google/type/LatLng;->longitude_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 293
    sget-object p2, Lcom/google/type/LatLng$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 336
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 330
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 315
    :pswitch_2
    sget-object p1, Lcom/google/type/LatLng;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 317
    const-class p2, Lcom/google/type/LatLng;

    monitor-enter p2

    .line 318
    :try_start_0
    sget-object p1, Lcom/google/type/LatLng;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 320
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 323
    sput-object p1, Lcom/google/type/LatLng;->PARSER:Lcom/google/protobuf/Parser;

    .line 325
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

    .line 312
    :pswitch_3
    sget-object p1, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    return-object p1

    .line 301
    :pswitch_4
    const-string p1, "latitude_"

    const-string p2, "longitude_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 305
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000"

    .line 308
    sget-object p3, Lcom/google/type/LatLng;->DEFAULT_INSTANCE:Lcom/google/type/LatLng;

    invoke-static {p3, p2, p1}, Lcom/google/type/LatLng;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 298
    :pswitch_5
    new-instance p1, Lcom/google/type/LatLng$Builder;

    invoke-direct {p1, p2}, Lcom/google/type/LatLng$Builder;-><init>(Lcom/google/type/LatLng$1;)V

    return-object p1

    .line 295
    :pswitch_6
    new-instance p1, Lcom/google/type/LatLng;

    invoke-direct {p1}, Lcom/google/type/LatLng;-><init>()V

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

.method public getLatitude()D
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/google/type/LatLng;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/google/type/LatLng;->longitude_:D

    return-wide v0
.end method
