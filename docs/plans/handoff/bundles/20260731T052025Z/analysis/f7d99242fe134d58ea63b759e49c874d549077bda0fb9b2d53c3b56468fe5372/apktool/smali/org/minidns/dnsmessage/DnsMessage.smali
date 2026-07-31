.class public final Lorg/minidns/dnsmessage/DnsMessage;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field public final additionalSection:Ljava/util/List;

.field public final answerSection:Ljava/util/List;

.field public answersMinTtlCache:J

.field public final authenticData:Z

.field public final authoritativeAnswer:Z

.field public final authoritySection:Ljava/util/List;

.field public byteCache:[B

.field public final checkingDisabled:Z

.field public edns:Lorg/minidns/edns/Edns;

.field public transient hashCodeCache:Ljava/lang/Integer;

.field public final id:I

.field public normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

.field public final opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public final optRrPosition:I

.field public final qr:Z

.field public final questions:Ljava/util/List;

.field public final receiveTimestamp:J

.field public final recursionAvailable:Z

.field public final recursionDesired:Z

.field public final responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public toStringCache:Ljava/lang/String;

.field public final truncated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/dnsmessage/DnsMessage;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage;->LOGGER:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage$Builder;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 7
    .line 8
    iget v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    .line 9
    .line 10
    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 11
    .line 12
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 13
    .line 14
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 15
    .line 16
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 19
    .line 20
    iget-wide v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 21
    .line 22
    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    .line 23
    .line 24
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->query:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    .line 27
    .line 28
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritativeAnswer:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    .line 31
    .line 32
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->truncated:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    .line 35
    .line 36
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionDesired:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    .line 39
    .line 40
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionAvailable:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    .line 43
    .line 44
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authenticData:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    .line 47
    .line 48
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->checkingDisabled:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    .line 51
    .line 52
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 57
    .line 58
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 82
    .line 83
    :goto_0
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/ArrayList;

    .line 84
    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 88
    .line 89
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 93
    .line 94
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 113
    .line 114
    :goto_1
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/ArrayList;

    .line 115
    .line 116
    if-nez v0, :cond_2

    .line 117
    .line 118
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 119
    .line 120
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 124
    .line 125
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    .line 138
    .line 139
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 144
    .line 145
    :goto_2
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/ArrayList;

    .line 146
    .line 147
    const/4 v1, 0x0

    .line 148
    if-nez v0, :cond_3

    .line 149
    .line 150
    iget-object v2, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 151
    .line 152
    if-nez v2, :cond_3

    .line 153
    .line 154
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 155
    .line 156
    iput-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_3
    if-eqz v0, :cond_4

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    goto :goto_3

    .line 166
    :cond_4
    move v0, v1

    .line 167
    :goto_3
    iget-object v2, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 168
    .line 169
    if-eqz v2, :cond_5

    .line 170
    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    .line 173
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/ArrayList;

    .line 179
    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    .line 184
    .line 185
    :cond_6
    iget-object p1, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 186
    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    new-instance v0, Lorg/minidns/edns/Edns;

    .line 190
    .line 191
    invoke-direct {v0, p1}, Lorg/minidns/edns/Edns;-><init>(Lorg/minidns/edns/Edns$Builder;)V

    .line 192
    .line 193
    .line 194
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->edns:Lorg/minidns/edns/Edns;

    .line 195
    .line 196
    iget-object p1, v0, Lorg/minidns/edns/Edns;->optRecord:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast p1, Lorg/minidns/record/Record;

    .line 199
    .line 200
    if-nez p1, :cond_7

    .line 201
    .line 202
    iget p1, v0, Lorg/minidns/edns/Edns;->flags:I

    .line 203
    .line 204
    int-to-long v7, p1

    .line 205
    new-instance v3, Lorg/minidns/record/Record;

    .line 206
    .line 207
    sget-object v4, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 208
    .line 209
    sget-object v5, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    .line 210
    .line 211
    iget v6, v0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    .line 212
    .line 213
    new-instance v9, Lorg/minidns/record/OPT;

    .line 214
    .line 215
    iget-object p1, v0, Lorg/minidns/edns/Edns;->variablePart:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p1, Ljava/util/List;

    .line 218
    .line 219
    invoke-direct {v9, p1}, Lorg/minidns/record/OPT;-><init>(Ljava/util/List;)V

    .line 220
    .line 221
    .line 222
    invoke-direct/range {v3 .. v9}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;IJLorg/minidns/record/Data;)V

    .line 223
    .line 224
    .line 225
    iput-object v3, v0, Lorg/minidns/edns/Edns;->optRecord:Ljava/lang/Object;

    .line 226
    .line 227
    :cond_7
    iget-object p1, v0, Lorg/minidns/edns/Edns;->optRecord:Ljava/lang/Object;

    .line 228
    .line 229
    check-cast p1, Lorg/minidns/record/Record;

    .line 230
    .line 231
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    :cond_8
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    iput-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 239
    .line 240
    :goto_4
    iget-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 241
    .line 242
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    const/4 v2, -0x1

    .line 247
    if-ge v1, v0, :cond_a

    .line 248
    .line 249
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Lorg/minidns/record/Record;

    .line 254
    .line 255
    iget-object v0, v0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 256
    .line 257
    sget-object v3, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    .line 258
    .line 259
    if-ne v0, v3, :cond_9

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_a
    move v1, v2

    .line 266
    :goto_6
    iput v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    .line 267
    .line 268
    if-eq v1, v2, :cond_c

    .line 269
    .line 270
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 271
    .line 272
    iget-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 273
    .line 274
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    if-ge v1, p1, :cond_c

    .line 279
    .line 280
    iget-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 281
    .line 282
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Lorg/minidns/record/Record;

    .line 287
    .line 288
    iget-object p1, p1, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 289
    .line 290
    sget-object v0, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    .line 291
    .line 292
    if-eq p1, v0, :cond_b

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :cond_b
    const-string p0, "There must be only one OPT pseudo RR in the additional section"

    .line 296
    .line 297
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const/4 p0, 0x0

    .line 301
    throw p0

    .line 302
    :cond_c
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 2

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 344
    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 346
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    .line 347
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 348
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    .line 349
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    .line 350
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    .line 351
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    .line 352
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    .line 353
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    .line 354
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 355
    iget-wide v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    .line 356
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 357
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 358
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 359
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 360
    iget p1, p1, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    iput p1, p0, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 9

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 304
    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 305
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 306
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 308
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    shr-int/lit8 v2, v0, 0xf

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 309
    :goto_0
    iput-boolean v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    shr-int/lit8 v2, v0, 0xb

    const/16 v5, 0xf

    and-int/2addr v2, v5

    .line 310
    sget-object v6, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    const/4 v6, 0x0

    if-ltz v2, :cond_f

    if-gt v2, v5, :cond_f

    .line 311
    sget-object v7, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->INVERSE_LUT:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    array-length v8, v7

    if-lt v2, v8, :cond_1

    move-object v2, v6

    goto :goto_1

    .line 312
    :cond_1
    aget-object v2, v7, v2

    .line 313
    :goto_1
    iput-object v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    shr-int/lit8 v2, v0, 0xa

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    .line 314
    :goto_2
    iput-boolean v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    shr-int/lit8 v2, v0, 0x9

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    move v2, v4

    .line 315
    :goto_3
    iput-boolean v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    shr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    move v2, v4

    .line 316
    :goto_4
    iput-boolean v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    shr-int/lit8 v2, v0, 0x7

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    move v2, v4

    .line 317
    :goto_5
    iput-boolean v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    shr-int/lit8 v2, v0, 0x5

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    move v2, v4

    .line 318
    :goto_6
    iput-boolean v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    shr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    goto :goto_7

    :cond_7
    move v3, v4

    .line 319
    :goto_7
    iput-boolean v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    and-int/2addr v0, v5

    .line 320
    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    if-ltz v0, :cond_e

    const v2, 0xffff

    if-gt v0, v2, :cond_e

    .line 321
    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->INVERSE_LUT:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 322
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    .line 324
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 325
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 326
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 327
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 328
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    move v6, v4

    :goto_8
    if-ge v6, v0, :cond_8

    .line 329
    iget-object v7, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    new-instance v8, Lorg/minidns/dnsmessage/Question;

    invoke-direct {v8, v1, p1}, Lorg/minidns/dnsmessage/Question;-><init>(Ljava/io/DataInputStream;[B)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 330
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    move v0, v4

    :goto_9
    if-ge v0, v2, :cond_9

    .line 331
    iget-object v6, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/minidns/record/Record;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/Record;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 332
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    move v0, v4

    :goto_a
    if-ge v0, v3, :cond_a

    .line 333
    iget-object v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/minidns/record/Record;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/Record;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 334
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    move v0, v4

    .line 335
    :goto_b
    iget-object v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    if-ge v0, v5, :cond_b

    .line 336
    invoke-static {v1, p1}, Lorg/minidns/record/Record;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/Record;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 337
    :cond_b
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_d

    .line 338
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/minidns/record/Record;

    .line 339
    iget-object p1, p1, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v0, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    if-ne p1, v0, :cond_c

    goto :goto_d

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_d
    const/4 v4, -0x1

    .line 340
    :goto_d
    iput v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    return-void

    .line 341
    :cond_e
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    throw v6

    .line 342
    :cond_f
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    throw v6
.end method


# virtual methods
.method public final asBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 4

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 7
    .line 8
    iput-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 9
    .line 10
    sget-object v1, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 11
    .line 12
    iget v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 13
    .line 14
    iput v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    .line 15
    .line 16
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 17
    .line 18
    iput-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 21
    .line 22
    iput-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 23
    .line 24
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    .line 25
    .line 26
    iput-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->query:Z

    .line 27
    .line 28
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    .line 29
    .line 30
    iput-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritativeAnswer:Z

    .line 31
    .line 32
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    .line 33
    .line 34
    iput-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->truncated:Z

    .line 35
    .line 36
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionDesired:Z

    .line 39
    .line 40
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    .line 41
    .line 42
    iput-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionAvailable:Z

    .line 43
    .line 44
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    .line 45
    .line 46
    iput-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authenticData:Z

    .line 47
    .line 48
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    .line 49
    .line 50
    iput-boolean v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->checkingDisabled:Z

    .line 51
    .line 52
    iget-wide v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    .line 53
    .line 54
    iput-wide v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    iget-object v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    .line 71
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iput-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    .line 89
    .line 90
    iget-object v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .line 98
    .line 99
    iput-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    .line 103
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    .line 105
    .line 106
    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .line 114
    .line 115
    iput-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/minidns/dnsmessage/DnsMessage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    if-ne p1, p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Lorg/minidns/dnsmessage/DnsMessage;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final filterAnswerSectionBy(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lorg/minidns/record/Record;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-object v0
.end method

.method public final getAnswersFor(Lorg/minidns/dnsmessage/Question;)Ljava/util/HashSet;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 2
    .line 3
    sget-object v1, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/minidns/record/Record;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lorg/minidns/record/Record;->isAnswer(Lorg/minidns/dnsmessage/Question;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v3, v2, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_1

    .line 50
    .line 51
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-string v5, "DnsMessage contains duplicate answers. Record: "

    .line 62
    .line 63
    const-string v6, "; DnsMessage: "

    .line 64
    .line 65
    invoke-static {v5, v2, v6, v4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sget-object v4, Lorg/minidns/dnsmessage/DnsMessage;->LOGGER:Ljava/util/logging/Logger;

    .line 70
    .line 71
    invoke-virtual {v4, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return-object v0
.end method

.method public final getQuestion()Lorg/minidns/dnsmessage/Question;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Lorg/minidns/dnsmessage/Question;

    .line 9
    .line 10
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->hashCodeCache:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->hashCodeCache:Ljava/lang/Integer;

    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lorg/minidns/dnsmessage/DnsMessage;->hashCodeCache:Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public final serialize()[B
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->byteCache:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 7
    .line 8
    const/16 v1, 0x200

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/io/DataOutputStream;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    const v2, 0x8000

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v3

    .line 28
    :goto_0
    iget-object v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    iget-byte v4, v4, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->value:B

    .line 33
    .line 34
    shl-int/lit8 v4, v4, 0xb

    .line 35
    .line 36
    add-int/2addr v2, v4

    .line 37
    :cond_2
    iget-boolean v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    .line 38
    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    add-int/lit16 v2, v2, 0x400

    .line 42
    .line 43
    :cond_3
    iget-boolean v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    .line 44
    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    add-int/lit16 v2, v2, 0x200

    .line 48
    .line 49
    :cond_4
    iget-boolean v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    .line 50
    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    add-int/lit16 v2, v2, 0x100

    .line 54
    .line 55
    :cond_5
    iget-boolean v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    .line 56
    .line 57
    if-eqz v4, :cond_6

    .line 58
    .line 59
    add-int/lit16 v2, v2, 0x80

    .line 60
    .line 61
    :cond_6
    iget-boolean v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    .line 62
    .line 63
    if-eqz v4, :cond_7

    .line 64
    .line 65
    add-int/lit8 v2, v2, 0x20

    .line 66
    .line 67
    :cond_7
    iget-boolean v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    .line 68
    .line 69
    if-eqz v4, :cond_8

    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x10

    .line 72
    .line 73
    :cond_8
    iget-object v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 74
    .line 75
    if-eqz v4, :cond_9

    .line 76
    .line 77
    iget-byte v4, v4, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->value:B

    .line 78
    .line 79
    add-int/2addr v2, v4

    .line 80
    :cond_9
    :try_start_0
    iget v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 81
    .line 82
    int-to-short v4, v4

    .line 83
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    .line 85
    .line 86
    int-to-short v2, v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 91
    .line 92
    if-nez v2, :cond_a

    .line 93
    .line 94
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    int-to-short v4, v4

    .line 103
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    .line 105
    .line 106
    :goto_1
    iget-object v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 107
    .line 108
    if-nez v4, :cond_b

    .line 109
    .line 110
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    int-to-short v5, v5

    .line 119
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .line 121
    .line 122
    :goto_2
    iget-object v5, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 123
    .line 124
    if-nez v5, :cond_c

    .line 125
    .line 126
    :try_start_3
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    int-to-short v6, v6

    .line 135
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    .line 137
    .line 138
    :goto_3
    iget-object v6, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 139
    .line 140
    if-nez v6, :cond_d

    .line 141
    .line 142
    :try_start_4
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    int-to-short v3, v3

    .line 151
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 152
    .line 153
    .line 154
    :goto_4
    if-eqz v2, :cond_e

    .line 155
    .line 156
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_e

    .line 165
    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Lorg/minidns/dnsmessage/Question;

    .line 171
    .line 172
    invoke-virtual {v3}, Lorg/minidns/dnsmessage/Question;->toByteArray()[B

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_e
    if-eqz v4, :cond_f

    .line 181
    .line 182
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_f

    .line 191
    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Lorg/minidns/record/Record;

    .line 197
    .line 198
    invoke-virtual {v3}, Lorg/minidns/record/Record;->toByteArray()[B

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_f
    if-eqz v5, :cond_10

    .line 207
    .line 208
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_10

    .line 217
    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Lorg/minidns/record/Record;

    .line 223
    .line 224
    invoke-virtual {v3}, Lorg/minidns/record/Record;->toByteArray()[B

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 229
    .line 230
    .line 231
    goto :goto_7

    .line 232
    :cond_10
    if-eqz v6, :cond_11

    .line 233
    .line 234
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    if-eqz v3, :cond_11

    .line 243
    .line 244
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Lorg/minidns/record/Record;

    .line 249
    .line 250
    invoke-virtual {v3}, Lorg/minidns/record/Record;->toByteArray()[B

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 255
    .line 256
    .line 257
    goto :goto_8

    .line 258
    :cond_11
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->byteCache:[B

    .line 266
    .line 267
    return-object v0

    .line 268
    :catch_0
    move-exception p0

    .line 269
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    const/4 p0, 0x0

    .line 273
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->toStringCache:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "DnsMessage"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/DnsMessage;->asBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->writeToStringBuilder(Ljava/lang/StringBuilder;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->toStringCache:Ljava/lang/String;

    .line 25
    .line 26
    return-object v0
.end method
