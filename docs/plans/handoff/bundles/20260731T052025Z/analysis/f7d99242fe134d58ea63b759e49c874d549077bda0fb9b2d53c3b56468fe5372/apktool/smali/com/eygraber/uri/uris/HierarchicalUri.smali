.class public final Lcom/eygraber/uri/uris/HierarchicalUri;
.super Lcom/eygraber/uri/uris/AbstractHierarchicalUri;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final authorityPart:Lcom/eygraber/uri/parts/Part;

.field public final encodedAuthority$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final encodedFragment$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final fragmentPart:Lcom/eygraber/uri/parts/Part;

.field public final pathPart:Lcom/eygraber/uri/parts/PathPart;

.field public final pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final queryPart:Lcom/eygraber/uri/parts/Part;

.field public final scheme:Ljava/lang/String;

.field public final ssp$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final uriString$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/eygraber/uri/parts/Part;Lcom/eygraber/uri/parts/PathPart;Lcom/eygraber/uri/parts/Part;Lcom/eygraber/uri/parts/Part;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->scheme:Ljava/lang/String;

    .line 5
    .line 6
    sget-object p1, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    sget-object p2, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 11
    .line 12
    :cond_0
    iput-object p2, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->authorityPart:Lcom/eygraber/uri/parts/Part;

    .line 13
    .line 14
    if-nez p3, :cond_1

    .line 15
    .line 16
    sget-object p3, Lcom/eygraber/uri/parts/PathPart;->NULL:Lcom/eygraber/uri/parts/PathPart;

    .line 17
    .line 18
    :cond_1
    iput-object p3, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->pathPart:Lcom/eygraber/uri/parts/PathPart;

    .line 19
    .line 20
    if-nez p4, :cond_2

    .line 21
    .line 22
    sget-object p4, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 23
    .line 24
    :cond_2
    iput-object p4, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->queryPart:Lcom/eygraber/uri/parts/Part;

    .line 25
    .line 26
    if-nez p5, :cond_3

    .line 27
    .line 28
    sget-object p5, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 29
    .line 30
    :cond_3
    iput-object p5, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 31
    .line 32
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 36
    .line 37
    .line 38
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->ssp$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 44
    .line 45
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    const/4 p2, 0x7

    .line 48
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/16 p2, 0x8

    .line 59
    .line 60
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 61
    .line 62
    .line 63
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 64
    .line 65
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 69
    .line 70
    const/16 p2, 0x9

    .line 71
    .line 72
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 73
    .line 74
    .line 75
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 76
    .line 77
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/16 p2, 0xa

    .line 83
    .line 84
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 85
    .line 86
    .line 87
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 88
    .line 89
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 90
    .line 91
    .line 92
    iput-object p2, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->encodedAuthority$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 93
    .line 94
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    const/16 p2, 0xb

    .line 97
    .line 98
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 99
    .line 100
    .line 101
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 102
    .line 103
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/16 p2, 0xc

    .line 109
    .line 110
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 111
    .line 112
    .line 113
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 114
    .line 115
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 119
    .line 120
    const/4 p2, 0x1

    .line 121
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 122
    .line 123
    .line 124
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 125
    .line 126
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    const/4 p2, 0x2

    .line 132
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 133
    .line 134
    .line 135
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 136
    .line 137
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 141
    .line 142
    const/4 p2, 0x3

    .line 143
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 144
    .line 145
    .line 146
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 147
    .line 148
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 149
    .line 150
    .line 151
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 152
    .line 153
    const/4 p2, 0x4

    .line 154
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 155
    .line 156
    .line 157
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 158
    .line 159
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 160
    .line 161
    .line 162
    iput-object p2, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->encodedFragment$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 163
    .line 164
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 165
    .line 166
    const/4 p2, 0x5

    .line 167
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 168
    .line 169
    .line 170
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 171
    .line 172
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 173
    .line 174
    .line 175
    iput-object p2, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 176
    .line 177
    new-instance p1, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    const/4 p2, 0x6

    .line 180
    invoke-direct {p1, p0, p2}, Lcom/eygraber/uri/uris/HierarchicalUri$$ExternalSyntheticLambda0;-><init>(Lcom/eygraber/uri/uris/HierarchicalUri;I)V

    .line 181
    .line 182
    .line 183
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 184
    .line 185
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 186
    .line 187
    .line 188
    iput-object p2, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->uriString$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 189
    .line 190
    return-void
.end method


# virtual methods
.method public final appendSspTo(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->authorityPart:Lcom/eygraber/uri/parts/Part;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "//"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->pathPart:Lcom/eygraber/uri/parts/PathPart;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->queryPart:Lcom/eygraber/uri/parts/Part;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/Part;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x3f

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public final buildUpon()Lcom/eygraber/uri/Uri$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/eygraber/uri/Uri$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/eygraber/uri/Uri$Builder;-><init>(IZ)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->scheme:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/eygraber/uri/Uri$Builder;->scheme:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->authorityPart:Lcom/eygraber/uri/parts/Part;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->pathPart:Lcom/eygraber/uri/parts/PathPart;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/eygraber/uri/Uri$Builder;->path:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lcom/eygraber/uri/Uri$Builder;->opaquePart:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->queryPart:Lcom/eygraber/uri/parts/Part;

    .line 24
    .line 25
    iput-object v1, v0, Lcom/eygraber/uri/Uri$Builder;->query:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->fragmentPart:Lcom/eygraber/uri/parts/Part;

    .line 28
    .line 29
    iput-object p0, v0, Lcom/eygraber/uri/Uri$Builder;->fragment:Ljava/lang/Object;

    .line 30
    .line 31
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
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/HierarchicalUri;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public final getEncodedAuthority()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->encodedAuthority$delegate:Lkotlin/SynchronizedLazyImpl;

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
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->pathSegments$delegate:Lkotlin/SynchronizedLazyImpl;

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
    invoke-virtual {p0}, Lcom/eygraber/uri/uris/HierarchicalUri;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/eygraber/uri/uris/HierarchicalUri;->uriString$delegate:Lkotlin/SynchronizedLazyImpl;

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
