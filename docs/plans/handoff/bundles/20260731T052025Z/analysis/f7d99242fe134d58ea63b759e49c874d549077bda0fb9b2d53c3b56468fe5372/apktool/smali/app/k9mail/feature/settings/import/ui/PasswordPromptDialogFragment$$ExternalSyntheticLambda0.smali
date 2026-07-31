.class public final synthetic Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/fragment/app/DialogFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/DialogFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget v0, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;->f$0:Landroidx/fragment/app/DialogFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptDialogFragment;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptDialogFragment;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iput p2, p0, Landroidx/preference/PreferenceDialogFragmentCompat;->mWhichButtonClicked:I

    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;

    .line 25
    .line 26
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->dialogView:Landroid/view/View;

    .line 27
    .line 28
    const-string p2, "dialogView"

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    if-eqz p1, :cond_6

    .line 32
    .line 33
    const v1, 0x7f090237

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 44
    .line 45
    iget-object v1, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->dialogView:Landroid/view/View;

    .line 46
    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    const v2, 0x7f090325

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 60
    .line 61
    iget-object v2, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->dialogView:Landroid/view/View;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    const p2, 0x7f09046f

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    check-cast p2, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 76
    .line 77
    iget-boolean v2, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->inputIncomingServerPassword:Z

    .line 78
    .line 79
    if-nez v2, :cond_0

    .line 80
    .line 81
    move-object p1, v0

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    :goto_0
    iget-boolean v2, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->inputOutgoingServerPassword:Z

    .line 92
    .line 93
    if-nez v2, :cond_1

    .line 94
    .line 95
    move-object p2, v0

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_2

    .line 102
    .line 103
    move-object p2, p1

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    :goto_1
    iget-object v1, p0, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment;->accountUuid:Ljava/lang/String;

    .line 114
    .line 115
    const-string v2, "accountUuid"

    .line 116
    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    new-instance v0, Landroid/content/Intent;

    .line 120
    .line 121
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    const-string v1, "incomingServerPassword"

    .line 128
    .line 129
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    const-string p1, "outgoingServerPassword"

    .line 133
    .line 134
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    const/4 p1, 0x1

    .line 138
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    sget-object p2, Landroidx/fragment/app/strictmode/FragmentStrictMode;->defaultPolicy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 146
    .line 147
    new-instance p2, Landroidx/fragment/app/strictmode/GetTargetFragmentUsageViolation;

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v2, "Attempting to get target request code from fragment "

    .line 152
    .line 153
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-direct {p2, p0, v1}, Landroidx/fragment/app/strictmode/Violation;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->logIfDebuggingEnabled(Landroidx/fragment/app/strictmode/Violation;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->getNearestPolicy(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    iget p0, p0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 177
    .line 178
    const/4 p2, -0x1

    .line 179
    invoke-virtual {p1, p0, p2, v0}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v0

    .line 191
    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
