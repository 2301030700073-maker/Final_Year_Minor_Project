.class public final synthetic Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithTextAndCoords;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkReplyActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p1

    .line 11
    .line 12
    check-cast v1, Landroidx/activity/result/ActivityResult;

    .line 13
    .line 14
    sget-object v2, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget v2, v1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 20
    .line 21
    const/16 v3, 0x64

    .line 22
    .line 23
    if-ne v2, v3, :cond_b

    .line 24
    .line 25
    iget-object v1, v1, Landroidx/activity/result/ActivityResult;->data:Landroid/content/Intent;

    .line 26
    .line 27
    if-eqz v1, :cond_b

    .line 28
    .line 29
    const-string v2, "imageTitle"

    .line 30
    .line 31
    const-class v3, Lorg/wikipedia/page/PageTitle;

    .line 32
    .line 33
    invoke-static {v1, v2, v3}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroid/os/Parcelable;

    .line 38
    .line 39
    check-cast v2, Lorg/wikipedia/page/PageTitle;

    .line 40
    .line 41
    const-string v3, "resultImageCaption"

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "resultImageAlt"

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "resultImageSize"

    .line 54
    .line 55
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-string v6, "resultImageType"

    .line 60
    .line 61
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "resultImagePos"

    .line 66
    .line 67
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget-object v7, Lorg/wikipedia/edit/insertmedia/InsertMediaViewModel;->infoboxVarsByLang:Ljava/util/Map;

    .line 72
    .line 73
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkReplyActivity;->getViewModel()Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-object v7, v7, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 78
    .line 79
    iget-object v7, v7, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 80
    .line 81
    iget-object v8, v7, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v7, v0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 84
    .line 85
    const-string v19, "binding"

    .line 86
    .line 87
    const/16 v20, 0x0

    .line 88
    .line 89
    if-eqz v7, :cond_a

    .line 90
    .line 91
    iget-object v7, v7, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 92
    .line 93
    check-cast v7, Lorg/wikipedia/views/UserMentionInputView;

    .line 94
    .line 95
    invoke-virtual {v7}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v7}, Lorg/wikipedia/edit/SyntaxHighlightableEditText;->getText()Landroid/text/Editable;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    if-eqz v2, :cond_0

    .line 108
    .line 109
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    move-object/from16 v2, v20

    .line 115
    .line 116
    :goto_0
    const-string v7, ""

    .line 117
    .line 118
    if-nez v2, :cond_1

    .line 119
    .line 120
    move-object v10, v7

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    move-object v10, v2

    .line 123
    :goto_1
    if-nez v3, :cond_2

    .line 124
    .line 125
    move-object v11, v7

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    move-object v11, v3

    .line 128
    :goto_2
    if-nez v4, :cond_3

    .line 129
    .line 130
    move-object v12, v7

    .line 131
    goto :goto_3

    .line 132
    :cond_3
    move-object v12, v4

    .line 133
    :goto_3
    if-nez v5, :cond_4

    .line 134
    .line 135
    move-object v13, v7

    .line 136
    goto :goto_4

    .line 137
    :cond_4
    move-object v13, v5

    .line 138
    :goto_4
    if-nez v6, :cond_5

    .line 139
    .line 140
    move-object v14, v7

    .line 141
    goto :goto_5

    .line 142
    :cond_5
    move-object v14, v6

    .line 143
    :goto_5
    if-nez v1, :cond_6

    .line 144
    .line 145
    move-object v15, v7

    .line 146
    goto :goto_6

    .line 147
    :cond_6
    move-object v15, v1

    .line 148
    :goto_6
    iget-object v1, v0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 149
    .line 150
    if-eqz v1, :cond_9

    .line 151
    .line 152
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 153
    .line 154
    check-cast v1, Lorg/wikipedia/views/UserMentionInputView;

    .line 155
    .line 156
    invoke-virtual {v1}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    const/16 v17, 0x0

    .line 165
    .line 166
    const/16 v18, 0x0

    .line 167
    .line 168
    invoke-static/range {v8 .. v18}, Lokio/Okio__JvmOkioKt;->insertImageIntoWikiText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lkotlin/Triple;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget-object v2, v0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 173
    .line 174
    if-eqz v2, :cond_8

    .line 175
    .line 176
    iget-object v2, v2, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 177
    .line 178
    check-cast v2, Lorg/wikipedia/views/UserMentionInputView;

    .line 179
    .line 180
    invoke-virtual {v2}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget-object v3, v1, Lkotlin/Triple;->first:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v3, Ljava/lang/CharSequence;

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v1, Lkotlin/Triple;->third:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v1, Lkotlin/Pair;

    .line 194
    .line 195
    iget-object v0, v0, Lorg/wikipedia/talk/TalkReplyActivity;->binding:Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 196
    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 200
    .line 201
    check-cast v0, Lorg/wikipedia/views/UserMentionInputView;

    .line 202
    .line 203
    invoke-virtual {v0}, Lorg/wikipedia/views/UserMentionInputView;->getEditText()Lorg/wikipedia/views/UserMentionEditText;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iget-object v2, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v2, Ljava/lang/Number;

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iget-object v3, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v3, Ljava/lang/Number;

    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v1, Ljava/lang/Number;

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    add-int/2addr v1, v3

    .line 232
    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 233
    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_7
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw v20

    .line 240
    :cond_8
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v20

    .line 244
    :cond_9
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw v20

    .line 248
    :cond_a
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v20

    .line 252
    :cond_b
    :goto_7
    return-void

    .line 253
    :pswitch_0
    move-object/from16 v1, p1

    .line 254
    .line 255
    check-cast v1, Landroidx/activity/result/ActivityResult;

    .line 256
    .line 257
    sget-object v2, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    iget v1, v1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 263
    .line 264
    const/4 v2, 0x1

    .line 265
    if-ne v1, v2, :cond_c

    .line 266
    .line 267
    invoke-virtual {v0}, Lorg/wikipedia/talk/TalkReplyActivity;->updateEditLicenseText$1()V

    .line 268
    .line 269
    .line 270
    const v1, 0x7f120351

    .line 271
    .line 272
    .line 273
    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 274
    .line 275
    .line 276
    :cond_c
    return-void

    .line 277
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onUrlClick(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 101
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->linkHandler:Lorg/wikipedia/talk/TalkReplyActivity$TalkLinkHandler;

    if-eqz p0, :cond_0

    .line 102
    iput p1, p0, Lorg/wikipedia/talk/TalkReplyActivity$TalkLinkHandler;->lastX:I

    .line 103
    iput p2, p0, Lorg/wikipedia/talk/TalkReplyActivity$TalkLinkHandler;->lastY:I

    .line 104
    invoke-virtual {p0, p3, p4, p5}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_0
    const-string p0, "linkHandler"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onUrlClick(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 9
    .line 10
    const-string v0, "https://#login"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance p1, Landroid/content/Intent;

    .line 19
    .line 20
    const-class v0, Lorg/wikipedia/login/LoginActivity;

    .line 21
    .line 22
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "login_request_source"

    .line 26
    .line 27
    const-string v1, "edit"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "create_account_first"

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyActivity;->requestLogin:Landroidx/activity/result/ActivityResultRegistry$register$2;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, p1, v0}, Landroidx/activity/result/ActivityResultRegistry$register$2;->launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :pswitch_0
    sget-object v0, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 62
    .line 63
    const-string v0, "#login"

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const-string v2, "#createaccount"

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-static {p0, p1}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_2
    :goto_1
    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p0, p1}, Lorg/wikipedia/talk/TalkReplyActivity;->launchLogin$1(Z)V

    .line 97
    .line 98
    .line 99
    :goto_2
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
