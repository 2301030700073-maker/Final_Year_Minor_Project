.class public final synthetic Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, ""

    .line 6
    .line 7
    iget-object p0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/templates/TemplatesSearchActivity;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget p1, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->$r8$clinit:I

    .line 13
    .line 14
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Lorg/wikipedia/views/CabSearchView;

    .line 21
    .line 22
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Landroidx/paging/HintHandler;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v1, 0x23

    .line 44
    .line 45
    if-lt p1, v1, :cond_0

    .line 46
    .line 47
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 48
    .line 49
    invoke-direct {p1, p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/16 v1, 0x1e

    .line 54
    .line 55
    if-lt p1, v1, :cond_1

    .line 56
    .line 57
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 58
    .line 59
    invoke-direct {p1, p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/16 v1, 0x1a

    .line 64
    .line 65
    if-lt p1, v1, :cond_2

    .line 66
    .line 67
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 68
    .line 69
    invoke-direct {p1, p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 74
    .line 75
    invoke-direct {p1, p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {p1}, Lcoil3/util/UtilsKt;->hide()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    const-string p0, "binding"

    .line 83
    .line 84
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :pswitch_0
    sget p1, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->$r8$clinit:I

    .line 89
    .line 90
    invoke-virtual {p0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p1, p1, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->selectedPageTitle:Lorg/wikipedia/page/PageTitle;

    .line 95
    .line 96
    if-eqz p1, :cond_a

    .line 97
    .line 98
    const-string v3, "template_insert_click"

    .line 99
    .line 100
    invoke-static {p0, v3}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->sendPatrollerExperienceEvent$default(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v3, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/uuid/UuidKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentUsedTemplates()Ljava/util/Set;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/Iterable;

    .line 114
    .line 115
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    move-object v4, p1

    .line 120
    check-cast v4, Ljava/util/Collection;

    .line 121
    .line 122
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    .line 124
    .line 125
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    const/16 v5, 0x64

    .line 130
    .line 131
    if-ge v4, v5, :cond_4

    .line 132
    .line 133
    move-object p1, v3

    .line 134
    :cond_4
    :try_start_0
    sget-object v3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    new-instance v4, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 140
    .line 141
    sget-object v6, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 142
    .line 143
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    const/4 v7, 0x2

    .line 148
    invoke-direct {v4, v6, v7}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v4, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_1

    .line 156
    :catch_0
    move-exception p1

    .line 157
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 158
    .line 159
    .line 160
    move-object p1, v0

    .line 161
    :goto_1
    const v3, 0x7f120666

    .line 162
    .line 163
    .line 164
    invoke-static {v3, p1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->insertTemplateFragment:Lorg/wikipedia/edit/templates/InsertTemplateFragment;

    .line 168
    .line 169
    if-eqz p1, :cond_9

    .line 170
    .line 171
    iget-object v0, p1, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v0, Landroid/widget/TextView;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    const-string/jumbo v4, "{{"

    .line 187
    .line 188
    .line 189
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    iget-object p1, p1, Lorg/wikipedia/edit/templates/InsertTemplateFragment;->_binding:Lcom/google/gson/GsonBuilder;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Landroid/widget/LinearLayout;

    .line 207
    .line 208
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    if-ge v1, v3, :cond_8

    .line 213
    .line 214
    add-int/lit8 v3, v1, 0x1

    .line 215
    .line 216
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-eqz v1, :cond_7

    .line 221
    .line 222
    const v4, 0x7f09069a

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 230
    .line 231
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    check-cast v4, Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    if-eqz v6, :cond_5

    .line 245
    .line 246
    move-object v4, v2

    .line 247
    goto :goto_3

    .line 248
    :cond_5
    const-string v6, "="

    .line 249
    .line 250
    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    :goto_3
    const v6, 0x7f0901f8

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 262
    .line 263
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-lez v6, :cond_6

    .line 284
    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string/jumbo v0, "|"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    :cond_6
    move v1, v3

    .line 310
    goto :goto_2

    .line 311
    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 312
    .line 313
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 314
    .line 315
    .line 316
    throw p0

    .line 317
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string/jumbo v0, "}}"

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    new-instance v0, Landroid/content/Intent;

    .line 336
    .line 337
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 338
    .line 339
    .line 340
    const-string v1, "resultWikiText"

    .line 341
    .line 342
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p0, v5, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 353
    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_9
    const-string p0, "insertTemplateFragment"

    .line 357
    .line 358
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v0

    .line 362
    :cond_a
    :goto_4
    return-void

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
