.class public final Lokhttp3/tls/internal/der/BasicDerAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lokhttp3/tls/internal/der/DerAdapter;


# instance fields
.field public final codec:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

.field public final defaultValue:Ljava/lang/Object;

.field public final isOptional:Z

.field public final name:Ljava/lang/String;

.field public final tag:J

.field public final tagClass:I

.field public final typeHint:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 7
    .line 8
    iput-wide p3, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 9
    .line 10
    iput-object p5, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->codec:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    .line 11
    .line 12
    iput-boolean p6, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->isOptional:Z

    .line 13
    .line 14
    iput-object p7, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->defaultValue:Ljava/lang/Object;

    .line 15
    .line 16
    iput-boolean p8, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->typeHint:Z

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    const-string p1, "Failed requirement."

    .line 20
    .line 21
    if-ltz p2, :cond_1

    .line 22
    .line 23
    const-wide/16 p5, 0x0

    .line 24
    .line 25
    cmp-long p2, p3, p5

    .line 26
    .line 27
    if-ltz p2, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public static copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;JLjava/lang/Object;I)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 9

    .line 1
    iget-object v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->name:Ljava/lang/String;

    .line 2
    .line 3
    and-int/lit8 v0, p4, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 8
    .line 9
    :goto_0
    move v2, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/16 v0, 0x80

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    and-int/lit8 v0, p4, 0x4

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-wide p1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 19
    .line 20
    :cond_1
    move-wide v3, p1

    .line 21
    iget-object v5, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->codec:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    .line 22
    .line 23
    and-int/lit8 p1, p4, 0x10

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-boolean p1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->isOptional:Z

    .line 29
    .line 30
    move v6, p1

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v6, p2

    .line 33
    :goto_2
    and-int/lit8 p1, p4, 0x20

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object p3, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->defaultValue:Ljava/lang/Object;

    .line 38
    .line 39
    :cond_3
    move-object v7, p3

    .line 40
    and-int/lit8 p1, p4, 0x40

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    iget-boolean p2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->typeHint:Z

    .line 45
    .line 46
    :cond_4
    move v8, p2

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v0, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 57
    .line 58
    invoke-direct/range {v0 .. v8}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 59
    .line 60
    .line 61
    return-object v0
.end method

.method public static withTag$default(Lokhttp3/tls/internal/der/BasicDerAdapter;J)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0x79

    .line 6
    .line 7
    invoke-static {p0, p1, p2, v0, v1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;JLjava/lang/Object;I)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final synthetic asSequenceOf(Ljava/lang/String;J)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcoil3/size/ViewSizeResolver$-CC;->$default$asSequenceOf(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;J)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 12
    .line 13
    iget-object v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 25
    .line 26
    iget v3, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 32
    .line 33
    iget-wide v5, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->codec:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    .line 41
    .line 42
    iget-object v3, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->codec:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget-boolean v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->isOptional:Z

    .line 52
    .line 53
    iget-boolean v3, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->isOptional:Z

    .line 54
    .line 55
    if-eq v1, v3, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->defaultValue:Ljava/lang/Object;

    .line 59
    .line 60
    iget-object v3, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->defaultValue:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget-boolean p0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->typeHint:Z

    .line 70
    .line 71
    iget-boolean p1, p1, Lokhttp3/tls/internal/der/BasicDerAdapter;->typeHint:Z

    .line 72
    .line 73
    if-eq p0, p1, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    return v0
.end method

