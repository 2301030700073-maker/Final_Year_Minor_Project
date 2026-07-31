.class public final Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public checkedEntryIndex:I

.field public final entries:Ljava/util/ArrayList;

.field public final entryValues:Ljava/util/ArrayList;

.field public isVibrationEnabled:Z

.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;

.field public vibrationTimes:I


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;ZLjava/util/ArrayList;Ljava/util/ArrayList;Lnet/thunderbird/feature/notification/VibratePattern;I)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->this$0:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->isVibrationEnabled:Z

    .line 10
    .line 11
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->entries:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->entryValues:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p5}, Lnet/thunderbird/feature/notification/VibratePattern;->serialize()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/4 p3, -0x1

    .line 32
    if-eq p1, p3, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p2, 0x0

    .line 36
    :goto_0
    if-eqz p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    :goto_1
    iput p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->checkedEntryIndex:I

    .line 45
    .line 46
    iput p6, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->vibrationTimes:I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->entries:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    add-int/lit8 p0, p0, 0x2

    .line 8
    .line 9
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->entries:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    sub-int/2addr p1, v0

    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->entries:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-ge p1, p0, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    const/4 p0, 0x2

    .line 17
    return p0
.end method

.method public final getVibratePattern()Lnet/thunderbird/feature/notification/VibratePattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->entryValues:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget p0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->checkedEntryIndex:I

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sget-object v0, Lnet/thunderbird/feature/notification/VibratePattern;->Companion:Lcom/jcraft/jzlib/Adler32;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/jcraft/jzlib/Adler32;->deserialize(I)Lnet/thunderbird/feature/notification/VibratePattern;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->this$0:Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eq v0, v4, :cond_3

    .line 13
    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const p2, 0x7f0c0321

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const p1, 0x7f090477

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/google/android/material/textview/MaterialTextView;

    .line 40
    .line 41
    iget p3, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->vibrationTimes:I

    .line 42
    .line 43
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    const p3, 0x7f090475

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    check-cast p3, Landroid/widget/SeekBar;

    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->isVibrationEnabled:Z

    .line 60
    .line 61
    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->vibrationTimes:I

    .line 65
    .line 66
    sub-int/2addr v0, v4

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v4, 0x18

    .line 70
    .line 71
    if-lt v1, v4, :cond_1

    .line 72
    .line 73
    invoke-virtual {p3, v0, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 78
    .line 79
    .line 80
    :goto_0
    new-instance v0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1;

    .line 81
    .line 82
    invoke-direct {v0, p0, p1, v3}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$getVibrationTimesView$1$1;-><init>(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;Lcom/google/android/material/textview/MaterialTextView;Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_2
    const-string p0, "Unknown item type"

    .line 90
    .line 91
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    return-object p0

    .line 96
    :cond_3
    if-nez p2, :cond_4

    .line 97
    .line 98
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const v0, 0x7f0c031f

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    move-object p3, p2

    .line 113
    check-cast p3, Landroid/widget/CheckedTextView;

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->getItem(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    check-cast v0, Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    sub-int/2addr p1, v4

    .line 128
    iget v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->checkedEntryIndex:I

    .line 129
    .line 130
    if-ne p1, v0, :cond_5

    .line 131
    .line 132
    move v2, v4

    .line 133
    :cond_5
    invoke-virtual {p3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 134
    .line 135
    .line 136
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->isVibrationEnabled:Z

    .line 137
    .line 138
    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    .line 140
    .line 141
    new-instance v0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0;

    .line 142
    .line 143
    invoke-direct {v0, p0, p1, v3}, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;ILcom/fsck/k9/ui/settings/account/VibrationDialogFragment;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    .line 148
    .line 149
    return-object p2

    .line 150
    :cond_6
    if-nez p2, :cond_7

    .line 151
    .line 152
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const p2, 0x7f0c0320

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const p1, 0x7f090474

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 174
    .line 175
    iget-boolean p3, p0, Lcom/fsck/k9/ui/settings/account/VibrationDialogFragment$VibrationPatternAdapter;->isVibrationEnabled:Z

    .line 176
    .line 177
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 178
    .line 179
    .line 180
    new-instance p3, Lcom/fsck/k9/activity/EditIdentity$$ExternalSyntheticLambda0;

    .line 181
    .line 182
    invoke-direct {p3, v1, p0}, Lcom/fsck/k9/activity/EditIdentity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    .line 187
    .line 188
    const p0, 0x7f09040a

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    new-instance p3, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    const/4 v0, 0x5

    .line 198
    invoke-direct {p3, v0, p1}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    .line 203
    .line 204
    return-object p2
.end method

.method public final getViewTypeCount()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
