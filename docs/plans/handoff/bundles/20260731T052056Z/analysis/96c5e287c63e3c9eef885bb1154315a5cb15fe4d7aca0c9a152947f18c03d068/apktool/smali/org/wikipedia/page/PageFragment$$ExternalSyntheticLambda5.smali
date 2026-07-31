.class public final synthetic Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/views/ObservableWebView$OnScrollChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/page/PageFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScrollChanged(II)V
    .locals 11

    .line 1
    sget p1, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda5;->f$0:Lorg/wikipedia/page/PageFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lorg/wikipedia/page/PageFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    invoke-static {p1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {}, Lokio/Okio__OkioKt;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 25
    .line 26
    mul-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    sub-int/2addr p1, v1

    .line 29
    if-le p2, p1, :cond_b

    .line 30
    .line 31
    iget-boolean p1, v0, Lorg/wikipedia/page/PageViewModel;->isReadMoreLoaded:Z

    .line 32
    .line 33
    if-nez p1, :cond_b

    .line 34
    .line 35
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    if-eqz p0, :cond_a

    .line 39
    .line 40
    iget-object p2, v0, Lorg/wikipedia/page/PageViewModel;->page:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lorg/wikipedia/page/Page;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    const-string v2, ""

    .line 46
    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_0
    iget-object p2, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    iget-object p2, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object p2, p1

    .line 61
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iget-object v3, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Lorg/wikipedia/page/PageTitle;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    iget-object p1, v3, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 75
    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->uri:Landroid/net/Uri;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    new-array v3, v1, [C

    .line 89
    .line 90
    const/16 v4, 0x2f

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    aput-char v4, v3, v5

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    const/4 v6, -0x1

    .line 100
    add-int/2addr v4, v6

    .line 101
    if-ltz v4, :cond_7

    .line 102
    .line 103
    :goto_1
    add-int/lit8 v7, v4, -0x1

    .line 104
    .line 105
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    move v9, v5

    .line 110
    :goto_2
    if-ge v9, v1, :cond_4

    .line 111
    .line 112
    aget-char v10, v3, v9

    .line 113
    .line 114
    if-ne v8, v10, :cond_3

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    move v9, v6

    .line 121
    :goto_3
    if-ltz v9, :cond_6

    .line 122
    .line 123
    if-gez v7, :cond_5

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_5
    move v4, v7

    .line 127
    goto :goto_1

    .line 128
    :cond_6
    add-int/2addr v4, v1

    .line 129
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    :cond_7
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string v2, "://"

    .line 138
    .line 139
    invoke-static {p2, v2, p1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iget-object p2, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p2, Lorg/wikipedia/page/PageTitle;

    .line 146
    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    iget-object p2, p2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 150
    .line 151
    if-eqz p2, :cond_8

    .line 152
    .line 153
    iget-object p2, p2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 154
    .line 155
    if-nez p2, :cond_9

    .line 156
    .line 157
    :cond_8
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 158
    .line 159
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    :cond_9
    const-string v2, "\",       langCode: \""

    .line 168
    .line 169
    const-string v3, "\",       fragment: \"pcs-read-more\"   }})"

    .line 170
    .line 171
    const-string v4, "pcs.c1.Footer.appendReadMore({   platform: \"android\",   clientVersion: \"r/50598-r-2026-07-13\",   readMore: {        itemCount: 3,       apiBaseURL: \""

    .line 172
    .line 173
    invoke-static {v4, p1, v2, p2, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    :goto_5
    invoke-virtual {p0, v2}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    iput-boolean v1, v0, Lorg/wikipedia/page/PageViewModel;->isReadMoreLoaded:Z

    .line 181
    .line 182
    return-void

    .line 183
    :cond_a
    const-string p0, "bridge"

    .line 184
    .line 185
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :cond_b
    return-void
.end method
