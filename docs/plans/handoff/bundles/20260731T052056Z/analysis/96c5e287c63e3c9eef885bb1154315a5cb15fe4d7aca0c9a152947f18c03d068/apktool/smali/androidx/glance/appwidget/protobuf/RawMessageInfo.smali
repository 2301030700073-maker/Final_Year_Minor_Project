.class public final Landroidx/glance/appwidget/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

.field public final flags:I

.field public final info:Ljava/lang/String;

.field public final objects:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const p3, 0xd800

    .line 16
    .line 17
    .line 18
    if-ge p1, p3, :cond_0

    .line 19
    .line 20
    iput p1, p0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->flags:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    and-int/lit16 p1, p1, 0x1fff

    .line 24
    .line 25
    const/16 v0, 0xd

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-lt v1, p3, :cond_1

    .line 35
    .line 36
    and-int/lit16 v1, v1, 0x1fff

    .line 37
    .line 38
    shl-int/2addr v1, v0

    .line 39
    or-int/2addr p1, v1

    .line 40
    add-int/lit8 v0, v0, 0xd

    .line 41
    .line 42
    move v1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    shl-int p2, v1, v0

    .line 45
    .line 46
    or-int/2addr p1, p2

    .line 47
    iput p1, p0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->flags:I

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final getSyntax()Landroidx/glance/appwidget/protobuf/ProtoSyntax;
    .locals 1

    .line 1
    iget p0, p0, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->flags:I

    .line 2
    .line 3
    and-int/lit8 v0, p0, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Landroidx/glance/appwidget/protobuf/ProtoSyntax;->PROTO2:Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 v0, 0x4

    .line 11
    and-int/2addr p0, v0

    .line 12
    if-ne p0, v0, :cond_1

    .line 13
    .line 14
    sget-object p0, Landroidx/glance/appwidget/protobuf/ProtoSyntax;->EDITIONS:Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object p0, Landroidx/glance/appwidget/protobuf/ProtoSyntax;->PROTO3:Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 18
    .line 19
    return-object p0
.end method
