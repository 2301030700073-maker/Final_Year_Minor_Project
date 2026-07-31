.class public final Lcom/fsck/k9/activity/AccountList$AccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->$r8$classId:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/activity/AccountList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->$r8$classId:I

    .line 15
    iput-object p1, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemOrThrow(I)Lapp/k9mail/feature/settings/import/ui/AppInfo;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/AppInfo;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string p0, "Item at position "

    .line 11
    .line 12
    const-string v0, " not found"

    .line 13
    .line 14
    invoke-static {p1, v0, p0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(ILjava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    check-cast v2, Landroid/view/LayoutInflater;

    .line 17
    .line 18
    const p2, 0x7f0c0570

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :cond_0
    const p3, 0x7f0903bb

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    check-cast p3, Landroid/widget/TextView;

    .line 33
    .line 34
    const v0, 0x7f0903bc

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->getItemOrThrow(I)Lapp/k9mail/feature/settings/import/ui/AppInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-boolean p1, p0, Lapp/k9mail/feature/settings/import/ui/AppInfo;->isImportSupported:Z

    .line 46
    .line 47
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AppInfo;->appName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    move v1, v3

    .line 58
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 62
    .line 63
    .line 64
    return-object p2

    .line 65
    :pswitch_0
    check-cast v2, Lcom/fsck/k9/activity/AccountList;

    .line 66
    .line 67
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lnet/thunderbird/feature/mail/account/api/BaseAccount;

    .line 75
    .line 76
    if-nez p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const p2, 0x7f0c0022

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    instance-of p3, p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;

    .line 94
    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz p3, :cond_3

    .line 97
    .line 98
    check-cast p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    move-object p1, v0

    .line 102
    :goto_0
    if-nez p1, :cond_4

    .line 103
    .line 104
    new-instance p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 107
    .line 108
    .line 109
    const p3, 0x7f090193

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    check-cast p3, Lcom/google/android/material/textview/MaterialTextView;

    .line 120
    .line 121
    iput-object p3, p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->description:Lcom/google/android/material/textview/MaterialTextView;

    .line 122
    .line 123
    const p3, 0x7f0901c6

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    check-cast p3, Lcom/google/android/material/textview/MaterialTextView;

    .line 134
    .line 135
    iput-object p3, p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->email:Lcom/google/android/material/textview/MaterialTextView;

    .line 136
    .line 137
    const p3, 0x7f090130

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iput-object p3, p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;

    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    iget-object p3, p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;

    .line 153
    .line 154
    iget-object v4, p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->email:Lcom/google/android/material/textview/MaterialTextView;

    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-interface {p0}, Lnet/thunderbird/feature/mail/account/api/BaseAccount;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    iget-object p1, p1, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->description:Lcom/google/android/material/textview/MaterialTextView;

    .line 164
    .line 165
    if-eqz v5, :cond_5

    .line 166
    .line 167
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {p0}, Lnet/thunderbird/feature/mail/account/api/BaseAccount;->getEmail()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_5
    invoke-interface {p0}, Lnet/thunderbird/feature/mail/account/api/BaseAccount;->getEmail()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    :goto_1
    instance-of p1, p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 192
    .line 193
    if-eqz p1, :cond_6

    .line 194
    .line 195
    check-cast p0, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 196
    .line 197
    invoke-virtual {p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getChipColor()I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    sget-object p1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 210
    .line 211
    const p1, 0x7f06001b

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 219
    .line 220
    .line 221
    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    const/16 p1, 0xff

    .line 226
    .line 227
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 228
    .line 229
    .line 230
    return-object p2

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->getItemOrThrow(I)Lapp/k9mail/feature/settings/import/ui/AppInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-boolean p0, p0, Lapp/k9mail/feature/settings/import/ui/AppInfo;->isImportSupported:Z

    .line 16
    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
