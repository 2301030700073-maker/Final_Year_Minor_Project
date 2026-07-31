.class public final Lcom/eygraber/uri/uris/StringUri;
.super Lcom/eygraber/uri/uris/AbstractHierarchicalUri;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authorityPart$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final cachedFsi$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final cachedSsi$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final encodedAuthority$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final fragmentPart$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final isHierarchical$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final pathPart$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final queryPart$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final scheme$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final ssp$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final uriString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->cachedSsi$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 21
    .line 22
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->cachedFsi$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 34
    .line 35
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->isHierarchical$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 47
    .line 48
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v0, 0x3

    .line 51
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 66
    .line 67
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->scheme$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 71
    .line 72
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    const/4 v0, 0x5

    .line 75
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 79
    .line 80
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->ssp$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 84
    .line 85
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 92
    .line 93
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->authorityPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 97
    .line 98
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    const/4 v0, 0x7

    .line 101
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 105
    .line 106
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    const/16 v0, 0x8

    .line 112
    .line 113
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 117
    .line 118
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->encodedAuthority$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 122
    .line 123
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    const/16 v0, 0x9

    .line 126
    .line 127
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 131
    .line 132
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 133
    .line 134
    .line 135
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->pathPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 136
    .line 137
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    const/16 v0, 0xa

    .line 140
    .line 141
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 145
    .line 146
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    const/16 v0, 0xb

    .line 152
    .line 153
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 154
    .line 155
    .line 156
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 157
    .line 158
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 159
    .line 160
    .line 161
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    const/16 v0, 0xc

    .line 164
    .line 165
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 169
    .line 170
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 171
    .line 172
    .line 173
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 174
    .line 175
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 176
    .line 177
    const/16 v0, 0xd

    .line 178
    .line 179
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 180
    .line 181
    .line 182
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 183
    .line 184
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 185
    .line 186
    .line 187
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->queryPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 188
    .line 189
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 190
    .line 191
    const/16 v0, 0xe

    .line 192
    .line 193
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 197
    .line 198
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 199
    .line 200
    .line 201
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 202
    .line 203
    const/16 v0, 0xf

    .line 204
    .line 205
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 209
    .line 210
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 211
    .line 212
    .line 213
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 214
    .line 215
    const/16 v0, 0x10

    .line 216
    .line 217
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 221
    .line 222
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 223
    .line 224
    .line 225
    iput-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->fragmentPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 226
    .line 227
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 228
    .line 229
    const/16 v0, 0x11

    .line 230
    .line 231
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 232
    .line 233
    .line 234
    new-instance v0, Lkotlin/SynchronizedLazyImpl;

    .line 235
    .line 236
    invoke-direct {v0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 237
    .line 238
    .line 239
    new-instance p1, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;

    .line 240
    .line 241
    const/16 v0, 0x12

    .line 242
    .line 243
    invoke-direct {p1, p0, v0}, Lcom/eygraber/uri/uris/StringUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/StringUri;I)V

    .line 244
    .line 245
    .line 246
    new-instance p0, Lkotlin/SynchronizedLazyImpl;

    .line 247
    .line 248
    invoke-direct {p0, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 249
    .line 250
    .line 251
    return-void
.end method


# virtual methods
.method public final buildUpon()Lcom/eygraber/uri/Uri$Builder;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/eygraber/uri/uris/StringUri;->isHierarchical$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/eygraber/uri/uris/StringUri;->fragmentPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/eygraber/uri/uris/StringUri;->scheme$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/eygraber/uri/Uri$Builder;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v0, v3, v4}, Lcom/eygraber/uri/Uri$Builder;-><init>(IZ)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    iput-object v2, v0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/eygraber/uri/uris/StringUri;->authorityPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 35
    .line 36
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/eygraber/uri/parts/Part;

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    iput-object v3, v0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 44
    .line 45
    iput-object v2, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/eygraber/uri/uris/StringUri;->pathPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 48
    .line 49
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/eygraber/uri/parts/PathPart;

    .line 54
    .line 55
    iput-object v3, v0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v2, v0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->queryPart$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 60
    .line 61
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 66
    .line 67
    iput-object v3, v0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object p0, v0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 76
    .line 77
    iput-object p0, v0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_0
    new-instance v0, Lcom/eygraber/uri/Uri$Builder;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    const/4 v4, 0x0

    .line 84
    invoke-direct {v0, v3, v4}, Lcom/eygraber/uri/Uri$Builder;-><init>(IZ)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/String;

    .line 92
    .line 93
    iput-object v2, v0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->ssp$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 96
    .line 97
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 102
    .line 103
    iput-object p0, v0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 110
    .line 111
    iput-object p0, v0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 112
    .line 113
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/eygraber/uri/Uri;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public final getCachedSsi()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->cachedSsi$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getEncodedAuthority()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->encodedAuthority$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getPathSegments()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    .line 9
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/uris/StringUri;->uriString:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
