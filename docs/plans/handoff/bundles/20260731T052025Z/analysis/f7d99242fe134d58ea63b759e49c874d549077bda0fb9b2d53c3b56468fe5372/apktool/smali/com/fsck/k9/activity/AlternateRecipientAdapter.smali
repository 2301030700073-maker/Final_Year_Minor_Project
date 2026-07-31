.class public final Lcom/fsck/k9/activity/AlternateRecipientAdapter;
.super Landroid/widget/BaseAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final context:Landroid/content/Context;

.field public currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

.field public final listener:Lcom/fsck/k9/view/RecipientSelectView;

.field public recipients:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/view/RecipientSelectView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->listener:Lcom/fsck/k9/view/RecipientSelectView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->recipients:Ljava/util/List;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    add-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->recipients:Ljava/util/List;

    .line 8
    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_1
    add-int/lit8 p1, p1, -0x2

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 23
    .line 24
    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    int-to-long p0, p1

    .line 2
    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->context:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const v2, 0x7f0c0381

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    new-instance p3, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;

    .line 18
    .line 19
    invoke-direct {p3, p2}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 p3, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    if-ne p1, v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->recipients:Ljava/util/List;

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    move-object v3, p3

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    add-int/lit8 v4, p1, -0x2

    .line 39
    .line 40
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 48
    .line 49
    :goto_1
    const/16 v4, 0x8

    .line 50
    .line 51
    if-nez p1, :cond_8

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;

    .line 58
    .line 59
    iget-object v5, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutHeader:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v5, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutItem:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object v5, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerPhoto:Lcom/fsck/k9/ui/ContactBadge;

    .line 70
    .line 71
    iget-object v6, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerLabel:Lcom/google/android/material/textview/MaterialTextView;

    .line 72
    .line 73
    iget-object v7, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerName:Lcom/google/android/material/textview/MaterialTextView;

    .line 74
    .line 75
    iget-object v8, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 76
    .line 77
    iget-object v8, v8, Lcom/fsck/k9/mail/Address;->personal:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v8, :cond_4

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    const v8, 0x7f120652

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    iget-object v0, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    :goto_3
    invoke-static {v5, v3}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->setContactPhotoOrPlaceholder(Landroid/widget/ImageView;Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactId:Ljava/lang/Long;

    .line 116
    .line 117
    if-nez v0, :cond_6

    .line 118
    .line 119
    move-object v0, p3

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v6

    .line 125
    iget-object v0, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->contactLookupKey:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {v6, v7, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_4
    iput-object v0, v5, Lcom/fsck/k9/ui/ContactBadge;->contactUri:Landroid/net/Uri;

    .line 132
    .line 133
    iput-object p3, v5, Lcom/fsck/k9/ui/ContactBadge;->contactEmail:Ljava/lang/String;

    .line 134
    .line 135
    if-nez v0, :cond_7

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_7
    move v1, v2

    .line 139
    :goto_5
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->headerRemove:Landroid/view/View;

    .line 143
    .line 144
    new-instance p3, Landroidx/preference/Preference$1;

    .line 145
    .line 146
    const/4 v0, 0x4

    .line 147
    invoke-direct {p3, v0, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    return-object p2

    .line 154
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;

    .line 159
    .line 160
    iget-object v0, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutHeader:Landroid/view/View;

    .line 161
    .line 162
    iget-object v5, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->layoutItem:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemCryptoStatus:Landroid/widget/ImageView;

    .line 171
    .line 172
    iget-object v6, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->address:Lcom/fsck/k9/mail/Address;

    .line 173
    .line 174
    iget-object v6, v6, Lcom/fsck/k9/mail/Address;->address:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v7, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddress:Lcom/google/android/material/textview/MaterialTextView;

    .line 177
    .line 178
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    iget-object v6, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    iget-object v8, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->itemAddressLabel:Lcom/google/android/material/textview/MaterialTextView;

    .line 188
    .line 189
    if-nez v6, :cond_9

    .line 190
    .line 191
    iget-object v6, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->addressLabel:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_9
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    :goto_6
    iget-object v6, p0, Lcom/fsck/k9/activity/AlternateRecipientAdapter;->currentRecipient:Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 204
    .line 205
    if-ne v6, v3, :cond_a

    .line 206
    .line 207
    move v6, v2

    .line 208
    goto :goto_7

    .line 209
    :cond_a
    move v6, v1

    .line 210
    :goto_7
    invoke-virtual {v7, p3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, p3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 214
    .line 215
    .line 216
    new-instance p3, Lcom/fsck/k9/activity/MessageCompose$13$1;

    .line 217
    .line 218
    invoke-direct {p3, v2, p0, v3}, Lcom/fsck/k9/activity/MessageCompose$13$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p1, Lcom/fsck/k9/activity/AlternateRecipientAdapter$RecipientTokenHolder;->copyEmailAddress:Landroid/view/View;

    .line 225
    .line 226
    new-instance p3, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;

    .line 227
    .line 228
    invoke-direct {p3, v1, p0}, Lcom/fsck/k9/activity/AlternateRecipientAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    iget p0, v3, Lcom/fsck/k9/view/RecipientSelectView$Recipient;->cryptoStatus:I

    .line 235
    .line 236
    invoke-static {p0}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    if-eqz p0, :cond_c

    .line 241
    .line 242
    if-eq p0, v2, :cond_c

    .line 243
    .line 244
    const/4 p1, 0x2

    .line 245
    if-eq p0, p1, :cond_b

    .line 246
    .line 247
    const/4 p1, 0x3

    .line 248
    if-eq p0, p1, :cond_b

    .line 249
    .line 250
    return-object p2

    .line 251
    :cond_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    return-object p2

    .line 255
    :cond_c
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    return-object p2
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    return p0
.end method
