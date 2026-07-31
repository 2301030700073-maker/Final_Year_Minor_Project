.class public final synthetic Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/page/PageTitle;

.field public final synthetic f$1:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lorg/wikipedia/page/PageTitle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/page/PageTitle;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;)V
    .locals 1

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/page/PageTitle;

    iput-object p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/page/PageTitle;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v2, v2, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    move-object v1, v3

    .line 29
    :cond_0
    iput-object v1, p1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 30
    .line 31
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 39
    .line 40
    const-string v1, "binding"

    .line 41
    .line 42
    if-eqz p1, :cond_e

    .line 43
    .line 44
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->viewButtonsGroup:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->getViewModel()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p1, p1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 56
    .line 57
    iget-object v2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 58
    .line 59
    const/16 v4, 0x8

    .line 60
    .line 61
    const/4 v5, 0x0

    .line 62
    if-eqz p1, :cond_a

    .line 63
    .line 64
    if-eqz v2, :cond_9

    .line 65
    .line 66
    iget-object v2, v2, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 67
    .line 68
    check-cast v2, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-eqz v6, :cond_3

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    instance-of v6, v6, Ljava/lang/Integer;

    .line 81
    .line 82
    if-nez v6, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast v6, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    :goto_0
    move v6, v5

    .line 100
    :goto_1
    or-int/2addr v0, v6

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 109
    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->controlsContainer:Landroid/widget/LinearLayout;

    .line 113
    .line 114
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 118
    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->myLocationButton:Landroid/view/View;

    .line 122
    .line 123
    check-cast v0, Landroid/widget/FrameLayout;

    .line 124
    .line 125
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 129
    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->listEmptyContainer:Landroid/view/View;

    .line 133
    .line 134
    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 135
    .line 136
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 140
    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->mapView:Landroid/view/View;

    .line 144
    .line 145
    check-cast v0, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 146
    .line 147
    sget-object v2, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 148
    .line 149
    iget-object v2, p1, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const/16 v4, 0x3c0

    .line 155
    .line 156
    invoke-static {v4, v2}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    new-instance v4, Lorg/wikipedia/media/AvPlayer;

    .line 168
    .line 169
    const/4 v5, 0x3

    .line 170
    invoke-direct {v4, v5, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v2, v4}, Lorg/wikipedia/views/FaceAndColorDetectImageView;->loadImage(Landroid/net/Uri;Lorg/wikipedia/views/imageservice/ImageLoadListener;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 177
    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->myLocationButton:Landroid/view/View;

    .line 181
    .line 182
    check-cast v0, Landroid/widget/FrameLayout;

    .line 183
    .line 184
    new-instance v1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;

    .line 185
    .line 186
    invoke-direct {v1, p1, p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda4;-><init>(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v3

    .line 197
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw v3

    .line 201
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v3

    .line 205
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v3

    .line 209
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v3

    .line 213
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v3

    .line 217
    :cond_a
    if-eqz v2, :cond_d

    .line 218
    .line 219
    iget-object p1, v2, Lorg/wikipedia/databinding/FragmentPlacesBinding;->controlsContainer:Landroid/widget/LinearLayout;

    .line 220
    .line 221
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 225
    .line 226
    if-eqz p1, :cond_c

    .line 227
    .line 228
    iget-object p1, p1, Lorg/wikipedia/databinding/FragmentPlacesBinding;->myLocationButton:Landroid/view/View;

    .line 229
    .line 230
    check-cast p1, Landroid/widget/FrameLayout;

    .line 231
    .line 232
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 239
    .line 240
    if-eqz p0, :cond_b

    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 243
    .line 244
    .line 245
    :cond_b
    return-void

    .line 246
    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v3

    .line 250
    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v3

    .line 254
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw v3

    .line 258
    :pswitch_0
    sget p1, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->$r8$clinit:I

    .line 259
    .line 260
    sget-object p1, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 261
    .line 262
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 263
    .line 264
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    invoke-static {v2}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iput-object p1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 280
    .line 281
    new-instance p1, Landroid/content/Intent;

    .line 282
    .line 283
    const-class v2, Lorg/wikipedia/commons/FilePageActivity;

    .line 284
    .line 285
    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .line 287
    .line 288
    const-string v2, "title"

    .line 289
    .line 290
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    const-string v1, "allowEdit"

    .line 295
    .line 296
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
