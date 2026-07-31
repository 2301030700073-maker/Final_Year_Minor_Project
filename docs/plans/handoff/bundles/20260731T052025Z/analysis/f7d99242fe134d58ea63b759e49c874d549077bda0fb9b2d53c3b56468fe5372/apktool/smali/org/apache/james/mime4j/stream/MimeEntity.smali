.class public final Lorg/apache/james/mime4j/stream/MimeEntity;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/apache/james/mime4j/stream/EntityStateMachine;


# static fields
.field public static final _recyclerRef:Ljava/lang/ThreadLocal;


# instance fields
.field public body:Lcom/eygraber/uri/Uri$Builder;

.field public final bodyDescBuilder:Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

.field public final config:Lorg/apache/james/mime4j/stream/MimeConfig;

.field public currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

.field public dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

.field public endOfHeader:Z

.field public final endState:I

.field public field:Lorg/apache/james/mime4j/stream/RawField;

.field public final fieldBuilder:Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

.field public headerCount:I

.field public final inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field public lineCount:I

.field public final linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field public final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field public recursionMode:I

.field public state:I

.field public tmpbuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/james/mime4j/stream/MimeEntity;->_recyclerRef:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;IILorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 5
    .line 6
    iput p3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 7
    .line 8
    iput p4, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endState:I

    .line 9
    .line 10
    iput-object p5, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 11
    .line 12
    iput-object p6, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->fieldBuilder:Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

    .line 13
    .line 14
    iput-object p7, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

    .line 15
    .line 16
    new-instance p3, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 17
    .line 18
    const/16 p4, 0x40

    .line 19
    .line 20
    invoke-direct {p3, p4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object p3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    iput p3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->lineCount:I

    .line 27
    .line 28
    iput-boolean p3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->endOfHeader:Z

    .line 29
    .line 30
    iput p3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->headerCount:I

    .line 31
    .line 32
    new-instance p3, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 33
    .line 34
    iget p4, p2, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 35
    .line 36
    invoke-direct {p3, p1, p4}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 40
    .line 41
    new-instance p1, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 42
    .line 43
    iget p2, p2, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 44
    .line 45
    invoke-direct {p1, p3, p2}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 49
    .line 50
    return-void
.end method

.method public static getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/stream/MimeEntity;->_recyclerRef:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 18
    .line 19
    :goto_0
    if-nez v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 22
    .line 23
    invoke-direct {v1}, Lorg/apache/james/mime4j/util/BufferRecycler;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-object v1
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p0, "Unknown"

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "End of stream"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "Body"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "End bodypart"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "Start bodypart"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "Epilogue"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "Preamble"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "End multipart"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    const-string p0, "Start multipart"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_8
    const-string p0, "End header"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_9
    const-string p0, "Field"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_a
    const-string p0, "Start header"

    .line 42
    .line 43
    return-object p0

    .line 44
    :pswitch_b
    const-string p0, "Raw entity"

    .line 45
    .line 46
    return-object p0

    .line 47
    :pswitch_c
    const-string p0, "End message"

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_d
    const-string p0, "Start message"

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final advance()Lorg/apache/james/mime4j/stream/EntityStateMachine;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x4

    .line 11
    if-eqz v1, :cond_22

    .line 12
    .line 13
    const/16 v4, 0xc

    .line 14
    .line 15
    iget v5, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->endState:I

    .line 16
    .line 17
    if-eq v1, v4, :cond_2

    .line 18
    .line 19
    const/16 v6, 0xa

    .line 20
    .line 21
    const/16 v7, 0x9

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x1

    .line 25
    const/16 v10, 0x8

    .line 26
    .line 27
    const/16 v11, 0xd

    .line 28
    .line 29
    iget-object v12, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

    .line 30
    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    iget v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 35
    .line 36
    if-ne v1, v5, :cond_1

    .line 37
    .line 38
    const/16 v1, 0xe

    .line 39
    .line 40
    iput v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 41
    .line 42
    :cond_0
    :goto_0
    move-object/from16 v16, v2

    .line 43
    .line 44
    goto/16 :goto_13

    .line 45
    .line 46
    :cond_1
    invoke-static {v1}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "Invalid state: "

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    :pswitch_0
    iput v3, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    :pswitch_1
    move-object/from16 v16, v2

    .line 64
    .line 65
    goto/16 :goto_12

    .line 66
    .line 67
    :pswitch_2
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 68
    .line 69
    iget-boolean v1, v1, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->used:Z

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->advanceToBoundary()V

    .line 74
    .line 75
    .line 76
    iput v10, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->createMimePartStream()V

    .line 80
    .line 81
    .line 82
    iput v7, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 83
    .line 84
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 85
    .line 86
    iget v1, v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->initialLength:I

    .line 87
    .line 88
    if-nez v1, :cond_0

    .line 89
    .line 90
    :pswitch_3
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->advanceToBoundary()V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 94
    .line 95
    iget-boolean v3, v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof:Z

    .line 96
    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    iget-object v1, v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 100
    .line 101
    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-lez v1, :cond_4

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 109
    .line 110
    iget-boolean v1, v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    .line 111
    .line 112
    if-nez v1, :cond_5

    .line 113
    .line 114
    sget-object v1, Lorg/apache/james/mime4j/stream/Event;->MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor(Lorg/apache/james/mime4j/stream/Event;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    :goto_1
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 121
    .line 122
    iget-boolean v1, v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->lastPart:Z

    .line 123
    .line 124
    if-nez v1, :cond_6

    .line 125
    .line 126
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->clearMimePartStream()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->createMimePartStream()V

    .line 130
    .line 131
    .line 132
    const/16 v1, 0xb

    .line 133
    .line 134
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 135
    .line 136
    invoke-virtual {v0, v1, v4, v2}, Lorg/apache/james/mime4j/stream/MimeEntity;->nextMimeEntity(IILjava/io/InputStream;)Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0

    .line 141
    :cond_6
    :goto_2
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 142
    .line 143
    iget-boolean v3, v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->completed:Z

    .line 144
    .line 145
    if-eqz v3, :cond_8

    .line 146
    .line 147
    iget-object v1, v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->buffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 148
    .line 149
    invoke-virtual {v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->bufferLen()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-lez v1, :cond_7

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_7
    move v8, v9

    .line 157
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->clearMimePartStream()V

    .line 158
    .line 159
    .line 160
    iput v6, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 161
    .line 162
    if-nez v8, :cond_9

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_9
    :pswitch_4
    iput v10, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :pswitch_5
    iget-object v1, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v4, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v5, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v6, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 175
    .line 176
    const-string v7, "text"

    .line 177
    .line 178
    if-nez v1, :cond_a

    .line 179
    .line 180
    iget-object v1, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    .line 181
    .line 182
    sget v4, Lorg/apache/james/mime4j/util/MimeUtil;->$r8$clinit:I

    .line 183
    .line 184
    if-eqz v1, :cond_b

    .line 185
    .line 186
    const-string v4, "multipart/digest"

    .line 187
    .line 188
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_b

    .line 193
    .line 194
    const-string v1, "message/rfc822"

    .line 195
    .line 196
    const-string v4, "message"

    .line 197
    .line 198
    const-string v5, "rfc822"

    .line 199
    .line 200
    :cond_a
    move-object v14, v1

    .line 201
    move-object v15, v4

    .line 202
    move-object/from16 v16, v5

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_b
    const-string v1, "text/plain"

    .line 206
    .line 207
    const-string v5, "plain"

    .line 208
    .line 209
    move-object v14, v1

    .line 210
    move-object/from16 v16, v5

    .line 211
    .line 212
    move-object v15, v7

    .line 213
    :goto_4
    if-nez v6, :cond_c

    .line 214
    .line 215
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_c

    .line 220
    .line 221
    const-string/jumbo v6, "us-ascii"

    .line 222
    .line 223
    .line 224
    :cond_c
    move-object/from16 v18, v6

    .line 225
    .line 226
    new-instance v13, Lcom/eygraber/uri/Uri$Builder;

    .line 227
    .line 228
    iget-object v1, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    .line 229
    .line 230
    iget-object v4, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    .line 231
    .line 232
    if-eqz v4, :cond_d

    .line 233
    .line 234
    :goto_5
    move-object/from16 v17, v1

    .line 235
    .line 236
    move-object/from16 v19, v4

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_d
    const-string v4, "7bit"

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :goto_6
    invoke-direct/range {v13 .. v19}, Lcom/eygraber/uri/Uri$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iput-object v13, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lcom/eygraber/uri/Uri$Builder;

    .line 246
    .line 247
    iget v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:I

    .line 248
    .line 249
    if-ne v1, v3, :cond_e

    .line 250
    .line 251
    iput v11, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :cond_e
    sget v1, Lorg/apache/james/mime4j/util/MimeUtil;->$r8$clinit:I

    .line 256
    .line 257
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    const-string v3, "multipart/"

    .line 262
    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_f

    .line 268
    .line 269
    const/4 v1, 0x7

    .line 270
    iput v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 271
    .line 272
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeEntity;->clearMimePartStream()V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_f
    iget v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:I

    .line 278
    .line 279
    const/4 v3, 0x2

    .line 280
    if-eq v1, v3, :cond_13

    .line 281
    .line 282
    invoke-static {v14}, Lorg/apache/james/mime4j/util/MimeUtil;->isMessage(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_13

    .line 287
    .line 288
    iput v11, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 289
    .line 290
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 291
    .line 292
    if-eqz v1, :cond_10

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_10
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 296
    .line 297
    :goto_7
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lcom/eygraber/uri/Uri$Builder;

    .line 298
    .line 299
    iget-object v2, v2, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v2, Ljava/lang/String;

    .line 302
    .line 303
    sget v4, Lorg/apache/james/mime4j/util/MimeUtil;->$r8$clinit:I

    .line 304
    .line 305
    const-string v4, "base64"

    .line 306
    .line 307
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    iget-object v5, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 312
    .line 313
    if-eqz v4, :cond_11

    .line 314
    .line 315
    new-instance v2, Lorg/apache/james/mime4j/codec/Base64InputStream;

    .line 316
    .line 317
    invoke-direct {v2, v1, v5, v8}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;I)V

    .line 318
    .line 319
    .line 320
    :goto_8
    move-object v1, v2

    .line 321
    goto :goto_9

    .line 322
    :cond_11
    const-string v4, "quoted-printable"

    .line 323
    .line 324
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_12

    .line 329
    .line 330
    new-instance v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    .line 331
    .line 332
    invoke-direct {v2, v1, v5, v8}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/codec/DecodeMonitor;I)V

    .line 333
    .line 334
    .line 335
    goto :goto_8

    .line 336
    :cond_12
    :goto_9
    invoke-virtual {v0, v9, v3, v1}, Lorg/apache/james/mime4j/stream/MimeEntity;->nextMimeEntity(IILjava/io/InputStream;)Lorg/apache/james/mime4j/stream/EntityStateMachine;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    return-object v0

    .line 341
    :cond_13
    iput v11, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 342
    .line 343
    goto/16 :goto_0

    .line 344
    .line 345
    :pswitch_6
    iput-object v2, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 346
    .line 347
    iput-object v2, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 348
    .line 349
    iput-object v2, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 350
    .line 351
    iput-object v2, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    .line 352
    .line 353
    iput-object v2, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 354
    .line 355
    iput-object v2, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    .line 356
    .line 357
    const-wide/16 v3, -0x1

    .line 358
    .line 359
    iput-wide v3, v12, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J

    .line 360
    .line 361
    :pswitch_7
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 362
    .line 363
    iget v1, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 364
    .line 365
    :goto_a
    iget-boolean v3, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->endOfHeader:Z

    .line 366
    .line 367
    if-eqz v3, :cond_14

    .line 368
    .line 369
    const/4 v1, 0x6

    .line 370
    move-object/from16 v16, v2

    .line 371
    .line 372
    goto/16 :goto_11

    .line 373
    .line 374
    :cond_14
    const-string v4, ") exceeded"

    .line 375
    .line 376
    if-lez v1, :cond_16

    .line 377
    .line 378
    iget v5, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->headerCount:I

    .line 379
    .line 380
    if-ge v5, v1, :cond_15

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_15
    new-instance v0, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    .line 384
    .line 385
    const-string v2, "Maximum header limit ("

    .line 386
    .line 387
    invoke-static {v1, v2, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw v0

    .line 395
    :cond_16
    :goto_b
    iget v5, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->headerCount:I

    .line 396
    .line 397
    add-int/2addr v5, v9

    .line 398
    iput v5, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->headerCount:I

    .line 399
    .line 400
    iget-object v5, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->fieldBuilder:Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

    .line 401
    .line 402
    iget-object v10, v5, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lde/cketti/changelog/XmlParser;

    .line 403
    .line 404
    iput v8, v10, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 405
    .line 406
    iget-object v10, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 407
    .line 408
    if-nez v3, :cond_21

    .line 409
    .line 410
    iget-object v3, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 411
    .line 412
    :goto_c
    :try_start_0
    iget v13, v10, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 413
    .line 414
    if-lez v13, :cond_1a

    .line 415
    .line 416
    iget-object v13, v5, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->buf:Lde/cketti/changelog/XmlParser;

    .line 417
    .line 418
    iget v14, v5, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->maxlen:I

    .line 419
    .line 420
    if-nez v10, :cond_17

    .line 421
    .line 422
    goto :goto_e

    .line 423
    :cond_17
    iget v15, v10, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 424
    .line 425
    if-lez v14, :cond_19

    .line 426
    .line 427
    move-object/from16 v16, v2

    .line 428
    .line 429
    iget v2, v13, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 430
    .line 431
    add-int/2addr v2, v15

    .line 432
    if-ge v2, v14, :cond_18

    .line 433
    .line 434
    goto :goto_d

    .line 435
    :cond_18
    new-instance v0, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    .line 436
    .line 437
    const-string v1, "Maximum header length limit ("

    .line 438
    .line 439
    invoke-static {v14, v1, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw v0

    .line 447
    :cond_19
    move-object/from16 v16, v2

    .line 448
    .line 449
    :goto_d
    iget-object v2, v10, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer:[B

    .line 450
    .line 451
    invoke-virtual {v13, v2, v8, v15}, Lde/cketti/changelog/XmlParser;->append([BII)V

    .line 452
    .line 453
    .line 454
    goto :goto_f

    .line 455
    :cond_1a
    :goto_e
    move-object/from16 v16, v2

    .line 456
    .line 457
    :goto_f
    iput v8, v10, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 458
    .line 459
    invoke-virtual {v3, v10}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    const/4 v13, -0x1

    .line 464
    if-ne v2, v13, :cond_1b

    .line 465
    .line 466
    sget-object v2, Lorg/apache/james/mime4j/stream/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/stream/Event;

    .line 467
    .line 468
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor(Lorg/apache/james/mime4j/stream/Event;)V

    .line 469
    .line 470
    .line 471
    iput-boolean v9, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->endOfHeader:Z

    .line 472
    .line 473
    goto :goto_10

    .line 474
    :cond_1b
    iget v2, v10, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 475
    .line 476
    if-lez v2, :cond_1c

    .line 477
    .line 478
    add-int/lit8 v13, v2, -0x1

    .line 479
    .line 480
    invoke-virtual {v10, v13}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    if-ne v13, v6, :cond_1c

    .line 485
    .line 486
    add-int/lit8 v2, v2, -0x1

    .line 487
    .line 488
    :cond_1c
    if-lez v2, :cond_1d

    .line 489
    .line 490
    add-int/lit8 v13, v2, -0x1

    .line 491
    .line 492
    invoke-virtual {v10, v13}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    .line 493
    .line 494
    .line 495
    move-result v13

    .line 496
    if-ne v13, v11, :cond_1d

    .line 497
    .line 498
    add-int/lit8 v2, v2, -0x1

    .line 499
    .line 500
    :cond_1d
    if-nez v2, :cond_1e

    .line 501
    .line 502
    iput-boolean v9, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->endOfHeader:Z

    .line 503
    .line 504
    goto :goto_10

    .line 505
    :cond_1e
    iget v2, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->lineCount:I

    .line 506
    .line 507
    add-int/2addr v2, v9

    .line 508
    iput v2, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->lineCount:I

    .line 509
    .line 510
    if-le v2, v9, :cond_20

    .line 511
    .line 512
    invoke-virtual {v10, v8}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    .line 513
    .line 514
    .line 515
    move-result v2
    :try_end_0
    .catch Lorg/apache/james/mime4j/io/MaxLineLimitException; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    const/16 v13, 0x20

    .line 517
    .line 518
    if-eq v2, v13, :cond_20

    .line 519
    .line 520
    if-eq v2, v7, :cond_20

    .line 521
    .line 522
    :goto_10
    :try_start_1
    invoke-virtual {v5}, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;->build()Lorg/apache/james/mime4j/stream/RawField;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    iget v3, v2, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 527
    .line 528
    iget-object v4, v2, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v4, Ljava/lang/String;

    .line 531
    .line 532
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    if-eq v3, v4, :cond_1f

    .line 537
    .line 538
    sget-object v3, Lorg/apache/james/mime4j/stream/Event;->OBSOLETE_HEADER:Lorg/apache/james/mime4j/stream/Event;

    .line 539
    .line 540
    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor(Lorg/apache/james/mime4j/stream/Event;)V

    .line 541
    .line 542
    .line 543
    :cond_1f
    invoke-virtual {v12, v2}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->addField(Lorg/apache/james/mime4j/stream/RawField;)V

    .line 544
    .line 545
    .line 546
    iput-object v2, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->field:Lorg/apache/james/mime4j/stream/RawField;
    :try_end_1
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 547
    .line 548
    const/4 v1, 0x5

    .line 549
    :goto_11
    iput v1, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 550
    .line 551
    goto :goto_13

    .line 552
    :catch_0
    sget-object v2, Lorg/apache/james/mime4j/stream/Event;->INVALID_HEADER:Lorg/apache/james/mime4j/stream/Event;

    .line 553
    .line 554
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor(Lorg/apache/james/mime4j/stream/Event;)V

    .line 555
    .line 556
    .line 557
    move-object/from16 v2, v16

    .line 558
    .line 559
    goto/16 :goto_a

    .line 560
    .line 561
    :cond_20
    move-object/from16 v2, v16

    .line 562
    .line 563
    goto/16 :goto_c

    .line 564
    .line 565
    :catch_1
    move-exception v0

    .line 566
    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    .line 567
    .line 568
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 569
    .line 570
    .line 571
    throw v1

    .line 572
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 573
    .line 574
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 575
    .line 576
    .line 577
    throw v0

    .line 578
    :goto_12
    iput v5, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 579
    .line 580
    goto :goto_13

    .line 581
    :cond_22
    move-object/from16 v16, v2

    .line 582
    .line 583
    iput v3, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 584
    .line 585
    :goto_13
    return-object v16

    .line 586
    nop

    .line 587
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final advanceToBoundary()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->tmpbuf:[B

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lorg/apache/james/mime4j/stream/MimeEntity;->getBufferRecycler()Lorg/apache/james/mime4j/util/BufferRecycler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/16 v2, 0x800

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/apache/james/mime4j/util/BufferRecycler;->allocByteBuffer(II)[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->tmpbuf:[B

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 30
    .line 31
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->tmpbuf:[B

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, -0x1

    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final clearMimePartStream()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 3
    .line 4
    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 7
    .line 8
    iget v1, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 11
    .line 12
    invoke-direct {v0, v2, v1}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 16
    .line 17
    return-void
.end method

.method public final createMimePartStream()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lcom/eygraber/uri/Uri$Builder;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 12
    .line 13
    iget-object v3, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3, v1}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;-><init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    new-instance v1, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 24
    .line 25
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->currentMimePartStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    .line 26
    .line 27
    iget v0, v0, Lorg/apache/james/mime4j/stream/MimeConfig;->maxLineLen:I

    .line 28
    .line 29
    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_0
    new-instance p0, Lorg/apache/james/mime4j/MimeException;

    .line 47
    .line 48
    const-string v0, "Multipart body does not have a valid boundary"

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final getBodyDescriptor()Lcom/eygraber/uri/Uri$Builder;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x6

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0xc

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/16 v1, 0xd

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 28
    .line 29
    invoke-static {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v0, "Invalid state :"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :cond_1
    :goto_0
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lcom/eygraber/uri/Uri$Builder;

    .line 45
    .line 46
    return-object p0
.end method

.method public final getContentStream()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x6

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    const/16 v1, 0xc

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x9

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 24
    .line 25
    invoke-static {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Invalid state: "

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    .line 46
    .line 47
    return-object p0
.end method

.method public final getField()Lorg/apache/james/mime4j/stream/Field;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->field:Lorg/apache/james/mime4j/stream/RawField;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 14
    .line 15
    invoke-static {p0}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "Invalid state :"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public final getState()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 2
    .line 3
    return p0
.end method

.method public final monitor(Lorg/apache/james/mime4j/stream/Event;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    instance-of p0, p0, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/apache/james/mime4j/stream/Event;->code:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final nextMimeEntity(IILjava/io/InputStream;)Lorg/apache/james/mime4j/stream/EntityStateMachine;
    .locals 8

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    new-instance p0, Lorg/apache/james/mime4j/stream/RawEntity;

    .line 7
    .line 8
    invoke-direct {p0, p3}, Lorg/apache/james/mime4j/stream/RawEntity;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/stream/MimeEntity;

    .line 13
    .line 14
    new-instance v7, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->bodyDescBuilder:Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

    .line 17
    .line 18
    iget-object v2, v1, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, v1, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 21
    .line 22
    invoke-direct {v7, v2, v1}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->config:Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 26
    .line 27
    iget-object v5, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 28
    .line 29
    iget-object v6, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->fieldBuilder:Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

    .line 30
    .line 31
    move v3, p1

    .line 32
    move v4, p2

    .line 33
    move-object v1, p3

    .line 34
    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/stream/MimeEntity;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/stream/MimeConfig;IILorg/apache/james/mime4j/codec/DecodeMonitor;Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;)V

    .line 35
    .line 36
    .line 37
    iget p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:I

    .line 38
    .line 39
    iput p0, v0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:I

    .line 40
    .line 41
    return-object v0
.end method

.method public final setRecursionMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->recursionMode:I

    .line 2
    .line 3
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
    const-class v1, Lorg/apache/james/mime4j/stream/MimeEntity;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " ["

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->state:I

    .line 21
    .line 22
    invoke-static {v1}, Lorg/apache/james/mime4j/stream/MimeEntity;->stateToString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "]["

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lcom/eygraber/uri/Uri$Builder;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeEntity;->body:Lcom/eygraber/uri/Uri$Builder;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Ljava/lang/String;

    .line 51
    .line 52
    const-string v1, "]"

    .line 53
    .line 54
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
