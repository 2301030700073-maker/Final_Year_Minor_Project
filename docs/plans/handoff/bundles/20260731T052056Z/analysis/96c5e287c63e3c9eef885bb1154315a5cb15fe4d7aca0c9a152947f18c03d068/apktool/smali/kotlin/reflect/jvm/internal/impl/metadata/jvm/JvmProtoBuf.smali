.class public abstract Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final anonymousObjectOriginName:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final classLocalVariable:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final classModuleName:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final constructorSignature:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final flags:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final isRaw:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final jvmClassFlags:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final lambdaClassOriginName:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final methodSignature:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final packageLocalVariable:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final packageModuleName:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final propertySignature:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final typeAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

.field public static final typeParameterAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Constructor;

    .line 2
    .line 3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    .line 4
    .line 5
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 6
    .line 7
    const/16 v3, 0x64

    .line 8
    .line 9
    const-class v5, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmMethodSignature;

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->constructorSignature:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 17
    .line 18
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    .line 19
    .line 20
    move-object v1, v6

    .line 21
    move-object v6, v5

    .line 22
    move-object v5, v4

    .line 23
    const/16 v4, 0x64

    .line 24
    .line 25
    move-object v3, v2

    .line 26
    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v4, v5

    .line 31
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->methodSignature:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->INT32:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    move-object v10, v9

    .line 42
    const/16 v9, 0x65

    .line 43
    .line 44
    const-class v11, Ljava/lang/Integer;

    .line 45
    .line 46
    move-object v7, v6

    .line 47
    move-object v6, v1

    .line 48
    invoke-static/range {v6 .. v11}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v1, v7

    .line 53
    move-object v9, v10

    .line 54
    move-object v10, v11

    .line 55
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->lambdaClassOriginName:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 56
    .line 57
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 58
    .line 59
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;

    .line 60
    .line 61
    const/16 v5, 0x64

    .line 62
    .line 63
    const-class v7, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$JvmPropertySignature;

    .line 64
    .line 65
    move-object v6, v4

    .line 66
    move-object v4, v3

    .line 67
    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v4, v6

    .line 72
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->propertySignature:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    const/16 v8, 0x65

    .line 76
    .line 77
    move-object v6, v1

    .line 78
    move-object v5, v2

    .line 79
    invoke-static/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->flags:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 84
    .line 85
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .line 86
    .line 87
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 88
    .line 89
    const/16 v1, 0x64

    .line 90
    .line 91
    const-class v3, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Annotation;

    .line 92
    .line 93
    invoke-static {v11, v0, v1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newRepeatedGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    sput-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->typeAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 98
    .line 99
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 100
    .line 101
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->BOOL:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    .line 102
    .line 103
    const-class v16, Ljava/lang/Boolean;

    .line 104
    .line 105
    const/4 v13, 0x0

    .line 106
    const/16 v14, 0x65

    .line 107
    .line 108
    invoke-static/range {v11 .. v16}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    sput-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->isRaw:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 113
    .line 114
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeParameter;

    .line 115
    .line 116
    invoke-static {v5, v0, v1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newRepeatedGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->typeParameterAnnotation:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 121
    .line 122
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    .line 123
    .line 124
    invoke-static/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->classModuleName:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 129
    .line 130
    const/16 v0, 0x66

    .line 131
    .line 132
    const-class v1, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Property;

    .line 133
    .line 134
    invoke-static {v5, v2, v0, v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newRepeatedGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->classLocalVariable:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 139
    .line 140
    const/16 v8, 0x67

    .line 141
    .line 142
    invoke-static/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->anonymousObjectOriginName:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 147
    .line 148
    const/16 v8, 0x68

    .line 149
    .line 150
    invoke-static/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->jvmClassFlags:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 155
    .line 156
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;->defaultInstance:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;

    .line 157
    .line 158
    const/16 v8, 0x65

    .line 159
    .line 160
    invoke-static/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->packageModuleName:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 165
    .line 166
    invoke-static {v5, v2, v0, v4, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;->newRepeatedGeneratedExtension(Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;Lkotlin/reflect/jvm/internal/impl/protobuf/AbstractMessageLite;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf;->packageLocalVariable:Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 171
    .line 172
    return-void
.end method
