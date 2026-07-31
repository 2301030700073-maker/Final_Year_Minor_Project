.class public final Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptDialogFragment;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public preferEncryptCheckbox:Lcom/google/android/material/checkbox/MaterialCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0c016b

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const v0, 0x7f090346

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    .line 24
    .line 25
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 30
    .line 31
    .line 32
    const v0, 0x7f090345

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v1, v0

    .line 40
    check-cast v1, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    check-cast v2, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptPreference;

    .line 50
    .line 51
    iget-boolean v2, v2, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptPreference;->isPreferEncryptEnabled:Z

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptDialogFragment;->preferEncryptCheckbox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 62
    .line 63
    const v0, 0x7f090344

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/4 v2, 0x4

    .line 73
    invoke-direct {v1, v2, p0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 91
    .line 92
    iput-object p1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 93
    .line 94
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-direct {p1, p0, v1}, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    .line 98
    .line 99
    .line 100
    const v1, 0x7f12050a

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/4 v1, 0x2

    .line 109
    invoke-direct {p1, p0, v1}, Lapp/k9mail/feature/settings/import/ui/PasswordPromptDialogFragment$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/DialogFragment;I)V

    .line 110
    .line 111
    .line 112
    const p0, 0x7f1201fa

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0
.end method

.method public final onDialogClosed(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptPreference;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptDialogFragment;->preferEncryptCheckbox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iput-boolean p0, p1, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptPreference;->isPreferEncryptEnabled:Z

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->persistBoolean(Z)V

    .line 30
    .line 31
    .line 32
    iget-boolean p0, p1, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptPreference;->isPreferEncryptEnabled:Z

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    iget-object p0, p1, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptPreference;->summaryOn:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p1, Lcom/fsck/k9/ui/settings/account/AutocryptPreferEncryptPreference;->summaryOff:Ljava/lang/String;

    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    const-string p0, "preferEncryptCheckbox"

    .line 46
    .line 47
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    throw p0

    .line 52
    :cond_2
    return-void
.end method
