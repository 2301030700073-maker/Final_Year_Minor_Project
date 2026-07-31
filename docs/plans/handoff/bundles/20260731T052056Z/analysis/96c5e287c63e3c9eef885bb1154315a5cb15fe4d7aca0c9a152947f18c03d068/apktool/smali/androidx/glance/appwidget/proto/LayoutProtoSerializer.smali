.class public final Landroidx/glance/appwidget/proto/LayoutProtoSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/proto/LayoutProtoSerializer;

.field public static final defaultValue:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProtoSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProtoSerializer;->INSTANCE:Landroidx/glance/appwidget/proto/LayoutProtoSerializer;

    .line 7
    .line 8
    invoke-static {}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->getDefaultInstance()Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProtoSerializer;->defaultValue:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getDefaultValue()Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProtoSerializer;->defaultValue:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 2
    .line 3
    return-object p0
.end method

.method public final readFrom(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->parseFrom(Ljava/io/FileInputStream;)Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance p1, Landroidx/datastore/core/CorruptionException;

    .line 8
    .line 9
    const-string v0, "Cannot read proto."

    .line 10
    .line 11
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public final writeTo(Ljava/lang/Object;Landroidx/datastore/core/SingleProcessDataStore$UncloseableOutputStream;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    invoke-virtual {p1, p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->getSerializedSize(Landroidx/glance/appwidget/protobuf/Schema;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sget-object v0, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const/16 v0, 0x1000

    .line 14
    .line 15
    if-le p0, v0, :cond_0

    .line 16
    .line 17
    move p0, v0

    .line 18
    :cond_0
    new-instance v0, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;

    .line 19
    .line 20
    invoke-direct {v0, p2, p0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;-><init>(Landroidx/datastore/core/SingleProcessDataStore$UncloseableOutputStream;I)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Landroidx/glance/appwidget/protobuf/Protobuf;->INSTANCE:Landroidx/glance/appwidget/protobuf/Protobuf;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p0, p2}, Landroidx/glance/appwidget/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/Schema;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p2, v0, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->wrapper:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p2, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;

    .line 42
    .line 43
    invoke-direct {p2, v0}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;-><init>(Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/Schema;->writeTo(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 47
    .line 48
    .line 49
    iget p0, v0, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->position:I

    .line 50
    .line 51
    if-lez p0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->doFlush()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method
