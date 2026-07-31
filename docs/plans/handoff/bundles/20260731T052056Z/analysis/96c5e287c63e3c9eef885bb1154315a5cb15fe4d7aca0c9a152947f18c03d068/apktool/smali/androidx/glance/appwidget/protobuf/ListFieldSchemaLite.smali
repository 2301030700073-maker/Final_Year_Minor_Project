.class public final Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static mutableListAt(JLjava/lang/Object;)Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 9
    .line 10
    iget-boolean v1, v1, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->isMutable:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 15
    .line 16
    iget v1, v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->size:I

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->mutableCopyWithCapacity(I)Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p2, p0, p1, v0}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-object v0
.end method
