.class public final synthetic Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "length"

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    const-string/jumbo v4, "startIndex"

    .line 8
    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v6, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    .line 14
    .line 15
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 16
    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string v0, "onTap"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v7, "innertubeCommand"

    .line 27
    .line 28
    invoke-virtual {v0, v7}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v3, v4}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ltz v3, :cond_8

    .line 41
    .line 42
    if-lt v2, v5, :cond_8

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_1

    .line 53
    .line 54
    goto/16 :goto_4

    .line 55
    .line 56
    :cond_1
    :try_start_0
    new-instance v4, Ljava/net/URL;

    .line 57
    .line 58
    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeURL(Ljava/net/URL;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_4

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string/jumbo v7, "www.youtube-nocookie.com"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_3

    .line 79
    .line 80
    const-string/jumbo v7, "youtu.be"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v4
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move v4, v1

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    :goto_0
    move v4, v5

    .line 93
    :goto_1
    if-eqz v4, :cond_5

    .line 94
    .line 95
    :cond_4
    move v1, v5

    .line 96
    :catch_0
    :cond_5
    invoke-static {v0}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v4, "<a href=\""

    .line 101
    .line 102
    const-string v5, "\">"

    .line 103
    .line 104
    invoke-static {v4, v0, v5}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v4, "onTapOptions"

    .line 109
    .line 110
    const-string v5, "accessibilityInfo"

    .line 111
    .line 112
    const-string v7, "accessibilityLabel"

    .line 113
    .line 114
    const-string v8, ""

    .line 115
    .line 116
    invoke-static {p1, v4, v5, v7, v8}, Lcom/android/tools/r8/RecordTag;->m(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v4, " Channel Link"

    .line 121
    .line 122
    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_7

    .line 133
    .line 134
    const-string v1, "YouTube: "

    .line 135
    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    new-instance v1, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;

    .line 144
    .line 145
    const/4 v4, 0x5

    .line 146
    invoke-direct {v1, p1, v4}, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    :goto_2
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;

    .line 151
    .line 152
    const/16 p1, 0x18

    .line 153
    .line 154
    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 155
    .line 156
    .line 157
    :goto_3
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 158
    .line 159
    const-string v4, "</a>"

    .line 160
    .line 161
    invoke-direct {p1, v0, v4, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 168
    .line 169
    add-int/2addr v3, v2

    .line 170
    invoke-direct {p0, v0, v4, v3, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    :cond_8
    :goto_4
    return-void

    .line 177
    :pswitch_0
    invoke-virtual {p1, v3, v4}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {p1, v1, v2}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-ltz v0, :cond_c

    .line 186
    .line 187
    if-ge v1, v5, :cond_9

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_9
    add-int/2addr v1, v0

    .line 191
    const-string/jumbo v2, "strikethrough"

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    const/4 v3, 0x0

    .line 199
    if-eqz v2, :cond_a

    .line 200
    .line 201
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 202
    .line 203
    const-string v4, "<s>"

    .line 204
    .line 205
    const-string v5, "</s>"

    .line 206
    .line 207
    invoke-direct {v2, v4, v5, v0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 214
    .line 215
    invoke-direct {v2, v4, v5, v1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    :cond_a
    const-string v2, "italic"

    .line 222
    .line 223
    invoke-virtual {p1, v2}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_b

    .line 228
    .line 229
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 230
    .line 231
    const-string v4, "<i>"

    .line 232
    .line 233
    const-string v5, "</i>"

    .line 234
    .line 235
    invoke-direct {v2, v4, v5, v0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 242
    .line 243
    invoke-direct {v2, v4, v5, v1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    :cond_b
    const-string/jumbo v2, "weightLabel"

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_c

    .line 257
    .line 258
    const-string v4, "FONT_WEIGHT_NORMAL"

    .line 259
    .line 260
    invoke-virtual {p1, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-nez p1, :cond_c

    .line 269
    .line 270
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 271
    .line 272
    const-string v2, "<b>"

    .line 273
    .line 274
    const-string v4, "</b>"

    .line 275
    .line 276
    invoke-direct {p1, v2, v4, v0, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    new-instance p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;

    .line 283
    .line 284
    invoke-direct {p0, v2, v4, v1, v3}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$Run;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    :cond_c
    :goto_5
    return-void

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeDescriptionHelper$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
