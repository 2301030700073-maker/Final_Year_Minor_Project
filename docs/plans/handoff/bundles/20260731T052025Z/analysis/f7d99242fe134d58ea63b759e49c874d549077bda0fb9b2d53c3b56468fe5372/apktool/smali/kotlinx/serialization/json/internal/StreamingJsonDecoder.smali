.class public final Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.super Lorg/minidns/util/Base64;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# instance fields
.field public currentIndex:I

.field public discriminatorHolder:Lcom/fsck/k9/mailstore/LocalStore$8;

.field public final elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

.field public final json:Lkotlinx/serialization/json/Json;

.field public final lexer:Landroidx/compose/ui/node/RulerTrackingMap;

.field public final mode:Lkotlinx/serialization/json/internal/WriteMode;

.field public final serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/compose/ui/node/RulerTrackingMap;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/fsck/k9/mailstore/LocalStore$8;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 11
    .line 12
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    .line 13
    .line 14
    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 15
    .line 16
    iget-object p2, p1, Lkotlinx/serialization/json/Json;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 17
    .line 18
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 19
    .line 20
    const/4 p2, -0x1

    .line 21
    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 22
    .line 23
    iput-object p5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 24
    .line 25
    iget-object p1, p1, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 26
    .line 27
    iget-boolean p1, p1, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 34
    .line 35
    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/WriteMode;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 11
    .line 12
    iget-object v1, v4, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lkotlinx/coroutines/flow/SharingConfig;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget v2, v1, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    add-int/2addr v2, v5

    .line 23
    iput v2, v1, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 24
    .line 25
    iget-object v6, v1, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v6, [Ljava/lang/Object;

    .line 28
    .line 29
    array-length v6, v6

    .line 30
    if-ne v2, v6, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/SharingConfig;->resize()V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v1, v1, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p1, v1, v2

    .line 40
    .line 41
    iget-char v1, v3, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    .line 42
    .line 43
    invoke-virtual {v4, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(C)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x4

    .line 51
    if-eq v1, v2, :cond_3

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eq v1, v5, :cond_2

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    if-eq v1, v2, :cond_2

    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    if-eq v1, v2, :cond_2

    .line 64
    .line 65
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    .line 66
    .line 67
    if-ne v1, v3, :cond_1

    .line 68
    .line 69
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 70
    .line 71
    iget-boolean v0, v0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_1
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 77
    .line 78
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 79
    .line 80
    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 81
    .line 82
    move-object v5, p1

    .line 83
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/compose/ui/node/RulerTrackingMap;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/fsck/k9/mailstore/LocalStore$8;)V

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_2
    move-object v5, p1

    .line 88
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 89
    .line 90
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 91
    .line 92
    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 93
    .line 94
    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/compose/ui/node/RulerTrackingMap;Lkotlinx/serialization/descriptors/SerialDescriptor;Lcom/fsck/k9/mailstore/LocalStore$8;)V

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_3
    const/4 p0, 0x0

    .line 99
    const/4 p1, 0x6

    .line 100
    const-string v0, "Unexpected leading comma"

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-static {v4, v0, p0, v1, p1}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    throw v1
.end method

