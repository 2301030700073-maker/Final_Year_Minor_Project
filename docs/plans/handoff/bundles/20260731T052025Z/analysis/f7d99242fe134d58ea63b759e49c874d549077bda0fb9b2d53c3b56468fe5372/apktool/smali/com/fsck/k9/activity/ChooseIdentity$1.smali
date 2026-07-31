.class public final Lcom/fsck/k9/activity/ChooseIdentity$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    .line 1
    iget p1, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object p0, p0, Lcom/fsck/k9/activity/ChooseIdentity$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lcom/takisoft/datetimepicker/widget/YearPickerView;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;

    .line 14
    .line 15
    iget p2, p1, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 16
    .line 17
    add-int/2addr p2, p3

    .line 18
    iget p3, p1, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 19
    .line 20
    if-eq p3, p2, :cond_0

    .line 21
    .line 22
    iput p2, p1, Lcom/takisoft/datetimepicker/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/YearPickerView;->mOnYearSelectedListener:Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;

    .line 28
    .line 29
    if-eqz p0, :cond_3

    .line 30
    .line 31
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate$1;->this$0:Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;

    .line 32
    .line 33
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mCurrentDate:Ljava/util/Calendar;

    .line 34
    .line 35
    const/4 p3, 0x5

    .line 36
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    const/4 p5, 0x2

    .line 41
    invoke-virtual {p1, p5}, Ljava/util/Calendar;->get(I)I

    .line 42
    .line 43
    .line 44
    move-result p5

    .line 45
    packed-switch p5, :pswitch_data_1

    .line 46
    .line 47
    .line 48
    const-string p0, "Invalid Month"

    .line 49
    .line 50
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :pswitch_0
    const/16 p5, 0x1e

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_1
    rem-int/lit8 p5, p2, 0x4

    .line 58
    .line 59
    if-nez p5, :cond_1

    .line 60
    .line 61
    const/16 p5, 0x1d

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const/16 p5, 0x1c

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_2
    const/16 p5, 0x1f

    .line 68
    .line 69
    :goto_0
    if-le p4, p5, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1, p3, p5}, Ljava/util/Calendar;->set(II)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v2, v2}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->onDateChanged(ZZ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v1}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->mHeaderYear:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    return-void

    .line 89
    :pswitch_3
    check-cast p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    if-gez p3, :cond_5

    .line 95
    .line 96
    iget-object v3, p1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_4

    .line 103
    .line 104
    move-object v3, v2

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    iget-object v3, p1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 107
    .line 108
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    :goto_2
    invoke-static {p0, v3}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$100(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {p0, v3, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_b

    .line 133
    .line 134
    if-eqz p2, :cond_7

    .line 135
    .line 136
    if-gez p3, :cond_6

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    :goto_3
    move-object v6, p2

    .line 140
    move v7, p3

    .line 141
    move-wide v8, p4

    .line 142
    goto :goto_7

    .line 143
    :cond_7
    :goto_4
    iget-object p0, p1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_8

    .line 150
    .line 151
    move-object p2, v2

    .line 152
    goto :goto_5

    .line 153
    :cond_8
    iget-object p0, p1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    move-object p2, p0

    .line 160
    :goto_5
    iget-object p0, p1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 161
    .line 162
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-nez p0, :cond_9

    .line 167
    .line 168
    move p3, v0

    .line 169
    goto :goto_6

    .line 170
    :cond_9
    iget-object p0, p1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 171
    .line 172
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    move p3, p0

    .line 177
    :goto_6
    iget-object p0, p1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-nez p0, :cond_a

    .line 184
    .line 185
    const-wide/high16 p4, -0x8000000000000000L

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_a
    iget-object p0, p1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    .line 191
    .line 192
    .line 193
    move-result-wide p4

    .line 194
    goto :goto_3

    .line 195
    :goto_7
    iget-object v5, p1, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 196
    .line 197
    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 198
    .line 199
    .line 200
    :cond_b
    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :pswitch_4
    check-cast p0, Lcom/fsck/k9/activity/ManageIdentities;

    .line 205
    .line 206
    sget p1, Lcom/fsck/k9/activity/ManageIdentities;->$r8$clinit:I

    .line 207
    .line 208
    invoke-virtual {p0, p3}, Lcom/fsck/k9/activity/ManageIdentities;->editItem(I)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :pswitch_5
    check-cast p0, Landroidx/appcompat/widget/SearchView;

    .line 213
    .line 214
    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/SearchView;->onItemClicked(I)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :pswitch_6
    check-cast p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    .line 219
    .line 220
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 221
    .line 222
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 226
    .line 227
    .line 228
    move-result-object p4

    .line 229
    if-eqz p4, :cond_c

    .line 230
    .line 231
    iget-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;

    .line 232
    .line 233
    invoke-virtual {p4, p3}, Landroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->getItemId(I)J

    .line 234
    .line 235
    .line 236
    move-result-wide p4

    .line 237
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 238
    .line 239
    .line 240
    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :pswitch_7
    check-cast p0, Lcom/fsck/k9/activity/ChooseIdentity;

    .line 245
    .line 246
    iget-object p1, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 247
    .line 248
    invoke-virtual {p1, p3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentity(I)Lnet/thunderbird/core/android/account/Identity;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    iget-object p1, p1, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 253
    .line 254
    if-eqz p1, :cond_d

    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    const-string p2, ""

    .line 261
    .line 262
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    if-nez p1, :cond_d

    .line 267
    .line 268
    new-instance p1, Landroid/content/Intent;

    .line 269
    .line 270
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 271
    .line 272
    .line 273
    iget-object p2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 274
    .line 275
    invoke-virtual {p2, p3}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentity(I)Lnet/thunderbird/core/android/account/Identity;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    const-string p3, "com.fsck.k9.ChooseIdentity_identity"

    .line 280
    .line 281
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_d
    const p1, 0x7f120376

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 299
    .line 300
    .line 301
    move-result-object p0

    .line 302
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 303
    .line 304
    .line 305
    :goto_8
    return-void

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