.method public final fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 13

    .line 1
    const-string/jumbo v0, "unexpected byte count at "

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object v1, p1, Lokhttp3/tls/internal/der/DerReader;->path:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_b

    .line 14
    .line 15
    iget v3, v2, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 16
    .line 17
    iget v4, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 18
    .line 19
    if-ne v3, v4, :cond_b

    .line 20
    .line 21
    iget-wide v3, v2, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 22
    .line 23
    iget-wide v5, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 24
    .line 25
    cmp-long v3, v3, v5

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_a

    .line 36
    .line 37
    iget-object v2, p1, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-wide v3, v2, Lokhttp3/tls/internal/der/DerHeader;->length:J

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    iput-object v5, p1, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 46
    .line 47
    iget-wide v6, p1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 48
    .line 49
    iget-boolean v8, p1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 50
    .line 51
    const-wide/16 v9, -0x1

    .line 52
    .line 53
    cmp-long v11, v3, v9

    .line 54
    .line 55
    if-eqz v11, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getByteCount()J

    .line 58
    .line 59
    .line 60
    move-result-wide v11

    .line 61
    add-long/2addr v11, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move-wide v11, v9

    .line 64
    :goto_0
    cmp-long v3, v6, v9

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    cmp-long v3, v11, v6

    .line 69
    .line 70
    if-gtz v3, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    .line 74
    .line 75
    const-string p1, "enclosed object too large"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_3
    :goto_1
    iput-wide v11, p1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 82
    .line 83
    iget-boolean v2, v2, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    .line 84
    .line 85
    iput-boolean v2, p1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 86
    .line 87
    iget-object v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->name:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_4
    :try_start_0
    iget-object v3, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->codec:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    .line 95
    .line 96
    invoke-interface {v3, p1}, Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;->decode(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    cmp-long v4, v11, v9

    .line 101
    .line 102
    if-eqz v4, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getByteCount()J

    .line 105
    .line 106
    .line 107
    move-result-wide v9

    .line 108
    cmp-long v4, v9, v11

    .line 109
    .line 110
    if-gtz v4, :cond_5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :catchall_0
    move-exception p0

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    :goto_2
    iput-object v5, p1, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 134
    .line 135
    iput-wide v6, p1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 136
    .line 137
    iput-boolean v8, p1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 138
    .line 139
    if-eqz v2, :cond_7

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    add-int/lit8 v0, v0, -0x1

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :cond_7
    iget-boolean p0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->typeHint:Z

    .line 151
    .line 152
    if-eqz p0, :cond_8

    .line 153
    .line 154
    iget-object p0, p1, Lokhttp3/tls/internal/der/DerReader;->typeHintStack:Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    add-int/lit8 p1, p1, -0x1

    .line 161
    .line 162
    invoke-virtual {p0, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    :cond_8
    return-object v3

    .line 166
    :goto_3
    iput-object v5, p1, Lokhttp3/tls/internal/der/DerReader;->peekedHeader:Lokhttp3/tls/internal/der/DerHeader;

    .line 167
    .line 168
    iput-wide v6, p1, Lokhttp3/tls/internal/der/DerReader;->limit:J

    .line 169
    .line 170
    iput-boolean v8, p1, Lokhttp3/tls/internal/der/DerReader;->constructed:Z

    .line 171
    .line 172
    if-eqz v2, :cond_9

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    add-int/lit8 p1, p1, -0x1

    .line 179
    .line 180
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    :cond_9
    throw p0

    .line 184
    :cond_a
    new-instance p0, Ljava/net/ProtocolException;

    .line 185
    .line 186
    const-string p1, "expected a value"

    .line 187
    .line 188
    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p0

    .line 192
    :cond_b
    :goto_4
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->isOptional:Z

    .line 193
    .line 194
    if-eqz v0, :cond_c

    .line 195
    .line 196
    iget-object p0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->defaultValue:Ljava/lang/Object;

    .line 197
    .line 198
    return-object p0

    .line 199
    :cond_c
    new-instance v0, Ljava/net/ProtocolException;

    .line 200
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v3, "expected "

    .line 204
    .line 205
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string p0, " but was "

    .line 212
    .line 213
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string p0, " at "

    .line 220
    .line 221
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-wide v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 15
    .line 16
    long-to-int v1, v1

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-object v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->codec:Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    mul-int/lit8 v1, v1, 0x1f

    .line 28
    .line 29
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->isOptional:Z

    .line 30
    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->defaultValue:Ljava/lang/Object;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    add-int/2addr v1, v0

    .line 45
    mul-int/lit8 v1, v1, 0x1f

    .line 46
    .line 47
    iget-boolean p0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->typeHint:Z

    .line 48
    .line 49
    add-int/2addr v1, p0

    .line 50
    return v1
.end method

.method public final matches(Lokhttp3/tls/internal/der/DerHeader;)Z
    .locals 2

    .line 1
    iget v0, p1, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 2
    .line 3
    iget v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-wide v0, p1, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 8
    .line 9
    iget-wide p0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 10
    .line 11
    cmp-long p0, v0, p0

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final optional(Ljava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/16 v2, 0x4f

    .line 4
    .line 5
    invoke-static {p0, v0, v1, p1, v2}, Lokhttp3/tls/internal/der/BasicDerAdapter;->copy$default(Lokhttp3/tls/internal/der/BasicDerAdapter;JLjava/lang/Object;I)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final toDer(Landroidx/compose/runtime/Latch;Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->typeHint:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->isOptional:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->defaultValue:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance v6, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    const/16 v0, 0x11

    .line 37
    .line 38
    invoke-direct {v6, p0, p1, p2, v0}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->name:Ljava/lang/String;

    .line 42
    .line 43
    iget v3, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 44
    .line 45
    iget-wide v4, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 46
    .line 47
    move-object v1, p1

    .line 48
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/runtime/Latch;->write(Ljava/lang/String;IJLkotlin/jvm/functions/Function1;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " ["

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tagClass:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x2f

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter;->tag:J

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 p0, 0x5d

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final synthetic withExplicitBox(J)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, p1, p2, v1}, Lcoil3/size/ViewSizeResolver$-CC;->$default$withExplicitBox(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
