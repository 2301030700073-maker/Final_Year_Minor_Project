.class public final synthetic Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/eygraber/uri/uris/AbstractHierarchicalUri;


# direct methods
.method public synthetic constructor <init>(Lcom/eygraber/uri/uris/AbstractHierarchicalUri;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/uris/AbstractHierarchicalUri;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x40

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, -0x1

    .line 9
    iget-object p0, p0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri$$ExternalSyntheticLambda0;->f$0:Lcom/eygraber/uri/uris/AbstractHierarchicalUri;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Lcom/eygraber/uri/Uri;->getEncodedAuthority()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p0}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri;->findPortSeparator(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v5, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object v1, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/eygraber/uri/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_0
    invoke-interface {p0}, Lcom/eygraber/uri/Uri;->getEncodedAuthority()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-static {p0, v3, v2, v1}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;CII)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {p0}, Lcom/eygraber/uri/uris/AbstractHierarchicalUri;->findPortSeparator(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v1, v5, :cond_3

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :goto_1
    sget-object v0, Lcom/eygraber/uri/UriCodec;->lowercaseAsciiAlphaRange:Lkotlin/ranges/CharRange;

    .line 80
    .line 81
    invoke-static {p0}, Lcom/eygraber/uri/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :goto_2
    return-object v4

    .line 86
    :pswitch_1
    iget-object p0, p0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri;->_userInfo$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 87
    .line 88
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getEncoded()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :pswitch_2
    iget-object p0, p0, Lcom/eygraber/uri/uris/AbstractHierarchicalUri;->_userInfo$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 100
    .line 101
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Lcom/eygraber/uri/parts/Part;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/eygraber/uri/parts/AbstractPart;->getDecoded()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_3
    invoke-interface {p0}, Lcom/eygraber/uri/Uri;->getEncodedAuthority()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-nez p0, :cond_4

    .line 117
    .line 118
    sget-object p0, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 119
    .line 120
    invoke-static {v4}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    goto :goto_4

    .line 125
    :cond_4
    invoke-static {p0, v3, v2, v1}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;CII)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    sget-object v1, Lcom/eygraber/uri/parts/Part;->NULL:Lcom/eygraber/uri/parts/Part$EmptyPart;

    .line 130
    .line 131
    if-ne v0, v5, :cond_5

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    :goto_3
    invoke-static {v4}, Landroidx/room/util/DBUtil;->fromEncoded(Ljava/lang/String;)Lcom/eygraber/uri/parts/Part;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    :goto_4
    return-object p0

    .line 143
    :pswitch_4
    invoke-interface {p0}, Lcom/eygraber/uri/Uri;->getPathSegments()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_6

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    move-object v4, p0

    .line 159
    check-cast v4, Ljava/lang/String;

    .line 160
    .line 161
    :goto_5
    return-object v4

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
