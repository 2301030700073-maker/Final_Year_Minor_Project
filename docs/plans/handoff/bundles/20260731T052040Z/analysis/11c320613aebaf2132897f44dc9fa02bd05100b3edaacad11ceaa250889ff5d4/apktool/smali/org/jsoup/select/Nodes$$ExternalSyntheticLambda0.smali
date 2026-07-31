.class public final synthetic Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string/jumbo v1, "src"

    .line 5
    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_1
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 25
    .line 26
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampExtractorHelper;->$r8$lambda$_otPZ1OuWA5NJNqTs1LY7wp4kIc(Lorg/jsoup/nodes/Element;)Lj$/util/stream/Stream;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_2
    check-cast p1, Lcom/grack/nanojson/JsonObject;

    .line 32
    .line 33
    const-string/jumbo p0, "token"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :pswitch_3
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    new-instance p0, Lorg/schabi/newpipe/extractor/Image;

    .line 44
    .line 45
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v0, -0x1

    .line 50
    sget-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 51
    .line 52
    invoke-direct {p0, p1, v0, v0, v1}, Lorg/schabi/newpipe/extractor/Image;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/extractor/Image$ResolutionLevel;)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_4
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_5
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 64
    .line 65
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/bandcamp/extractors/BandcampChannelExtractor;->$r8$lambda$Q2tJmlyo2MggE6J2eoSBKunzoSk(Lorg/jsoup/nodes/Element;)Lj$/util/stream/Stream;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_6
    check-cast p1, Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lj$/time/temporal/ChronoUnit;

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_7
    check-cast p1, Ljava/util/Locale;

    .line 80
    .line 81
    new-instance p0, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_8
    check-cast p1, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 96
    .line 97
    iget-object p0, p1, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    .line 98
    .line 99
    return-object p0

    .line 100
    :pswitch_9
    check-cast p1, Landroid/text/Editable;

    .line 101
    .line 102
    sget p0, Lorg/schabi/newpipe/download/DownloadDialog;->$r8$clinit:I

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :pswitch_a
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    .line 116
    .line 117
    return-object p0

    .line 118
    :pswitch_b
    check-cast p1, Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {p1}, Lorg/schabi/newpipe/DownloaderImpl;->$r8$lambda$VsCEXXIexbPa7gJNKOheeaqrLlI(Ljava/lang/String;)Lj$/util/stream/Stream;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_c
    check-cast p1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 126
    .line 127
    check-cast p1, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    .line 128
    .line 129
    iget-wide p0, p1, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 130
    .line 131
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0

    .line 136
    :pswitch_d
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .line 137
    .line 138
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->$r8$lambda$BZx--YrU192dSohvIAdyXm2CtTQ(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_e
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .line 144
    .line 145
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->$r8$lambda$WwcLkGJDKP1fFShcyIZQzd1X5cU(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :pswitch_f
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .line 151
    .line 152
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeDataView;->$r8$lambda$gSxUhXp_1c7xZN8-5snqq8YKbbM(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :pswitch_10
    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    .line 158
    .line 159
    invoke-static {p1}, Lorg/mozilla/javascript/typedarrays/NativeArrayBuffer;->$r8$lambda$EsHfdcqH5xu4IHOcGHLO8gOE3Ew(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    return-object p0

    .line 164
    :pswitch_11
    check-cast p1, Lorg/jsoup/nodes/Node;

    .line 165
    .line 166
    new-instance p0, Ljava/util/WeakHashMap;

    .line 167
    .line 168
    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    .line 169
    .line 170
    .line 171
    return-object p0

    .line 172
    :pswitch_12
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 173
    .line 174
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    return-object p0

    .line 179
    :pswitch_13
    check-cast p1, Ljava/lang/String;

    .line 180
    .line 181
    new-instance p0, Ljava/util/HashMap;

    .line 182
    .line 183
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .line 185
    .line 186
    return-object p0

    .line 187
    :pswitch_14
    check-cast p1, Ljava/util/List;

    .line 188
    .line 189
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    return-object p0

    .line 194
    :pswitch_15
    check-cast p1, Lorg/jsoup/nodes/Node;

    .line 195
    .line 196
    instance-of p0, p1, Lorg/jsoup/nodes/TextNode;

    .line 197
    .line 198
    if-eqz p0, :cond_0

    .line 199
    .line 200
    check-cast p1, Lorg/jsoup/nodes/TextNode;

    .line 201
    .line 202
    invoke-virtual {p1}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    goto :goto_0

    .line 207
    :cond_0
    const-string p0, "br"

    .line 208
    .line 209
    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Node;->nameIs(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    if-eqz p0, :cond_1

    .line 214
    .line 215
    const-string p0, "\n"

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_1
    const-string p0, ""

    .line 219
    .line 220
    :goto_0
    return-object p0

    .line 221
    :pswitch_16
    check-cast p1, Lorg/jsoup/internal/StringUtil$StringJoiner;

    .line 222
    .line 223
    iget-object p0, p1, Lorg/jsoup/internal/StringUtil$StringJoiner;->sb:Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-static {p0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    iput-object v0, p1, Lorg/jsoup/internal/StringUtil$StringJoiner;->sb:Ljava/lang/StringBuilder;

    .line 230
    .line 231
    return-object p0

    .line 232
    :pswitch_17
    const-class p0, Lcom/grack/nanojson/JsonObject;

    .line 233
    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    return-object p0

    .line 239
    :pswitch_18
    check-cast p1, Ljava/util/Map$Entry;

    .line 240
    .line 241
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :pswitch_19
    check-cast p1, Ljava/util/Map$Entry;

    .line 247
    .line 248
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    return-object p0

    .line 253
    :pswitch_1a
    check-cast p1, Ljava/util/Collection;

    .line 254
    .line 255
    invoke-static {p1}, Lj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    return-object p0

    .line 260
    :pswitch_1b
    check-cast p1, Ljava/util/Map$Entry;

    .line 261
    .line 262
    invoke-static {p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->$r8$lambda$W49fn9yusJFg7zcyIaoo-PrjQZ8(Ljava/util/Map$Entry;)Lcom/google/common/collect/CollectSpliterators$1;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    return-object p0

    .line 267
    :pswitch_1c
    check-cast p1, Lorg/jsoup/nodes/Node;

    .line 268
    .line 269
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    return-object p0

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
