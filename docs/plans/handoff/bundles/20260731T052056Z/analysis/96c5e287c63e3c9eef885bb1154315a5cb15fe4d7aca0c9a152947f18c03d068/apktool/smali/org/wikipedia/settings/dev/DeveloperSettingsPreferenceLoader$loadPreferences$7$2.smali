.class public final Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;-><init>(Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->$r8$classId:I

    .line 2
    .line 3
    const/high16 v6, 0x1040000

    .line 4
    .line 5
    const-string v7, "Go"

    .line 6
    .line 7
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iget-object v10, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->this$0:Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader;

    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    iget v0, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->label:I

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    move-object v0, p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v8, v11

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 41
    .line 42
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 43
    .line 44
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/String;

    .line 63
    .line 64
    iput v2, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->label:I

    .line 65
    .line 66
    move-object v2, v3

    .line 67
    const-wide/16 v3, 0x14

    .line 68
    .line 69
    move-object v5, p0

    .line 70
    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-ne v0, v12, :cond_2

    .line 75
    .line 76
    move-object v8, v12

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_0
    check-cast v0, Lkotlin/Pair;

    .line 79
    .line 80
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 81
    .line 82
    iget-object v2, v10, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Landroidx/preference/PreferenceFragmentCompat;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v1, v2, v9}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 96
    .line 97
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 98
    .line 99
    iget-object v3, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v3, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 102
    .line 103
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 112
    .line 113
    iget-object v3, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 116
    .line 117
    iget-object v3, v3, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 124
    .line 125
    new-instance v2, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda0;

    .line 126
    .line 127
    const/4 v3, 0x3

    .line 128
    invoke-direct {v2, v3, v0, v10}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v7, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v6, v11}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 138
    .line 139
    .line 140
    :goto_1
    return-object v8

    .line 141
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 142
    .line 143
    iget v3, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->label:I

    .line 144
    .line 145
    if-eqz v3, :cond_4

    .line 146
    .line 147
    if-ne v3, v2, :cond_3

    .line 148
    .line 149
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_3
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    move-object v8, v11

    .line 157
    goto :goto_4

    .line 158
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 162
    .line 163
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->talkPageSeenDao()Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput v2, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->label:I

    .line 172
    .line 173
    iget-object v1, v1, Lorg/wikipedia/talk/db/TalkPageSeenDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 174
    .line 175
    new-instance v3, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;

    .line 176
    .line 177
    const/16 v4, 0x1c

    .line 178
    .line 179
    invoke-direct {v3, v4}, Lorg/wikipedia/talk/TalkTopicsViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-static {v1, v9, v2, v3, p0}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-ne v1, v0, :cond_5

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_5
    move-object v1, v8

    .line 190
    :goto_2
    if-ne v1, v0, :cond_6

    .line 191
    .line 192
    move-object v8, v0

    .line 193
    goto :goto_4

    .line 194
    :cond_6
    :goto_3
    iget-object v0, v10, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 197
    .line 198
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v1, "Reset complete."

    .line 203
    .line 204
    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    .line 210
    .line 211
    :goto_4
    return-object v8

    .line 212
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 213
    .line 214
    iget v3, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->label:I

    .line 215
    .line 216
    if-eqz v3, :cond_8

    .line 217
    .line 218
    if-ne v3, v2, :cond_7

    .line 219
    .line 220
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    move-object v1, p1

    .line 224
    goto :goto_5

    .line 225
    :cond_7
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    move-object v8, v11

    .line 229
    goto :goto_6

    .line 230
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 234
    .line 235
    sget-object v3, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 236
    .line 237
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v3}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iput v2, p0, Lorg/wikipedia/settings/dev/DeveloperSettingsPreferenceLoader$loadPreferences$7$2;->label:I

    .line 246
    .line 247
    const-wide/16 v12, 0x14

    .line 248
    .line 249
    invoke-virtual {v1, v3, v12, v13, p0}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->getNextArticleWithMissingDescription(Lorg/wikipedia/dataclient/WikiSite;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-ne v1, v0, :cond_9

    .line 254
    .line 255
    move-object v8, v0

    .line 256
    goto :goto_6

    .line 257
    :cond_9
    :goto_5
    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 258
    .line 259
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 260
    .line 261
    iget-object v2, v10, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v2, Landroidx/preference/PreferenceFragmentCompat;

    .line 264
    .line 265
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-direct {v0, v2, v9}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 270
    .line 271
    .line 272
    iget-object v2, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v2, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 275
    .line 276
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 277
    .line 278
    invoke-virtual {v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 287
    .line 288
    iget-object v3, v1, Lorg/wikipedia/dataclient/page/PageSummary;->extract:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    iput-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 295
    .line 296
    new-instance v2, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda0;

    .line 297
    .line 298
    const/4 v3, 0x2

    .line 299
    invoke-direct {v2, v3, v1, v10}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v7, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v6, v11}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 309
    .line 310
    .line 311
    :goto_6
    return-object v8

    .line 312
    nop

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
