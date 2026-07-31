.class public final Lnet/thunderbird/app/common/MainActivity;
.super Lcom/fsck/k9/ui/base/BaseActivity;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final databaseUpgradeInterceptor$delegate:Lkotlin/Lazy;

.field public final startupRouter$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/fsck/k9/ui/base/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lnet/thunderbird/app/common/MainActivity$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lnet/thunderbird/app/common/MainActivity$special$$inlined$inject$default$1;-><init>(Lnet/thunderbird/app/common/MainActivity;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lnet/thunderbird/app/common/MainActivity;->startupRouter$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lnet/thunderbird/app/common/MainActivity$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {v0, p0, v2}, Lnet/thunderbird/app/common/MainActivity$special$$inlined$inject$default$1;-><init>(Lnet/thunderbird/app/common/MainActivity;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lnet/thunderbird/app/common/MainActivity;->databaseUpgradeInterceptor$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/fsck/k9/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lnet/thunderbird/app/common/MainActivity;->databaseUpgradeInterceptor$delegate:Lkotlin/Lazy;

    .line 5
    .line 6
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lnet/thunderbird/app/common/startup/DefaultDatabaseUpgradeInterceptor;->checkAndHandleUpgrade(Lcom/fsck/k9/ui/base/BaseActivity;Landroid/content/Intent;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p1, p0, Lnet/thunderbird/app/common/MainActivity;->startupRouter$delegate:Lkotlin/Lazy;

    .line 33
    .line 34
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lnet/thunderbird/app/common/startup/DefaultStartupRouter;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    iget-object v0, p1, Lnet/thunderbird/app/common/startup/DefaultStartupRouter;->accountManager:Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 44
    .line 45
    invoke-virtual {v0}, Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;->getAccounts()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    check-cast v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    move-object v4, v3

    .line 71
    check-cast v4, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 72
    .line 73
    iget-boolean v4, v4, Lnet/thunderbird/core/android/account/LegacyAccount;->isFinishedSetup:Z

    .line 74
    .line 75
    if-nez v4, :cond_1

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 96
    .line 97
    iget-object v3, p1, Lnet/thunderbird/app/common/startup/DefaultStartupRouter;->accountRemover:Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;

    .line 98
    .line 99
    iget-object v2, v2, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3, v2}, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;->removeAccountAsync(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 127
    .line 128
    iget-boolean v0, v0, Lnet/thunderbird/core/android/account/LegacyAccount;->isFinishedSetup:Z

    .line 129
    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    sget-object p1, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 133
    .line 134
    invoke-static {p0}, Lcom/fsck/k9/activity/MessageHomeActivity$Companion;->launch(Landroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    :goto_2
    sget-object p1, Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;->INSTANCE:Lapp/k9mail/feature/launcher/FeatureLauncherTarget$Onboarding;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    new-instance v0, Landroid/content/Intent;

    .line 144
    .line 145
    const-class v1, Lapp/k9mail/feature/launcher/FeatureLauncherActivity;

    .line 146
    .line 147
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p1, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v1, Landroid/net/Uri;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    iget-object p1, p1, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p1, Ljava/lang/Integer;

    .line 160
    .line 161
    if-eqz p1, :cond_7

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    .line 169
    .line 170
    :cond_7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    .line 172
    .line 173
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 174
    .line 175
    .line 176
    return-void
.end method
