.class public final Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final infoboxVarsByLang:Ljava/util/Map;

.field public static final magicWords:Ljava/util/LinkedHashMap;

.field public static magicWordsLang:Ljava/lang/String;


# instance fields
.field public imagePosition:Ljava/lang/String;

.field public imageSize:Ljava/lang/String;

.field public imageType:Ljava/lang/String;

.field public final insertMediaFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public final originalSearchQuery:Ljava/lang/String;

.field public searchQuery:Ljava/lang/String;

.field public selectedImage:Lorg/wikipedia/page/PageTitle;

.field public final selectedImageSource:Ljava/lang/String;

.field public final selectedImageSourceProjects:Ljava/lang/String;

.field public final wikiSite:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVarsCollection;

    .line 2
    .line 3
    const-string v5, "drug_name"

    .line 4
    .line 5
    const-string v6, "image"

    .line 6
    .line 7
    const-string v1, "name"

    .line 8
    .line 9
    const-string v2, "official_name"

    .line 10
    .line 11
    const-string v3, "species"

    .line 12
    .line 13
    const-string v4, "taxon"

    .line 14
    .line 15
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;

    .line 20
    .line 21
    const-string v3, "taxobox"

    .line 22
    .line 23
    const-string v4, "image"

    .line 24
    .line 25
    const-string v5, "image_caption"

    .line 26
    .line 27
    const-string v6, "image_alt"

    .line 28
    .line 29
    invoke-direct {v2, v3, v4, v5, v6}, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;

    .line 33
    .line 34
    const-string v7, "ImageCaption"

    .line 35
    .line 36
    const-string v8, "ImageAlt"

    .line 37
    .line 38
    const-string v9, "chembox"

    .line 39
    .line 40
    const-string v10, "ImageFile"

    .line 41
    .line 42
    invoke-direct {v3, v9, v10, v7, v8}, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;

    .line 46
    .line 47
    const-string v8, "speciesbox"

    .line 48
    .line 49
    invoke-direct {v7, v8, v4, v5, v6}, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;

    .line 53
    .line 54
    const-string v8, "infobox.*place"

    .line 55
    .line 56
    const-string v9, "image_skyline"

    .line 57
    .line 58
    invoke-direct {v4, v8, v9, v5, v6}, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v8, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;

    .line 62
    .line 63
    const-string v10, "infobox.*settlement"

    .line 64
    .line 65
    invoke-direct {v8, v10, v9, v5, v6}, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 v5, 0x5

    .line 69
    new-array v5, v5, [Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVars;

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    aput-object v2, v5, v6

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    aput-object v3, v5, v2

    .line 76
    .line 77
    const/4 v2, 0x2

    .line 78
    aput-object v7, v5, v2

    .line 79
    .line 80
    const/4 v2, 0x3

    .line 81
    aput-object v4, v5, v2

    .line 82
    .line 83
    const/4 v2, 0x4

    .line 84
    aput-object v8, v5, v2

    .line 85
    .line 86
    invoke-static {v5}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v0, v1, v2}, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel$InfoboxVarsCollection;-><init>([Ljava/lang/String;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    const-string v1, "en"

    .line 94
    .line 95
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sput-object v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->infoboxVarsByLang:Ljava/util/Map;

    .line 103
    .line 104
    const-string v0, ""

    .line 105
    .line 106
    sput-object v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWordsLang:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 114
    .line 115
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "invokeSource"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 19
    .line 20
    const-string/jumbo v0, "wikiSite"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast v0, Lorg/wikipedia/dataclient/WikiSite;

    .line 31
    .line 32
    iput-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 33
    .line 34
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 35
    .line 36
    const-string v1, "searchQuery"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "_"

    .line 48
    .line 49
    const-string v3, " "

    .line 50
    .line 51
    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->removeHTMLTags(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->searchQuery:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->originalSearchQuery:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "imageTitle"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 70
    .line 71
    iput-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 72
    .line 73
    const-string v1, "imageSource"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, ""

    .line 82
    .line 83
    if-nez v1, :cond_0

    .line 84
    .line 85
    move-object v1, v2

    .line 86
    :cond_0
    iput-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSource:Ljava/lang/String;

    .line 87
    .line 88
    const-string v1, "imageSourceProjects"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    if-nez v1, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    move-object v2, v1

    .line 100
    :goto_0
    iput-object v2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImageSourceProjects:Ljava/lang/String;

    .line 101
    .line 102
    const-string v1, "resultImagePos"

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/lang/String;

    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    const-string v3, "img_right"

    .line 112
    .line 113
    const-string v4, "img_left"

    .line 114
    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    iget-object v1, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance v5, Ljava/util/Locale;

    .line 123
    .line 124
    invoke-direct {v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-ne v1, v2, :cond_2

    .line 132
    .line 133
    move-object v1, v4

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    move-object v1, v3

    .line 136
    :cond_3
    :goto_1
    iput-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imagePosition:Ljava/lang/String;

    .line 137
    .line 138
    const-string v1, "resultImageType"

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/lang/String;

    .line 145
    .line 146
    const-string v5, "img_thumbnail"

    .line 147
    .line 148
    if-nez v1, :cond_4

    .line 149
    .line 150
    move-object v1, v5

    .line 151
    :cond_4
    iput-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imageType:Ljava/lang/String;

    .line 152
    .line 153
    const-string v1, "resultImageSize"

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/String;

    .line 160
    .line 161
    if-nez p1, :cond_5

    .line 162
    .line 163
    const-string p1, "220x124"

    .line 164
    .line 165
    :cond_5
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->imageSize:Ljava/lang/String;

    .line 166
    .line 167
    new-instance p1, Landroidx/paging/PagingConfig;

    .line 168
    .line 169
    const/16 v1, 0xa

    .line 170
    .line 171
    const/16 v6, 0x3e

    .line 172
    .line 173
    invoke-direct {p1, v1, v6}, Landroidx/paging/PagingConfig;-><init>(II)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    const/4 v6, 0x7

    .line 179
    invoke-direct {v1, v6, p0}, Lorg/wikipedia/games/WikiGames$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    new-instance v6, Landroidx/paging/PageFetcher;

    .line 183
    .line 184
    new-instance v7, Landroidx/paging/Pager$pageFetcher$2;

    .line 185
    .line 186
    const/4 v8, 0x0

    .line 187
    const/4 v9, 0x0

    .line 188
    invoke-direct {v7, v8, v1, v9}, Landroidx/paging/Pager$pageFetcher$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v6, v7, p1}, Landroidx/paging/PageFetcher;-><init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, v6, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 195
    .line 196
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {p1, v1}, Landroidx/paging/FlowExtKt;->cachedIn(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->insertMediaFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 205
    .line 206
    sget-object p1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWordsLang:Ljava/lang/String;

    .line 207
    .line 208
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_6

    .line 215
    .line 216
    return-void

    .line 217
    :cond_6
    const-string p1, "img_none"

    .line 218
    .line 219
    const-string v0, "none"

    .line 220
    .line 221
    sget-object v1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->magicWords:Ljava/util/LinkedHashMap;

    .line 222
    .line 223
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    const-string p1, "img_center"

    .line 227
    .line 228
    const-string v0, "center"

    .line 229
    .line 230
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    const-string p1, "left"

    .line 234
    .line 235
    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    const-string p1, "right"

    .line 239
    .line 240
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    const-string p1, "thumb"

    .line 244
    .line 245
    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    const-string p1, "img_frameless"

    .line 249
    .line 250
    const-string v0, "frameless"

    .line 251
    .line 252
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    const-string p1, "img_framed"

    .line 256
    .line 257
    const-string v0, "frame"

    .line 258
    .line 259
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    const-string p1, "img_alt"

    .line 263
    .line 264
    const-string v0, "alt=$1"

    .line 265
    .line 266
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 274
    .line 275
    new-instance v1, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 276
    .line 277
    const/16 v3, 0x9

    .line 278
    .line 279
    invoke-direct {v1, v0, v3}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 280
    .line 281
    .line 282
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 283
    .line 284
    invoke-direct {v0, v2, p0, v9}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 285
    .line 286
    .line 287
    const/4 p0, 0x2

    .line 288
    invoke-static {p1, v1, v9, v0, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 289
    .line 290
    .line 291
    return-void
.end method
