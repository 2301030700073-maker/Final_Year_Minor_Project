.class public Landroidx/appcompat/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final P:Landroidx/appcompat/app/AlertController$AlertParams;

.field public final mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-static {p1, v0}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 5
    .line 6
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/appcompat/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$AlertParams;-><init>(Landroid/view/ContextThemeWrapper;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 19
    .line 20
    iput p2, p0, Landroidx/appcompat/app/AlertDialog$Builder;->mTheme:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 11

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 4
    .line 5
    iget-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 8
    .line 9
    iget p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->mTheme:I

    .line 10
    .line 11
    invoke-direct {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 15
    .line 16
    iget-object v7, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iput-object p0, v7, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    iput-object p0, v7, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 30
    .line 31
    iget-object v1, v7, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    iput-object p0, v7, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    iput v9, v7, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 45
    .line 46
    iget-object v1, v7, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v7, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 59
    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    iput-object v8, v7, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    iput p0, v7, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 65
    .line 66
    iget-object v1, v7, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    iget-object p0, v7, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 76
    .line 77
    iget v1, v7, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/16 p0, 0x8

    .line 84
    .line 85
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_0
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 89
    .line 90
    if-eqz p0, :cond_5

    .line 91
    .line 92
    iput-object p0, v7, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 93
    .line 94
    iget-object v1, v7, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 95
    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 102
    .line 103
    if-nez p0, :cond_6

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    const/4 v1, -0x1

    .line 107
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    .line 109
    invoke-virtual {v7, v1, p0, v4}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 113
    .line 114
    if-nez p0, :cond_7

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_7
    const/4 v1, -0x2

    .line 118
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    .line 120
    invoke-virtual {v7, v1, p0, v4}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 124
    .line 125
    if-nez p0, :cond_8

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    const/4 v1, -0x3

    .line 129
    iget-object v4, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    .line 131
    invoke-virtual {v7, v1, p0, v4}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    :goto_3
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 135
    .line 136
    const/4 v10, 0x1

    .line 137
    if-nez p0, :cond_9

    .line 138
    .line 139
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 140
    .line 141
    if-eqz p0, :cond_11

    .line 142
    .line 143
    :cond_9
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    .line 145
    iget v1, v7, Landroidx/appcompat/app/AlertController;->mListLayout:I

    .line 146
    .line 147
    invoke-virtual {p0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    move-object v6, p0

    .line 152
    check-cast v6, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 153
    .line 154
    iget-boolean p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 155
    .line 156
    if-eqz p0, :cond_a

    .line 157
    .line 158
    new-instance v1, Landroidx/appcompat/app/AlertController$AlertParams$1;

    .line 159
    .line 160
    iget v4, v7, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 161
    .line 162
    iget-object v5, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 163
    .line 164
    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/app/AlertController$AlertParams$1;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/view/ContextThemeWrapper;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    .line 165
    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_a
    iget-boolean p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 169
    .line 170
    if-eqz p0, :cond_b

    .line 171
    .line 172
    iget p0, v7, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_b
    iget p0, v7, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    .line 176
    .line 177
    :goto_4
    iget-object v1, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 178
    .line 179
    if-eqz v1, :cond_c

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_c
    new-instance v1, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;

    .line 183
    .line 184
    const v4, 0x1020014

    .line 185
    .line 186
    .line 187
    iget-object v5, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 188
    .line 189
    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :goto_5
    iput-object v1, v7, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 193
    .line 194
    iget p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 195
    .line 196
    iput p0, v7, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    .line 197
    .line 198
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 199
    .line 200
    if-eqz p0, :cond_d

    .line 201
    .line 202
    new-instance p0, Landroidx/appcompat/app/AlertController$AlertParams$3;

    .line 203
    .line 204
    invoke-direct {p0, v2, v7}, Landroidx/appcompat/app/AlertController$AlertParams$3;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_d
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 212
    .line 213
    if-eqz p0, :cond_e

    .line 214
    .line 215
    new-instance p0, Landroidx/appcompat/app/AlertController$AlertParams$4;

    .line 216
    .line 217
    invoke-direct {p0, v2, v6, v7}, Landroidx/appcompat/app/AlertController$AlertParams$4;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    .line 222
    .line 223
    :cond_e
    :goto_6
    iget-boolean p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 224
    .line 225
    if-eqz p0, :cond_f

    .line 226
    .line 227
    invoke-virtual {v6, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 228
    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_f
    iget-boolean p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 232
    .line 233
    if-eqz p0, :cond_10

    .line 234
    .line 235
    const/4 p0, 0x2

    .line 236
    invoke-virtual {v6, p0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 237
    .line 238
    .line 239
    :cond_10
    :goto_7
    iput-object v6, v7, Landroidx/appcompat/app/AlertController;->mListView:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 240
    .line 241
    :cond_11
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 242
    .line 243
    if-eqz p0, :cond_12

    .line 244
    .line 245
    iput-object p0, v7, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 246
    .line 247
    iput v9, v7, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 248
    .line 249
    iput-boolean v9, v7, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_12
    iget p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 253
    .line 254
    if-eqz p0, :cond_13

    .line 255
    .line 256
    iput-object v8, v7, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 257
    .line 258
    iput p0, v7, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 259
    .line 260
    iput-boolean v9, v7, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    .line 261
    .line 262
    :cond_13
    :goto_8
    iget-boolean p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 263
    .line 264
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 265
    .line 266
    .line 267
    iget-boolean p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 268
    .line 269
    if-eqz p0, :cond_14

    .line 270
    .line 271
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 272
    .line 273
    .line 274
    :cond_14
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 275
    .line 276
    .line 277
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 278
    .line 279
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 280
    .line 281
    .line 282
    iget-object p0, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnKeyListener:Landroidx/appcompat/view/menu/MenuDialogHelper;

    .line 283
    .line 284
    if-eqz p0, :cond_15

    .line 285
    .line 286
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 287
    .line 288
    .line 289
    :cond_15
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    return-object p0
.end method

.method public final setMessage(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 10
    .line 11
    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    .line 13
    return-object p0
.end method

.method public final setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    .line 13
    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    .line 13
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 12
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 10
    .line 11
    return-void
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 2
    .line 3
    iput-object p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    .line 7
    .line 8
    return-object p0
.end method

.method public final show()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
