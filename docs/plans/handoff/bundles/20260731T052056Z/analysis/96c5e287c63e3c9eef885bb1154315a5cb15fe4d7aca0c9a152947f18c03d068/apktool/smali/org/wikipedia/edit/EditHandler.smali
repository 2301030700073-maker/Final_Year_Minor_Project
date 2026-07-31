.class public final Lorg/wikipedia/edit/EditHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;


# instance fields
.field public currentPage:Lorg/wikipedia/page/Page;

.field public final fragment:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Lorg/wikipedia/bridge/CommunicationBridge;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 8
    .line 9
    const-string p1, "edit_section"

    .line 10
    .line 11
    invoke-virtual {p2, p1, p0}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "add_title_description"

    .line 15
    .line 16
    invoke-virtual {p2, p1, p0}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    .line 15
    .line 16
    if-eqz v1, :cond_b

    .line 17
    .line 18
    iget-object v2, v1, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 19
    .line 20
    iget-object v3, v1, Lorg/wikipedia/page/Page;->pageProperties:Lorg/wikipedia/page/PageProperties;

    .line 21
    .line 22
    iget-object v4, v3, Lorg/wikipedia/page/PageProperties;->descriptionSource:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, v3, Lorg/wikipedia/page/PageProperties;->wikiBaseItem:Ljava/lang/String;

    .line 25
    .line 26
    const-string v5, "edit_section"

    .line 27
    .line 28
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const-string v6, "local"

    .line 33
    .line 34
    const-string v7, "test"

    .line 35
    .line 36
    const-string v8, "en"

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    if-eqz v5, :cond_7

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    const-string p1, "sectionId"

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getInt(Lkotlinx/serialization/json/JsonPrimitive;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object p1, v10

    .line 68
    :goto_0
    if-eqz p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move p1, v9

    .line 76
    :goto_1
    if-nez p1, :cond_6

    .line 77
    .line 78
    iget-object p2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 79
    .line 80
    iget-object p2, p2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_5

    .line 90
    .line 91
    invoke-static {p2, v7, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_3

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    if-eqz v3, :cond_6

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-nez p2, :cond_4

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_4
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-nez p2, :cond_6

    .line 112
    .line 113
    :cond_5
    :goto_2
    iget-boolean p2, v1, Lorg/wikipedia/page/Page;->isArticle:Z

    .line 114
    .line 115
    if-eqz p2, :cond_6

    .line 116
    .line 117
    new-instance v3, Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lorg/wikipedia/views/ObservableWebView;->getTouchStartX()F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-virtual {v3, p1}, Landroid/view/View;->setX(F)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lorg/wikipedia/views/ObservableWebView;->getTouchStartY()F

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {v3, p1}, Landroid/view/View;->setY(F)V

    .line 146
    .line 147
    .line 148
    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    check-cast p1, Landroid/view/ViewGroup;

    .line 154
    .line 155
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    .line 157
    .line 158
    new-instance v1, Lokhttp3/Request$Builder;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const/4 v5, 0x0

    .line 165
    const v6, 0x7f1301cf

    .line 166
    .line 167
    .line 168
    const/4 v4, 0x0

    .line 169
    invoke-direct/range {v1 .. v6}, Lokhttp3/Request$Builder;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Landroidx/appcompat/view/SupportMenuInflater;

    .line 173
    .line 174
    invoke-direct {p1, v2}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    .line 175
    .line 176
    .line 177
    iget-object p2, v1, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 180
    .line 181
    const v0, 0x7f0e0018

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/view/SupportMenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Lorg/wikipedia/media/AvPlayer;

    .line 188
    .line 189
    const/4 p2, 0x2

    .line 190
    invoke-direct {p1, p2, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iput-object p1, v1, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 194
    .line 195
    new-instance p1, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 196
    .line 197
    const/4 p2, 0x4

    .line 198
    invoke-direct {p1, p2, p0, v3}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iput-object p1, v1, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 202
    .line 203
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->show()V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_6
    :goto_3
    invoke-virtual {p0, p1, v10}, Lorg/wikipedia/edit/EditHandler;->startEditingSection(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_7
    const-string p0, "add_title_description"

    .line 212
    .line 213
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_b

    .line 218
    .line 219
    iget-object p0, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 220
    .line 221
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-nez p1, :cond_a

    .line 231
    .line 232
    invoke-static {p0, v7, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 233
    .line 234
    .line 235
    move-result p0

    .line 236
    if-eqz p0, :cond_8

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_8
    if-eqz v3, :cond_b

    .line 240
    .line 241
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    if-nez p0, :cond_9

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_9
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    if-nez p0, :cond_b

    .line 253
    .line 254
    :cond_a
    :goto_4
    sget-object p0, Lorg/wikipedia/Constants$InvokeSource;->PAGE_DESCRIPTION_CTA:Lorg/wikipedia/Constants$InvokeSource;

    .line 255
    .line 256
    invoke-virtual {v0, v10, p0}, Lorg/wikipedia/page/PageFragment;->verifyBeforeEditingDescription(Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;)V

    .line 257
    .line 258
    .line 259
    :cond_b
    :goto_5
    return-void
.end method

.method public final startEditingSection(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/EditHandler;->currentPage:Lorg/wikipedia/page/Page;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt p1, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/wikipedia/page/Section;

    .line 23
    .line 24
    iget v1, v1, Lorg/wikipedia/page/Section;->id:I

    .line 25
    .line 26
    iget-object v2, v0, Lorg/wikipedia/page/Page;->sections:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lorg/wikipedia/page/Section;

    .line 33
    .line 34
    iget-object p1, p1, Lorg/wikipedia/page/Section;->anchor:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, v0, Lorg/wikipedia/page/Page;->title:Lorg/wikipedia/page/PageTitle;

    .line 37
    .line 38
    iget-object p0, p0, Lorg/wikipedia/edit/EditHandler;->fragment:Lorg/wikipedia/page/PageFragment;

    .line 39
    .line 40
    invoke-virtual {p0, v1, p1, v0, p2}, Lorg/wikipedia/page/PageFragment;->onRequestEditSection(ILjava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    :goto_0
    sget-object p0, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    const-string p2, "Attempting to edit a mismatched section ID."

    .line 48
    .line 49
    invoke-virtual {p0, p2, p1}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method
