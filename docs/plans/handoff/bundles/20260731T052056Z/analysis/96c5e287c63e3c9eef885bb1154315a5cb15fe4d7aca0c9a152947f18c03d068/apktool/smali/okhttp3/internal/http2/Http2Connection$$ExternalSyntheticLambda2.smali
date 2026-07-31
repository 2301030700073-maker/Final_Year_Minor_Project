.class public final synthetic Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Lkotlin/Function;)V
    .locals 0

    .line 14
    iput p2, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p4, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iput p1, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlinx/serialization/internal/EnumDescriptor;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    .line 9
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput p2, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    .line 7
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v4, p0

    .line 15
    check-cast v4, Lkotlin/jvm/functions/Function6;

    .line 16
    .line 17
    move-object v5, v3

    .line 18
    check-cast v5, Lorg/wikipedia/search/SearchResult;

    .line 19
    .line 20
    iget-object v6, v5, Lorg/wikipedia/search/SearchResult;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 21
    .line 22
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v9

    .line 28
    invoke-virtual {v5}, Lorg/wikipedia/search/SearchResult;->getLocation()Landroid/location/Location;

    .line 29
    .line 30
    .line 31
    move-result-object v10

    .line 32
    move-object v8, v7

    .line 33
    invoke-interface/range {v4 .. v10}, Lkotlin/jvm/functions/Function6;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 38
    .line 39
    check-cast v3, Lorg/wikipedia/feed/news/NewsCard;

    .line 40
    .line 41
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CardImpression;

    .line 42
    .line 43
    invoke-direct {v0, v3, v2}, Lorg/wikipedia/feed/HomeAction$CardImpression;-><init>(Lorg/wikipedia/feed/model/Card;I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 51
    .line 52
    check-cast v3, Lorg/wikipedia/feed/featured/FeaturedArticleCard;

    .line 53
    .line 54
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CardImpression;

    .line 55
    .line 56
    invoke-direct {v0, v3, v2}, Lorg/wikipedia/feed/HomeAction$CardImpression;-><init>(Lorg/wikipedia/feed/model/Card;I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :pswitch_2
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    check-cast v3, Lorg/wikipedia/feed/didyouknow/DidYouKnowCard;

    .line 66
    .line 67
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CardImpression;

    .line 68
    .line 69
    invoke-direct {v0, v3, v2}, Lorg/wikipedia/feed/HomeAction$CardImpression;-><init>(Lorg/wikipedia/feed/model/Card;I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :pswitch_3
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    check-cast v3, Lorg/wikipedia/feed/image/FeaturedImageCard;

    .line 79
    .line 80
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CardImpression;

    .line 81
    .line 82
    invoke-direct {v0, v3, v2}, Lorg/wikipedia/feed/HomeAction$CardImpression;-><init>(Lorg/wikipedia/feed/model/Card;I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :pswitch_4
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 90
    .line 91
    check-cast v3, Lorg/wikipedia/feed/onthisday/OnThisDayCard;

    .line 92
    .line 93
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CardImpression;

    .line 94
    .line 95
    invoke-direct {v0, v3, v2}, Lorg/wikipedia/feed/HomeAction$CardImpression;-><init>(Lorg/wikipedia/feed/model/Card;I)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :pswitch_5
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 103
    .line 104
    check-cast v3, Lorg/wikipedia/feed/topread/TopReadCard;

    .line 105
    .line 106
    new-instance v0, Lorg/wikipedia/feed/HomeAction$CardImpression;

    .line 107
    .line 108
    invoke-direct {v0, v3, v2}, Lorg/wikipedia/feed/HomeAction$CardImpression;-><init>(Lorg/wikipedia/feed/model/Card;I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :pswitch_6
    check-cast p0, Ljava/lang/String;

    .line 116
    .line 117
    check-cast v3, Lkotlinx/serialization/internal/EnumDescriptor;

    .line 118
    .line 119
    new-array v0, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    move v4, v1

    .line 123
    :goto_0
    if-ge v4, v2, :cond_0

    .line 124
    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/16 v6, 0x2e

    .line 131
    .line 132
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v6, v3, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    .line 136
    .line 137
    aget-object v6, v6, v4

    .line 138
    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    sget-object v6, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE$3:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 147
    .line 148
    new-array v7, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 149
    .line 150
    invoke-static {v5, v6, v7}, Lkotlin/text/RegexKt;->buildSerialDescriptor$default(Ljava/lang/String;Landroidx/room/Room;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    aput-object v5, v0, v4

    .line 155
    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_0
    return-object v0

    .line 160
    :pswitch_7
    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    .line 161
    .line 162
    check-cast v3, Lokhttp3/internal/http2/ErrorCode;

    .line 163
    .line 164
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 168
    .line 169
    invoke-virtual {v0, v2, v3}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 175
    .line 176
    invoke-virtual {p0, v2, v2, v0}, Lokhttp3/internal/http2/Http2Connection;->close$okhttp(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 177
    .line 178
    .line 179
    :goto_1
    return-object v1

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
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
