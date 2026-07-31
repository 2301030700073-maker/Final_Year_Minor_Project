.class public final Landroidx/fragment/app/FragmentManager$2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onMenuClosed$org$wikipedia$activitytab$ActivityTabFragment$menuProvider$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onPrepareMenu$org$wikipedia$activitytab$ActivityTabFragment$menuProvider$1(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const p0, 0x7f0e0005

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu()Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager$2;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast v0, Lorg/wikipedia/activitytab/ActivityTabFragment;

    .line 14
    .line 15
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const v2, 0x7f0903a0

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x0

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    const/16 v17, 0x3ffc

    .line 29
    .line 30
    const-string v5, "activity_tab_overflow_menu"

    .line 31
    .line 32
    const-string v6, "customize_click"

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v12, 0x0

    .line 40
    const/4 v13, 0x0

    .line 41
    const/4 v14, 0x0

    .line 42
    const/4 v15, 0x0

    .line 43
    invoke-static/range {v5 .. v17}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    sget v1, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;->$r8$clinit:I

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Landroid/content/Intent;

    .line 53
    .line 54
    const-class v5, Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;

    .line 55
    .line 56
    invoke-direct {v2, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_0
    const v2, 0x7f09039b

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    if-ne v1, v2, :cond_1

    .line 69
    .line 70
    const/16 v17, 0x0

    .line 71
    .line 72
    const/16 v18, 0x3ffc

    .line 73
    .line 74
    const-string v6, "activity_tab_overflow_menu"

    .line 75
    .line 76
    const-string v7, "clear_history_click"

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    const/4 v10, 0x0

    .line 81
    const/4 v11, 0x0

    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x0

    .line 84
    const/4 v14, 0x0

    .line 85
    const/4 v15, 0x0

    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    invoke-static/range {v6 .. v18}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v6, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;

    .line 100
    .line 101
    const/4 v7, 0x6

    .line 102
    invoke-direct {v6, v0, v7}, Lorg/wikipedia/activitytab/ActivityTabFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/activitytab/ActivityTabFragment;I)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 106
    .line 107
    invoke-direct {v0, v1, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 108
    .line 109
    .line 110
    const v1, 0x7f120150

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 114
    .line 115
    .line 116
    const v1, 0x7f120146

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 120
    .line 121
    .line 122
    new-instance v1, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    invoke-direct {v1, v3, v2, v6}, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const v2, 0x7f120148

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    const v1, 0x7f120147

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_1
    const v2, 0x7f09039a

    .line 145
    .line 146
    .line 147
    if-ne v1, v2, :cond_2

    .line 148
    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    const/16 v18, 0x3ffc

    .line 152
    .line 153
    const-string v6, "activity_tab_overflow_menu"

    .line 154
    .line 155
    const-string v7, "clear_donation_history_click"

    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v9, 0x0

    .line 159
    const/4 v10, 0x0

    .line 160
    const/4 v11, 0x0

    .line 161
    const/4 v12, 0x0

    .line 162
    const/4 v13, 0x0

    .line 163
    const/4 v14, 0x0

    .line 164
    const/4 v15, 0x0

    .line 165
    const/16 v16, 0x0

    .line 166
    .line 167
    invoke-static/range {v6 .. v18}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 171
    .line 172
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 173
    .line 174
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setDonationResults(Ljava/util/List;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getActivityTabModules()Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    sget-object v2, Lorg/wikipedia/activitytab/ModuleType;->DONATIONS:Lorg/wikipedia/activitytab/ModuleType;

    .line 182
    .line 183
    invoke-virtual {v1, v2, v5}, Lorg/wikipedia/activitytab/ActivityTabModules;->setModuleEnabled(Lorg/wikipedia/activitytab/ModuleType;Z)Lorg/wikipedia/activitytab/ActivityTabModules;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setActivityTabModules(Lorg/wikipedia/activitytab/ActivityTabModules;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabFragment;->getViewModel()Lorg/wikipedia/activitytab/ActivityTabViewModel;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lorg/wikipedia/activitytab/ActivityTabViewModel;->loadAll()V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_2
    const v2, 0x7f0903ba

    .line 199
    .line 200
    .line 201
    if-ne v1, v2, :cond_3

    .line 202
    .line 203
    const/16 v17, 0x0

    .line 204
    .line 205
    const/16 v18, 0x3ffc

    .line 206
    .line 207
    const-string v6, "activity_tab_overflow_menu"

    .line 208
    .line 209
    const-string v7, "learn_click"

    .line 210
    .line 211
    const/4 v8, 0x0

    .line 212
    const/4 v9, 0x0

    .line 213
    const/4 v10, 0x0

    .line 214
    const/4 v11, 0x0

    .line 215
    const/4 v12, 0x0

    .line 216
    const/4 v13, 0x0

    .line 217
    const/4 v14, 0x0

    .line 218
    const/4 v15, 0x0

    .line 219
    const/16 v16, 0x0

    .line 220
    .line 221
    invoke-static/range {v6 .. v18}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    const v2, 0x7f120075

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 246
    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_3
    const v2, 0x7f0903e1

    .line 250
    .line 251
    .line 252
    if-ne v1, v2, :cond_4

    .line 253
    .line 254
    const/16 v17, 0x0

    .line 255
    .line 256
    const/16 v18, 0x3ffc

    .line 257
    .line 258
    const-string v6, "activity_tab_overflow_menu"

    .line 259
    .line 260
    const-string v7, "problem_click"

    .line 261
    .line 262
    const/4 v8, 0x0

    .line 263
    const/4 v9, 0x0

    .line 264
    const/4 v10, 0x0

    .line 265
    const/4 v11, 0x0

    .line 266
    const/4 v12, 0x0

    .line 267
    const/4 v13, 0x0

    .line 268
    const/4 v14, 0x0

    .line 269
    const/4 v15, 0x0

    .line 270
    const/16 v16, 0x0

    .line 271
    .line 272
    invoke-static/range {v6 .. v18}, Lorg/wikipedia/analytics/eventplatform/WikiGamesEvent;->submit$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const v2, 0x7f12006d

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    const v5, 0x7f12006c

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    .line 298
    .line 299
    const/4 v5, 0x2

    .line 300
    invoke-static {v1, v4, v2, v0, v5}, Lorg/wikipedia/util/ShareUtil;->composeEmail$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    goto :goto_0

    .line 304
    :cond_4
    move v3, v5

    .line 305
    :goto_0
    return v3

    .line 306
    :pswitch_0
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 307
    .line 308
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected()Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    return v0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/fragment/app/FragmentManagerImpl;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu()Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
