.class public final Landroidx/glance/appwidget/protobuf/MessageSetSchema;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/Schema;


# instance fields
.field public final defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

.field public final extensionSchema:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

.field public final unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;


# direct methods
.method public constructor <init>(Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;Landroidx/glance/appwidget/protobuf/AbstractMessageLite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->extensionSchema:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

    .line 10
    .line 11
    iput-object p3, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 7
    .line 8
    iget-object p1, p2, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final getSerializedSize(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)I
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 7
    .line 8
    iget p1, p0, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    move v0, p1

    .line 16
    :goto_0
    iget v1, p0, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->count:I

    .line 17
    .line 18
    if-ge p1, v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->tags:[I

    .line 21
    .line 22
    aget v1, v1, p1

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    ushr-int/2addr v1, v2

    .line 26
    iget-object v3, p0, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->objects:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v3, v3, p1

    .line 29
    .line 30
    check-cast v3, Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-static {v4}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x2

    .line 38
    mul-int/2addr v4, v5

    .line 39
    invoke-static {v5}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-static {v1}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, v5

    .line 48
    add-int/2addr v1, v4

    .line 49
    invoke-static {v2, v3}, Landroidx/glance/appwidget/protobuf/CodedOutputStream$OutputStreamEncoder;->computeBytesSize(ILandroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    add-int/2addr v2, v1

    .line 54
    add-int/2addr v0, v2

    .line 55
    add-int/lit8 p1, p1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iput v0, p0, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->memoizedSerializedSize:I

    .line 59
    .line 60
    return v0
.end method

.method public final hashCode(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->extensionSchema:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    throw p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 10
    .line 11
    iget-boolean v1, v0, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->extensionSchema:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    throw p0
.end method

.method public final mergeFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;->getBuilderFromMessage(Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/UnknownFieldSetLite;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->extensionSchema:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance p0, Ljava/lang/ClassCastException;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 23
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->unknownFieldSchema:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    invoke-static {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/SchemaUtil;->mergeUnknownFields(Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final newInstance()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 2
    .line 3
    instance-of v0, p0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->newMutableInstance$1()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    check-cast p0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 15
    .line 16
    sget-object v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->dynamicMethod(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;->buildPartial()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final writeTo(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/MessageSetSchema;->extensionSchema:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    throw p0
.end method
