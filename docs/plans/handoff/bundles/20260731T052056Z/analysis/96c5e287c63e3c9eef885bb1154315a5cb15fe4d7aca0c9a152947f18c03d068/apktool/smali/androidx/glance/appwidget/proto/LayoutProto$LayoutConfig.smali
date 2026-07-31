.class public final Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;
.super Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

.field public static final LAYOUT_FIELD_NUMBER:I = 0x1

.field public static final NEXT_INDEX_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Landroidx/glance/appwidget/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Parser;"
        }
    .end annotation
.end field


# instance fields
.field private layout_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;"
        }
    .end annotation
.end field

.field private nextIndex_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 7
    .line 8
    const-class v1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

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
    iput-object v0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->layout_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 7
    .line 8
    return-void
.end method

.method public static getDefaultInstance()Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public static parseFrom(Ljava/io/FileInputStream;)Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;
    .locals 4

    .line 1
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 2
    .line 3
    new-instance v1, Landroidx/glance/appwidget/protobuf/CodedInputStream$StreamDecoder;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/glance/appwidget/protobuf/CodedInputStream$StreamDecoder;-><init>(Ljava/io/FileInputStream;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->newMutableInstance$1()Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    sget-object v2, Landroidx/glance/appwidget/protobuf/Protobuf;->INSTANCE:Landroidx/glance/appwidget/protobuf/Protobuf;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Landroidx/glance/appwidget/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/Schema;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v1, Landroidx/glance/appwidget/protobuf/CodedInputStream;->wrapper:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Landroidx/compose/ui/text/input/GapBuffer;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v3, Landroidx/compose/ui/text/input/GapBuffer;

    .line 37
    .line 38
    invoke-direct {v3, v1}, Landroidx/compose/ui/text/input/GapBuffer;-><init>(Landroidx/glance/appwidget/protobuf/CodedInputStream;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-interface {v2, v0, v3, p0}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v0}, Landroidx/glance/appwidget/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/glance/appwidget/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    invoke-static {v0, p0}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;->isInitialized(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;Z)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    check-cast v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    new-instance p0, Landroidx/glance/appwidget/protobuf/UninitializedMessageException;

    .line 58
    .line 59
    invoke-direct {p0}, Landroidx/glance/appwidget/protobuf/UninitializedMessageException;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    instance-of v0, v0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 86
    .line 87
    throw p0

    .line 88
    :cond_2
    throw p0

    .line 89
    :catch_1
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    instance-of v0, v0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 103
    .line 104
    throw p0

    .line 105
    :cond_3
    new-instance v0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :catch_2
    move-exception p0

    .line 116
    new-instance v0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :catch_3
    move-exception p0

    .line 127
    iget-boolean v0, p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->wasThrownFromInputStream:Z

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    new-instance v0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    move-object p0, v0

    .line 141
    :cond_4
    throw p0
.end method


# virtual methods
.method public final addLayout(Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->layout_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

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
    iput-object v0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->layout_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 26
    .line 27
    :cond_1
    check-cast v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final clearLayout()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->EMPTY_LIST:Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->layout_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 4
    .line 5
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
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->PARSER:Landroidx/glance/appwidget/protobuf/Parser;

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const-class p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->PARSER:Landroidx/glance/appwidget/protobuf/Parser;

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
    sput-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->PARSER:Landroidx/glance/appwidget/protobuf/Parser;

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
    sget-object p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

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
    const-string v0, "layout_"

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    aput-object v0, p0, v1

    .line 62
    .line 63
    const-class v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutDefinition;

    .line 64
    .line 65
    aput-object v0, p0, p1

    .line 66
    .line 67
    const-string p1, "nextIndex_"

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    aput-object p1, p0, v0

    .line 71
    .line 72
    const-string p1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0004"

    .line 73
    .line 74
    sget-object v0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

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
    new-instance p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig$Builder;

    .line 83
    .line 84
    sget-object p1, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->DEFAULT_INSTANCE:Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 85
    .line 86
    invoke-direct {p0, p1}, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :pswitch_6
    new-instance p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;

    .line 91
    .line 92
    invoke-direct {p0}, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;-><init>()V

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

.method public final getLayoutList()Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->layout_:Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getNextIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->nextIndex_:I

    .line 2
    .line 3
    return p0
.end method

.method public final setNextIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/glance/appwidget/proto/LayoutProto$LayoutConfig;->nextIndex_:I

    .line 2
    .line 3
    return-void
.end method
