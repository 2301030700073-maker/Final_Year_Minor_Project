.class public final synthetic Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    if-ltz p1, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void

    .line 60
    :pswitch_0
    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_1
    check-cast p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 86
    .line 87
    .line 88
    :cond_5
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 91
    .line 92
    .line 93
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    .line 94
    .line 95
    .line 96
    :goto_2
    return-void

    .line 97
    :pswitch_2
    check-cast p0, Landroidx/appcompat/widget/SwitchCompat;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_3
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptDialogFragment;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptDialogFragment;->preferEncryptCheckbox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 106
    .line 107
    if-eqz p0, :cond_7

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    const-string p0, "preferEncryptCheckbox"

    .line 114
    .line 115
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v2

    .line 119
    :pswitch_4
    check-cast p0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 120
    .line 121
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_5
    check-cast p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_8

    .line 132
    .line 133
    invoke-virtual {p0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->cancel()V

    .line 134
    .line 135
    .line 136
    :cond_8
    return-void

    .line 137
    :pswitch_6
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;

    .line 138
    .line 139
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInButton:Landroid/widget/Button;

    .line 140
    .line 141
    if-eqz p1, :cond_c

    .line 142
    .line 143
    const/16 v0, 0x8

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->signInProgress:Landroid/widget/ProgressBar;

    .line 149
    .line 150
    if-eqz p1, :cond_b

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->errorText:Lcom/google/android/material/textview/MaterialTextView;

    .line 156
    .line 157
    if-eqz p1, :cond_a

    .line 158
    .line 159
    const-string v0, ""

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->authViewModel$delegate:Lkotlin/Lazy;

    .line 165
    .line 166
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 171
    .line 172
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 173
    .line 174
    if-eqz p1, :cond_9

    .line 175
    .line 176
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 181
    .line 182
    const/16 v3, 0x1b

    .line 183
    .line 184
    invoke-direct {v1, p0, p1, v2, v3}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 185
    .line 186
    .line 187
    const/4 p0, 0x3

    .line 188
    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_9
    const-string p0, "Required value was null."

    .line 193
    .line 194
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :goto_3
    return-void

    .line 198
    :cond_a
    const-string p0, "errorText"

    .line 199
    .line 200
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v2

    .line 204
    :cond_b
    const-string p0, "signInProgress"

    .line 205
    .line 206
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v2

    .line 210
    :cond_c
    const-string p0, "signInButton"

    .line 211
    .line 212
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v2

    .line 216
    :pswitch_7
    check-cast p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;

    .line 217
    .line 218
    iget-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->listener:Lcom/fsck/k9/view/RecipientSelectView;

    .line 219
    .line 220
    iget-object p0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    const-class v0, Lcom/fsck/k9/helper/ClipboardManager;

    .line 226
    .line 227
    invoke-static {v0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Lcom/fsck/k9/helper/ClipboardManager;

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    const v1, 0x7f120210

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iget-object p0, p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Address;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-virtual {v0, p1, p0}, Lcom/fsck/k9/helper/ClipboardManager;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    nop

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
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
