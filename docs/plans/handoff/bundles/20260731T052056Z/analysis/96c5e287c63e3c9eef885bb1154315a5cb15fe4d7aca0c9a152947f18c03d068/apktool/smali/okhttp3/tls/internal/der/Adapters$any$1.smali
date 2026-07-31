.class public final Lokhttp3/tls/internal/der/Adapters$any$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokhttp3/tls/internal/der/DerAdapter;


# instance fields
.field public final synthetic $choices:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$choices:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic asSequenceOf(Ljava/lang/String;J)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lcoil3/size/ViewSizeResolver$-CC;->$default$asSequenceOf(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;J)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "expected a value at "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object p0, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$choices:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 16
    .line 17
    iget-object v0, p1, Lokhttp3/tls/internal/der/DerReader;->typeHintStack:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lokhttp3/tls/internal/der/DerAdapter;

    .line 28
    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-interface {p0, p1}, Lokhttp3/tls/internal/der/DerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p1, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 37
    .line 38
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->readByteString(J)Lokio/ByteString;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_0
    return-object p0

    .line 47
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    check-cast p0, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 57
    .line 58
    array-length v1, p0

    .line 59
    :goto_1
    if-ge v2, v1, :cond_2

    .line 60
    .line 61
    aget-object v4, p0, v2

    .line 62
    .line 63
    invoke-interface {v4, v0}, Lokhttp3/tls/internal/der/DerAdapter;->matches(Lokhttp3/tls/internal/der/DerHeader;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v4, v3

    .line 74
    :goto_2
    if-eqz v4, :cond_3

    .line 75
    .line 76
    invoke-interface {v4, p1}, Lokhttp3/tls/internal/der/DerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-instance v3, Lkotlin/Pair;

    .line 81
    .line 82
    invoke-direct {v3, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const-string p0, "expected a matching choice but was "

    .line 87
    .line 88
    invoke-static {v0, p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_3
    return-object v3

    .line 92
    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    check-cast p0, [Lkotlin/Pair;

    .line 120
    .line 121
    array-length v1, p0

    .line 122
    :goto_4
    if-ge v2, v1, :cond_6

    .line 123
    .line 124
    aget-object v4, p0, v2

    .line 125
    .line 126
    iget-object v4, v4, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v4, Lokhttp3/tls/internal/der/DerAdapter;

    .line 129
    .line 130
    invoke-interface {v4, v0}, Lokhttp3/tls/internal/der/DerAdapter;->matches(Lokhttp3/tls/internal/der/DerHeader;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_5

    .line 135
    .line 136
    invoke-interface {v4, p1}, Lokhttp3/tls/internal/der/DerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    goto :goto_5

    .line 141
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    const-string p0, "expected any but was "

    .line 145
    .line 146
    invoke-static {v0, p1, p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_5
    return-object v3

    .line 150
    :cond_7
    new-instance p0, Ljava/net/ProtocolException;

    .line 151
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p0

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final matches(Lokhttp3/tls/internal/der/DerHeader;)Z
    .locals 0

    .line 1
    iget p0, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$choices:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v0, p1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lokhttp3/tls/internal/der/DerAdapter;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, p1, p2}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p2, Lokio/ByteString;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/runtime/Latch;->sink()Lokio/BufferedSink;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :pswitch_0
    check-cast p2, Lkotlin/Pair;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object p0, p2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Lokhttp3/tls/internal/der/DerAdapter;

    .line 57
    .line 58
    iget-object p2, p2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-interface {p0, p1, p2}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast p0, [Lkotlin/Pair;

    .line 71
    .line 72
    array-length v0, p0

    .line 73
    const/4 v1, 0x0

    .line 74
    :goto_1
    if-ge v1, v0, :cond_3

    .line 75
    .line 76
    aget-object v2, p0, v1

    .line 77
    .line 78
    iget-object v3, v2, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v3, Lkotlin/reflect/KClass;

    .line 81
    .line 82
    iget-object v2, v2, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Lokhttp3/tls/internal/der/DerAdapter;

    .line 85
    .line 86
    invoke-interface {v3, p2}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_2

    .line 91
    .line 92
    if-nez p2, :cond_1

    .line 93
    .line 94
    const-class v4, Lkotlin/Unit;

    .line 95
    .line 96
    sget-object v5, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 97
    .line 98
    invoke-virtual {v5, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-interface {v2, p1, p2}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_3
    return-void

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lokhttp3/tls/internal/der/Adapters$any$1;->$choices:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    check-cast v0, [Lokhttp3/tls/internal/der/DerAdapter;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/16 v5, 0x3e

    .line 18
    .line 19
    const-string v1, " OR "

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
