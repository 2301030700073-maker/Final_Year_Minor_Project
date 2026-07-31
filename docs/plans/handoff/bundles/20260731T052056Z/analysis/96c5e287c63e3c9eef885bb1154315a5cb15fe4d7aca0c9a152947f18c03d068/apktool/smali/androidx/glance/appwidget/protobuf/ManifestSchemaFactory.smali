.class public final Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final EMPTY_FACTORY:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$1;


# instance fields
.field public final messageInfoFactory:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$1;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    .line 2
    .line 3
    sget-object v1, Landroidx/glance/appwidget/protobuf/Protobuf;->INSTANCE:Landroidx/glance/appwidget/protobuf/Protobuf;

    .line 4
    .line 5
    :try_start_0
    const-string v1, "androidx.glance.appwidget.protobuf.DescriptorMessageInfoFactory"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "getInstance"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/glance/appwidget/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    sget-object v1, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$1;

    .line 26
    .line 27
    :goto_0
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Landroidx/glance/appwidget/protobuf/MessageInfoFactory;

    .line 29
    .line 30
    sget-object v3, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$1;->instance:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$1;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    aput-object v3, v2, v4

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    aput-object v1, v2, v3

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, v0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Landroidx/glance/appwidget/protobuf/MessageInfoFactory;

    .line 42
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v1, Landroidx/glance/appwidget/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 49
    .line 50
    return-void
.end method

.method public constructor <init>(Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Landroidx/glance/appwidget/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    iput-object p1, p0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 53
    iput-object p0, p1, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->wrapper:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;

    return-void
.end method


# virtual methods
.method public writeBytes(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeBytes(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;

    .line 4
    .line 5
    check-cast p2, Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, p1, v0}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->wrapper:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;

    .line 12
    .line 13
    invoke-interface {p3, p2, v0}, Landroidx/glance/appwidget/protobuf/Schema;->writeTo(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    invoke-virtual {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
