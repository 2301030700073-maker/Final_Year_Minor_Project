.class public final Lorg/minidns/dnssec/DnssecClient;
.super Lorg/minidns/iterative/ReliableDnsClient;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final rootEntryKey:Ljava/math/BigInteger;


# instance fields
.field public final knownSeps:Lj$/util/concurrent/ConcurrentHashMap;

.field public final stripSignatureRecords:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigInteger;

    .line 2
    .line 3
    const-string v1, "1628686155461064465348252249725010996177649738666492500572664444461532807739744536029771810659241049343994038053541290419968870563183856865780916376571550372513476957870843322273120879361960335192976656756972171258658400305760429696147778001233984421619267530978084631948434496468785021389956803104620471232008587410372348519229650742022804219634190734272506220018657920136902014393834092648785514548876370028925405557661759399901378816916683122474038734912535425670533237815676134840739565610963796427401855723026687073600445461090736240030247906095053875491225879656640052743394090544036297390104110989318819106653199917493"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/minidns/dnssec/DnssecClient;->rootEntryKey:Ljava/math/BigInteger;

    .line 9
    .line 10
    const-string v0, "dlv.isc.org"

    .line 11
    .line 12
    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lorg/minidns/cache/LruCache;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/minidns/iterative/ReliableDnsClient;-><init>(Lorg/minidns/cache/LruCache;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/minidns/dnssec/DnssecClient;->knownSeps:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords:Z

    .line 13
    .line 14
    sget-object p0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 15
    .line 16
    sget-object v0, Lorg/minidns/dnssec/DnssecClient;->rootEntryKey:Ljava/math/BigInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, p0, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static stripSignatureRecords(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lorg/minidns/record/Record;

    .line 32
    .line 33
    iget-object v2, v1, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 34
    .line 35
    sget-object v3, Lorg/minidns/record/Record$TYPE;->RRSIG:Lorg/minidns/record/Record$TYPE;

    .line 36
    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final isResponseAcceptable(Lorg/minidns/dnsmessage/DnsMessage;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p1, Lorg/minidns/dnsmessage/DnsMessage;->edns:Lorg/minidns/edns/Edns;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget p0, p1, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne p0, v1, :cond_1

    .line 11
    .line 12
    move-object p0, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lorg/minidns/record/Record;

    .line 21
    .line 22
    :goto_0
    if-nez p0, :cond_2

    .line 23
    .line 24
    move-object p0, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    new-instance v1, Lorg/minidns/edns/Edns;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lorg/minidns/edns/Edns;-><init>(Lorg/minidns/record/Record;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->edns:Lorg/minidns/edns/Edns;

    .line 32
    .line 33
    move-object p0, v1

    .line 34
    :goto_1
    if-nez p0, :cond_3

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    iget-boolean p0, p0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    .line 39
    .line 40
    :goto_2
    if-nez p0, :cond_4

    .line 41
    .line 42
    const-string p0, "DNSSEC OK (DO) flag not set in response"

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_4
    iget-boolean p0, p1, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    .line 46
    .line 47
    if-nez p0, :cond_5

    .line 48
    .line 49
    const-string p0, "CHECKING DISABLED (CD) flag not set in response"

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_5
    return-object v0
.end method

.method public final newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/minidns/edns/Edns$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/NetworkDataSource;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const/16 p0, 0x4d0

    .line 20
    .line 21
    iput p0, v0, Lorg/minidns/edns/Edns$Builder;->udpPayloadSize:I

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    iput-boolean p0, v0, Lorg/minidns/edns/Edns$Builder;->dnssecOk:Z

    .line 25
    .line 26
    iput-boolean p0, p1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->checkingDisabled:Z

    .line 27
    .line 28
    return-object p1
.end method

.method public final queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/jsoup/internal/SoftPool;
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage;->LOGGER:Ljava/util/logging/Logger;

    .line 4
    .line 5
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 11
    .line 12
    iput-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 13
    .line 14
    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 15
    .line 16
    iput-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 17
    .line 18
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    iput-wide v2, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/ArrayList;

    .line 29
    .line 30
    move-object/from16 v4, p1

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v2, v1, Lorg/minidns/AbstractDnsClient;->random:Ljava/security/SecureRandom;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const v4, 0xffff

    .line 42
    .line 43
    .line 44
    and-int/2addr v2, v4

    .line 45
    iput v2, v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lorg/minidns/AbstractDnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v4, 0x0

    .line 55
    if-nez v2, :cond_0

    .line 56
    .line 57
    return-object v4

    .line 58
    :cond_0
    iget-object v0, v2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v5, v0

    .line 61
    check-cast v5, Lorg/minidns/dnsmessage/DnsMessage;

    .line 62
    .line 63
    invoke-virtual {v5}, Lorg/minidns/dnsmessage/DnsMessage;->asBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    iget-object v7, v5, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 68
    .line 69
    iget-object v8, v5, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 70
    .line 71
    iget-object v0, v5, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    const/4 v11, 0x0

    .line 78
    if-nez v9, :cond_17

    .line 79
    .line 80
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object v9, v0

    .line 85
    check-cast v9, Lorg/minidns/dnsmessage/Question;

    .line 86
    .line 87
    new-instance v12, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v9, v8, v12}, Lorg/minidns/dnssec/DnssecClient;->verifySignatures(Lorg/minidns/dnsmessage/Question;Ljava/util/Collection;Ljava/util/ArrayList;)Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    iget-object v14, v13, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/HashSet;

    .line 104
    .line 105
    invoke-virtual {v14}, Ljava/util/HashSet;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    move-object/from16 v20, v2

    .line 112
    .line 113
    move-object/from16 v22, v5

    .line 114
    .line 115
    move-object/from16 v24, v6

    .line 116
    .line 117
    move-object/from16 v25, v7

    .line 118
    .line 119
    move-object/from16 v23, v8

    .line 120
    .line 121
    goto/16 :goto_7

    .line 122
    .line 123
    :cond_1
    new-instance v15, Ljava/util/HashSet;

    .line 124
    .line 125
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v16

    .line 132
    move/from16 v17, v11

    .line 133
    .line 134
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_12

    .line 139
    .line 140
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lorg/minidns/record/Record;

    .line 145
    .line 146
    const-class v4, Lorg/minidns/record/DNSKEY;

    .line 147
    .line 148
    invoke-virtual {v0, v4}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    if-nez v4, :cond_2

    .line 153
    .line 154
    const/4 v4, 0x0

    .line 155
    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, v4, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 157
    .line 158
    check-cast v0, Lorg/minidns/record/DNSKEY;

    .line 159
    .line 160
    new-instance v10, Ljava/util/HashSet;

    .line 161
    .line 162
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 163
    .line 164
    .line 165
    new-instance v18, Ljava/util/HashSet;

    .line 166
    .line 167
    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-object v3, v4, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 171
    .line 172
    iget-object v11, v1, Lorg/minidns/dnssec/DnssecClient;->knownSeps:Lj$/util/concurrent/ConcurrentHashMap;

    .line 173
    .line 174
    invoke-virtual {v11, v3}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v20

    .line 178
    move-object/from16 v21, v12

    .line 179
    .line 180
    sget-object v12, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 181
    .line 182
    if-eqz v20, :cond_4

    .line 183
    .line 184
    invoke-virtual {v11, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    check-cast v3, [B

    .line 189
    .line 190
    iget-object v0, v0, Lorg/minidns/record/DNSKEY;->key:[B

    .line 191
    .line 192
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_3

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_3
    new-instance v0, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;

    .line 200
    .line 201
    const/4 v3, 0x0

    .line 202
    invoke-direct {v0, v3, v4}, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;-><init>(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :goto_1
    move-object/from16 v20, v2

    .line 209
    .line 210
    move-object/from16 v22, v5

    .line 211
    .line 212
    move-object/from16 v24, v6

    .line 213
    .line 214
    move-object/from16 v25, v7

    .line 215
    .line 216
    move-object/from16 v23, v8

    .line 217
    .line 218
    goto/16 :goto_5

    .line 219
    .line 220
    :cond_4
    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    if-eqz v11, :cond_5

    .line 225
    .line 226
    new-instance v0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoRootSecureEntryPointReason;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_1

    .line 235
    :cond_5
    sget-object v11, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    .line 236
    .line 237
    move-object/from16 v20, v2

    .line 238
    .line 239
    new-instance v2, Lorg/minidns/dnsmessage/Question;

    .line 240
    .line 241
    sget-object v22, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    .line 242
    .line 243
    sget-object v22, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 244
    .line 245
    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v22

    .line 249
    move-object/from16 v23, v8

    .line 250
    .line 251
    invoke-static/range {v22 .. v22}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    move-object/from16 v22, v5

    .line 256
    .line 257
    const/4 v5, 0x0

    .line 258
    invoke-direct {v2, v8, v11, v5}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/jsoup/internal/SoftPool;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    iget-object v5, v2, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v5, Ljava/util/Set;

    .line 268
    .line 269
    invoke-interface {v10, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 270
    .line 271
    .line 272
    iget-object v5, v2, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v5, Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 275
    .line 276
    iget-object v5, v5, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v5, Lorg/minidns/dnsmessage/DnsMessage;

    .line 279
    .line 280
    const-class v8, Lorg/minidns/record/DS;

    .line 281
    .line 282
    invoke-virtual {v5, v8}, Lorg/minidns/dnsmessage/DnsMessage;->filterAnswerSectionBy(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v8

    .line 294
    if-eqz v8, :cond_7

    .line 295
    .line 296
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v8

    .line 300
    check-cast v8, Lorg/minidns/record/Record;

    .line 301
    .line 302
    iget-object v8, v8, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 303
    .line 304
    check-cast v8, Lorg/minidns/record/DS;

    .line 305
    .line 306
    invoke-virtual {v0}, Lorg/minidns/record/DNSKEY;->getKeyTag()I

    .line 307
    .line 308
    .line 309
    move-result v11

    .line 310
    move-object/from16 v24, v5

    .line 311
    .line 312
    iget v5, v8, Lorg/minidns/record/DelegatingDnssecRR;->keyTag:I

    .line 313
    .line 314
    if-ne v11, v5, :cond_6

    .line 315
    .line 316
    iget-object v2, v2, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 317
    .line 318
    move-object/from16 v18, v2

    .line 319
    .line 320
    check-cast v18, Ljava/util/Set;

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_6
    move-object/from16 v5, v24

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_7
    const/4 v8, 0x0

    .line 327
    :goto_3
    if-nez v8, :cond_8

    .line 328
    .line 329
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v11, "There is no DS record for \'"

    .line 336
    .line 337
    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v2, "\', server gives empty result"

    .line 344
    .line 345
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v12, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :cond_8
    if-eqz v8, :cond_e

    .line 356
    .line 357
    iget-object v2, v8, Lorg/minidns/record/DelegatingDnssecRR;->digestType:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 358
    .line 359
    sget-object v5, Lorg/minidns/dnssec/Verifier;->algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    .line 360
    .line 361
    iget-object v11, v8, Lorg/minidns/record/DelegatingDnssecRR;->digest:[B

    .line 362
    .line 363
    iget-object v5, v5, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->dsDigestMap:Ljava/util/HashMap;

    .line 364
    .line 365
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    check-cast v5, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;

    .line 370
    .line 371
    if-nez v5, :cond_9

    .line 372
    .line 373
    new-instance v0, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;

    .line 374
    .line 375
    iget-byte v2, v8, Lorg/minidns/record/DelegatingDnssecRR;->digestTypeByte:B

    .line 376
    .line 377
    sget-object v3, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    .line 378
    .line 379
    invoke-direct {v0, v2, v3, v4}, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;-><init>(BLorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record;)V

    .line 380
    .line 381
    .line 382
    move-object/from16 v24, v6

    .line 383
    .line 384
    move-object/from16 v25, v7

    .line 385
    .line 386
    goto/16 :goto_4

    .line 387
    .line 388
    :cond_9
    invoke-virtual {v0}, Lorg/minidns/record/Data;->setBytes()V

    .line 389
    .line 390
    .line 391
    iget-object v0, v0, Lorg/minidns/record/Data;->bytes:[B

    .line 392
    .line 393
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, [B

    .line 398
    .line 399
    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired$1()V

    .line 400
    .line 401
    .line 402
    iget-object v3, v3, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 403
    .line 404
    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    check-cast v3, [B

    .line 409
    .line 410
    move-object/from16 v24, v6

    .line 411
    .line 412
    array-length v6, v3

    .line 413
    move/from16 v25, v6

    .line 414
    .line 415
    array-length v6, v0

    .line 416
    add-int v6, v25, v6

    .line 417
    .line 418
    new-array v6, v6, [B

    .line 419
    .line 420
    array-length v1, v3

    .line 421
    move-object/from16 v25, v7

    .line 422
    .line 423
    const/4 v7, 0x0

    .line 424
    invoke-static {v3, v7, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    .line 426
    .line 427
    array-length v1, v3

    .line 428
    array-length v3, v0

    .line 429
    invoke-static {v0, v7, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    .line 431
    .line 432
    :try_start_0
    iget-object v0, v5, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;->md:Ljava/security/MessageDigest;

    .line 433
    .line 434
    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    .line 435
    .line 436
    .line 437
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    invoke-static {v11, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-nez v1, :cond_c

    .line 443
    .line 444
    new-instance v1, Ljava/math/BigInteger;

    .line 445
    .line 446
    const/4 v2, 0x1

    .line 447
    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 448
    .line 449
    .line 450
    const/16 v0, 0x10

    .line 451
    .line 452
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 457
    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    iget-object v5, v8, Lorg/minidns/record/DelegatingDnssecRR;->digestHexCache:Ljava/lang/String;

    .line 471
    .line 472
    if-nez v5, :cond_b

    .line 473
    .line 474
    iget-object v5, v8, Lorg/minidns/record/DelegatingDnssecRR;->digestBigIntCache:Ljava/math/BigInteger;

    .line 475
    .line 476
    if-nez v5, :cond_a

    .line 477
    .line 478
    new-instance v5, Ljava/math/BigInteger;

    .line 479
    .line 480
    const/4 v6, 0x1

    .line 481
    invoke-direct {v5, v6, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 482
    .line 483
    .line 484
    iput-object v5, v8, Lorg/minidns/record/DelegatingDnssecRR;->digestBigIntCache:Ljava/math/BigInteger;

    .line 485
    .line 486
    :cond_a
    iget-object v5, v8, Lorg/minidns/record/DelegatingDnssecRR;->digestBigIntCache:Ljava/math/BigInteger;

    .line 487
    .line 488
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    iput-object v0, v8, Lorg/minidns/record/DelegatingDnssecRR;->digestHexCache:Ljava/lang/String;

    .line 497
    .line 498
    :cond_b
    iget-object v0, v8, Lorg/minidns/record/DelegatingDnssecRR;->digestHexCache:Ljava/lang/String;

    .line 499
    .line 500
    const-string v2, " does not match. Digest of delegating DNSSEC RR "

    .line 501
    .line 502
    const-string v5, " is \'"

    .line 503
    .line 504
    const-string v6, "Digest for "

    .line 505
    .line 506
    invoke-static {v6, v3, v2, v4, v5}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string v0, "\' while we calculated \'"

    .line 514
    .line 515
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const-string v0, "\'"

    .line 522
    .line 523
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    new-instance v1, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 531
    .line 532
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    throw v1

    .line 536
    :cond_c
    const/4 v0, 0x0

    .line 537
    goto :goto_4

    .line 538
    :catch_0
    move-exception v0

    .line 539
    new-instance v1, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;

    .line 540
    .line 541
    invoke-direct {v1, v2, v4, v0}, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmExceptionThrownReason;-><init>(Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;Lorg/minidns/record/Record;Ljava/lang/Exception;)V

    .line 542
    .line 543
    .line 544
    move-object v0, v1

    .line 545
    :goto_4
    if-eqz v0, :cond_d

    .line 546
    .line 547
    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    goto :goto_5

    .line 551
    :cond_d
    move-object/from16 v10, v18

    .line 552
    .line 553
    goto :goto_5

    .line 554
    :cond_e
    move-object/from16 v24, v6

    .line 555
    .line 556
    move-object/from16 v25, v7

    .line 557
    .line 558
    invoke-virtual {v10}, Ljava/util/HashSet;->isEmpty()Z

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    if-eqz v0, :cond_f

    .line 563
    .line 564
    new-instance v0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;

    .line 565
    .line 566
    const/4 v5, 0x0

    .line 567
    invoke-direct {v0, v5, v3}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;-><init>(ILorg/minidns/dnsname/DnsName;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 571
    .line 572
    .line 573
    :cond_f
    :goto_5
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_10

    .line 578
    .line 579
    const/16 v17, 0x1

    .line 580
    .line 581
    goto :goto_6

    .line 582
    :cond_10
    invoke-interface {v15, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 583
    .line 584
    .line 585
    :goto_6
    iget-boolean v0, v13, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    .line 586
    .line 587
    if-nez v0, :cond_11

    .line 588
    .line 589
    const-string v0, "SEP key is not self-signed."

    .line 590
    .line 591
    invoke-virtual {v12, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    :cond_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 595
    .line 596
    .line 597
    move-object/from16 v1, p0

    .line 598
    .line 599
    move-object/from16 v2, v20

    .line 600
    .line 601
    move-object/from16 v12, v21

    .line 602
    .line 603
    move-object/from16 v5, v22

    .line 604
    .line 605
    move-object/from16 v8, v23

    .line 606
    .line 607
    move-object/from16 v6, v24

    .line 608
    .line 609
    move-object/from16 v7, v25

    .line 610
    .line 611
    const/4 v3, 0x1

    .line 612
    const/4 v4, 0x0

    .line 613
    const/4 v11, 0x0

    .line 614
    goto/16 :goto_0

    .line 615
    .line 616
    :cond_12
    move-object/from16 v20, v2

    .line 617
    .line 618
    move-object/from16 v22, v5

    .line 619
    .line 620
    move-object/from16 v24, v6

    .line 621
    .line 622
    move-object/from16 v25, v7

    .line 623
    .line 624
    move-object/from16 v23, v8

    .line 625
    .line 626
    move-object/from16 v21, v12

    .line 627
    .line 628
    iget-boolean v0, v13, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    .line 629
    .line 630
    if-eqz v0, :cond_13

    .line 631
    .line 632
    if-nez v17, :cond_13

    .line 633
    .line 634
    invoke-interface {v14, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 635
    .line 636
    .line 637
    :cond_13
    iget-boolean v0, v13, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignatureRequired:Z

    .line 638
    .line 639
    if-eqz v0, :cond_14

    .line 640
    .line 641
    iget-boolean v0, v13, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    .line 642
    .line 643
    if-nez v0, :cond_14

    .line 644
    .line 645
    new-instance v0, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;

    .line 646
    .line 647
    iget-object v1, v9, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 648
    .line 649
    const/4 v2, 0x1

    .line 650
    invoke-direct {v0, v2, v1}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;-><init>(ILorg/minidns/dnsname/DnsName;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    :cond_14
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-nez v0, :cond_16

    .line 661
    .line 662
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    .line 667
    .line 668
    .line 669
    move-result v1

    .line 670
    if-ne v0, v1, :cond_15

    .line 671
    .line 672
    new-instance v0, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;

    .line 673
    .line 674
    const/4 v1, 0x2

    .line 675
    invoke-direct {v0, v1, v9}, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;-><init>(ILjava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    goto :goto_7

    .line 682
    :cond_15
    new-instance v0, Lkotlin/io/FileSystemException;

    .line 683
    .line 684
    const-string v1, "Only some records are signed!"

    .line 685
    .line 686
    invoke-direct {v0, v9, v1}, Lkotlin/io/FileSystemException;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    throw v0

    .line 690
    :cond_16
    :goto_7
    move-object/from16 v3, p0

    .line 691
    .line 692
    move-object/from16 v2, v25

    .line 693
    .line 694
    goto/16 :goto_12

    .line 695
    .line 696
    :cond_17
    move-object/from16 v20, v2

    .line 697
    .line 698
    move-object/from16 v22, v5

    .line 699
    .line 700
    move-object/from16 v24, v6

    .line 701
    .line 702
    move-object/from16 v25, v7

    .line 703
    .line 704
    move-object/from16 v23, v8

    .line 705
    .line 706
    new-instance v14, Ljava/util/HashSet;

    .line 707
    .line 708
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 709
    .line 710
    .line 711
    const/4 v5, 0x0

    .line 712
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    check-cast v0, Lorg/minidns/dnsmessage/Question;

    .line 717
    .line 718
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    if-eqz v2, :cond_19

    .line 727
    .line 728
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v2

    .line 732
    check-cast v2, Lorg/minidns/record/Record;

    .line 733
    .line 734
    iget-object v3, v2, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 735
    .line 736
    sget-object v4, Lorg/minidns/record/Record$TYPE;->SOA:Lorg/minidns/record/Record$TYPE;

    .line 737
    .line 738
    if-ne v3, v4, :cond_18

    .line 739
    .line 740
    iget-object v1, v2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 741
    .line 742
    goto :goto_8

    .line 743
    :cond_19
    const/4 v1, 0x0

    .line 744
    :goto_8
    if-eqz v1, :cond_2d

    .line 745
    .line 746
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    const/4 v3, 0x0

    .line 751
    const/4 v4, 0x0

    .line 752
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 753
    .line 754
    .line 755
    move-result v5

    .line 756
    if-eqz v5, :cond_26

    .line 757
    .line 758
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v5

    .line 762
    check-cast v5, Lorg/minidns/record/Record;

    .line 763
    .line 764
    iget-object v6, v5, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 765
    .line 766
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 767
    .line 768
    .line 769
    move-result v6

    .line 770
    const/16 v7, 0x2f

    .line 771
    .line 772
    if-eq v6, v7, :cond_22

    .line 773
    .line 774
    const/16 v7, 0x32

    .line 775
    .line 776
    if-eq v6, v7, :cond_1a

    .line 777
    .line 778
    goto :goto_9

    .line 779
    :cond_1a
    const-class v3, Lorg/minidns/record/NSEC3;

    .line 780
    .line 781
    invoke-virtual {v5, v3}, Lorg/minidns/record/Record;->as(Ljava/lang/Class;)Lorg/minidns/record/Record;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    sget-object v5, Lorg/minidns/dnssec/Verifier;->algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    .line 786
    .line 787
    iget-object v5, v3, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 788
    .line 789
    iget-object v6, v3, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 790
    .line 791
    check-cast v5, Lorg/minidns/record/NSEC3;

    .line 792
    .line 793
    sget-object v7, Lorg/minidns/dnssec/Verifier;->algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    .line 794
    .line 795
    iget-object v8, v5, Lorg/minidns/record/NSEC3;->hashAlgorithm:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 796
    .line 797
    iget-object v7, v7, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->nsecDigestMap:Ljava/util/HashMap;

    .line 798
    .line 799
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v7

    .line 803
    check-cast v7, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;

    .line 804
    .line 805
    if-nez v7, :cond_1b

    .line 806
    .line 807
    new-instance v6, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;

    .line 808
    .line 809
    iget-byte v5, v5, Lorg/minidns/record/NSEC3;->hashAlgorithmByte:B

    .line 810
    .line 811
    sget-object v7, Lorg/minidns/record/Record$TYPE;->NSEC3:Lorg/minidns/record/Record$TYPE;

    .line 812
    .line 813
    invoke-direct {v6, v5, v7, v3}, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;-><init>(BLorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record;)V

    .line 814
    .line 815
    .line 816
    :goto_a
    const/4 v10, 0x2

    .line 817
    const/4 v11, 0x1

    .line 818
    const/16 v19, 0x0

    .line 819
    .line 820
    goto/16 :goto_e

    .line 821
    .line 822
    :cond_1b
    iget-object v8, v0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 823
    .line 824
    iget v9, v5, Lorg/minidns/record/NSEC3;->iterations:I

    .line 825
    .line 826
    iget-object v10, v5, Lorg/minidns/record/NSEC3;->salt:[B

    .line 827
    .line 828
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v10

    .line 832
    check-cast v10, [B

    .line 833
    .line 834
    invoke-virtual {v8}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired$1()V

    .line 835
    .line 836
    .line 837
    iget-object v8, v8, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 838
    .line 839
    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v8

    .line 843
    check-cast v8, [B

    .line 844
    .line 845
    :goto_b
    add-int/lit8 v11, v9, -0x1

    .line 846
    .line 847
    if-ltz v9, :cond_1c

    .line 848
    .line 849
    array-length v9, v8

    .line 850
    array-length v12, v10

    .line 851
    add-int/2addr v9, v12

    .line 852
    new-array v9, v9, [B

    .line 853
    .line 854
    array-length v12, v8

    .line 855
    const/4 v13, 0x0

    .line 856
    invoke-static {v8, v13, v9, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    .line 858
    .line 859
    array-length v8, v8

    .line 860
    array-length v12, v10

    .line 861
    invoke-static {v10, v13, v9, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    .line 863
    .line 864
    iget-object v8, v7, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;->md:Ljava/security/MessageDigest;

    .line 865
    .line 866
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->digest([B)[B

    .line 867
    .line 868
    .line 869
    move-result-object v8

    .line 870
    move v9, v11

    .line 871
    goto :goto_b

    .line 872
    :cond_1c
    invoke-static {v8}, Lkotlin/ranges/RangesKt;->encodeToString([B)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v7

    .line 876
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v8

    .line 880
    new-instance v9, Ljava/lang/StringBuilder;

    .line 881
    .line 882
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    const-string v10, "."

    .line 889
    .line 890
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v8

    .line 900
    invoke-static {v8}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    .line 901
    .line 902
    .line 903
    move-result-object v8

    .line 904
    invoke-virtual {v6, v8}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 905
    .line 906
    .line 907
    move-result v8

    .line 908
    if-eqz v8, :cond_1e

    .line 909
    .line 910
    iget-object v5, v5, Lorg/minidns/record/NSEC3;->types:Ljava/util/ArrayList;

    .line 911
    .line 912
    iget-object v6, v0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 913
    .line 914
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    move-result v5

    .line 918
    if-eqz v5, :cond_1d

    .line 919
    .line 920
    new-instance v6, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;

    .line 921
    .line 922
    invoke-direct {v6, v0, v3}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/Record;)V

    .line 923
    .line 924
    .line 925
    goto :goto_a

    .line 926
    :cond_1d
    const/4 v6, 0x0

    .line 927
    goto :goto_a

    .line 928
    :cond_1e
    iget-object v8, v6, Lorg/minidns/dnsname/DnsName;->hostpart:Ljava/lang/String;

    .line 929
    .line 930
    if-eqz v8, :cond_1f

    .line 931
    .line 932
    const/4 v10, 0x2

    .line 933
    const/4 v11, 0x1

    .line 934
    const/16 v19, 0x0

    .line 935
    .line 936
    goto :goto_c

    .line 937
    :cond_1f
    iget-object v8, v6, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 938
    .line 939
    const-string v9, "[.\u3002\uff0e\uff61]"

    .line 940
    .line 941
    const/4 v10, 0x2

    .line 942
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v8

    .line 946
    const/16 v19, 0x0

    .line 947
    .line 948
    aget-object v9, v8, v19

    .line 949
    .line 950
    iput-object v9, v6, Lorg/minidns/dnsname/DnsName;->hostpart:Ljava/lang/String;

    .line 951
    .line 952
    array-length v9, v8

    .line 953
    const/4 v11, 0x1

    .line 954
    if-le v9, v11, :cond_20

    .line 955
    .line 956
    aget-object v8, v8, v11

    .line 957
    .line 958
    :cond_20
    :goto_c
    iget-object v6, v6, Lorg/minidns/dnsname/DnsName;->hostpart:Ljava/lang/String;

    .line 959
    .line 960
    iget-object v5, v5, Lorg/minidns/record/NSEC3;->nextHashed:[B

    .line 961
    .line 962
    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v5

    .line 966
    check-cast v5, [B

    .line 967
    .line 968
    invoke-static {v5}, Lkotlin/ranges/RangesKt;->encodeToString([B)Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v5

    .line 972
    invoke-static {v7}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    .line 973
    .line 974
    .line 975
    move-result-object v7

    .line 976
    invoke-static {v6}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    .line 977
    .line 978
    .line 979
    move-result-object v6

    .line 980
    invoke-static {v5}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    .line 981
    .line 982
    .line 983
    move-result-object v5

    .line 984
    invoke-static {v7, v6, v5}, Lorg/minidns/dnssec/Verifier;->nsecMatches(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Z

    .line 985
    .line 986
    .line 987
    move-result v5

    .line 988
    if-eqz v5, :cond_21

    .line 989
    .line 990
    :goto_d
    const/4 v6, 0x0

    .line 991
    goto :goto_e

    .line 992
    :cond_21
    new-instance v6, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;

    .line 993
    .line 994
    invoke-direct {v6, v0, v3}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/Record;)V

    .line 995
    .line 996
    .line 997
    goto :goto_e

    .line 998
    :cond_22
    const/4 v10, 0x2

    .line 999
    const/4 v11, 0x1

    .line 1000
    const/16 v19, 0x0

    .line 1001
    .line 1002
    const-class v3, Lorg/minidns/record/NSEC;

    .line 1003
    .line 1004
    invoke-virtual {v5, v3}, Lorg/minidns/record/Record;->as(Ljava/lang/Class;)Lorg/minidns/record/Record;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v3

    .line 1008
    sget-object v5, Lorg/minidns/dnssec/Verifier;->algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    .line 1009
    .line 1010
    iget-object v5, v3, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 1011
    .line 1012
    check-cast v5, Lorg/minidns/record/NSEC;

    .line 1013
    .line 1014
    iget-object v6, v3, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 1015
    .line 1016
    iget-object v7, v0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 1017
    .line 1018
    invoke-virtual {v6, v7}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v7

    .line 1022
    if-eqz v7, :cond_23

    .line 1023
    .line 1024
    iget-object v7, v5, Lorg/minidns/record/NSEC;->types:Ljava/util/List;

    .line 1025
    .line 1026
    iget-object v8, v0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 1027
    .line 1028
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v7

    .line 1032
    if-nez v7, :cond_23

    .line 1033
    .line 1034
    goto :goto_d

    .line 1035
    :cond_23
    iget-object v7, v0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 1036
    .line 1037
    iget-object v5, v5, Lorg/minidns/record/NSEC;->next:Lorg/minidns/dnsname/DnsName;

    .line 1038
    .line 1039
    invoke-static {v7, v6, v5}, Lorg/minidns/dnssec/Verifier;->nsecMatches(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v5

    .line 1043
    if-eqz v5, :cond_24

    .line 1044
    .line 1045
    goto :goto_d

    .line 1046
    :cond_24
    new-instance v5, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;

    .line 1047
    .line 1048
    invoke-direct {v5, v0, v3}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NSECDoesNotMatchReason;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/record/Record;)V

    .line 1049
    .line 1050
    .line 1051
    move-object v6, v5

    .line 1052
    :goto_e
    if-eqz v6, :cond_25

    .line 1053
    .line 1054
    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1055
    .line 1056
    .line 1057
    goto :goto_f

    .line 1058
    :cond_25
    move v4, v11

    .line 1059
    :goto_f
    move v3, v11

    .line 1060
    goto/16 :goto_9

    .line 1061
    .line 1062
    :cond_26
    if-eqz v3, :cond_28

    .line 1063
    .line 1064
    if-eqz v4, :cond_27

    .line 1065
    .line 1066
    goto :goto_10

    .line 1067
    :cond_27
    new-instance v1, Lkotlin/io/FileSystemException;

    .line 1068
    .line 1069
    const-string v2, "Invalid NSEC!"

    .line 1070
    .line 1071
    invoke-direct {v1, v0, v2}, Lkotlin/io/FileSystemException;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/lang/String;)V

    .line 1072
    .line 1073
    .line 1074
    throw v1

    .line 1075
    :cond_28
    :goto_10
    new-instance v1, Ljava/util/ArrayList;

    .line 1076
    .line 1077
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    .line 1078
    .line 1079
    .line 1080
    move-result v2

    .line 1081
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1082
    .line 1083
    .line 1084
    move-object/from16 v2, v25

    .line 1085
    .line 1086
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1087
    .line 1088
    .line 1089
    move-object/from16 v3, p0

    .line 1090
    .line 1091
    invoke-virtual {v3, v0, v2, v1}, Lorg/minidns/dnssec/DnssecClient;->verifySignatures(Lorg/minidns/dnsmessage/Question;Ljava/util/Collection;Ljava/util/ArrayList;)Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v5

    .line 1095
    iget-object v5, v5, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/HashSet;

    .line 1096
    .line 1097
    if-eqz v4, :cond_29

    .line 1098
    .line 1099
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    .line 1100
    .line 1101
    .line 1102
    move-result v4

    .line 1103
    if-eqz v4, :cond_29

    .line 1104
    .line 1105
    invoke-virtual {v14}, Ljava/util/HashSet;->clear()V

    .line 1106
    .line 1107
    .line 1108
    goto :goto_11

    .line 1109
    :cond_29
    invoke-interface {v14, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1110
    .line 1111
    .line 1112
    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1113
    .line 1114
    .line 1115
    move-result v4

    .line 1116
    if-nez v4, :cond_2b

    .line 1117
    .line 1118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 1119
    .line 1120
    .line 1121
    move-result v1

    .line 1122
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1123
    .line 1124
    .line 1125
    move-result v4

    .line 1126
    if-ne v1, v4, :cond_2a

    .line 1127
    .line 1128
    goto :goto_12

    .line 1129
    :cond_2a
    new-instance v1, Lkotlin/io/FileSystemException;

    .line 1130
    .line 1131
    const-string v2, "Only some resource records from the authority section are signed!"

    .line 1132
    .line 1133
    invoke-direct {v1, v0, v2}, Lkotlin/io/FileSystemException;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/lang/String;)V

    .line 1134
    .line 1135
    .line 1136
    throw v1

    .line 1137
    :cond_2b
    :goto_12
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    .line 1138
    .line 1139
    .line 1140
    move-result v0

    .line 1141
    move-object/from16 v1, v24

    .line 1142
    .line 1143
    iput-boolean v0, v1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authenticData:Z

    .line 1144
    .line 1145
    move-object/from16 v4, v22

    .line 1146
    .line 1147
    iget-object v0, v4, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 1148
    .line 1149
    new-instance v4, Ljava/util/HashSet;

    .line 1150
    .line 1151
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1152
    .line 1153
    .line 1154
    const-class v5, Lorg/minidns/record/RRSIG;

    .line 1155
    .line 1156
    move-object/from16 v6, v23

    .line 1157
    .line 1158
    invoke-static {v4, v5, v6}, Lorg/minidns/record/Record;->filter(Ljava/util/AbstractCollection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1159
    .line 1160
    .line 1161
    invoke-static {v4, v5, v2}, Lorg/minidns/record/Record;->filter(Ljava/util/AbstractCollection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1162
    .line 1163
    .line 1164
    invoke-static {v4, v5, v0}, Lorg/minidns/record/Record;->filter(Ljava/util/AbstractCollection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1165
    .line 1166
    .line 1167
    iget-boolean v3, v3, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords:Z

    .line 1168
    .line 1169
    if-eqz v3, :cond_2c

    .line 1170
    .line 1171
    invoke-static {v6}, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords(Ljava/util/List;)Ljava/util/List;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v3

    .line 1175
    new-instance v5, Ljava/util/ArrayList;

    .line 1176
    .line 1177
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 1178
    .line 1179
    .line 1180
    move-result v6

    .line 1181
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1182
    .line 1183
    .line 1184
    iput-object v5, v1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/ArrayList;

    .line 1185
    .line 1186
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1187
    .line 1188
    .line 1189
    invoke-static {v2}, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords(Ljava/util/List;)Ljava/util/List;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v2

    .line 1193
    new-instance v3, Ljava/util/ArrayList;

    .line 1194
    .line 1195
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1196
    .line 1197
    .line 1198
    move-result v5

    .line 1199
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1200
    .line 1201
    .line 1202
    iput-object v3, v1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/ArrayList;

    .line 1203
    .line 1204
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1205
    .line 1206
    .line 1207
    invoke-static {v0}, Lorg/minidns/dnssec/DnssecClient;->stripSignatureRecords(Ljava/util/List;)Ljava/util/List;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    new-instance v2, Ljava/util/ArrayList;

    .line 1212
    .line 1213
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 1214
    .line 1215
    .line 1216
    move-result v3

    .line 1217
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1218
    .line 1219
    .line 1220
    iput-object v2, v1, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/ArrayList;

    .line 1221
    .line 1222
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1223
    .line 1224
    .line 1225
    :cond_2c
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    .line 1226
    .line 1227
    new-instance v2, Lorg/minidns/dnsmessage/DnsMessage;

    .line 1228
    .line 1229
    invoke-direct {v2, v1}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage$Builder;)V

    .line 1230
    .line 1231
    .line 1232
    move-object/from16 v1, v20

    .line 1233
    .line 1234
    invoke-direct {v0, v1, v4, v14}, Lorg/jsoup/internal/SoftPool;-><init>(Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 1235
    .line 1236
    .line 1237
    return-object v0

    .line 1238
    :cond_2d
    new-instance v0, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    .line 1239
    .line 1240
    const-string v1, "Autority does not contain SOA"

    .line 1241
    .line 1242
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1243
    .line 1244
    .line 1245
    throw v0
.end method

.method public final verifySignatures(Lorg/minidns/dnsmessage/Question;Ljava/util/Collection;Ljava/util/ArrayList;)Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;
    .locals 32

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v2, Ljava/util/Date;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v3, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v4, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    iput-boolean v5, v4, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignatureRequired:Z

    .line 20
    .line 21
    iput-boolean v5, v4, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    .line 22
    .line 23
    new-instance v6, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v6, v4, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/HashSet;

    .line 29
    .line 30
    new-instance v6, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_3

    .line 48
    .line 49
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, Lorg/minidns/record/Record;

    .line 54
    .line 55
    const-class v9, Lorg/minidns/record/RRSIG;

    .line 56
    .line 57
    invoke-virtual {v8, v9}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    if-nez v8, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v9, v8, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 65
    .line 66
    check-cast v9, Lorg/minidns/record/RRSIG;

    .line 67
    .line 68
    iget-object v10, v9, Lorg/minidns/record/RRSIG;->signatureExpiration:Ljava/util/Date;

    .line 69
    .line 70
    invoke-virtual {v10, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-ltz v10, :cond_2

    .line 75
    .line 76
    iget-object v10, v9, Lorg/minidns/record/RRSIG;->signatureInception:Ljava/util/Date;

    .line 77
    .line 78
    invoke-virtual {v10, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    if-lez v10, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iget-object v2, v4, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/HashSet;

    .line 104
    .line 105
    if-nez v1, :cond_4

    .line 106
    .line 107
    new-instance v1, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;

    .line 108
    .line 109
    invoke-direct {v1, v0, v3}, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/util/ArrayList;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    return-object v4

    .line 116
    :cond_4
    new-instance v1, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;

    .line 117
    .line 118
    const/4 v3, 0x2

    .line 119
    invoke-direct {v1, v3, v0}, Lorg/minidns/dnssec/DnssecUnverifiedReason$ConflictsWithSep;-><init>(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    return-object v4

    .line 126
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_1f

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Lorg/minidns/record/Record;

    .line 141
    .line 142
    iget-object v6, v3, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 143
    .line 144
    iget-object v7, v3, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 145
    .line 146
    check-cast v6, Lorg/minidns/record/RRSIG;

    .line 147
    .line 148
    new-instance v8, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-eqz v10, :cond_7

    .line 166
    .line 167
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    check-cast v10, Lorg/minidns/record/Record;

    .line 172
    .line 173
    iget-object v11, v10, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 174
    .line 175
    iget-object v12, v6, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    .line 176
    .line 177
    if-ne v11, v12, :cond_6

    .line 178
    .line 179
    iget-object v11, v10, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 180
    .line 181
    invoke-virtual {v11, v7}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-eqz v11, :cond_6

    .line 186
    .line 187
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    new-instance v9, Ljava/util/HashSet;

    .line 192
    .line 193
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-object v10, v6, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    .line 197
    .line 198
    iget v11, v6, Lorg/minidns/record/RRSIG;->keyTag:I

    .line 199
    .line 200
    iget-object v12, v6, Lorg/minidns/record/RRSIG;->signerName:Lorg/minidns/dnsname/DnsName;

    .line 201
    .line 202
    sget-object v13, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

    .line 203
    .line 204
    const-class v15, Lorg/minidns/record/DNSKEY;

    .line 205
    .line 206
    const/16 v16, 0x0

    .line 207
    .line 208
    if-ne v10, v13, :cond_a

    .line 209
    .line 210
    new-instance v13, Ljava/util/ArrayList;

    .line 211
    .line 212
    const/16 v17, 0x1

    .line 213
    .line 214
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result v14

    .line 218
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .line 220
    .line 221
    invoke-static {v13, v15, v8}, Lorg/minidns/record/Record;->filter(Ljava/util/AbstractCollection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v14

    .line 232
    if-eqz v14, :cond_9

    .line 233
    .line 234
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    check-cast v14, Lorg/minidns/record/Record;

    .line 239
    .line 240
    iget-object v5, v14, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 241
    .line 242
    check-cast v5, Lorg/minidns/record/DNSKEY;

    .line 243
    .line 244
    invoke-virtual {v5}, Lorg/minidns/record/DNSKEY;->getKeyTag()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    if-ne v5, v11, :cond_8

    .line 249
    .line 250
    iget-object v5, v14, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 251
    .line 252
    check-cast v5, Lorg/minidns/record/DNSKEY;

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_8
    const/4 v5, 0x0

    .line 256
    goto :goto_4

    .line 257
    :cond_9
    move-object/from16 v5, v16

    .line 258
    .line 259
    :goto_5
    move-object/from16 v18, v2

    .line 260
    .line 261
    move-object v2, v5

    .line 262
    move-object/from16 v5, p0

    .line 263
    .line 264
    goto/16 :goto_6

    .line 265
    .line 266
    :cond_a
    const/16 v17, 0x1

    .line 267
    .line 268
    iget-object v5, v0, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 269
    .line 270
    iget-object v14, v0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 271
    .line 272
    move-object/from16 v18, v2

    .line 273
    .line 274
    sget-object v2, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    .line 275
    .line 276
    if-ne v5, v2, :cond_b

    .line 277
    .line 278
    invoke-virtual {v12, v14}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_b

    .line 283
    .line 284
    new-instance v2, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;

    .line 285
    .line 286
    const/4 v5, 0x0

    .line 287
    invoke-direct {v2, v5, v14}, Lorg/minidns/dnssec/DnssecUnverifiedReason$NoTrustAnchorReason;-><init>(ILorg/minidns/dnsname/DnsName;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-object/from16 v21, v3

    .line 294
    .line 295
    move-object/from16 v24, v7

    .line 296
    .line 297
    move-object/from16 v23, v8

    .line 298
    .line 299
    move-object/from16 v22, v15

    .line 300
    .line 301
    goto/16 :goto_c

    .line 302
    .line 303
    :cond_b
    const/4 v5, 0x0

    .line 304
    new-instance v2, Lorg/minidns/dnsmessage/Question;

    .line 305
    .line 306
    sget-object v14, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    .line 307
    .line 308
    sget-object v14, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 309
    .line 310
    invoke-virtual {v12}, Lorg/minidns/dnsname/DnsName;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    invoke-static {v14}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    .line 315
    .line 316
    .line 317
    move-result-object v14

    .line 318
    invoke-direct {v2, v14, v13, v5}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;I)V

    .line 319
    .line 320
    .line 321
    move-object/from16 v5, p0

    .line 322
    .line 323
    invoke-virtual {v5, v2}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/jsoup/internal/SoftPool;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    iget-object v13, v2, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v13, Ljava/util/Set;

    .line 330
    .line 331
    invoke-interface {v9, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 332
    .line 333
    .line 334
    iget-object v2, v2, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v2, Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 337
    .line 338
    iget-object v2, v2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 339
    .line 340
    check-cast v2, Lorg/minidns/dnsmessage/DnsMessage;

    .line 341
    .line 342
    invoke-virtual {v2, v15}, Lorg/minidns/dnsmessage/DnsMessage;->filterAnswerSectionBy(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    if-eqz v13, :cond_d

    .line 355
    .line 356
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v13

    .line 360
    check-cast v13, Lorg/minidns/record/Record;

    .line 361
    .line 362
    iget-object v14, v13, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 363
    .line 364
    check-cast v14, Lorg/minidns/record/DNSKEY;

    .line 365
    .line 366
    invoke-virtual {v14}, Lorg/minidns/record/DNSKEY;->getKeyTag()I

    .line 367
    .line 368
    .line 369
    move-result v14

    .line 370
    if-ne v14, v11, :cond_c

    .line 371
    .line 372
    iget-object v2, v13, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 373
    .line 374
    check-cast v2, Lorg/minidns/record/DNSKEY;

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_d
    move-object/from16 v2, v16

    .line 378
    .line 379
    :goto_6
    const-string v13, " "

    .line 380
    .line 381
    if-eqz v2, :cond_1e

    .line 382
    .line 383
    sget-object v14, Lorg/minidns/dnssec/Verifier;->algorithmMap:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    .line 384
    .line 385
    iget-object v5, v6, Lorg/minidns/record/RRSIG;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 386
    .line 387
    iget-object v14, v14, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/HashMap;

    .line 388
    .line 389
    invoke-virtual {v14, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    check-cast v5, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;

    .line 394
    .line 395
    if-nez v5, :cond_e

    .line 396
    .line 397
    new-instance v14, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;

    .line 398
    .line 399
    iget-byte v2, v6, Lorg/minidns/record/RRSIG;->algorithmByte:B

    .line 400
    .line 401
    sget-object v5, Lorg/minidns/record/Record$TYPE;->RRSIG:Lorg/minidns/record/Record$TYPE;

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v13

    .line 408
    check-cast v13, Lorg/minidns/record/Record;

    .line 409
    .line 410
    invoke-direct {v14, v2, v5, v13}, Lorg/minidns/dnssec/DnssecUnverifiedReason$AlgorithmNotSupportedReason;-><init>(BLorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record;)V

    .line 411
    .line 412
    .line 413
    move-object/from16 v21, v3

    .line 414
    .line 415
    move-object/from16 v24, v7

    .line 416
    .line 417
    move-object/from16 v23, v8

    .line 418
    .line 419
    move-object/from16 v22, v15

    .line 420
    .line 421
    goto/16 :goto_b

    .line 422
    .line 423
    :cond_e
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    .line 424
    .line 425
    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 426
    .line 427
    .line 428
    move-object/from16 v19, v13

    .line 429
    .line 430
    new-instance v13, Ljava/io/DataOutputStream;

    .line 431
    .line 432
    invoke-direct {v13, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 433
    .line 434
    .line 435
    :try_start_0
    invoke-virtual {v6, v13}, Lorg/minidns/record/RRSIG;->writePartialSignature(Ljava/io/DataOutputStream;)V

    .line 436
    .line 437
    .line 438
    move-object/from16 v20, v14

    .line 439
    .line 440
    iget-byte v14, v6, Lorg/minidns/record/RRSIG;->labels:B

    .line 441
    .line 442
    move-object/from16 v21, v3

    .line 443
    .line 444
    const/4 v3, 0x0

    .line 445
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v22

    .line 449
    move-object/from16 v3, v22

    .line 450
    .line 451
    check-cast v3, Lorg/minidns/record/Record;

    .line 452
    .line 453
    iget-object v3, v3, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 454
    .line 455
    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    .line 456
    .line 457
    .line 458
    move-result v22

    .line 459
    if-nez v22, :cond_f

    .line 460
    .line 461
    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-lt v1, v14, :cond_10

    .line 466
    .line 467
    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-le v1, v14, :cond_f

    .line 472
    .line 473
    sget-object v1, Lorg/minidns/dnslabel/DnsLabel;->WILDCARD_LABEL:Lorg/minidns/dnslabel/DnsLabel;

    .line 474
    .line 475
    invoke-virtual {v3, v14}, Lorg/minidns/dnsname/DnsName;->stripToLabels(I)Lorg/minidns/dnsname/DnsName;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 480
    .line 481
    .line 482
    iget-object v14, v3, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 483
    .line 484
    move-object/from16 v22, v1

    .line 485
    .line 486
    array-length v1, v14

    .line 487
    add-int/lit8 v1, v1, 0x1

    .line 488
    .line 489
    new-array v1, v1, [Lorg/minidns/dnslabel/DnsLabel;

    .line 490
    .line 491
    move-object/from16 v23, v8

    .line 492
    .line 493
    array-length v8, v14

    .line 494
    move-object/from16 v24, v7

    .line 495
    .line 496
    const/4 v7, 0x0

    .line 497
    invoke-static {v14, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    .line 499
    .line 500
    iget-object v3, v3, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 501
    .line 502
    array-length v3, v3

    .line 503
    aput-object v22, v1, v3

    .line 504
    .line 505
    new-instance v3, Lorg/minidns/dnsname/DnsName;

    .line 506
    .line 507
    move/from16 v7, v17

    .line 508
    .line 509
    invoke-direct {v3, v1, v7}, Lorg/minidns/dnsname/DnsName;-><init>([Lorg/minidns/dnslabel/DnsLabel;Z)V

    .line 510
    .line 511
    .line 512
    :goto_7
    move-object/from16 v26, v3

    .line 513
    .line 514
    goto :goto_8

    .line 515
    :catch_0
    move-exception v0

    .line 516
    goto/16 :goto_16

    .line 517
    .line 518
    :cond_f
    move-object/from16 v24, v7

    .line 519
    .line 520
    move-object/from16 v23, v8

    .line 521
    .line 522
    goto :goto_7

    .line 523
    :cond_10
    new-instance v0, Lkotlin/io/FileSystemException;

    .line 524
    .line 525
    const-string v1, "Invalid RRsig record"

    .line 526
    .line 527
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    throw v0

    .line 531
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    .line 532
    .line 533
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    .line 534
    .line 535
    .line 536
    move-result v3

    .line 537
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 545
    .line 546
    .line 547
    move-result v7

    .line 548
    if-eqz v7, :cond_11

    .line 549
    .line 550
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v7

    .line 554
    check-cast v7, Lorg/minidns/record/Record;

    .line 555
    .line 556
    new-instance v25, Lorg/minidns/record/Record;

    .line 557
    .line 558
    iget-object v8, v7, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 559
    .line 560
    iget v14, v7, Lorg/minidns/record/Record;->clazzValue:I

    .line 561
    .line 562
    move/from16 v28, v14

    .line 563
    .line 564
    move-object/from16 v22, v15

    .line 565
    .line 566
    iget-wide v14, v6, Lorg/minidns/record/RRSIG;->originalTtl:J

    .line 567
    .line 568
    iget-object v7, v7, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 569
    .line 570
    move-object/from16 v31, v7

    .line 571
    .line 572
    move-object/from16 v27, v8

    .line 573
    .line 574
    move-wide/from16 v29, v14

    .line 575
    .line 576
    invoke-direct/range {v25 .. v31}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;IJLorg/minidns/record/Data;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual/range {v25 .. v25}, Lorg/minidns/record/Record;->toByteArray()[B

    .line 580
    .line 581
    .line 582
    move-result-object v7

    .line 583
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-object/from16 v15, v22

    .line 587
    .line 588
    goto :goto_9

    .line 589
    :cond_11
    move-object/from16 v22, v15

    .line 590
    .line 591
    invoke-virtual/range {v26 .. v26}, Lorg/minidns/dnsname/DnsName;->size()I

    .line 592
    .line 593
    .line 594
    move-result v3

    .line 595
    add-int/lit8 v3, v3, 0xa

    .line 596
    .line 597
    new-instance v7, Lorg/minidns/dnssec/Verifier$1;

    .line 598
    .line 599
    invoke-direct {v7, v3}, Lorg/minidns/dnssec/Verifier$1;-><init>(I)V

    .line 600
    .line 601
    .line 602
    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    if-eqz v3, :cond_12

    .line 614
    .line 615
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    check-cast v3, [B

    .line 620
    .line 621
    invoke-virtual {v13, v3}, Ljava/io/OutputStream;->write([B)V

    .line 622
    .line 623
    .line 624
    goto :goto_a

    .line 625
    :cond_12
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    .line 627
    .line 628
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    :try_start_1
    invoke-virtual {v5, v2}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->getPublicKey(Lorg/minidns/record/DNSKEY;)Ljava/security/PublicKey;

    .line 633
    .line 634
    .line 635
    move-result-object v2

    .line 636
    iget-object v3, v5, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->signatureAlgorithm:Ljava/lang/String;

    .line 637
    .line 638
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    invoke-virtual {v3, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3, v1}, Ljava/security/Signature;->update([B)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v5, v6}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;->getSignature(Lorg/minidns/record/RRSIG;)[B

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    invoke-virtual {v3, v1}, Ljava/security/Signature;->verify([B)Z

    .line 653
    .line 654
    .line 655
    move-result v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_2

    .line 656
    if-eqz v1, :cond_1c

    .line 657
    .line 658
    move-object/from16 v14, v16

    .line 659
    .line 660
    :goto_b
    if-eqz v14, :cond_13

    .line 661
    .line 662
    invoke-virtual {v9, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    :cond_13
    :goto_c
    iget-object v1, v4, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->reasons:Ljava/util/HashSet;

    .line 666
    .line 667
    invoke-interface {v1, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 668
    .line 669
    .line 670
    iget-object v1, v0, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 671
    .line 672
    invoke-virtual {v1, v12}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v1

    .line 676
    if-eqz v1, :cond_16

    .line 677
    .line 678
    sget-object v1, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

    .line 679
    .line 680
    if-ne v10, v1, :cond_16

    .line 681
    .line 682
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 687
    .line 688
    .line 689
    move-result v2

    .line 690
    if-eqz v2, :cond_15

    .line 691
    .line 692
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    check-cast v2, Lorg/minidns/record/Record;

    .line 697
    .line 698
    move-object/from16 v3, v22

    .line 699
    .line 700
    invoke-virtual {v2, v3}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    iget-object v2, v2, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 705
    .line 706
    check-cast v2, Lorg/minidns/record/DNSKEY;

    .line 707
    .line 708
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v2}, Lorg/minidns/record/DNSKEY;->getKeyTag()I

    .line 712
    .line 713
    .line 714
    move-result v2

    .line 715
    const/4 v7, 0x1

    .line 716
    if-ne v2, v11, :cond_14

    .line 717
    .line 718
    iput-boolean v7, v4, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignaturePresent:Z

    .line 719
    .line 720
    :cond_14
    move-object/from16 v22, v3

    .line 721
    .line 722
    goto :goto_d

    .line 723
    :cond_15
    const/4 v7, 0x1

    .line 724
    iput-boolean v7, v4, Lorg/minidns/dnssec/DnssecClient$VerifySignaturesResult;->sepSignatureRequired:Z

    .line 725
    .line 726
    :cond_16
    move-object/from16 v1, v24

    .line 727
    .line 728
    iget-object v2, v1, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 729
    .line 730
    iget-object v3, v12, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 731
    .line 732
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    if-eqz v5, :cond_18

    .line 737
    .line 738
    :cond_17
    :goto_e
    move-object/from16 v1, p3

    .line 739
    .line 740
    move-object/from16 v2, v23

    .line 741
    .line 742
    goto :goto_12

    .line 743
    :cond_18
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 744
    .line 745
    .line 746
    move-result v5

    .line 747
    if-eqz v5, :cond_19

    .line 748
    .line 749
    goto :goto_e

    .line 750
    :cond_19
    const-string v5, "\\."

    .line 751
    .line 752
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    array-length v5, v3

    .line 761
    array-length v6, v2

    .line 762
    if-le v5, v6, :cond_1a

    .line 763
    .line 764
    goto :goto_10

    .line 765
    :cond_1a
    const/4 v14, 0x1

    .line 766
    :goto_f
    array-length v5, v3

    .line 767
    if-gt v14, v5, :cond_17

    .line 768
    .line 769
    array-length v5, v3

    .line 770
    sub-int/2addr v5, v14

    .line 771
    aget-object v5, v3, v5

    .line 772
    .line 773
    array-length v6, v2

    .line 774
    sub-int/2addr v6, v14

    .line 775
    aget-object v6, v2, v6

    .line 776
    .line 777
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    move-result v5

    .line 781
    if-nez v5, :cond_1b

    .line 782
    .line 783
    :goto_10
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    .line 792
    .line 793
    const-string v5, "Records at "

    .line 794
    .line 795
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    const-string v1, " are cross-signed with a key from "

    .line 802
    .line 803
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    sget-object v2, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 814
    .line 815
    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    move-object/from16 v1, p3

    .line 819
    .line 820
    :goto_11
    move-object/from16 v3, v21

    .line 821
    .line 822
    goto :goto_13

    .line 823
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    .line 824
    .line 825
    goto :goto_f

    .line 826
    :goto_12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 827
    .line 828
    .line 829
    goto :goto_11

    .line 830
    :goto_13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    move-object/from16 v2, v18

    .line 834
    .line 835
    const/4 v5, 0x0

    .line 836
    goto/16 :goto_2

    .line 837
    .line 838
    :cond_1c
    move-object/from16 v2, v23

    .line 839
    .line 840
    new-instance v0, Lkotlin/io/FileSystemException;

    .line 841
    .line 842
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 843
    .line 844
    .line 845
    move-result v1

    .line 846
    const/4 v3, 0x0

    .line 847
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v3

    .line 851
    check-cast v3, Lorg/minidns/record/Record;

    .line 852
    .line 853
    iget-object v3, v3, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 854
    .line 855
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 860
    .line 861
    .line 862
    move-result v2

    .line 863
    const/4 v7, 0x1

    .line 864
    if-le v2, v7, :cond_1d

    .line 865
    .line 866
    const-string v2, "s"

    .line 867
    .line 868
    goto :goto_14

    .line 869
    :cond_1d
    const-string v2, ""

    .line 870
    .line 871
    :goto_14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 872
    .line 873
    const-string v5, "Validation of "

    .line 874
    .line 875
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    move-object/from16 v1, v19

    .line 882
    .line 883
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    const-string v1, " record"

    .line 890
    .line 891
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    const-string v1, " failed: Signature is invalid."

    .line 895
    .line 896
    invoke-static {v4, v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 901
    .line 902
    .line 903
    throw v0

    .line 904
    :catch_1
    move-exception v0

    .line 905
    goto :goto_15

    .line 906
    :catch_2
    move-exception v0

    .line 907
    new-instance v1, Lkotlin/io/FileSystemException;

    .line 908
    .line 909
    const-string v2, "Validating signature failed"

    .line 910
    .line 911
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 912
    .line 913
    .line 914
    throw v1

    .line 915
    :goto_15
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 916
    .line 917
    .line 918
    return-object v16

    .line 919
    :goto_16
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 920
    .line 921
    .line 922
    return-object v16

    .line 923
    :cond_1e
    move-object v2, v8

    .line 924
    move-object v1, v13

    .line 925
    new-instance v3, Lkotlin/io/FileSystemException;

    .line 926
    .line 927
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 928
    .line 929
    .line 930
    move-result v2

    .line 931
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v4

    .line 935
    new-instance v5, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 938
    .line 939
    .line 940
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    const-string v1, " record(s) are signed using an unknown key."

    .line 950
    .line 951
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-direct {v3, v0, v1}, Lkotlin/io/FileSystemException;-><init>(Lorg/minidns/dnsmessage/Question;Ljava/lang/String;)V

    .line 959
    .line 960
    .line 961
    throw v3

    .line 962
    :cond_1f
    return-object v4
.end method
