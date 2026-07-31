.class public final Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

.field public final vibrator$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/GapPending$keyMap$2;

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/GapPending$keyMap$2;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->vibrator$delegate:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method public static final access$playVibration(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "adapter"

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->getVibratePattern()Lnet/thunderbird/feature/notification/VibratePattern;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v3, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    iget v1, v3, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->vibrationTimes:I

    .line 17
    .line 18
    sget-object v2, Lnet/thunderbird/feature/notification/NotificationVibration;->DEFAULT:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->getSystemPattern(Lnet/thunderbird/feature/notification/VibratePattern;I)[J

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->vibrator$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lcom/fsck/k9/ui/settings/account/Vibrator;

    .line 31
    .line 32
    check-cast p0, Lcom/fsck/k9/ui/settings/account/AndroidVibrator;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/settings/account/AndroidVibrator;->vibrate([J)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v1

    .line 42
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v1
.end method


# virtual methods
.method public final getVibrationPreference()Lcom/fsck/k9/ui/settings/account/VibrationPreference;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 9
    .line 10
    return-object p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const-string/jumbo v2, "vibrate"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-string/jumbo v3, "vibratePattern"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-static {v3}, Lnet/thunderbird/feature/notification/VibratePattern;->valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/notification/VibratePattern;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string/jumbo v4, "vibrationTimes"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    move v10, p1

    .line 36
    move v6, v2

    .line 37
    move-object v9, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-string p0, "Missing enum value for key \'vibratePattern\'"

    .line 40
    .line 41
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->getVibrationPreference()Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-boolean v2, p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->isVibrationEnabled:Z

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->getVibrationPreference()Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v3, p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibratePattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->getVibrationPreference()Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget p1, p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibrationTimes:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->getVibrationPreference()Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p1, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v7, Ljava/util/ArrayList;

    .line 74
    .line 75
    array-length v2, p1

    .line 76
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .line 78
    .line 79
    array-length v2, p1

    .line 80
    const/4 v3, 0x0

    .line 81
    move v4, v3

    .line 82
    :goto_2
    if-ge v4, v2, :cond_2

    .line 83
    .line 84
    aget-object v5, p1, v4

    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->getVibrationPreference()Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object p1, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    new-instance v8, Ljava/util/ArrayList;

    .line 106
    .line 107
    array-length v2, p1

    .line 108
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .line 110
    .line 111
    array-length v2, p1

    .line 112
    move v4, v3

    .line 113
    :goto_3
    if-ge v4, v2, :cond_3

    .line 114
    .line 115
    aget-object v5, p1, v4

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_3
    new-instance v4, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 136
    .line 137
    move-object v5, p0

    .line 138
    invoke-direct/range {v4 .. v10}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;-><init>(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;ZLjava/util/ArrayList;Ljava/util/ArrayList;Lnet/thunderbird/feature/notification/VibratePattern;I)V

    .line 139
    .line 140
    .line 141
    iput-object v4, v5, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 142
    .line 143
    new-instance p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 144
    .line 145
    invoke-direct {p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, v5, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 149
    .line 150
    if-eqz p1, :cond_4

    .line 151
    .line 152
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    new-instance p1, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$$ExternalSyntheticLambda0;

    .line 156
    .line 157
    invoke-direct {p1, v5, v3}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;I)V

    .line 158
    .line 159
    .line 160
    const v0, 0x7f12050a

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    new-instance p1, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    const/4 v0, 0x1

    .line 169
    invoke-direct {p1, v5, v0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;I)V

    .line 170
    .line 171
    .line 172
    const v0, 0x7f1201fa

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0

    .line 183
    :cond_4
    const-string p0, "adapter"

    .line 184
    .line 185
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v1
.end method

.method public final onDialogClosed(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->getVibrationPreference()Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "adapter"

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v3, v0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->isVibrationEnabled:Z

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->getVibratePattern()Lnet/thunderbird/feature/notification/VibratePattern;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->vibrationTimes:I

    .line 25
    .line 26
    iput-boolean v3, p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->isVibrationEnabled:Z

    .line 27
    .line 28
    iput-object v0, p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibratePattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 29
    .line 30
    iput p0, p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibrationTimes:I

    .line 31
    .line 32
    invoke-static {v3, v0, p0}, Landroidx/appcompat/app/ActionBar;->encode(ZLnet/thunderbird/feature/notification/VibratePattern;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->updateSummary()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "adapter"

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-boolean v0, v0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->isVibrationEnabled:Z

    .line 12
    .line 13
    const-string/jumbo v3, "vibrate"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->getVibratePattern()Lnet/thunderbird/feature/notification/VibratePattern;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string/jumbo v3, "vibratePattern"

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v3, v0}, Landroidx/work/Operation$State;->putEnum(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;->adapter:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;

    .line 34
    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    iget p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->vibrationTimes:I

    .line 38
    .line 39
    const-string/jumbo v0, "vibrationTimes"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1
.end method
