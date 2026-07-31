.class public final Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokhttp3/tls/internal/der/DerAdapter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic asSequenceOf(Ljava/lang/String;J)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;->$r8$classId:I

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;->$r8$classId:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-wide v3, v0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 21
    .line 22
    iget v5, v0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 23
    .line 24
    sget-object v6, Lokhttp3/tls/internal/der/Adapters;->UTC_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 25
    .line 26
    iget v7, v6, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 27
    .line 28
    if-ne v5, v7, :cond_0

    .line 29
    .line 30
    iget-wide v7, v6, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 31
    .line 32
    cmp-long v7, v3, v7

    .line 33
    .line 34
    if-nez v7, :cond_0

    .line 35
    .line 36
    invoke-virtual {v6, v1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object v6, Lokhttp3/tls/internal/der/Adapters;->GENERALIZED_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 48
    .line 49
    iget v7, v6, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 50
    .line 51
    if-ne v5, v7, :cond_1

    .line 52
    .line 53
    iget-wide v7, v6, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 54
    .line 55
    cmp-long v3, v3, v7

    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    invoke-virtual {v6, v1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Number;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    const-string v3, "expected time but was "

    .line 75
    .line 76
    invoke-static {v0, v1, v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    return-object v2

    .line 80
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v3, "expected time but was exhausted at "

    .line 85
    .line 86
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    iget-object v3, v1, Lokhttp3/tls/internal/der/DerReader;->path:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget-object v0, v1, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-wide v4, v0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    .line 117
    .line 118
    iput-object v2, v1, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 119
    .line 120
    iget-wide v6, v1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 121
    .line 122
    iget-boolean v8, v1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 123
    .line 124
    const-wide/16 v9, -0x1

    .line 125
    .line 126
    cmp-long v11, v4, v9

    .line 127
    .line 128
    if-eqz v11, :cond_3

    .line 129
    .line 130
    invoke-virtual {v1}, Lokhttp3/tls/internal/der/DerReader;->getByteCount()J

    .line 131
    .line 132
    .line 133
    move-result-wide v11

    .line 134
    add-long/2addr v11, v4

    .line 135
    goto :goto_2

    .line 136
    :cond_3
    move-wide v11, v9

    .line 137
    :goto_2
    cmp-long v4, v6, v9

    .line 138
    .line 139
    if-eqz v4, :cond_5

    .line 140
    .line 141
    cmp-long v4, v11, v6

    .line 142
    .line 143
    if-gtz v4, :cond_4

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    .line 147
    .line 148
    const-string v1, "enclosed object too large"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_5
    :goto_3
    iput-wide v11, v1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 155
    .line 156
    iget-boolean v4, v0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    .line 157
    .line 158
    iput-boolean v4, v1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 159
    .line 160
    const-string v4, "ANY"

    .line 161
    .line 162
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    :try_start_0
    iget-object v4, v1, Lokhttp3/tls/internal/der/DerReader;->source:Lokio/RealBufferedSource;

    .line 166
    .line 167
    invoke-virtual {v1}, Lokhttp3/tls/internal/der/DerReader;->getBytesLeft()J

    .line 168
    .line 169
    .line 170
    move-result-wide v9

    .line 171
    invoke-virtual {v4, v9, v10}, Lokio/RealBufferedSource;->readByteString(J)Lokio/ByteString;

    .line 172
    .line 173
    .line 174
    move-result-object v18

    .line 175
    new-instance v11, Lokhttp3/tls/internal/der/AnyValue;

    .line 176
    .line 177
    iget v12, v0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 178
    .line 179
    iget-wide v13, v0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 180
    .line 181
    iget-boolean v15, v0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    .line 182
    .line 183
    iget-wide v4, v0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    .line 184
    .line 185
    move-wide/from16 v16, v4

    .line 186
    .line 187
    invoke-direct/range {v11 .. v18}, Lokhttp3/tls/internal/der/AnyValue;-><init>(IJZJLokio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .line 189
    .line 190
    iput-object v2, v1, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 191
    .line 192
    iput-wide v6, v1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 193
    .line 194
    iput-boolean v8, v1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    add-int/lit8 v0, v0, -0x1

    .line 201
    .line 202
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    return-object v11

    .line 206
    :catchall_0
    move-exception v0

    .line 207
    iput-object v2, v1, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 208
    .line 209
    iput-wide v6, v1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 210
    .line 211
    iput-boolean v8, v1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 212
    .line 213
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    add-int/lit8 v1, v1, -0x1

    .line 218
    .line 219
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    .line 224
    .line 225
    const-string v1, "expected a value"

    .line 226
    .line 227
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final matches(Lokhttp3/tls/internal/der/DerHeader;)Z
    .locals 1

    .line 1
    iget p0, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    sget-object p0, Lokhttp3/tls/internal/der/Adapters;->UTC_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->matches(Lokhttp3/tls/internal/der/DerHeader;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lokhttp3/tls/internal/der/Adapters;->GENERALIZED_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->matches(Lokhttp3/tls/internal/der/DerHeader;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget p0, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Number;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-wide v2, -0x92f3973c00L

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmp-long p0, v2, v0

    .line 21
    .line 22
    if-gtz p0, :cond_0

    .line 23
    .line 24
    const-wide v2, 0x24bce5cf000L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long p0, v0, v2

    .line 30
    .line 31
    if-gez p0, :cond_0

    .line 32
    .line 33
    sget-object p0, Lokhttp3/tls/internal/der/Adapters;->UTC_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p0, p1, p2}, Lokhttp3/tls/internal/der/BasicDerAdapter;->toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget-object p0, Lokhttp3/tls/internal/der/Adapters;->GENERALIZED_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p0, p1, p2}, Lokhttp3/tls/internal/der/BasicDerAdapter;->toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_0
    check-cast p2, Lokhttp3/tls/internal/der/AnyValue;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    iget v2, p2, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    .line 62
    .line 63
    iget-wide v3, p2, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    .line 64
    .line 65
    new-instance v5, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;

    .line 66
    .line 67
    const/16 p0, 0x9

    .line 68
    .line 69
    invoke-direct {v5, p0, p1, p2}, Lorg/wikipedia/games/GamesHubScreenKt$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const-string v1, "ANY"

    .line 73
    .line 74
    move-object v0, p1

    .line 75
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/runtime/Latch;->write(Ljava/lang/String;IJLkotlin/jvm/functions/Function1;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
