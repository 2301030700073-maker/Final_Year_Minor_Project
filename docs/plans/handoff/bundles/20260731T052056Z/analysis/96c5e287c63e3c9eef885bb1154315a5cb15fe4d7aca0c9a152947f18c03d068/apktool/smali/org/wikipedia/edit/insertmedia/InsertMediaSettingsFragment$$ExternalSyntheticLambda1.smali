.class public final synthetic Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

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
    .locals 13

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    const-string/jumbo v0, "tts_open"

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const-string p1, "image_detail_view"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->sendInsertMediaEvent(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->getViewModel$5()Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v6, p1, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->selectedImage:Lorg/wikipedia/page/PageTitle;

    .line 23
    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    new-instance v3, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 27
    .line 28
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 33
    .line 34
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getAppOrSystemLanguageCode()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v6}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-object p1, v6, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 47
    .line 48
    sget-object v0, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 49
    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    const-string p1, ""

    .line 53
    .line 54
    :cond_0
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {p1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    iget-object v9, v6, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 67
    .line 68
    const/4 v11, 0x0

    .line 69
    const/16 v12, 0x7c0

    .line 70
    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-direct/range {v3 .. v12}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance p1, Lorg/wikipedia/commons/ImagePreviewDialog;

    .line 83
    .line 84
    invoke-direct {p1}, Lorg/wikipedia/commons/ImagePreviewDialog;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lkotlin/Pair;

    .line 88
    .line 89
    const-string v4, "summary"

    .line 90
    .line 91
    invoke-direct {v0, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    new-instance v3, Lkotlin/Pair;

    .line 95
    .line 96
    const-string v4, "action"

    .line 97
    .line 98
    invoke-direct {v3, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    new-array v2, v2, [Lkotlin/Pair;

    .line 103
    .line 104
    aput-object v0, v2, v1

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    aput-object v3, v2, v0

    .line 108
    .line 109
    invoke-static {v2}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    return-void

    .line 120
    :pswitch_0
    const-string p1, "advanced_setting_open"

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->sendInsertMediaEvent(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 126
    .line 127
    const-string p1, "activity"

    .line 128
    .line 129
    if-eqz p0, :cond_9

    .line 130
    .line 131
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 132
    .line 133
    const-string v3, "binding"

    .line 134
    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->rootView:Landroid/widget/FrameLayout;

    .line 138
    .line 139
    const/16 v4, 0x8

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->binding:Lorg/wikipedia/databinding/FragmentPlacesBinding;

    .line 145
    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentPlacesBinding;->searchContainer:Lorg/wikipedia/views/WikiCardView;

    .line 149
    .line 150
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;

    .line 154
    .line 155
    if-eqz v0, :cond_6

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->hide(Z)V

    .line 158
    .line 159
    .line 160
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->insertMediaAdvancedSettingsFragment:Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 161
    .line 162
    if-eqz p0, :cond_5

    .line 163
    .line 164
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->_binding:Lokhttp3/Request$Builder;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    iget-object v0, v0, Lokhttp3/Request$Builder;->url:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Landroid/widget/ScrollView;

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 180
    .line 181
    if-eqz v0, :cond_4

    .line 182
    .line 183
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;->activity:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 187
    .line 188
    if-eqz v0, :cond_3

    .line 189
    .line 190
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Lcoil3/util/ContextsKt;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-eqz p1, :cond_2

    .line 195
    .line 196
    const v0, 0x7f12030b

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p1, p0}, Lcoil3/util/ContextsKt;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    :cond_2
    return-void

    .line 207
    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw v2

    .line 211
    :cond_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v2

    .line 215
    :cond_5
    const-string p0, "insertMediaAdvancedSettingsFragment"

    .line 216
    .line 217
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v2

    .line 221
    :cond_6
    const-string p0, "insertMediaSettingsFragment"

    .line 222
    .line 223
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v2

    .line 227
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v2

    .line 231
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v2

    .line 235
    :cond_9
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw v2

    .line 239
    :pswitch_1
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 247
    .line 248
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->currentVoiceInputParentLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 249
    .line 250
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->sendInsertMediaEvent(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->launchVoiceInput()V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_2
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->_binding:Landroidx/compose/ui/node/NodeChain;

    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 265
    .line 266
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->currentVoiceInputParentLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 267
    .line 268
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->sendInsertMediaEvent(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Lorg/wikipedia/edit/insertmedia/InsertMediaSettingsFragment;->launchVoiceInput()V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
