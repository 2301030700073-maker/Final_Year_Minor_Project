.class public final Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.super Lkotlin/text/UStringsKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# instance fields
.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field public currentIndex:I

.field public discriminatorHolder:Lkotlinx/coroutines/internal/Symbol;

.field public final elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

.field public final json:Lkotlinx/serialization/json/Json;

.field public final lexer:Landroidx/compose/ui/node/RulerTrackingMap;

.field public final mode:Lkotlinx/serialization/json/internal/WriteMode;

.field public final serializersModule:Lorg/wikipedia/login/LoginClient;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/compose/ui/node/RulerTrackingMap;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/coroutines/internal/Symbol;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    iget-object p2, p1, Lkotlinx/serialization/json/Json;->serializersModule:Lorg/wikipedia/login/LoginClient;

    .line 17
    .line 18
    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lorg/wikipedia/login/LoginClient;

    .line 19
    .line 20
    const/4 p2, -0x1

    .line 21
    iput p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 22
    .line 23
    iput-object p5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lkotlinx/coroutines/internal/Symbol;

    .line 24
    .line 25
    iget-object p1, p1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 26
    .line 27
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 28
    .line 29
    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 36
    .line 37
    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 41
    .line 42
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
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 5
    .line 6
    invoke-static {p1, v1}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/WriteMode;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 11
    .line 12
    iget-object v0, v3, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lkotlinx/coroutines/flow/SharingConfig;

    .line 15
    .line 16
    iget v4, v0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    add-int/2addr v4, v5

    .line 20
    iput v4, v0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 21
    .line 22
    iget-object v6, v0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v6, [Ljava/lang/Object;

    .line 25
    .line 26
    array-length v6, v6

    .line 27
    if-ne v4, v6, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/SharingConfig;->resize()V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, v0, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p1, v0, v4

    .line 37
    .line 38
    iget-char v0, v2, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(C)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v4, 0x4

    .line 48
    if-eq v0, v4, :cond_3

    .line 49
    .line 50
    sget-object v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    aget v0, v0, v4

    .line 57
    .line 58
    if-eq v0, v5, :cond_2

    .line 59
    .line 60
    const/4 v4, 0x2

    .line 61
    if-eq v0, v4, :cond_2

    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    if-eq v0, v4, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    .line 67
    .line 68
    if-ne v0, v2, :cond_1

    .line 69
    .line 70
    iget-object v0, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 71
    .line 72
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_1
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 78
    .line 79
    iget-object v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lkotlinx/coroutines/internal/Symbol;

    .line 80
    .line 81
    move-object v4, p1

    .line 82
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/compose/ui/node/RulerTrackingMap;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/coroutines/internal/Symbol;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_2
    move-object v4, p1

    .line 87
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 88
    .line 89
    iget-object v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lkotlinx/coroutines/internal/Symbol;

    .line 90
    .line 91
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Landroidx/compose/ui/node/RulerTrackingMap;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/coroutines/internal/Symbol;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_3
    const/4 p0, 0x0

    .line 96
    const/4 p1, 0x6

    .line 97
    const-string v0, "Unexpected leading comma"

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-static {v3, v0, p0, v1, p1}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 101
    .line 102
    .line 103
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
    invoke-virtual {p0, v9, v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeBooleanLiteral(ILjava/lang/String;)V

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
    invoke-virtual {p0, v9, v0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeBooleanLiteral(ILjava/lang/String;)V

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
    invoke-static {v2, v1, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    .locals 9

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
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    .line 11
    .line 12
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmpg-double v0, v5, v7

    .line 23
    .line 24
    if-gtz v0, :cond_0

    .line 25
    .line 26
    return-wide v3

    .line 27
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->nonFiniteFpMessage(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v3, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-static {p0, v0, v1, v3, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    throw v2

    .line 42
    :catch_0
    const-string v3, "Failed to parse type \'double\' for input \'"

    .line 43
    .line 44
    const/16 v4, 0x27

    .line 45
    .line 46
    invoke-static {v4, v3, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v3, 0x6

    .line 51
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    throw v2
.end method

.method public final decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 21

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
    sget-object v4, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 15
    .line 16
    iget-object v5, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    aget v4, v4, v6

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    const-string v7, "object"

    .line 26
    .line 27
    const/4 v8, 0x4

    .line 28
    const/16 v9, 0x3a

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x1

    .line 32
    const/4 v12, -0x1

    .line 33
    const/4 v13, 0x0

    .line 34
    if-eq v4, v6, :cond_25

    .line 35
    .line 36
    const/4 v6, 0x6

    .line 37
    if-eq v4, v8, :cond_4

    .line 38
    .line 39
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->canConsumeValue()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    iget v4, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 50
    .line 51
    if-eq v4, v12, :cond_1

    .line 52
    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "Expected end of the array or comma"

    .line 57
    .line 58
    invoke-static {v2, v0, v10, v13, v6}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    throw v13

    .line 62
    :cond_1
    :goto_0
    add-int/lit8 v12, v4, 0x1

    .line 63
    .line 64
    iput v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 65
    .line 66
    goto/16 :goto_12

    .line 67
    .line 68
    :cond_2
    if-nez v1, :cond_3

    .line 69
    .line 70
    goto/16 :goto_12

    .line 71
    .line 72
    :cond_3
    const-string v0, "array"

    .line 73
    .line 74
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v13

    .line 78
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    :goto_1
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->canConsumeValue()Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    const-wide/16 v16, 0x1

    .line 87
    .line 88
    iget-object v15, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->elementMarker:Lkotlinx/serialization/json/internal/JsonElementMarker;

    .line 89
    .line 90
    if-eqz v8, :cond_1e

    .line 91
    .line 92
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeKeyString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v2, v9}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(C)V

    .line 97
    .line 98
    .line 99
    iget-object v8, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 100
    .line 101
    invoke-static {v1, v8, v4}, Lkotlinx/serialization/json/internal/WriteModeKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    const/4 v6, -0x3

    .line 106
    if-eq v9, v6, :cond_e

    .line 107
    .line 108
    move/from16 v18, v12

    .line 109
    .line 110
    iget-object v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 111
    .line 112
    iget-boolean v12, v12, Lkotlinx/serialization/json/JsonConfiguration;->coerceInputValues:Z

    .line 113
    .line 114
    if-eqz v12, :cond_a

    .line 115
    .line 116
    invoke-interface {v1, v9}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isElementOptional(I)Z

    .line 117
    .line 118
    .line 119
    move-result v12

    .line 120
    invoke-interface {v1, v9}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 121
    .line 122
    .line 123
    move-result-object v13

    .line 124
    if-eqz v12, :cond_5

    .line 125
    .line 126
    invoke-interface {v13}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    .line 127
    .line 128
    .line 129
    move-result v20

    .line 130
    if-nez v20, :cond_5

    .line 131
    .line 132
    invoke-virtual {v2, v11}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeNull(Z)Z

    .line 133
    .line 134
    .line 135
    move-result v20

    .line 136
    if-eqz v20, :cond_5

    .line 137
    .line 138
    move/from16 v20, v11

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    move/from16 v20, v11

    .line 142
    .line 143
    invoke-interface {v13}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Landroidx/room/Room;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    sget-object v14, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    .line 148
    .line 149
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-eqz v11, :cond_b

    .line 154
    .line 155
    invoke-interface {v13}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    if-eqz v11, :cond_6

    .line 160
    .line 161
    invoke-virtual {v2, v10}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeNull(Z)Z

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    if-eqz v11, :cond_6

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_6
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->peekString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v11

    .line 172
    if-nez v11, :cond_7

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    invoke-static {v13, v8, v11}, Lkotlinx/serialization/json/internal/WriteModeKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    iget-object v14, v8, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 180
    .line 181
    iget-boolean v14, v14, Lkotlinx/serialization/json/JsonConfiguration;->explicitNulls:Z

    .line 182
    .line 183
    if-nez v14, :cond_8

    .line 184
    .line 185
    invoke-interface {v13}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-eqz v13, :cond_8

    .line 190
    .line 191
    move/from16 v13, v20

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_8
    move v13, v10

    .line 195
    :goto_2
    if-ne v11, v6, :cond_b

    .line 196
    .line 197
    if-nez v12, :cond_9

    .line 198
    .line 199
    if-eqz v13, :cond_b

    .line 200
    .line 201
    :cond_9
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    :goto_3
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    move v9, v10

    .line 209
    goto :goto_6

    .line 210
    :cond_a
    move/from16 v20, v11

    .line 211
    .line 212
    :cond_b
    :goto_4
    if-eqz v15, :cond_c

    .line 213
    .line 214
    iget-object v0, v15, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    .line 215
    .line 216
    const/16 v1, 0x40

    .line 217
    .line 218
    if-ge v9, v1, :cond_d

    .line 219
    .line 220
    iget-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 221
    .line 222
    shl-long v6, v16, v9

    .line 223
    .line 224
    or-long/2addr v1, v6

    .line 225
    iput-wide v1, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 226
    .line 227
    :cond_c
    :goto_5
    move v12, v9

    .line 228
    goto/16 :goto_12

    .line 229
    .line 230
    :cond_d
    ushr-int/lit8 v1, v9, 0x6

    .line 231
    .line 232
    add-int/lit8 v1, v1, -0x1

    .line 233
    .line 234
    and-int/lit8 v2, v9, 0x3f

    .line 235
    .line 236
    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    .line 237
    .line 238
    aget-wide v6, v0, v1

    .line 239
    .line 240
    shl-long v10, v16, v2

    .line 241
    .line 242
    or-long/2addr v6, v10

    .line 243
    aput-wide v6, v0, v1

    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_e
    move/from16 v20, v11

    .line 247
    .line 248
    move/from16 v18, v12

    .line 249
    .line 250
    move v6, v10

    .line 251
    move/from16 v9, v20

    .line 252
    .line 253
    :goto_6
    if-eqz v9, :cond_1d

    .line 254
    .line 255
    invoke-static {v1, v8}, Lkotlinx/serialization/json/internal/WriteModeKt;->ignoreUnknownKeys(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    if-nez v6, :cond_12

    .line 260
    .line 261
    iget-object v6, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lkotlinx/coroutines/internal/Symbol;

    .line 262
    .line 263
    if-eqz v6, :cond_f

    .line 264
    .line 265
    iget-object v8, v6, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    if-eqz v8, :cond_f

    .line 272
    .line 273
    const/4 v8, 0x0

    .line 274
    iput-object v8, v6, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :cond_f
    iget v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 278
    .line 279
    iget-object v1, v3, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v1, [I

    .line 282
    .line 283
    aget v5, v1, v0

    .line 284
    .line 285
    const/4 v6, -0x2

    .line 286
    if-ne v5, v6, :cond_10

    .line 287
    .line 288
    aput v18, v1, v0

    .line 289
    .line 290
    add-int/lit8 v0, v0, -0x1

    .line 291
    .line 292
    iput v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 293
    .line 294
    :cond_10
    move/from16 v1, v18

    .line 295
    .line 296
    if-eq v0, v1, :cond_11

    .line 297
    .line 298
    add-int/2addr v0, v1

    .line 299
    iput v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 300
    .line 301
    :cond_11
    iget v0, v2, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 302
    .line 303
    iget-object v1, v2, Landroidx/compose/ui/node/RulerTrackingMap;->newRulers:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v1, Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v1, v10, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const/4 v1, 0x6

    .line 316
    invoke-static {v1, v0, v4}, Lkotlin/text/StringsKt;->lastIndexOf$default(ILjava/lang/String;Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    const-string v1, "Encountered an unknown key \'"

    .line 321
    .line 322
    const/16 v3, 0x27

    .line 323
    .line 324
    invoke-static {v3, v1, v4}, Landroidx/compose/animation/core/Animation$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    const-string v3, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder or \'@JsonIgnoreUnknownKeys\' annotation to ignore unknown keys."

    .line 329
    .line 330
    invoke-virtual {v2, v0, v1, v3}, Landroidx/compose/ui/node/RulerTrackingMap;->fail(ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    const/16 v19, 0x0

    .line 334
    .line 335
    throw v19

    .line 336
    :cond_12
    :goto_7
    new-instance v4, Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    const/16 v8, 0x8

    .line 346
    .line 347
    const/4 v9, 0x6

    .line 348
    if-eq v6, v8, :cond_13

    .line 349
    .line 350
    if-eq v6, v9, :cond_13

    .line 351
    .line 352
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeStringLenient()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    goto :goto_b

    .line 356
    :cond_13
    :goto_8
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->peekNextToken()B

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    move/from16 v11, v20

    .line 361
    .line 362
    if-ne v6, v11, :cond_15

    .line 363
    .line 364
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeKeyString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    :cond_14
    const/16 v20, 0x1

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :cond_15
    if-eq v6, v8, :cond_1c

    .line 371
    .line 372
    if-ne v6, v9, :cond_16

    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_16
    const/16 v11, 0x9

    .line 376
    .line 377
    if-ne v6, v11, :cond_18

    .line 378
    .line 379
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    check-cast v6, Ljava/lang/Number;

    .line 384
    .line 385
    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-ne v6, v8, :cond_17

    .line 390
    .line 391
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    goto :goto_a

    .line 395
    :cond_17
    const-string v0, "found ] instead of }"

    .line 396
    .line 397
    const/4 v11, 0x0

    .line 398
    invoke-static {v2, v0, v10, v11, v9}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 399
    .line 400
    .line 401
    throw v11

    .line 402
    :cond_18
    const/4 v11, 0x0

    .line 403
    const/4 v12, 0x7

    .line 404
    if-ne v6, v12, :cond_1a

    .line 405
    .line 406
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    check-cast v6, Ljava/lang/Number;

    .line 411
    .line 412
    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    if-ne v6, v9, :cond_19

    .line 417
    .line 418
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_19
    const-string v0, "found } instead of ]"

    .line 423
    .line 424
    invoke-static {v2, v0, v10, v11, v9}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 425
    .line 426
    .line 427
    throw v11

    .line 428
    :cond_1a
    const/16 v12, 0xa

    .line 429
    .line 430
    if-eq v6, v12, :cond_1b

    .line 431
    .line 432
    goto :goto_a

    .line 433
    :cond_1b
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    .line 434
    .line 435
    invoke-static {v2, v0, v10, v11, v9}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 436
    .line 437
    .line 438
    throw v11

    .line 439
    :cond_1c
    :goto_9
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    :goto_a
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken()B

    .line 447
    .line 448
    .line 449
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 450
    .line 451
    .line 452
    move-result v6

    .line 453
    if-nez v6, :cond_14

    .line 454
    .line 455
    :goto_b
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 456
    .line 457
    .line 458
    move-result v4

    .line 459
    move v6, v9

    .line 460
    :goto_c
    const/16 v9, 0x3a

    .line 461
    .line 462
    const/4 v11, 0x1

    .line 463
    const/4 v12, -0x1

    .line 464
    const/4 v13, 0x0

    .line 465
    goto/16 :goto_1

    .line 466
    .line 467
    :cond_1d
    move v4, v6

    .line 468
    const/4 v6, 0x6

    .line 469
    goto :goto_c

    .line 470
    :cond_1e
    if-nez v4, :cond_24

    .line 471
    .line 472
    if-eqz v15, :cond_23

    .line 473
    .line 474
    iget-object v0, v15, Lkotlinx/serialization/json/internal/JsonElementMarker;->origin:Lkotlinx/serialization/internal/ElementMarker;

    .line 475
    .line 476
    iget-object v1, v0, Lkotlinx/serialization/internal/ElementMarker;->readIfAbsent:Landroidx/room/RoomDatabase$createConnectionManager$2;

    .line 477
    .line 478
    iget-object v2, v0, Lkotlinx/serialization/internal/ElementMarker;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 479
    .line 480
    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    .line 481
    .line 482
    .line 483
    move-result v4

    .line 484
    :cond_1f
    iget-wide v6, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 485
    .line 486
    const-wide/16 v8, -0x1

    .line 487
    .line 488
    cmp-long v11, v6, v8

    .line 489
    .line 490
    if-eqz v11, :cond_20

    .line 491
    .line 492
    not-long v6, v6

    .line 493
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    iget-wide v7, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 498
    .line 499
    shl-long v11, v16, v6

    .line 500
    .line 501
    or-long/2addr v7, v11

    .line 502
    iput-wide v7, v0, Lkotlinx/serialization/internal/ElementMarker;->lowerMarks:J

    .line 503
    .line 504
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 505
    .line 506
    .line 507
    move-result-object v7

    .line 508
    invoke-virtual {v1, v2, v7}, Landroidx/room/RoomDatabase$createConnectionManager$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v7

    .line 512
    check-cast v7, Ljava/lang/Boolean;

    .line 513
    .line 514
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    if-eqz v7, :cond_1f

    .line 519
    .line 520
    :goto_d
    move v12, v6

    .line 521
    goto/16 :goto_12

    .line 522
    .line 523
    :cond_20
    const/16 v6, 0x40

    .line 524
    .line 525
    if-le v4, v6, :cond_23

    .line 526
    .line 527
    iget-object v0, v0, Lkotlinx/serialization/internal/ElementMarker;->highMarksArray:[J

    .line 528
    .line 529
    array-length v4, v0

    .line 530
    :goto_e
    if-ge v10, v4, :cond_23

    .line 531
    .line 532
    add-int/lit8 v6, v10, 0x1

    .line 533
    .line 534
    mul-int/lit8 v7, v6, 0x40

    .line 535
    .line 536
    aget-wide v11, v0, v10

    .line 537
    .line 538
    :cond_21
    cmp-long v13, v11, v8

    .line 539
    .line 540
    if-eqz v13, :cond_22

    .line 541
    .line 542
    not-long v13, v11

    .line 543
    invoke-static {v13, v14}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 544
    .line 545
    .line 546
    move-result v13

    .line 547
    shl-long v14, v16, v13

    .line 548
    .line 549
    or-long/2addr v11, v14

    .line 550
    add-int/2addr v13, v7

    .line 551
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 552
    .line 553
    .line 554
    move-result-object v14

    .line 555
    invoke-virtual {v1, v2, v14}, Landroidx/room/RoomDatabase$createConnectionManager$2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v14

    .line 559
    check-cast v14, Ljava/lang/Boolean;

    .line 560
    .line 561
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 562
    .line 563
    .line 564
    move-result v14

    .line 565
    if-eqz v14, :cond_21

    .line 566
    .line 567
    aput-wide v11, v0, v10

    .line 568
    .line 569
    move v12, v13

    .line 570
    goto :goto_12

    .line 571
    :cond_22
    aput-wide v11, v0, v10

    .line 572
    .line 573
    move v10, v6

    .line 574
    goto :goto_e

    .line 575
    :cond_23
    const/4 v12, -0x1

    .line 576
    goto :goto_12

    .line 577
    :cond_24
    invoke-static {v2, v7}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    const/16 v19, 0x0

    .line 581
    .line 582
    throw v19

    .line 583
    :cond_25
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 584
    .line 585
    rem-int/lit8 v4, v1, 0x2

    .line 586
    .line 587
    if-eqz v4, :cond_26

    .line 588
    .line 589
    const/4 v11, 0x1

    .line 590
    goto :goto_f

    .line 591
    :cond_26
    move v11, v10

    .line 592
    :goto_f
    if-eqz v11, :cond_27

    .line 593
    .line 594
    const/4 v4, -0x1

    .line 595
    if-eq v1, v4, :cond_28

    .line 596
    .line 597
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeComma()Z

    .line 598
    .line 599
    .line 600
    move-result v10

    .line 601
    goto :goto_10

    .line 602
    :cond_27
    const/16 v1, 0x3a

    .line 603
    .line 604
    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeNextToken(C)V

    .line 605
    .line 606
    .line 607
    :cond_28
    :goto_10
    invoke-virtual {v2}, Landroidx/compose/ui/node/RulerTrackingMap;->canConsumeValue()Z

    .line 608
    .line 609
    .line 610
    move-result v1

    .line 611
    if-eqz v1, :cond_2d

    .line 612
    .line 613
    if-eqz v11, :cond_2c

    .line 614
    .line 615
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 616
    .line 617
    iget v4, v2, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 618
    .line 619
    const/4 v6, -0x1

    .line 620
    if-ne v1, v6, :cond_2a

    .line 621
    .line 622
    if-nez v10, :cond_29

    .line 623
    .line 624
    goto :goto_11

    .line 625
    :cond_29
    const-string v0, "Unexpected leading comma"

    .line 626
    .line 627
    const/4 v11, 0x0

    .line 628
    invoke-static {v2, v0, v4, v11, v8}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 629
    .line 630
    .line 631
    throw v11

    .line 632
    :cond_2a
    const/4 v11, 0x0

    .line 633
    if-eqz v10, :cond_2b

    .line 634
    .line 635
    goto :goto_11

    .line 636
    :cond_2b
    const-string v0, "Expected comma after the key-value pair"

    .line 637
    .line 638
    invoke-static {v2, v0, v4, v11, v8}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 639
    .line 640
    .line 641
    throw v11

    .line 642
    :cond_2c
    :goto_11
    iget v1, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 643
    .line 644
    const/16 v20, 0x1

    .line 645
    .line 646
    add-int/lit8 v12, v1, 0x1

    .line 647
    .line 648
    iput v12, v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 649
    .line 650
    goto :goto_12

    .line 651
    :cond_2d
    const/4 v6, -0x1

    .line 652
    if-nez v10, :cond_2f

    .line 653
    .line 654
    goto/16 :goto_d

    .line 655
    .line 656
    :goto_12
    sget-object v0, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    .line 657
    .line 658
    if-eq v5, v0, :cond_2e

    .line 659
    .line 660
    iget-object v0, v3, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast v0, [I

    .line 663
    .line 664
    iget v1, v3, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 665
    .line 666
    aput v12, v0, v1

    .line 667
    .line 668
    :cond_2e
    return v12

    .line 669
    :cond_2f
    invoke-static {v2, v7}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    const/16 v19, 0x0

    .line 673
    .line 674
    throw v19
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
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/node/RulerTrackingMap;->consumeStringLenient()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 18
    .line 19
    .line 20
    cmpg-float v3, v3, v4

    .line 21
    .line 22
    if-gtz v3, :cond_0

    .line 23
    .line 24
    return v0

    .line 25
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->nonFiniteFpMessage(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v3, "It is possible to deserialize them using \'JsonBuilder.allowSpecialFloatingPointValues = true\'"

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    invoke-static {p0, v0, v1, v3, v4}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    throw v2

    .line 40
    :catch_0
    const-string v3, "Failed to parse type \'float\' for input \'"

    .line 41
    .line 42
    const/16 v4, 0x27

    .line 43
    .line 44
    invoke-static {v4, v3, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v3, 0x6

    .line 49
    invoke-static {p0, v0, v1, v2, v3}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    throw v2
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
    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 6
    .line 7
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lokio/PriorityQueue;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Landroidx/compose/ui/node/RulerTrackingMap;)V

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
    .locals 2

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
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->lexer:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/RulerTrackingMap;->tryConsumeNull(Z)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
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
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue$1(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

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
    check-cast v0, Lkotlinx/serialization/json/JsonConfiguration;

    .line 86
    .line 87
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->exceptionsWithDebugInfo:Z

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

.method public final decodeSerializableValue$1(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;
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
    if-eqz v5, :cond_8

    .line 18
    .line 19
    move-object v5, p1

    .line 20
    check-cast v5, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 21
    .line 22
    invoke-interface {v5}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {v5, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v1, v5}, Landroidx/compose/ui/node/RulerTrackingMap;->peekLeadingMatchingValue(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const/4 v7, -0x1

    .line 35
    const/4 v8, 0x0

    .line 36
    if-nez v6, :cond_5

    .line 37
    .line 38
    move-object v1, p1

    .line 39
    check-cast v1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 40
    .line 41
    invoke-interface {v1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    move-object v6, p1

    .line 54
    check-cast v6, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 55
    .line 56
    invoke-interface {v6}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {v6}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    instance-of v9, v5, Lkotlinx/serialization/json/JsonObject;

    .line 65
    .line 66
    if-nez v9, :cond_1

    .line 67
    .line 68
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-class p1, Lkotlinx/serialization/json/JsonObject;

    .line 74
    .line 75
    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 76
    .line 77
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, ", but had "

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p1, " as the serialized body of "

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/SharingConfig;->getPath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 125
    .line 126
    iget-boolean v0, v0, Lkotlinx/serialization/json/JsonConfiguration;->exceptionsWithDebugInfo:Z

    .line 127
    .line 128
    if-eqz v0, :cond_0

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0, v7}, Lkotlinx/serialization/json/internal/WriteModeKt;->minify(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    goto :goto_0

    .line 143
    :catch_0
    move-exception p0

    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_0
    move-object v0, v8

    .line 147
    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonDecodingException;

    .line 148
    .line 149
    invoke-static {v7, p0, p1, v8, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->formatDecodingException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-direct {v1, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :cond_1
    check-cast v5, Lkotlinx/serialization/json/JsonObject;

    .line 158
    .line 159
    invoke-virtual {v5, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    .line 164
    .line 165
    if-eqz v3, :cond_3

    .line 166
    .line 167
    invoke-static {v3}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    instance-of v6, v3, Lkotlinx/serialization/json/JsonNull;

    .line 172
    .line 173
    if-eqz v6, :cond_2

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3
    :try_end_0
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    :goto_1
    move-object v3, v8

    .line 182
    :goto_2
    :try_start_1
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 183
    .line 184
    invoke-static {p1, p0, v3}, Lcoil3/util/ContextsKt;->findPolymorphicSerializer(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    .line 185
    .line 186
    .line 187
    move-result-object p0
    :try_end_1
    .catch Lkotlinx/serialization/SerializationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :try_start_2
    invoke-static {v0, v1, v5, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->readPolymorphicJson(Lkotlinx/serialization/json/Json;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    return-object p0

    .line 193
    :catch_1
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    iget-object p1, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 202
    .line 203
    iget-boolean p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->exceptionsWithDebugInfo:Z

    .line 204
    .line 205
    if-eqz p1, :cond_4

    .line 206
    .line 207
    invoke-virtual {v5}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p1, v7}, Lkotlinx/serialization/json/internal/WriteModeKt;->minify(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    goto :goto_3

    .line 220
    :cond_4
    move-object p1, v8

    .line 221
    :goto_3
    new-instance v0, Lkotlinx/serialization/json/JsonDecodingException;

    .line 222
    .line 223
    invoke-static {v7, p0, v8, v8, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->formatDecodingException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v0
    :try_end_2
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    :cond_5
    :try_start_3
    check-cast p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    .line 232
    .line 233
    invoke-static {p1, p0, v6}, Lcoil3/util/ContextsKt;->findPolymorphicSerializer(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/KSerializer;

    .line 234
    .line 235
    .line 236
    move-result-object p1
    :try_end_3
    .catch Lkotlinx/serialization/SerializationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 237
    :try_start_4
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 238
    .line 239
    invoke-direct {v0}, Lkotlinx/coroutines/internal/Symbol;-><init>()V

    .line 240
    .line 241
    .line 242
    iput-object v5, v0, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;

    .line 243
    .line 244
    iput-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->discriminatorHolder:Lkotlinx/coroutines/internal/Symbol;

    .line 245
    .line 246
    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    return-object p0

    .line 251
    :catch_2
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    const/16 v0, 0xa

    .line 260
    .line 261
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const-string v3, "."

    .line 266
    .line 267
    invoke-static {p1, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-eqz v5, :cond_6

    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    sub-int/2addr v5, v3

    .line 282
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    const-string v3, ""

    .line 294
    .line 295
    const/4 v5, 0x6

    .line 296
    invoke-static {p0, v0, v4, v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-ne v0, v7, :cond_7

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 304
    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    :goto_4
    const/4 p0, 0x2

    .line 314
    invoke-static {v1, p1, v4, v3, p0}, Landroidx/compose/ui/node/RulerTrackingMap;->fail$default(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;ILjava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    throw v8

    .line 318
    :cond_8
    invoke-interface {p1, p0}, Lkotlinx/serialization/KSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p0
    :try_end_4
    .catch Lkotlinx/serialization/MissingFieldException; {:try_start_4 .. :try_end_4} :catch_0

    .line 322
    return-object p0

    .line 323
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    const-string v0, "at path"

    .line 331
    .line 332
    invoke-static {p1, v0, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    if-eqz p1, :cond_9

    .line 337
    .line 338
    throw p0

    .line 339
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v0, " at path: "

    .line 352
    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/SharingConfig;->getPath()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    new-instance v0, Lkotlinx/serialization/MissingFieldException;

    .line 368
    .line 369
    iget-object v1, p0, Lkotlinx/serialization/MissingFieldException;->missingFields:Ljava/util/List;

    .line 370
    .line 371
    iget-object v2, p0, Lkotlinx/serialization/MissingFieldException;->serialName:Ljava/lang/String;

    .line 372
    .line 373
    invoke-direct {v0, p1, p0, v1, v2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;Lkotlinx/serialization/MissingFieldException;Ljava/util/List;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
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
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/WriteModeKt;->ignoreUnknownKeys(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Z

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
    add-int/lit8 p1, p1, -0x1

    .line 58
    .line 59
    iput p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 60
    .line 61
    :cond_2
    if-eq p1, v1, :cond_3

    .line 62
    .line 63
    add-int/2addr p1, v1

    .line 64
    iput p1, p0, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 65
    .line 66
    :cond_3
    return-void

    .line 67
    :cond_4
    const-string p0, ""

    .line 68
    .line 69
    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/WriteModeKt;->invalidTrailingComma(Landroidx/compose/ui/node/RulerTrackingMap;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
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

.method public final getSerializersModule()Lorg/wikipedia/login/LoginClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lorg/wikipedia/login/LoginClient;

    .line 2
    .line 3
    return-object p0
.end method
