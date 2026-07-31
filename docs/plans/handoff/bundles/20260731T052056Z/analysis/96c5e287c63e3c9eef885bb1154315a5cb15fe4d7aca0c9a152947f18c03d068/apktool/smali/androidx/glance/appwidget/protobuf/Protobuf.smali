.class public final Landroidx/glance/appwidget/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INSTANCE:Landroidx/glance/appwidget/protobuf/Protobuf;


# instance fields
.field public final schemaCache:Lj$/util/concurrent/ConcurrentHashMap;

.field public final schemaFactory:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/glance/appwidget/protobuf/Protobuf;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/glance/appwidget/protobuf/Protobuf;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/glance/appwidget/protobuf/Protobuf;->INSTANCE:Landroidx/glance/appwidget/protobuf/Protobuf;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/glance/appwidget/protobuf/Protobuf;->schemaCache:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/glance/appwidget/protobuf/Protobuf;->schemaFactory:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final schemaFor(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/Schema;
    .locals 10

    .line 1
    const-string v0, "messageType"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/glance/appwidget/protobuf/Internal;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/Protobuf;->schemaCache:Lj$/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/glance/appwidget/protobuf/Schema;

    .line 13
    .line 14
    if-nez v1, :cond_b

    .line 15
    .line 16
    sget-object v1, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 17
    .line 18
    const-class v1, Landroidx/glance/appwidget/protobuf/GeneratedMessageLite;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    sget-object v2, Landroidx/glance/appwidget/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 39
    .line 40
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/Protobuf;->schemaFactory:Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Landroidx/glance/appwidget/protobuf/RawMessageInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget p0, v4, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->flags:I

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    and-int/2addr p0, v2

    .line 58
    const/4 v5, 0x1

    .line 59
    if-ne p0, v2, :cond_2

    .line 60
    .line 61
    move p0, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 p0, 0x0

    .line 64
    :goto_1
    const-string v2, "Protobuf runtime is not correctly loaded."

    .line 65
    .line 66
    if-eqz p0, :cond_5

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    sget-object p0, Landroidx/glance/appwidget/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 75
    .line 76
    sget-object v1, Landroidx/glance/appwidget/protobuf/ExtensionSchemas;->LITE_SCHEMA:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

    .line 77
    .line 78
    iget-object v2, v4, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 79
    .line 80
    new-instance v3, Landroidx/glance/appwidget/protobuf/MessageSetSchema;

    .line 81
    .line 82
    invoke-direct {v3, p0, v1, v2}, Landroidx/glance/appwidget/protobuf/MessageSetSchema;-><init>(Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;Landroidx/glance/appwidget/protobuf/AbstractMessageLite;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    sget-object p0, Landroidx/glance/appwidget/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_FULL_SCHEMA:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 87
    .line 88
    sget-object v1, Landroidx/glance/appwidget/protobuf/ExtensionSchemas;->FULL_SCHEMA:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    iget-object v2, v4, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->defaultInstance:Landroidx/glance/appwidget/protobuf/AbstractMessageLite;

    .line 93
    .line 94
    new-instance v3, Landroidx/glance/appwidget/protobuf/MessageSetSchema;

    .line 95
    .line 96
    invoke-direct {v3, p0, v1, v2}, Landroidx/glance/appwidget/protobuf/MessageSetSchema;-><init>(Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;Landroidx/glance/appwidget/protobuf/AbstractMessageLite;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object v3

    .line 104
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-eqz p0, :cond_7

    .line 109
    .line 110
    move p0, v5

    .line 111
    sget-object v5, Landroidx/glance/appwidget/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;

    .line 112
    .line 113
    sget-object v6, Landroidx/glance/appwidget/protobuf/ListFieldSchemas;->LITE_SCHEMA:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

    .line 114
    .line 115
    sget-object v7, Landroidx/glance/appwidget/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 116
    .line 117
    sget-object v1, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$2;->$SwitchMap$com$google$protobuf$ProtoSyntax:[I

    .line 118
    .line 119
    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->getSyntax()Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    aget v1, v1, v2

    .line 128
    .line 129
    if-eq v1, p0, :cond_6

    .line 130
    .line 131
    sget-object v3, Landroidx/glance/appwidget/protobuf/ExtensionSchemas;->LITE_SCHEMA:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

    .line 132
    .line 133
    :cond_6
    move-object v8, v3

    .line 134
    sget-object v9, Landroidx/glance/appwidget/protobuf/MapFieldSchemas;->LITE_SCHEMA:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

    .line 135
    .line 136
    invoke-static/range {v4 .. v9}, Landroidx/glance/appwidget/protobuf/MessageSchema;->newSchema(Landroidx/glance/appwidget/protobuf/RawMessageInfo;Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;)Landroidx/glance/appwidget/protobuf/MessageSchema;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    goto :goto_3

    .line 141
    :cond_7
    move p0, v5

    .line 142
    sget-object v5, Landroidx/glance/appwidget/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;

    .line 143
    .line 144
    sget-object v6, Landroidx/glance/appwidget/protobuf/ListFieldSchemas;->FULL_SCHEMA:Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;

    .line 145
    .line 146
    sget-object v7, Landroidx/glance/appwidget/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_FULL_SCHEMA:Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;

    .line 147
    .line 148
    sget-object v1, Landroidx/glance/appwidget/protobuf/ManifestSchemaFactory$2;->$SwitchMap$com$google$protobuf$ProtoSyntax:[I

    .line 149
    .line 150
    invoke-virtual {v4}, Landroidx/glance/appwidget/protobuf/RawMessageInfo;->getSyntax()Landroidx/glance/appwidget/protobuf/ProtoSyntax;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    aget v1, v1, v8

    .line 159
    .line 160
    if-eq v1, p0, :cond_9

    .line 161
    .line 162
    sget-object p0, Landroidx/glance/appwidget/protobuf/ExtensionSchemas;->FULL_SCHEMA:Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;

    .line 163
    .line 164
    if-eqz p0, :cond_8

    .line 165
    .line 166
    move-object v8, p0

    .line 167
    goto :goto_2

    .line 168
    :cond_8
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v3

    .line 172
    :cond_9
    move-object v8, v3

    .line 173
    :goto_2
    sget-object v9, Landroidx/glance/appwidget/protobuf/MapFieldSchemas;->FULL_SCHEMA:Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;

    .line 174
    .line 175
    invoke-static/range {v4 .. v9}, Landroidx/glance/appwidget/protobuf/MessageSchema;->newSchema(Landroidx/glance/appwidget/protobuf/RawMessageInfo;Landroidx/glance/appwidget/protobuf/NewInstanceSchemaLite;Landroidx/glance/appwidget/protobuf/ListFieldSchemaLite;Landroidx/glance/appwidget/protobuf/UnknownFieldSetLiteSchema;Landroidx/glance/appwidget/protobuf/ExtensionSchemaLite;Landroidx/glance/appwidget/protobuf/MapFieldSchemaLite;)Landroidx/glance/appwidget/protobuf/MessageSchema;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    :goto_3
    invoke-virtual {v0, p1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    check-cast p0, Landroidx/glance/appwidget/protobuf/Schema;

    .line 184
    .line 185
    if-eqz p0, :cond_a

    .line 186
    .line 187
    return-object p0

    .line 188
    :cond_a
    return-object v3

    .line 189
    :cond_b
    return-object v1
.end method
