.class public final Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;
.super Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final CHILDREN_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

.field public static final HASACTION_FIELD_NUMBER:I = 0x9

.field public static final HAS_IMAGE_COLOR_FILTER_FIELD_NUMBER:I = 0xb

.field public static final HAS_IMAGE_DESCRIPTION_FIELD_NUMBER:I = 0xa

.field public static final HEIGHT_FIELD_NUMBER:I = 0x3

.field public static final HORIZONTAL_ALIGNMENT_FIELD_NUMBER:I = 0x4

.field public static final IDENTITY_FIELD_NUMBER:I = 0x8

.field public static final IMAGE_SCALE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Landroidx/glance/appwidget/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VERTICAL_ALIGNMENT_FIELD_NUMBER:I = 0x5

.field public static final WIDTH_FIELD_NUMBER:I = 0x2


# instance fields
.field private children_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;"
        }
    .end annotation
.end field

.field private hasAction_:Z

.field private hasImageColorFilter_:Z

.field private hasImageDescription_:Z

.field private height_:I

.field private horizontalAlignment_:I

.field private identity_:I

.field private imageScale_:I

.field private type_:I

.field private verticalAlignment_:I

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 7
    .line 8
    const-class v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->EMPTY_LIST:Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->children_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 7
    .line 8
    return-void
.end method

.method public static getDefaultInstance()Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode$Builder;
    .locals 2

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 2
    .line 3
    sget-object v1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->dynamicMethod(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;

    .line 10
    .line 11
    check-cast v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode$Builder;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public final addAllChildren(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->children_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 5
    .line 6
    iget-boolean v1, v1, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->isMutable:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 11
    .line 12
    iget v1, v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->size:I

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->mutableCopyWithCapacity(I)Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->children_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 26
    .line 27
    :cond_1
    sget-object p0, Landroidx/glance/appwidget/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    instance-of p0, v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    move-object p0, v0

    .line 34
    check-cast p0, Ljava/util/ArrayList;

    .line 35
    .line 36
    move-object v1, v0

    .line 37
    check-cast v1, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 38
    .line 39
    iget v1, v1, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->size:I

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v1

    .line 46
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    check-cast v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 50
    .line 51
    iget p0, v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->size:I

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "Element at index "

    .line 72
    .line 73
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget v1, v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->size:I

    .line 77
    .line 78
    sub-int/2addr v1, p0

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " is null."

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget v1, v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->size:I

    .line 92
    .line 93
    add-int/lit8 v1, v1, -0x1

    .line 94
    .line 95
    :goto_2
    if-lt v1, p0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    add-int/lit8 v1, v1, -0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    return-void
.end method

.method public final dynamicMethod(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    packed-switch p0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :pswitch_0
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_2
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->PARSER:Landroidx/glance/appwidget/protobuf/Parser;

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const-class p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->PARSER:Landroidx/glance/appwidget/protobuf/Parser;

    .line 34
    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    new-instance p0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->PARSER:Landroidx/glance/appwidget/protobuf/Parser;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    monitor-exit p1

    .line 48
    return-object p0

    .line 49
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0

    .line 51
    :cond_1
    return-object p0

    .line 52
    :pswitch_3
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_4
    const/16 p0, 0xc

    .line 56
    .line 57
    new-array p0, p0, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string/jumbo v0, "type_"

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    aput-object v0, p0, v1

    .line 64
    .line 65
    const-string/jumbo v0, "width_"

    .line 66
    .line 67
    .line 68
    aput-object v0, p0, p1

    .line 69
    .line 70
    const-string p1, "height_"

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    aput-object p1, p0, v0

    .line 74
    .line 75
    const-string p1, "horizontalAlignment_"

    .line 76
    .line 77
    const/4 v0, 0x3

    .line 78
    aput-object p1, p0, v0

    .line 79
    .line 80
    const-string/jumbo p1, "verticalAlignment_"

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x4

    .line 84
    aput-object p1, p0, v0

    .line 85
    .line 86
    const-string p1, "imageScale_"

    .line 87
    .line 88
    const/4 v0, 0x5

    .line 89
    aput-object p1, p0, v0

    .line 90
    .line 91
    const-string p1, "children_"

    .line 92
    .line 93
    const/4 v0, 0x6

    .line 94
    aput-object p1, p0, v0

    .line 95
    .line 96
    const-class p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 97
    .line 98
    const/4 v0, 0x7

    .line 99
    aput-object p1, p0, v0

    .line 100
    .line 101
    const-string p1, "identity_"

    .line 102
    .line 103
    const/16 v0, 0x8

    .line 104
    .line 105
    aput-object p1, p0, v0

    .line 106
    .line 107
    const-string p1, "hasAction_"

    .line 108
    .line 109
    const/16 v0, 0x9

    .line 110
    .line 111
    aput-object p1, p0, v0

    .line 112
    .line 113
    const-string p1, "hasImageDescription_"

    .line 114
    .line 115
    const/16 v0, 0xa

    .line 116
    .line 117
    aput-object p1, p0, v0

    .line 118
    .line 119
    const-string p1, "hasImageColorFilter_"

    .line 120
    .line 121
    const/16 v0, 0xb

    .line 122
    .line 123
    aput-object p1, p0, v0

    .line 124
    .line 125
    const-string p1, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0001\u0000\u0001\u000c\u0002\u000c\u0003\u000c\u0004\u000c\u0005\u000c\u0006\u000c\u0007\u001b\u0008\u000c\t\u0007\n\u0007\u000b\u0007"

    .line 126
    .line 127
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 128
    .line 129
    new-instance v1, Landroidx/glance/appwidget/protobuf/RawMessageInfo;

    .line 130
    .line 131
    invoke-direct {v1, v0, p1, p0}, Landroidx/glance/appwidget/protobuf/RawMessageInfo;-><init>(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    return-object v1

    .line 135
    :pswitch_5
    new-instance p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode$Builder;

    .line 136
    .line 137
    sget-object p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 138
    .line 139
    invoke-direct {p0, p1}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)V

    .line 140
    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_6
    new-instance p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 144
    .line 145
    invoke-direct {p0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;-><init>()V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
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

.method public final setHasAction(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->hasAction_:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHasImageColorFilter(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->hasImageColorFilter_:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHasImageDescription(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->hasImageDescription_:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHeight(Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->height_:I

    .line 6
    .line 7
    return-void
.end method

.method public final setHorizontalAlignment$1(Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/glance/appwidget/proto/LayoutProto$HorizontalAlignment;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->horizontalAlignment_:I

    .line 6
    .line 7
    return-void
.end method

.method public final setIdentity(Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/glance/appwidget/proto/LayoutProto$NodeIdentity;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->identity_:I

    .line 6
    .line 7
    return-void
.end method

.method public final setImageScale(Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/glance/appwidget/proto/LayoutProto$ContentScale;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->imageScale_:I

    .line 6
    .line 7
    return-void
.end method

.method public final setType(Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->type_:I

    .line 6
    .line 7
    return-void
.end method

.method public final setVerticalAlignment$1(Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/glance/appwidget/proto/LayoutProto$VerticalAlignment;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->verticalAlignment_:I

    .line 6
    .line 7
    return-void
.end method

.method public final setWidth(Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/glance/appwidget/proto/LayoutProto$DimensionType;->getNumber()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->width_:I

    .line 6
    .line 7
    return-void
.end method
