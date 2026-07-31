.class public final Landroidx/preference/Preference$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

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
    .locals 5

    .line 1
    iget v0, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 13
    .line 14
    .line 15
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 18
    .line 19
    xor-int/2addr p1, v4

    .line 20
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/TimePickerSpinnerDelegate;->onTimeChanged$1()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    check-cast p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 30
    .line 31
    sget-object v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->hideSoftInput()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const v0, 0x7f090239

    .line 46
    .line 47
    .line 48
    if-ne p1, v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0, v4}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->changeValueByOne(Z)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :pswitch_1
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 61
    .line 62
    if-ne p1, v0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 66
    .line 67
    if-ne p1, v0, :cond_2

    .line 68
    .line 69
    move v2, v4

    .line 70
    :goto_1
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    xor-int/2addr p1, v4

    .line 77
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    add-int/2addr v0, v2

    .line 84
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 85
    .line 86
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 87
    .line 88
    invoke-virtual {p0, v0, v3, p1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void

    .line 92
    :pswitch_2
    check-cast p0, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    const v0, 0x7f090181

    .line 99
    .line 100
    .line 101
    if-ne p1, v0, :cond_3

    .line 102
    .line 103
    invoke-virtual {p0, v4}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    const v0, 0x7f090180

    .line 108
    .line 109
    .line 110
    if-ne p1, v0, :cond_4

    .line 111
    .line 112
    invoke-virtual {p0, v3}, Lcom/takisoft/datetimepicker/widget/DatePickerCalendarDelegate;->setCurrentView(I)V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_2
    return-void

    .line 116
    :pswitch_3
    check-cast p0, Lcom/takisoft/datetimepicker/TimePickerDialog;

    .line 117
    .line 118
    iget-object p1, p0, Lcom/takisoft/datetimepicker/TimePickerDialog;->mTimePicker:Lcom/takisoft/datetimepicker/widget/TimePicker;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/takisoft/datetimepicker/widget/TimePicker;->mDelegate:Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->validateInput()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    invoke-virtual {p0, p0, v2}, Lcom/takisoft/datetimepicker/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 132
    .line 133
    .line 134
    :cond_5
    return-void

    .line 135
    :pswitch_4
    check-cast p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 136
    .line 137
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->messageCompose:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lcom/fsck/k9/activity/MessageCompose;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    const v1, 0x7f090359

    .line 146
    .line 147
    .line 148
    if-ne p1, v1, :cond_6

    .line 149
    .line 150
    sget-object p1, Lcom/fsck/k9/message/QuotedTextMode;->SHOW:Lcom/fsck/k9/message/QuotedTextMode;

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 156
    .line 157
    .line 158
    iput-boolean v4, v0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    const v1, 0x7f090357

    .line 162
    .line 163
    .line 164
    if-ne p1, v1, :cond_7

    .line 165
    .line 166
    sget-object p1, Lcom/fsck/k9/message/QuotedTextMode;->HIDE:Lcom/fsck/k9/message/QuotedTextMode;

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->showOrHideQuotedText(Lcom/fsck/k9/message/QuotedTextMode;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageCompose;->updateMessageFormat()V

    .line 172
    .line 173
    .line 174
    iput-boolean v4, v0, Lcom/fsck/k9/activity/MessageCompose;->changesMadeSinceLastSave:Z

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    const v1, 0x7f090358

    .line 178
    .line 179
    .line 180
    if-ne p1, v1, :cond_9

    .line 181
    .line 182
    iput-boolean v4, p0, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->forcePlainText:Z

    .line 183
    .line 184
    iget-object p0, v0, Lcom/fsck/k9/activity/MessageCompose;->relatedMessageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 185
    .line 186
    if-eqz p0, :cond_8

    .line 187
    .line 188
    iget-object p0, v0, Lcom/fsck/k9/activity/MessageCompose;->currentMessageViewInfo:Lcom/fsck/k9/mailstore/MessageViewInfo;

    .line 189
    .line 190
    if-eqz p0, :cond_9

    .line 191
    .line 192
    iget-object p1, v0, Lcom/fsck/k9/activity/MessageCompose;->action:Lcom/fsck/k9/activity/MessageCompose$Action;

    .line 193
    .line 194
    invoke-virtual {v0, p0, p1}, Lcom/fsck/k9/activity/MessageCompose;->loadLocalMessageForDisplay(Lcom/fsck/k9/mailstore/MessageViewInfo;Lcom/fsck/k9/activity/MessageCompose$Action;)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_8
    const-string p0, "tried to edit quoted message with no referenced message"

    .line 199
    .line 200
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_9
    :goto_3
    return-void

    .line 204
    :pswitch_5
    check-cast p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .line 205
    .line 206
    iget-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->listener:Lcom/fsck/k9/view/RecipientSelectView;

    .line 207
    .line 208
    iget-object p0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 209
    .line 210
    iget-object v0, p1, Lcom/fsck/k9/view/RecipientSelectView;->alternatesPopup:Landroid/widget/ListPopupWindow;

    .line 211
    .line 212
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->removeObjectSync(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :pswitch_6
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 220
    .line 221
    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 222
    .line 223
    if-nez p0, :cond_a

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_a
    iget-object v1, p0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 227
    .line 228
    :goto_4
    if-eqz v1, :cond_b

    .line 229
    .line 230
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 231
    .line 232
    .line 233
    :cond_b
    return-void

    .line 234
    :pswitch_7
    check-cast p0, Landroidx/appcompat/view/ActionMode;

    .line 235
    .line 236
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :pswitch_8
    check-cast p0, Landroidx/appcompat/app/AlertController;

    .line 241
    .line 242
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 243
    .line 244
    if-ne p1, v0, :cond_c

    .line 245
    .line 246
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 247
    .line 248
    if-eqz v0, :cond_c

    .line 249
    .line 250
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    goto :goto_5

    .line 255
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 256
    .line 257
    if-ne p1, v0, :cond_d

    .line 258
    .line 259
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 260
    .line 261
    if-eqz v0, :cond_d

    .line 262
    .line 263
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    goto :goto_5

    .line 268
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 269
    .line 270
    if-ne p1, v0, :cond_e

    .line 271
    .line 272
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 273
    .line 274
    if-eqz p1, :cond_e

    .line 275
    .line 276
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    :cond_e
    :goto_5
    if-eqz v1, :cond_f

    .line 281
    .line 282
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 283
    .line 284
    .line 285
    :cond_f
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mHandler:Lcom/fsck/k9/ui/messagelist/MessageListHandler;

    .line 286
    .line 287
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 288
    .line 289
    invoke-virtual {p1, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :pswitch_9
    check-cast p0, Landroidx/preference/Preference;

    .line 298
    .line 299
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
