.class public Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenPgpAppSelectFragment"
.end annotation


# instance fields
.field public final openPgpProviderList:Ljava/util/ArrayList;

.field public selectedPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .line 1
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f1200a8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->openPgpProviderList:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .line 26
    .line 27
    const v3, 0x7f120534

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const v5, 0x7f0800b6

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-direct {v2, v5, v3, v4}, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    new-instance v2, Landroid/content/Intent;

    .line 53
    .line 54
    const-string v3, "org.openintents.openpgp.IOpenPgpService2"

    .line 55
    .line 56
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v3, 0x1

    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move v5, v4

    .line 80
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_3

    .line 85
    .line 86
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 91
    .line 92
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 93
    .line 94
    if-nez v7, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v7, v9}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    sget-object v9, Lorg/openintents/openpgp/util/OpenPgpProviderUtil;->DISALLOWED_PROVIDERS:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-nez v9, :cond_0

    .line 128
    .line 129
    new-instance v5, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .line 130
    .line 131
    invoke-direct {v5, v8, v7, v6}, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move v5, v3

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    move v5, v4

    .line 140
    :cond_3
    if-nez v5, :cond_4

    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    sget-object v5, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->MARKET_INTENT:Landroid/content/Intent;

    .line 147
    .line 148
    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-eqz v5, :cond_4

    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 167
    .line 168
    new-instance v6, Landroid/content/Intent;

    .line 169
    .line 170
    sget-object v7, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->MARKET_INTENT:Landroid/content/Intent;

    .line 171
    .line 172
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 173
    .line 174
    .line 175
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 176
    .line 177
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 183
    .line 184
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 193
    .line 194
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 195
    .line 196
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-virtual {v5, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    const v8, 0x7f12052e

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    new-array v9, v3, [Ljava/lang/Object;

    .line 216
    .line 217
    aput-object v5, v9, v4

    .line 218
    .line 219
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    new-instance v8, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;

    .line 224
    .line 225
    const-string v9, "org.sufficientlysecure.keychain"

    .line 226
    .line 227
    invoke-direct {v8, v9, v5, v7}, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 228
    .line 229
    .line 230
    iput-object v6, v8, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpProviderEntry;->intent:Landroid/content/Intent;

    .line 231
    .line 232
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_4
    new-instance v1, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$1;

    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-direct {v1, p0, v2, v0}, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$1;-><init>(Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/ArrayList;)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;

    .line 246
    .line 247
    invoke-direct {v0, p0}, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment$2;-><init>(Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;)V

    .line 248
    .line 249
    .line 250
    iget-object p0, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast p0, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 253
    .line 254
    iput-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 255
    .line 256
    iput-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 257
    .line 258
    const/4 v0, -0x1

    .line 259
    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 260
    .line 261
    iput-boolean v3, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    return-object p0
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog$OpenPgpAppSelectFragment;->selectedPackage:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-class p0, Lcom/fsck/k9/Preferences;

    .line 18
    .line 19
    invoke-static {p0}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/fsck/k9/Preferences;

    .line 24
    .line 25
    iget-object v0, p1, Lcom/fsck/k9/ui/settings/account/OpenPgpAppSelectDialog;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/fsck/k9/Preferences;->saveAccount(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
