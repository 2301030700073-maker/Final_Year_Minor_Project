.class public final Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public accountUuid:Ljava/lang/String;

.field public dialogView:Landroid/view/View;

.field public inputIncomingServerPassword:Z

.field public inputOutgoingServerPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_9

    .line 7
    .line 8
    const-string v3, "accountUuid"

    .line 9
    .line 10
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_8

    .line 15
    .line 16
    iput-object v3, v0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->accountUuid:Ljava/lang/String;

    .line 17
    .line 18
    const-string v3, "accountName"

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_7

    .line 25
    .line 26
    const-string v4, "incomingServerName"

    .line 27
    .line 28
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const-string v5, "outgoingServerName"

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-string v6, "inputIncomingServerPassword"

    .line 39
    .line 40
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    iput-boolean v6, v0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->inputIncomingServerPassword:Z

    .line 45
    .line 46
    const-string v6, "inputOutgoingServerPassword"

    .line 47
    .line 48
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput-boolean v1, v0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->inputOutgoingServerPassword:Z

    .line 53
    .line 54
    iget-boolean v6, v0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->inputIncomingServerPassword:Z

    .line 55
    .line 56
    if-nez v6, :cond_1

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v0, "Not prompting for any password"

    .line 62
    .line 63
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const v8, 0x7f0c0310

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const v8, 0x7f090332

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast v8, Lcom/google/android/material/textview/MaterialTextView;

    .line 93
    .line 94
    const v9, 0x7f090236

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    check-cast v9, Lcom/google/android/material/textview/MaterialTextView;

    .line 105
    .line 106
    const v10, 0x7f090324

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    check-cast v10, Lcom/google/android/material/textview/MaterialTextView;

    .line 117
    .line 118
    const v11, 0x7f09046f

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    check-cast v11, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 129
    .line 130
    const v12, 0x7f090235

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    check-cast v12, Landroidx/constraintlayout/widget/Group;

    .line 141
    .line 142
    const v13, 0x7f090323

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    check-cast v13, Landroidx/constraintlayout/widget/Group;

    .line 153
    .line 154
    const/4 v14, 0x1

    .line 155
    if-eqz v6, :cond_2

    .line 156
    .line 157
    if-eqz v1, :cond_2

    .line 158
    .line 159
    const/4 v15, 0x2

    .line 160
    goto :goto_1

    .line 161
    :cond_2
    move v15, v14

    .line 162
    :goto_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move/from16 v16, v1

    .line 167
    .line 168
    new-array v1, v14, [Ljava/lang/Object;

    .line 169
    .line 170
    const/4 v14, 0x0

    .line 171
    aput-object v3, v1, v14

    .line 172
    .line 173
    const v3, 0x7f10000b

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v3, v15, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .line 182
    .line 183
    const/4 v1, 0x1

    .line 184
    new-array v2, v1, [Ljava/lang/Object;

    .line 185
    .line 186
    aput-object v4, v2, v14

    .line 187
    .line 188
    const v3, 0x7f1205b9

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    new-array v2, v1, [Ljava/lang/Object;

    .line 199
    .line 200
    aput-object v5, v2, v14

    .line 201
    .line 202
    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    const/16 v1, 0x8

    .line 210
    .line 211
    if-nez v6, :cond_3

    .line 212
    .line 213
    move v2, v1

    .line 214
    goto :goto_2

    .line 215
    :cond_3
    move v2, v14

    .line 216
    :goto_2
    invoke-virtual {v12, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    if-nez v16, :cond_4

    .line 220
    .line 221
    move v2, v1

    .line 222
    goto :goto_3

    .line 223
    :cond_4
    move v2, v14

    .line 224
    :goto_3
    invoke-virtual {v13, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    if-eqz v6, :cond_5

    .line 228
    .line 229
    if-eqz v16, :cond_5

    .line 230
    .line 231
    const/4 v2, 0x1

    .line 232
    invoke-virtual {v11, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v13, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    new-instance v1, Lcom/fsck/k9/activity/EditIdentity$$ExternalSyntheticLambda0;

    .line 239
    .line 240
    invoke-direct {v1, v2, v13}, Lcom/fsck/k9/activity/EditIdentity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v11, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_5
    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    :goto_4
    iput-object v7, v0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->dialogView:Landroid/view/View;

    .line 251
    .line 252
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 259
    .line 260
    .line 261
    iget-object v2, v0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->dialogView:Landroid/view/View;

    .line 262
    .line 263
    if-eqz v2, :cond_6

    .line 264
    .line 265
    iget-object v3, v1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v3, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 268
    .line 269
    iput-object v2, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 270
    .line 271
    new-instance v2, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;

    .line 272
    .line 273
    invoke-direct {v2, v0, v14}, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    .line 274
    .line 275
    .line 276
    const v0, 0x7f12050a

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    const v0, 0x7f1201fa

    .line 283
    .line 284
    .line 285
    const/4 v2, 0x0

    .line 286
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    return-object v0

    .line 294
    :cond_6
    const/4 v2, 0x0

    .line 295
    const-string v0, "dialogView"

    .line 296
    .line 297
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v2

    .line 301
    :cond_7
    const-string v0, "Missing account name"

    .line 302
    .line 303
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-object v2

    .line 307
    :cond_8
    const-string v0, "Missing account UUID"

    .line 308
    .line 309
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-object v2

    .line 313
    :cond_9
    const-string v0, "Fragment arguments missing"

    .line 314
    .line 315
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    return-object v2
.end method
