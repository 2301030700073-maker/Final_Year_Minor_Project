.class public final Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;
.super Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

.field public static final LAYOUT_FIELD_NUMBER:I = 0x1

.field public static final LAYOUT_INDEX_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Landroidx/glance/appwidget/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Parser;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private layoutIndex_:I

.field private layout_:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 7
    .line 8
    const-class v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static newBuilder()Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition$Builder;
    .locals 2

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 2
    .line 3
    sget-object v1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->dynamicMethod(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;

    .line 10
    .line 11
    check-cast v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition$Builder;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
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
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->PARSER:Landroidx/glance/appwidget/protobuf/Parser;

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const-class p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->PARSER:Landroidx/glance/appwidget/protobuf/Parser;

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
    sput-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->PARSER:Landroidx/glance/appwidget/protobuf/Parser;

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
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 53
    .line 54
    return-object p0

    .line 55
    :pswitch_4
    const/4 p0, 0x3

    .line 56
    new-array p0, p0, [Ljava/lang/Object;

    .line 57
    .line 58
    const-string v0, "bitField0_"

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    aput-object v0, p0, v1

    .line 62
    .line 63
    const-string v0, "layout_"

    .line 64
    .line 65
    aput-object v0, p0, p1

    .line 66
    .line 67
    const-string p1, "layoutIndex_"

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    aput-object p1, p0, v0

    .line 71
    .line 72
    const-string p1, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u0004"

    .line 73
    .line 74
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 75
    .line 76
    new-instance v1, Landroidx/glance/appwidget/protobuf/RawMessageInfo;

    .line 77
    .line 78
    invoke-direct {v1, v0, p1, p0}, Landroidx/glance/appwidget/protobuf/RawMessageInfo;-><init>(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v1

    .line 82
    :pswitch_5
    new-instance p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition$Builder;

    .line 83
    .line 84
    sget-object p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 85
    .line 86
    invoke-direct {p0, p1}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_6
    new-instance p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 91
    .line 92
    invoke-direct {p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;-><init>()V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    nop

    .line 97
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

.method public final getLayout()Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->layout_:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;->getDefaultInstance()Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    return-object p0
.end method

.method public final getLayoutIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->layoutIndex_:I

    .line 2
    .line 3
    return p0
.end method

.method public final setLayout(Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->layout_:Landroidx/glance/appwidget/proto/LayoutProto$LayoutNode;

    .line 5
    .line 6
    iget p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method public final setLayoutIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;->layoutIndex_:I

    .line 2
    .line 3
    return-void
.end method
