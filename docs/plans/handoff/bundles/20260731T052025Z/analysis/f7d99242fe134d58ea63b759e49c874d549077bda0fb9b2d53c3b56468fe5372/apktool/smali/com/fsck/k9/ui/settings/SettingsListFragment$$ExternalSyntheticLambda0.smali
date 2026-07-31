.class public final synthetic Lcom/fsck/k9/ui/settings/SettingsListFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/SettingsListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/SettingsListFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f12001b

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const v4, 0x7f090055

    .line 28
    .line 29
    .line 30
    const v5, 0x7f0800ee

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v4, v0, v5}, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->addAction(ILjava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const v0, 0x7f120337

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const v4, 0x7f120669

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iget-wide v5, p1, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->itemId:J

    .line 57
    .line 58
    add-long/2addr v5, v2

    .line 59
    iput-wide v5, p1, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->itemId:J

    .line 60
    .line 61
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->settingsList:Ljava/util/ArrayList;

    .line 62
    .line 63
    new-instance v2, Lcom/fsck/k9/ui/settings/UrlActionItem;

    .line 64
    .line 65
    invoke-direct {v2, v5, v6, v0, v4}, Lcom/fsck/k9/ui/settings/UrlActionItem;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->fundingManager$delegate:Lkotlin/Lazy;

    .line 72
    .line 73
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Lnet/thunderbird/feature/funding/noop/NoOpFundingManager;

    .line 78
    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    .line 94
    sget p1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;->$r8$clinit:I

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object v0, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;->INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;

    .line 101
    .line 102
    invoke-static {p1, v0}, Lapp/k9mail/feature/launcher/FeatureLauncherActivity$Companion;->launch(Landroid/content/Context;Lnet/openid/appauth/JsonUtil$Field;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :cond_0
    new-instance v0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const v4, 0x7f12032f

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    const v5, 0x7f090057

    .line 130
    .line 131
    .line 132
    const v6, 0x7f080116

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5, v4, v6}, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->addAction(ILjava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    const v4, 0x7f1201c0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    new-instance v5, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;

    .line 149
    .line 150
    invoke-direct {v5, p1, p0}, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/fsck/k9/ui/settings/SettingsListFragment;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4, v5}, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->addSection(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 154
    .line 155
    .line 156
    const p1, 0x7f1205c5

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    iget-wide v4, v0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->itemId:J

    .line 167
    .line 168
    add-long/2addr v4, v2

    .line 169
    iput-wide v4, v0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->itemId:J

    .line 170
    .line 171
    new-instance v2, Lcom/fsck/k9/ui/settings/SettingsDividerItem;

    .line 172
    .line 173
    invoke-direct {v2, v4, v5, p1}, Lcom/fsck/k9/ui/settings/SettingsDividerItem;-><init>(JLjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object p1, v0, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->settingsList:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    const v2, 0x7f1205a1

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    const v3, 0x7f090058

    .line 192
    .line 193
    .line 194
    const v4, 0x7f080121

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v3, v2, v4}, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->addAction(ILjava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    const v2, 0x7f1205c0

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const v3, 0x7f090059

    .line 211
    .line 212
    .line 213
    const v4, 0x7f0800da

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v3, v2, v4}, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->addAction(ILjava/lang/String;I)V

    .line 217
    .line 218
    .line 219
    const v2, 0x7f1205c6

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    new-instance v3, Lcom/fsck/k9/ui/settings/SettingsListFragment$$ExternalSyntheticLambda0;

    .line 230
    .line 231
    const/4 v4, 0x1

    .line 232
    invoke-direct {v3, p0, v4}, Lcom/fsck/k9/ui/settings/SettingsListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/SettingsListFragment;I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, v2, v3}, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->addSection(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/SettingsListFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 239
    .line 240
    if-eqz p0, :cond_1

    .line 241
    .line 242
    invoke-static {p0, p1}, Landroidx/core/util/DebugUtils;->setNewList$default(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;Ljava/util/List;)V

    .line 243
    .line 244
    .line 245
    :goto_0
    return-object v1

    .line 246
    :cond_1
    const-string p0, "itemAdapter"

    .line 247
    .line 248
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    const/4 p0, 0x0

    .line 252
    throw p0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