.method public final decodeBoolean()Z
    .locals 11

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->skipWhitespaces()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/node/RulerTrackingMap;->newRulers:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string v3, "EOF"

    .line 16
    .line 17
    const/4 v4, 0x6

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eq v0, v2, :cond_7

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v7, 0x22

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    if-ne v2, v7, :cond_0

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    move v2, v8

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v2, v6

    .line 36
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/RulerTrackingMap;->prefetchOrEof(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-ge v0, v9, :cond_6

    .line 45
    .line 46
    const/4 v9, -0x1

    .line 47
    if-eq v0, v9, :cond_6

    .line 48
    .line 49
    add-int/lit8 v9, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    or-int/lit8 v0, v0, 0x20

    .line 56
    .line 57
    const/16 v10, 0x66

    .line 58
    .line 59
    if-eq v0, v10, :cond_2

    .line 60
    .line 61
    const/16 v10, 0x74

    .line 62
    .line 63
    if-ne v0, v10, :cond_1

    .line 64
    .line 65
    const-string v0, "rue"

    .line 66
    .line 67
    invoke-virtual {p0, v0, v9}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeBooleanLiteral(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    move v0, v8

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "Expected valid boolean literal prefix, but had \'"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeStringLenient()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x27

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p0, v0, v6, v5, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    throw v5

    .line 99
    :cond_2
    const-string v0, "alse"

    .line 100
    .line 101
    invoke-virtual {p0, v0, v9}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeBooleanLiteral(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    move v0, v6

    .line 105
    :goto_1
    if-eqz v2, :cond_5

    .line 106
    .line 107
    iget v2, p0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v9

    .line 113
    if-eq v2, v9, :cond_4

    .line 114
    .line 115
    iget v2, p0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-ne v1, v7, :cond_3

    .line 122
    .line 123
    iget v1, p0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 124
    .line 125
    add-int/2addr v1, v8

    .line 126
    iput v1, p0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 127
    .line 128
    return v0

    .line 129
    :cond_3
    const-string v0, "Expected closing quotation mark"

    .line 130
    .line 131
    invoke-static {p0, v0, v6, v5, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    throw v5

    .line 135
    :cond_4
    invoke-static {p0, v3, v6, v5, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    throw v5

    .line 139
    :cond_5
    return v0

    .line 140
    :cond_6
    invoke-static {p0, v3, v6, v5, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    throw v5

    .line 144
    :cond_7
    invoke-static {p0, v3, v6, v5, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    throw v5
.end method

.method public final decodeByte()B
    .locals 5

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNumericLiteral()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-byte v2, v2

    .line 9
    int-to-long v3, v2

    .line 10
    cmp-long v3, v0, v3

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Failed to parse byte for input \'"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x27

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x6

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {p0, v0, v1, v3, v2}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    throw v3
.end method

.method public final decodeChar()C
    .locals 4

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeStringLenient()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const-string v1, "Expected single char, but got \'"

    .line 21
    .line 22
    const/16 v2, 0x27

    .line 23
    .line 24
    invoke-static {v2, v1, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x6

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {p0, v0, v3, v2, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    throw v2
.end method

.method public final decodeDouble()D
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeStringLenient()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 14
    .line 15
    iget-object p0, p0, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 16
    .line 17
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmpg-double p0, v6, v8

    .line 27
    .line 28
    if-gtz p0, :cond_0

    .line 29
    .line 30
    return-wide v4

    .line 31
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0, v3}, Lkotlinx/serialization/json/internal/WriteModeKt;->nonFiniteFpMessage(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    invoke-static {v0, p0, v2, v1, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    throw v3

    .line 46
    :catch_0
    const-string p0, "Failed to parse type \'double\' for input \'"

    .line 47
    .line 48
    const/16 v4, 0x27

    .line 49
    .line 50
    invoke-static {v4, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const/4 v1, 0x6

    .line 55
    invoke-static {v0, p0, v2, v3, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    throw v3
.end method

.method public final decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Lkotlinx/coroutines/flow/SharingConfig;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v4, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const-string v6, "object"

    .line 21
    .line 22
    const/4 v7, 0x6

    .line 23
    const/16 v8, 0x3a

    .line 24
    .line 25
    const/4 v9, 0x0

    .line 26
    iget-object v10, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 27
    .line 28
    const/4 v11, 0x1

    .line 29
    const/4 v12, -0x1

    .line 30
    const/4 v13, 0x0

    .line 31
    if-eqz v5, :cond_e

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    if-eq v5, v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->canConsumeValue()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    iget v5, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 47
    .line 48
    if-eq v5, v12, :cond_1

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "Expected end of the array or comma"

    .line 54
    .line 55
    invoke-static {v2, v0, v9, v13, v7}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    throw v13

    .line 59
    :cond_1
    :goto_0
    add-int/lit8 v12, v5, 0x1

    .line 60
    .line 61
    iput v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 62
    .line 63
    goto/16 :goto_d

    .line 64
    .line 65
    :cond_2
    if-nez v1, :cond_3

    .line 66
    .line 67
    goto/16 :goto_d

    .line 68
    .line 69
    :cond_3
    iget-object v0, v10, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 70
    .line 71
    const-string v0, "array"

    .line 72
    .line 73
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v13

    .line 77
    :cond_4
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 78
    .line 79
    rem-int/lit8 v5, v1, 0x2

    .line 80
    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    move v5, v11

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    move v5, v9

    .line 86
    :goto_1
    if-eqz v5, :cond_6

    .line 87
    .line 88
    if-eq v1, v12, :cond_7

    .line 89
    .line 90
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    invoke-virtual {v2, v8}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(C)V

    .line 96
    .line 97
    .line 98
    :cond_7
    :goto_2
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->canConsumeValue()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_c

    .line 103
    .line 104
    if-eqz v5, :cond_b

    .line 105
    .line 106
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 107
    .line 108
    iget v5, v2, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 109
    .line 110
    const/4 v6, 0x4

    .line 111
    if-ne v1, v12, :cond_9

    .line 112
    .line 113
    if-nez v9, :cond_8

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_8
    const-string v0, "Unexpected leading comma"

    .line 117
    .line 118
    invoke-static {v2, v0, v5, v13, v6}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    throw v13

    .line 122
    :cond_9
    if-eqz v9, :cond_a

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_a
    const-string v0, "Expected comma after the key-value pair"

    .line 126
    .line 127
    invoke-static {v2, v0, v5, v13, v6}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    throw v13

    .line 131
    :cond_b
    :goto_3
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 132
    .line 133
    add-int/lit8 v12, v1, 0x1

    .line 134
    .line 135
    iput v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 136
    .line 137
    goto/16 :goto_d

    .line 138
    .line 139
    :cond_c
    if-nez v9, :cond_d

    .line 140
    .line 141
    goto/16 :goto_d

    .line 142
    .line 143
    :cond_d
    iget-object v0, v10, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 144
    .line 145
    invoke-static {v2, v6}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v13

    .line 149
    :cond_e
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    :goto_4
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->canConsumeValue()Z

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    const/16 v15, 0x40

    .line 158
    .line 159
    const-wide/16 v16, 0x1

    .line 160
    .line 161
    move/from16 v18, v11

    .line 162
    .line 163
    iget-object v11, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 164
    .line 165
    if-eqz v14, :cond_20

    .line 166
    .line 167
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeKeyString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v2, v8}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(C)V

    .line 172
    .line 173
    .line 174
    invoke-static {v1, v10, v5}, Lkotlinx/serialization/json/internal/WriteModeKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v14

    .line 178
    const/4 v8, -0x3

    .line 179
    if-eq v14, v8, :cond_11

    .line 180
    .line 181
    if-eqz v11, :cond_f

    .line 182
    .line 183
    iget-object v0, v11, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    .line 184
    .line 185
    if-ge v14, v15, :cond_10

    .line 186
    .line 187
    iget-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 188
    .line 189
    shl-long v5, v16, v14

    .line 190
    .line 191
    or-long/2addr v1, v5

    .line 192
    iput-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 193
    .line 194
    :cond_f
    :goto_5
    move v12, v14

    .line 195
    goto/16 :goto_d

    .line 196
    .line 197
    :cond_10
    ushr-int/lit8 v1, v14, 0x6

    .line 198
    .line 199
    add-int/lit8 v1, v1, -0x1

    .line 200
    .line 201
    and-int/lit8 v2, v14, 0x3f

    .line 202
    .line 203
    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    .line 204
    .line 205
    aget-wide v5, v0, v1

    .line 206
    .line 207
    shl-long v7, v16, v2

    .line 208
    .line 209
    or-long/2addr v5, v7

    .line 210
    aput-wide v5, v0, v1

    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_11
    invoke-static {v1, v10}, Lkotlinx/serialization/json/internal/WriteModeKt;->ignoreUnknownKeys(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Z

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-nez v8, :cond_15

    .line 218
    .line 219
    iget-object v8, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 220
    .line 221
    if-eqz v8, :cond_12

    .line 222
    .line 223
    iget-object v11, v8, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 224
    .line 225
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-eqz v11, :cond_12

    .line 230
    .line 231
    iput-object v13, v8, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_12
    iget v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 235
    .line 236
    iget-object v1, v3, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v1, [I

    .line 239
    .line 240
    aget v4, v1, v0

    .line 241
    .line 242
    const/4 v6, -0x2

    .line 243
    if-ne v4, v6, :cond_13

    .line 244
    .line 245
    aput v12, v1, v0

    .line 246
    .line 247
    add-int/2addr v0, v12

    .line 248
    iput v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 249
    .line 250
    :cond_13
    iget v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 251
    .line 252
    if-eq v0, v12, :cond_14

    .line 253
    .line 254
    add-int/2addr v0, v12

    .line 255
    iput v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 256
    .line 257
    :cond_14
    iget v0, v2, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 258
    .line 259
    iget-object v1, v2, Landroidx/compose/ui/node/RulerTrackingMap;->newRulers:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v1, Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v7, v0, v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(ILjava/lang/CharSequence;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    const-string v1, "Encountered an unknown key \'"

    .line 276
    .line 277
    const/16 v3, 0x27

    .line 278
    .line 279
    invoke-static {v3, v1, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    const-string v3, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder or \'@JsonIgnoreUnknownKeys\' annotation to ignore unknown keys."

    .line 284
    .line 285
    invoke-virtual {v2, v0, v1, v3}, Landroidx/compose/ui/node/RulerTrackingMap;->fail(ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw v13

    .line 289
    :cond_15
    :goto_6
    new-instance v8, Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    const/16 v14, 0x8

    .line 299
    .line 300
    if-eq v5, v14, :cond_16

    .line 301
    .line 302
    if-eq v5, v7, :cond_16

    .line 303
    .line 304
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeStringLenient()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move/from16 v11, v18

    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_16
    :goto_7
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    move/from16 v11, v18

    .line 315
    .line 316
    if-ne v5, v11, :cond_18

    .line 317
    .line 318
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeKeyString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    :cond_17
    move/from16 v18, v11

    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_18
    if-eq v5, v14, :cond_1f

    .line 325
    .line 326
    if-ne v5, v7, :cond_19

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_19
    const/16 v15, 0x9

    .line 330
    .line 331
    if-ne v5, v15, :cond_1b

    .line 332
    .line 333
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    check-cast v5, Ljava/lang/Number;

    .line 338
    .line 339
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    if-ne v5, v14, :cond_1a

    .line 344
    .line 345
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_1a
    const-string v0, "found ] instead of }"

    .line 350
    .line 351
    invoke-static {v2, v0, v9, v13, v7}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 352
    .line 353
    .line 354
    throw v13

    .line 355
    :cond_1b
    const/4 v15, 0x7

    .line 356
    if-ne v5, v15, :cond_1d

    .line 357
    .line 358
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    check-cast v5, Ljava/lang/Number;

    .line 363
    .line 364
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    if-ne v5, v7, :cond_1c

    .line 369
    .line 370
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_1c
    const-string v0, "found } instead of ]"

    .line 375
    .line 376
    invoke-static {v2, v0, v9, v13, v7}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 377
    .line 378
    .line 379
    throw v13

    .line 380
    :cond_1d
    const/16 v15, 0xa

    .line 381
    .line 382
    if-eq v5, v15, :cond_1e

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_1e
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    .line 386
    .line 387
    invoke-static {v2, v0, v9, v13, v7}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    throw v13

    .line 391
    :cond_1f
    :goto_8
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    :goto_9
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken()B

    .line 399
    .line 400
    .line 401
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    if-nez v5, :cond_17

    .line 406
    .line 407
    :goto_a
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 408
    .line 409
    .line 410
    move-result v5

    .line 411
    const/16 v8, 0x3a

    .line 412
    .line 413
    goto/16 :goto_4

    .line 414
    .line 415
    :cond_20
    if-nez v5, :cond_27

    .line 416
    .line 417
    if-eqz v11, :cond_25

    .line 418
    .line 419
    iget-object v0, v11, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    .line 420
    .line 421
    iget-object v1, v0, Lkotlinx/serialization/internal/ElementMarker;->readIfAbsent:Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 422
    .line 423
    iget-object v2, v0, Lkotlinx/serialization/internal/ElementMarker;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 424
    .line 425
    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    :cond_21
    iget-wide v6, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 430
    .line 431
    const-wide/16 v10, -0x1

    .line 432
    .line 433
    cmp-long v8, v6, v10

    .line 434
    .line 435
    if-eqz v8, :cond_22

    .line 436
    .line 437
    not-long v6, v6

    .line 438
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    iget-wide v7, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 443
    .line 444
    shl-long v10, v16, v6

    .line 445
    .line 446
    or-long/2addr v7, v10

    .line 447
    iput-wide v7, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 448
    .line 449
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    invoke-virtual {v1, v2, v7}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    check-cast v7, Ljava/lang/Boolean;

    .line 458
    .line 459
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    if-eqz v7, :cond_21

    .line 464
    .line 465
    move v12, v6

    .line 466
    goto :goto_d

    .line 467
    :cond_22
    if-le v5, v15, :cond_25

    .line 468
    .line 469
    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    .line 470
    .line 471
    array-length v5, v0

    .line 472
    :goto_b
    if-ge v9, v5, :cond_25

    .line 473
    .line 474
    add-int/lit8 v6, v9, 0x1

    .line 475
    .line 476
    mul-int/lit8 v7, v6, 0x40

    .line 477
    .line 478
    aget-wide v13, v0, v9

    .line 479
    .line 480
    :goto_c
    cmp-long v8, v13, v10

    .line 481
    .line 482
    if-eqz v8, :cond_24

    .line 483
    .line 484
    not-long v10, v13

    .line 485
    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 486
    .line 487
    .line 488
    move-result v8

    .line 489
    shl-long v10, v16, v8

    .line 490
    .line 491
    or-long/2addr v13, v10

    .line 492
    add-int/2addr v8, v7

    .line 493
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 494
    .line 495
    .line 496
    move-result-object v10

    .line 497
    invoke-virtual {v1, v2, v10}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v10

    .line 501
    check-cast v10, Ljava/lang/Boolean;

    .line 502
    .line 503
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 504
    .line 505
    .line 506
    move-result v10

    .line 507
    if-eqz v10, :cond_23

    .line 508
    .line 509
    aput-wide v13, v0, v9

    .line 510
    .line 511
    move v12, v8

    .line 512
    goto :goto_d

    .line 513
    :cond_23
    const-wide/16 v10, -0x1

    .line 514
    .line 515
    goto :goto_c

    .line 516
    :cond_24
    aput-wide v13, v0, v9

    .line 517
    .line 518
    move v9, v6

    .line 519
    const-wide/16 v10, -0x1

    .line 520
    .line 521
    goto :goto_b

    .line 522
    :cond_25
    :goto_d
    sget-object v0, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    .line 523
    .line 524
    if-eq v4, v0, :cond_26

    .line 525
    .line 526
    iget-object v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast v0, [I

    .line 529
    .line 530
    iget v1, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 531
    .line 532
    aput v12, v0, v1

    .line 533
    .line 534
    :cond_26
    return v12

    .line 535
    :cond_27
    iget-object v0, v10, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 536
    .line 537
    invoke-static {v2, v6}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    throw v13
.end method

.method public final decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 13
    .line 14
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharingConfig;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, " at path "

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 25
    .line 26
    invoke-static {p1, p0, v1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->getJsonNameIndexOrThrow(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final decodeFloat()F
    .locals 5

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeStringLenient()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 14
    .line 15
    iget-object p0, p0, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 22
    .line 23
    .line 24
    cmpg-float p0, p0, v4

    .line 25
    .line 26
    if-gtz p0, :cond_0

    .line 27
    .line 28
    return v1

    .line 29
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0, v3}, Lkotlinx/serialization/json/internal/WriteModeKt;->nonFiniteFpMessage(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v1, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    invoke-static {v0, p0, v2, v1, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    throw v3

    .line 44
    :catch_0
    const-string p0, "Failed to parse type \'float\' for input \'"

    .line 45
    .line 46
    const/16 v4, 0x27

    .line 47
    .line 48
    invoke-static {v4, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const/4 v1, 0x6

    .line 53
    invoke-static {v0, p0, v2, v3, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    throw v3
.end method

.method public final decodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->isUnsignedNumber(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;

    .line 11
    .line 12
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 13
    .line 14
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 15
    .line 16
    invoke-direct {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonDecoderForUnsignedTypes;-><init>(Landroidx/compose/ui/node/RulerTrackingMap;Lkotlinx/serialization/json/Json;)V

    .line 17
    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    return-object p0
.end method

.method public final decodeInt()I
    .locals 5

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNumericLiteral()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-long v3, v2

    .line 9
    cmp-long v3, v0, v3

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Failed to parse int for input \'"

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x27

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x6

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {p0, v0, v1, v3, v2}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    throw v3
.end method

.method public final decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    .line 1
    new-instance v0, Lokio/PriorityQueue;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 4
    .line 5
    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 6
    .line 7
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lokio/PriorityQueue;-><init>(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/ui/node/RulerTrackingMap;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lokio/PriorityQueue;->read()Lkotlinx/serialization/json/JsonElement;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final decodeLong()J
    .locals 2

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNumericLiteral()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final decodeNotNullMark()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonElementMarker;->isUnmarkedNull:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    if-nez v1, :cond_6

    .line 11
    .line 12
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->skipWhitespaces()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->prefetchOrEof(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Landroidx/compose/ui/node/RulerTrackingMap;->newRulers:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    sub-int/2addr v3, v1

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x4

    .line 33
    if-lt v3, v5, :cond_5

    .line 34
    .line 35
    const/4 v6, -0x1

    .line 36
    if-ne v1, v6, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    move v6, v0

    .line 40
    :goto_1
    if-ge v6, v5, :cond_3

    .line 41
    .line 42
    const-string v7, "null"

    .line 43
    .line 44
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    add-int v8, v1, v6

    .line 49
    .line 50
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eq v7, v8, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    if-le v3, v5, :cond_4

    .line 61
    .line 62
    add-int/lit8 v3, v1, 0x4

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Lkotlinx/serialization/json/internal/WriteModeKt;->charToTokenClass(C)B

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    add-int/2addr v1, v5

    .line 76
    iput v1, p0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 77
    .line 78
    move p0, v4

    .line 79
    goto :goto_3

    .line 80
    :cond_5
    :goto_2
    move p0, v0

    .line 81
    :goto_3
    if-nez p0, :cond_6

    .line 82
    .line 83
    return v4

    .line 84
    :cond_6
    return v0
.end method

.method public final decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object p4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    iget-object p4, p4, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p4, Lkotlinx/coroutines/flow/SharingConfig;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    .line 14
    .line 15
    sget-object v0, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    and-int/lit8 p1, p2, 0x1

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    move p1, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    const/4 p2, -0x2

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object v0, p4, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, [I

    .line 33
    .line 34
    iget v2, p4, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 35
    .line 36
    aget v0, v0, v2

    .line 37
    .line 38
    if-ne v0, p2, :cond_1

    .line 39
    .line 40
    iget-object v0, p4, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, [Ljava/lang/Object;

    .line 43
    .line 44
    sget-object v3, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    .line 45
    .line 46
    aput-object v3, v0, v2

    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    iget-object p1, p4, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, [I

    .line 57
    .line 58
    iget p3, p4, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 59
    .line 60
    aget p1, p1, p3

    .line 61
    .line 62
    if-eq p1, p2, :cond_2

    .line 63
    .line 64
    add-int/2addr p3, v1

    .line 65
    iput p3, p4, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 66
    .line 67
    iget-object p1, p4, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, [Ljava/lang/Object;

    .line 70
    .line 71
    array-length p1, p1

    .line 72
    if-ne p3, p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p4}, Lkotlinx/coroutines/flow/SharingConfig;->resize()V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object p1, p4, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, [Ljava/lang/Object;

    .line 80
    .line 81
    iget p3, p4, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 82
    .line 83
    iget-object v0, p4, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Landroidx/compose/runtime/ProvidedValue;

    .line 86
    .line 87
    iget-boolean v0, v0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    move-object v0, p0

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    sget-object v0, Lkotlinx/serialization/json/internal/JsonPath$Tombstone;->INSTANCE$1:Lkotlinx/serialization/json/internal/JsonPath$Tombstone;

    .line 94
    .line 95
    :goto_1
    aput-object v0, p1, p3

    .line 96
    .line 97
    iget-object p1, p4, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, [I

    .line 100
    .line 101
    aput p2, p1, p3

    .line 102
    .line 103
    :cond_4
    return-object p0
.end method

.method public final decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lkotlinx/coroutines/flow/SharingConfig;

    .line 8
    .line 9
    const-string v3, "Expected "

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    :try_start_0
    instance-of v5, p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 16
    .line 17
    if-eqz v5, :cond_7

    .line 18
    .line 19
    iget-object v5, v0, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 20
    .line 21
    move-object v5, p1

    .line 22
    check-cast v5, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 23
    .line 24
    invoke-interface {v5}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {v5, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v1, v5}, Landroidx/compose/ui/node/RulerTrackingMap;->peekLeadingMatchingValue(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const/4 v7, -0x1

    .line 37
    const/4 v8, 0x0

    .line 38
    if-nez v6, :cond_5

    .line 39
    .line 40
    iget-object v1, v0, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 41
    .line 42
    move-object v1, p1

    .line 43
    check-cast v1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 44
    .line 45
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    move-object v6, p1

    .line 58
    check-cast v6, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 59
    .line 60
    invoke-interface {v6}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-interface {v6}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    instance-of v9, v5, Lkotlinx/serialization/json/JsonObject;

    .line 69
    .line 70
    if-nez v9, :cond_1

    .line 71
    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-class p1, Lkotlinx/serialization/json/JsonObject;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ", but had "

    .line 91
    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p1, " as the serialized body of "

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/SharingConfig;->getPath()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 127
    .line 128
    iget-boolean v0, v0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 129
    .line 130
    if-eqz v0, :cond_0

    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v7, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->minify(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    goto :goto_0

    .line 145
    :catch_0
    move-exception p0

    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_0
    move-object v0, v8

    .line 149
    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    .line 150
    .line 151
    invoke-static {v7, p0, p1, v8, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->formatDecodingException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonDecodingException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :cond_1
    check-cast v5, Lkotlinx/serialization/json/JsonObject;

    .line 160
    .line 161
    invoke-virtual {v5, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    .line 166
    .line 167
    if-eqz v3, :cond_3

    .line 168
    .line 169
    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    instance-of v6, v3, Lkotlinx/serialization/json/JsonNull;

    .line 174
    .line 175
    if-eqz v6, :cond_2

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3
    :try_end_0
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_2

    .line 183
    :cond_3
    :goto_1
    move-object v3, v8

    .line 184
    :goto_2
    :try_start_1
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 185
    .line 186
    invoke-static {p1, p0, v3}, Lokio/Options$Companion;->findPolymorphicSerializer(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    .line 187
    .line 188
    .line 189
    move-result-object p0
    :try_end_1
    .catch Lkotlinx/serialization/SerializationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    :try_start_2
    invoke-static {v0, v1, v5, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->readPolymorphicJson(Lkotlinx/serialization/json/Json;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0

    .line 195
    :catch_1
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget-object p1, v0, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 204
    .line 205
    iget-boolean p1, p1, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 206
    .line 207
    if-eqz p1, :cond_4

    .line 208
    .line 209
    invoke-virtual {v5}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {v7, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->minify(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    goto :goto_3

    .line 222
    :cond_4
    move-object p1, v8

    .line 223
    :goto_3
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    .line 224
    .line 225
    invoke-static {v7, p0, v8, v8, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->formatDecodingException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonDecodingException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw v0
    :try_end_2
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    :cond_5
    :try_start_3
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 234
    .line 235
    invoke-static {p1, p0, v6}, Lokio/Options$Companion;->findPolymorphicSerializer(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    .line 236
    .line 237
    .line 238
    move-result-object p1
    :try_end_3
    .catch Lkotlinx/serialization/SerializationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 239
    :try_start_4
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 240
    .line 241
    invoke-direct {v0}, Lcom/fsck/k9/mailstore/LocalStore$8;-><init>()V

    .line 242
    .line 243
    .line 244
    iput-object v5, v0, Lcom/fsck/k9/mailstore/LocalStore$8;->val$attachmentId:Ljava/lang/String;

    .line 245
    .line 246
    iput-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lcom/fsck/k9/mailstore/LocalStore$8;

    .line 247
    .line 248
    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    return-object p0

    .line 253
    :catch_2
    move-exception p0

    .line 254
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    const/16 v0, 0xa

    .line 262
    .line 263
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->substringBefore$default(CLjava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    const-string v3, "."

    .line 268
    .line 269
    invoke-static {p1, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    const-string v3, ""

    .line 281
    .line 282
    const/4 v5, 0x6

    .line 283
    invoke-static {p0, v0, v4, v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-ne v0, v7, :cond_6

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 291
    .line 292
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    :goto_4
    const/4 p0, 0x2

    .line 301
    invoke-static {v1, p1, v4, v3, p0}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 302
    .line 303
    .line 304
    throw v8

    .line 305
    :cond_7
    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p0
    :try_end_4
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_4 .. :try_end_4} :catch_0

    .line 309
    return-object p0

    .line 310
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    const-string v0, "at path"

    .line 318
    .line 319
    invoke-static {p1, v0, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_8

    .line 324
    .line 325
    throw p0

    .line 326
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v0, " at path: "

    .line 339
    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/SharingConfig;->getPath()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    new-instance v0, Lkotlinx/serialization/MissingFieldException;

    .line 355
    .line 356
    iget-object v1, p0, Lkotlinx/serialization/MissingFieldException;->missingFields:Ljava/util/List;

    .line 357
    .line 358
    iget-object v2, p0, Lkotlinx/serialization/MissingFieldException;->serialName:Ljava/lang/String;

    .line 359
    .line 360
    invoke-direct {v0, p1, p0, v1, v2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;Lkotlinx/serialization/MissingFieldException;Ljava/util/List;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw v0
.end method

.method public final decodeShort()S
    .locals 5

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNumericLiteral()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v2, v0

    .line 8
    int-to-short v2, v2

    .line 9
    int-to-long v3, v2

    .line 10
    cmp-long v3, v0, v3

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return v2

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Failed to parse short for input \'"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x27

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x6

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {p0, v0, v1, v3, v2}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    throw v3
.end method

.method public final decodeString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p1, v2}, Lkotlinx/serialization/json/internal/WriteModeKt;->ignoreUnknownKeys(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_4

    .line 32
    .line 33
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    .line 34
    .line 35
    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(C)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p1, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 43
    .line 44
    iget p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 45
    .line 46
    iget-object v0, p0, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, [I

    .line 49
    .line 50
    aget v2, v0, p1

    .line 51
    .line 52
    const/4 v3, -0x2

    .line 53
    if-ne v2, v3, :cond_2

    .line 54
    .line 55
    aput v1, v0, p1

    .line 56
    .line 57
    add-int/2addr p1, v1

    .line 58
    iput p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 59
    .line 60
    :cond_2
    iget p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 61
    .line 62
    if-eq p1, v1, :cond_3

    .line 63
    .line 64
    add-int/2addr p1, v1

    .line 65
    iput p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 66
    .line 67
    :cond_3
    return-void

    .line 68
    :cond_4
    iget-object p0, v2, Lkotlinx/serialization/json/Json;->configuration:Landroidx/compose/runtime/ProvidedValue;

    .line 69
    .line 70
    const-string p0, ""

    .line 71
    .line 72
    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    throw p0
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSerializersModule()Lkotlinx/serialization/modules/SerialModuleImpl;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 2
    .line 3
    return-object p0
.end method
