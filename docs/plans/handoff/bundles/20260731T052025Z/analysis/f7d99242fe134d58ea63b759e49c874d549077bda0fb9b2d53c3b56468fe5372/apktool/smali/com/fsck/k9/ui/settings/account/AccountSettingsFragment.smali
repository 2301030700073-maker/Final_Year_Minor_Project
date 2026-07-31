.class public final Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;
.super Lcom/takisoft/preferencex/PreferenceFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/fragment/ConfirmationDialogFragment$ConfirmationDialogFragmentListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final accountRemover$delegate:Lkotlin/Lazy;

.field public final accountUuid$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final appNameProvider$delegate:Lkotlin/Lazy;

.field public dataStore:Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;

.field public final dataStoreFactory$delegate:Lkotlin/Lazy;

.field public final launcherForActivityResult:Landroidx/fragment/app/Fragment$10;

.field public final messagingController$delegate:Lkotlin/Lazy;

.field public final notificationChannelManager$delegate:Lkotlin/Lazy;

.field public notificationLightPreference:Landroidx/preference/ListPreference;

.field public final notificationSettingsUpdater$delegate:Lkotlin/Lazy;

.field public notificationSoundPreference:Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;

.field public notificationVibrationPreference:Lcom/fsck/k9/ui/settings/account/VibrationPreference;

.field public final openPgpApiManager$delegate:Lkotlin/Lazy;

.field public title:Ljava/lang/CharSequence;

.field public final vibrator$delegate:Lkotlin/Lazy;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 11
    .line 12
    const/16 v3, 0x17

    .line 13
    .line 14
    invoke-direct {v2, v3, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 18
    .line 19
    invoke-static {v0, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 29
    .line 30
    .line 31
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 32
    .line 33
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->dataStoreFactory$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;

    .line 40
    .line 41
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 45
    .line 46
    const/16 v4, 0x18

    .line 47
    .line 48
    invoke-direct {v2, v4, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v2}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->openPgpApiManager$delegate:Lkotlin/Lazy;

    .line 56
    .line 57
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->messagingController$delegate:Lkotlin/Lazy;

    .line 68
    .line 69
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;

    .line 70
    .line 71
    const/4 v4, 0x3

    .line 72
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->accountRemover$delegate:Lkotlin/Lazy;

    .line 80
    .line 81
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;

    .line 82
    .line 83
    const/4 v4, 0x4

    .line 84
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationChannelManager$delegate:Lkotlin/Lazy;

    .line 92
    .line 93
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;

    .line 94
    .line 95
    const/4 v4, 0x5

    .line 96
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationSettingsUpdater$delegate:Lkotlin/Lazy;

    .line 104
    .line 105
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;

    .line 106
    .line 107
    const/4 v4, 0x6

    .line 108
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->vibrator$delegate:Lkotlin/Lazy;

    .line 116
    .line 117
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;

    .line 118
    .line 119
    const/4 v5, 0x7

    .line 120
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 121
    .line 122
    .line 123
    invoke-static {v3, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->appNameProvider$delegate:Lkotlin/Lazy;

    .line 128
    .line 129
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 130
    .line 131
    invoke-direct {v0, v4}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 132
    .line 133
    .line 134
    new-instance v3, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;

    .line 135
    .line 136
    invoke-direct {v3, v2, p0}, Landroidx/activity/compose/ActivityResultRegistryKt$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->launcherForActivityResult:Landroidx/fragment/app/Fragment$10;

    .line 144
    .line 145
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;

    .line 146
    .line 147
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 148
    .line 149
    .line 150
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 151
    .line 152
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 153
    .line 154
    .line 155
    iput-object v1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->accountUuid$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 156
    .line 157
    return-void
.end method


# virtual methods
.method public final configureCryptoPreferences(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpProvider()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-static {v5, v0}, Lorg/openintents/openpgp/util/OpenPgpProviderUtil;->getOpenPgpProviderName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v6, 0x7f120117

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v6, 0x0

    .line 47
    .line 48
    invoke-virtual {p1, v6, v7}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpKey(J)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->dataStore:Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSettingsInBackground()V

    .line 56
    .line 57
    .line 58
    move-object v0, v4

    .line 59
    :cond_1
    move-object v4, v5

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string p0, "dataStore"

    .line 62
    .line 63
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v4

    .line 67
    :cond_3
    :goto_1
    const-string v5, "openpgp_provider"

    .line 68
    .line 69
    invoke-virtual {p0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    check-cast v5, Landroidx/preference/SwitchPreference;

    .line 77
    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v5, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    .line 82
    .line 83
    const v3, 0x7f1200b4

    .line 84
    .line 85
    .line 86
    iget-object v4, v5, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lorg/slf4j/event/EventRecodingLogger;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p0, v3, Lorg/slf4j/event/EventRecodingLogger;->name:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object p1, v3, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object v5, v3, Lorg/slf4j/event/EventRecodingLogger;->eventQueue:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v3, v5, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {v5, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 110
    .line 111
    .line 112
    new-array v3, v2, [Ljava/lang/Object;

    .line 113
    .line 114
    aput-object v4, v3, v1

    .line 115
    .line 116
    const v4, 0x7f1200b5

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0, v4, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    new-instance v3, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;

    .line 127
    .line 128
    invoke-direct {v3, p0, p1, v2}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 129
    .line 130
    .line 131
    iput-object v3, v5, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 132
    .line 133
    :goto_2
    const-string v3, "openpgp_key"

    .line 134
    .line 135
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    check-cast v3, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    .line 143
    .line 144
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getOpenPgpKey()J

    .line 145
    .line 146
    .line 147
    move-result-wide v4

    .line 148
    invoke-virtual {v3, v4, v5}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->setAndPersist(J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->refreshTitleAndSummary()V

    .line 152
    .line 153
    .line 154
    iget-object v4, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->openPgpApiManager$delegate:Lkotlin/Lazy;

    .line 155
    .line 156
    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 161
    .line 162
    iput-object v4, v3, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 163
    .line 164
    invoke-virtual {v4, v0, v3}, Lorg/openintents/openpgp/OpenPgpApiManager;->setOpenPgpProvider(Ljava/lang/String;Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpApiManagerCallback;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->refreshTitleAndSummary()V

    .line 168
    .line 169
    .line 170
    iput-object p0, v3, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->intentSenderFragment:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getIdentity(I)Lnet/thunderbird/core/android/account/Identity;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    iget-object v5, v0, Lnet/thunderbird/core/android/account/Identity;->name:Ljava/lang/String;

    .line 182
    .line 183
    if-eqz v5, :cond_6

    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-nez v6, :cond_5

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v5, " "

    .line 196
    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    :cond_6
    :goto_3
    const-string v5, "<"

    .line 201
    .line 202
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v0, v0, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 206
    .line 207
    const-string v5, ">"

    .line 208
    .line 209
    invoke-static {v4, v0, v5}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iput-object v0, v3, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->defaultUserId:Ljava/lang/String;

    .line 214
    .line 215
    iput-boolean v2, v3, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->showAutocryptHint:Z

    .line 216
    .line 217
    const-string v0, "autocrypt_transfer"

    .line 218
    .line 219
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    new-instance v2, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;

    .line 227
    .line 228
    invoke-direct {v2, p0, p1, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 229
    .line 230
    .line 231
    iput-object v2, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 232
    .line 233
    return-void
.end method

.method public final dialogCancelled(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final doNegativeClick(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final doPositiveClick(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->accountRemover$delegate:Lkotlin/Lazy;

    .line 9
    .line 10
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p1, p0}, Lcom/fsck/k9/account/DefaultBackgroundAccountRemover;->removeAccountAsync(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final getAccount()Lnet/thunderbird/core/android/account/LegacyAccountDto;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccountUuid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-object v2, v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountManager:Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 30
    .line 31
    check-cast v2, Lcom/fsck/k9/Preferences;

    .line 32
    .line 33
    invoke-virtual {v2, p0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object p0, v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->accountUuid:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_0
    const-string v0, "Account "

    .line 46
    .line 47
    const-string v1, " not found"

    .line 48
    .line 49
    invoke-static {p0, v1, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_1
    return-object v2
.end method

.method public final getAccountUuid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->accountUuid$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getMessagingController$4()Lcom/fsck/k9/controller/MessagingController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->messagingController$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/controller/MessagingController;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onActivityCreated()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->title:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "openpgp_key"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_5

    .line 17
    .line 18
    const/16 v1, 0x270e

    .line 19
    .line 20
    if-eq p1, v1, :cond_4

    .line 21
    .line 22
    const/16 v1, 0x270f

    .line 23
    .line 24
    if-eq p1, v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p0, -0x1

    .line 28
    if-ne p2, p0, :cond_3

    .line 29
    .line 30
    iput-object p3, v0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->cachedActivityResultData:Landroid/content/Intent;

    .line 31
    .line 32
    iget-object p0, v0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 33
    .line 34
    iget-object p0, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->openPgpProviderState:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 35
    .line 36
    sget-object p1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->OK:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 37
    .line 38
    if-eq p0, p1, :cond_2

    .line 39
    .line 40
    sget-object p1, Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;->UI_REQUIRED:Lorg/openintents/openpgp/OpenPgpApiManager$OpenPgpProviderState;

    .line 41
    .line 42
    if-ne p0, p1, :cond_3

    .line 43
    .line 44
    :cond_2
    invoke-virtual {v0}, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->apiRetrievePendingIntentAndKeyInfo()V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void

    .line 48
    :cond_4
    iget-object p0, v0, Lorg/openintents/openpgp/util/OpenPgpKeyPreference;->openPgpApiManager:Lorg/openintents/openpgp/OpenPgpApiManager;

    .line 49
    .line 50
    iput-object v2, p0, Lorg/openintents/openpgp/OpenPgpApiManager;->userInteractionPendingIntent:Landroid/app/PendingIntent;

    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/openintents/openpgp/OpenPgpApiManager;->refreshConnection()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final onCreatePreferencesFix(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccount()Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    iget-object p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->dataStoreFactory$delegate:Lkotlin/Lazy;

    .line 6
    .line 7
    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;

    .line 17
    .line 18
    iget-object v1, p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->preferences:Lcom/fsck/k9/Preferences;

    .line 19
    .line 20
    iget-object v2, p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    iget-object v4, p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->jobManager:Lcom/fsck/k9/job/K9JobManager;

    .line 23
    .line 24
    iget-object v5, p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->notificationChannelManager:Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 25
    .line 26
    iget-object v6, p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->notificationController:Lcom/fsck/k9/notification/NotificationController;

    .line 27
    .line 28
    iget-object v7, p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;->messagingController:Lcom/fsck/k9/controller/MessagingController;

    .line 29
    .line 30
    invoke-direct/range {v0 .. v7}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;-><init>(Lcom/fsck/k9/Preferences;Ljava/util/concurrent/ExecutorService;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/job/K9JobManager;Lcom/fsck/k9/notification/NotificationChannelManager;Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/controller/MessagingController;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->dataStore:Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;

    .line 34
    .line 35
    iget-object p2, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 36
    .line 37
    iput-object v0, p2, Landroidx/preference/PreferenceManager;->mPreferenceDataStore:Landroidx/compose/ui/unit/IntRectKt;

    .line 38
    .line 39
    const/high16 p2, 0x7f160000

    .line 40
    .line 41
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 45
    .line 46
    iget-object p1, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 47
    .line 48
    iget-object p1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->title:Ljava/lang/CharSequence;

    .line 51
    .line 52
    const-string p1, "general"

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 p2, 0x3

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;

    .line 62
    .line 63
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 67
    .line 68
    :cond_0
    const-string p1, "reading_mail"

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    new-instance v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;

    .line 77
    .line 78
    const/4 v1, 0x7

    .line 79
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 83
    .line 84
    :cond_1
    const-string p1, "fetching_mail"

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/4 v0, 0x2

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    new-instance v1, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;

    .line 94
    .line 95
    invoke-direct {v1, p0, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 99
    .line 100
    :cond_2
    const-string p1, "search"

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const/4 v1, 0x0

    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    new-instance v2, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;

    .line 110
    .line 111
    invoke-direct {v2, p0, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 112
    .line 113
    .line 114
    iput-object v2, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 115
    .line 116
    :cond_3
    const-string p1, "incoming"

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    new-instance v2, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;

    .line 125
    .line 126
    const/4 v4, 0x4

    .line 127
    invoke-direct {v2, p0, v4}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 128
    .line 129
    .line 130
    iput-object v2, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 131
    .line 132
    :cond_4
    const-string p1, "composition"

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const/4 v2, 0x1

    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    new-instance v4, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;

    .line 142
    .line 143
    invoke-direct {v4, p0, v2}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 144
    .line 145
    .line 146
    iput-object v4, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 147
    .line 148
    :cond_5
    const-string p1, "manage_identities"

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    new-instance v4, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;

    .line 157
    .line 158
    const/4 v5, 0x5

    .line 159
    invoke-direct {v4, p0, v5}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 160
    .line 161
    .line 162
    iput-object v4, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 163
    .line 164
    :cond_6
    const-string/jumbo p1, "upload_sent_messages"

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    if-eqz p1, :cond_7

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getMessagingController$4()Lcom/fsck/k9/controller/MessagingController;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v4, v3}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-interface {v4}, Lcom/fsck/k9/backend/api/Backend;->getSupportsUpload()Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_7

    .line 186
    .line 187
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 188
    .line 189
    .line 190
    :cond_7
    const-string p1, "outgoing"

    .line 191
    .line 192
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_8

    .line 197
    .line 198
    new-instance v4, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;

    .line 199
    .line 200
    const/4 v5, 0x6

    .line 201
    invoke-direct {v4, p0, v5}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$initializeSearch$$inlined$onClick$1;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;I)V

    .line 202
    .line 203
    .line 204
    iput-object v4, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 205
    .line 206
    :cond_8
    const-string p1, "quote_style"

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    if-eqz p1, :cond_9

    .line 213
    .line 214
    new-instance v4, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;

    .line 215
    .line 216
    invoke-direct {v4, v0, p1}, Lcom/google/android/material/button/MaterialButton$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iput-object v4, p1, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 220
    .line 221
    :cond_9
    const-string p1, "delete_policy"

    .line 222
    .line 223
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    instance-of v0, p1, Landroidx/preference/ListPreference;

    .line 228
    .line 229
    const/4 v4, 0x0

    .line 230
    if-eqz v0, :cond_a

    .line 231
    .line 232
    check-cast p1, Landroidx/preference/ListPreference;

    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_a
    move-object p1, v4

    .line 236
    :goto_0
    if-eqz p1, :cond_f

    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getMessagingController$4()Lcom/fsck/k9/controller/MessagingController;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0, v3}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-interface {v0}, Lcom/fsck/k9/backend/api/Backend;->getSupportsFlags()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-nez v0, :cond_f

    .line 251
    .line 252
    iget-object v0, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    const-string v5, "MARK_AS_READ"

    .line 258
    .line 259
    invoke-static {v0, v5}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    iget-object v5, p1, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 264
    .line 265
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    new-instance v6, Ljava/util/ArrayList;

    .line 269
    .line 270
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .line 272
    .line 273
    array-length v7, v5

    .line 274
    move v8, v1

    .line 275
    move v9, v8

    .line 276
    :goto_1
    if-ge v8, v7, :cond_c

    .line 277
    .line 278
    aget-object v10, v5, v8

    .line 279
    .line 280
    add-int/lit8 v11, v9, 0x1

    .line 281
    .line 282
    if-eq v9, v0, :cond_b

    .line 283
    .line 284
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 288
    .line 289
    move v9, v11

    .line 290
    goto :goto_1

    .line 291
    :cond_c
    new-array v5, v1, [Ljava/lang/CharSequence;

    .line 292
    .line 293
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    check-cast v5, [Ljava/lang/CharSequence;

    .line 298
    .line 299
    invoke-virtual {p1, v5}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    iget-object v5, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 303
    .line 304
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    new-instance v6, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .line 311
    .line 312
    array-length v7, v5

    .line 313
    move v8, v1

    .line 314
    move v9, v8

    .line 315
    :goto_2
    if-ge v8, v7, :cond_e

    .line 316
    .line 317
    aget-object v10, v5, v8

    .line 318
    .line 319
    add-int/lit8 v11, v9, 0x1

    .line 320
    .line 321
    if-eq v9, v0, :cond_d

    .line 322
    .line 323
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    :cond_d
    add-int/lit8 v8, v8, 0x1

    .line 327
    .line 328
    move v9, v11

    .line 329
    goto :goto_2

    .line 330
    :cond_e
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 331
    .line 332
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, [Ljava/lang/CharSequence;

    .line 337
    .line 338
    iput-object v0, p1, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 339
    .line 340
    :cond_f
    const-string p1, "expunge_policy"

    .line 341
    .line 342
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    if-eqz p1, :cond_10

    .line 347
    .line 348
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getMessagingController$4()Lcom/fsck/k9/controller/MessagingController;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v0, v3}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-interface {v0}, Lcom/fsck/k9/backend/api/Backend;->getSupportsExpunge()Z

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-nez v0, :cond_10

    .line 361
    .line 362
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 363
    .line 364
    .line 365
    :cond_10
    const-string p1, "account_message_age"

    .line 366
    .line 367
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    if-eqz p1, :cond_11

    .line 372
    .line 373
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getMessagingController$4()Lcom/fsck/k9/controller/MessagingController;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v0, v3}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-interface {v0}, Lcom/fsck/k9/backend/api/Backend;->getSupportsSearchByDate()Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-nez v0, :cond_11

    .line 386
    .line 387
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 388
    .line 389
    .line 390
    :cond_11
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getMessagingController$4()Lcom/fsck/k9/controller/MessagingController;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-virtual {p1, v3}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-interface {p1}, Lcom/fsck/k9/backend/api/Backend;->isPushCapable()Z

    .line 399
    .line 400
    .line 401
    move-result p1

    .line 402
    if-nez p1, :cond_12

    .line 403
    .line 404
    const-string p1, "push_advanced"

    .line 405
    .line 406
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    if-eqz p1, :cond_12

    .line 411
    .line 412
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 413
    .line 414
    .line 415
    :cond_12
    const-string p1, "openpgp"

    .line 416
    .line 417
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    if-eqz p1, :cond_13

    .line 422
    .line 423
    invoke-virtual {p0, v3}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->configureCryptoPreferences(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 424
    .line 425
    .line 426
    :cond_13
    const-string p1, "folders"

    .line 427
    .line 428
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    if-eqz p1, :cond_17

    .line 433
    .line 434
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getMessagingController$4()Lcom/fsck/k9/controller/MessagingController;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p1, v3}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    invoke-interface {p1}, Lcom/fsck/k9/backend/api/Backend;->getSupportsFolderSubscriptions()Z

    .line 443
    .line 444
    .line 445
    move-result p1

    .line 446
    if-nez p1, :cond_14

    .line 447
    .line 448
    const-string p1, "subscribed_folders_only"

    .line 449
    .line 450
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 455
    .line 456
    .line 457
    :cond_14
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getMessagingController$4()Lcom/fsck/k9/controller/MessagingController;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    invoke-virtual {p1, v3}, Lcom/fsck/k9/controller/MessagingController;->getBackend(Lnet/thunderbird/core/android/account/LegacyAccountDto;)Lcom/fsck/k9/backend/api/Backend;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    invoke-interface {p1}, Lcom/fsck/k9/backend/api/Backend;->getSupportsMove()Z

    .line 466
    .line 467
    .line 468
    move-result p1

    .line 469
    if-nez p1, :cond_15

    .line 470
    .line 471
    const-string p1, "archive_folder"

    .line 472
    .line 473
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 474
    .line 475
    .line 476
    move-result-object p1

    .line 477
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 478
    .line 479
    .line 480
    const-string p1, "drafts_folder"

    .line 481
    .line 482
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 483
    .line 484
    .line 485
    move-result-object p1

    .line 486
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 487
    .line 488
    .line 489
    const-string p1, "sent_folder"

    .line 490
    .line 491
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 496
    .line 497
    .line 498
    const-string p1, "spam_folder"

    .line 499
    .line 500
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 505
    .line 506
    .line 507
    const-string p1, "trash_folder"

    .line 508
    .line 509
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 510
    .line 511
    .line 512
    move-result-object p1

    .line 513
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 514
    .line 515
    .line 516
    :cond_15
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 517
    .line 518
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object p1

    .line 522
    check-cast p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 523
    .line 524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    .line 526
    .line 527
    iget-object v0, p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;->foldersLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 528
    .line 529
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    if-nez v5, :cond_16

    .line 534
    .line 535
    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    new-instance v6, Lcom/fsck/k9/Preferences$getAccountsFlow$1;

    .line 540
    .line 541
    const/16 v7, 0xc

    .line 542
    .line 543
    invoke-direct {v6, p1, v3, v4, v7}, Lcom/fsck/k9/Preferences$getAccountsFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 544
    .line 545
    .line 546
    invoke-static {v5, v4, v4, v6, p2}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 547
    .line 548
    .line 549
    :cond_16
    new-instance p1, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;

    .line 550
    .line 551
    const/16 p2, 0x13

    .line 552
    .line 553
    invoke-direct {p1, p2, p0}, Lkotlin/collections/AbstractMap$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    new-instance p2, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;

    .line 557
    .line 558
    const/16 v4, 0xa

    .line 559
    .line 560
    invoke-direct {p2, v4, p1}, Lcom/fsck/k9/ui/base/BaseActivity$sam$androidx_lifecycle_Observer$0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, p0, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 564
    .line 565
    .line 566
    :cond_17
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->vibrator$delegate:Lkotlin/Lazy;

    .line 567
    .line 568
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object p1

    .line 572
    check-cast p1, Lcom/fsck/k9/ui/settings/account/Vibrator;

    .line 573
    .line 574
    check-cast p1, Lcom/fsck/k9/ui/settings/account/AndroidVibrator;

    .line 575
    .line 576
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/account/AndroidVibrator;->vibrator:Landroid/os/Vibrator;

    .line 577
    .line 578
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 579
    .line 580
    .line 581
    move-result p1

    .line 582
    const-string p2, "account_combined_vibration"

    .line 583
    .line 584
    if-nez p1, :cond_18

    .line 585
    .line 586
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    if-eqz p1, :cond_18

    .line 591
    .line 592
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 593
    .line 594
    .line 595
    :cond_18
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 596
    .line 597
    const/16 v0, 0x1a

    .line 598
    .line 599
    if-lt p1, v0, :cond_1e

    .line 600
    .line 601
    const-string p1, "account_ringtone"

    .line 602
    .line 603
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    check-cast p1, Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;

    .line 608
    .line 609
    if-eqz p1, :cond_19

    .line 610
    .line 611
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationSoundPreference:Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;

    .line 612
    .line 613
    :cond_19
    const-string p1, "notification_light"

    .line 614
    .line 615
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 616
    .line 617
    .line 618
    move-result-object p1

    .line 619
    check-cast p1, Landroidx/preference/ListPreference;

    .line 620
    .line 621
    if-eqz p1, :cond_1a

    .line 622
    .line 623
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationLightPreference:Landroidx/preference/ListPreference;

    .line 624
    .line 625
    :cond_1a
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 626
    .line 627
    .line 628
    move-result-object p1

    .line 629
    check-cast p1, Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 630
    .line 631
    if-eqz p1, :cond_1b

    .line 632
    .line 633
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationVibrationPreference:Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 634
    .line 635
    :cond_1b
    const-string p1, "open_notification_settings_messages"

    .line 636
    .line 637
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 638
    .line 639
    .line 640
    move-result-object p1

    .line 641
    check-cast p1, Lcom/fsck/k9/ui/settings/account/NotificationsPreference;

    .line 642
    .line 643
    if-eqz p1, :cond_1c

    .line 644
    .line 645
    new-instance p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;

    .line 646
    .line 647
    invoke-direct {p2, p0, v3, v1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 648
    .line 649
    .line 650
    iput-object p2, p1, Lcom/fsck/k9/ui/settings/account/NotificationsPreference;->notificationChannelIdProvider:Lkotlin/jvm/functions/Function0;

    .line 651
    .line 652
    :cond_1c
    const-string p1, "open_notification_settings_miscellaneous"

    .line 653
    .line 654
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    check-cast p1, Lcom/fsck/k9/ui/settings/account/NotificationsPreference;

    .line 659
    .line 660
    if-eqz p1, :cond_1d

    .line 661
    .line 662
    new-instance p2, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;

    .line 663
    .line 664
    invoke-direct {p2, p0, v3, v2}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V

    .line 665
    .line 666
    .line 667
    iput-object p2, p1, Lcom/fsck/k9/ui/settings/account/NotificationsPreference;->notificationChannelIdProvider:Lkotlin/jvm/functions/Function0;

    .line 668
    .line 669
    :cond_1d
    invoke-virtual {p0, v3}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->updateNotificationPreferences(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 670
    .line 671
    .line 672
    return-void

    .line 673
    :cond_1e
    const-string p1, "notification_channels"

    .line 674
    .line 675
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 676
    .line 677
    .line 678
    move-result-object p0

    .line 679
    invoke-static {p0}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 680
    .line 681
    .line 682
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->getAccount()Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "openpgp"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->configureCryptoPreferences(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationSoundPreference:Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;->receivedActivityResultJustNow:Z

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    iput-boolean p0, v1, Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;->receivedActivityResultJustNow:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->updateNotificationPreferences(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Landroidx/fragment/app/FragmentManager$2;

    .line 12
    .line 13
    const/4 v0, 0x7

    .line 14
    invoke-direct {p2, v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p2, p0}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/fragment/app/FragmentManager$2;Landroidx/lifecycle/LifecycleOwner;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setFolders(Ljava/lang/String;Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;Lnet/thunderbird/feature/mail/folder/api/FolderType;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Lcom/fsck/k9/ui/settings/account/FolderListPreference;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/ui/settings/account/FolderListPreference;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-nez p0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object p1, p2, Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;->automaticSpecialFolders:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/fsck/k9/ui/settings/account/RemoteFolderInfo;->folders:Ljava/util/List;

    .line 25
    .line 26
    iget-object p3, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/FolderListPreference;->folderNameFormatter$delegate:Lkotlin/Lazy;

    .line 31
    .line 32
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lapp/k9mail/legacy/ui/folder/FolderNameFormatter;->displayName(Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const v0, 0x7f120101

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    :goto_1
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-wide v1, p1, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->id:J

    .line 56
    .line 57
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    :cond_3
    const-string p1, ""

    .line 64
    .line 65
    :cond_4
    const-string v1, "AUTOMATIC|"

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/4 v1, 0x1

    .line 72
    new-array v2, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    aput-object v0, v2, v3

    .line 76
    .line 77
    const v0, 0x7f12009e

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance v0, Landroid/text/SpannableString;

    .line 88
    .line 89
    invoke-direct {v0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    new-instance p3, Landroid/text/style/StyleSpan;

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-direct {p3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v0, p3, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/account/FolderListPreference;->automaticFolderOption:Landroid/text/SpannableString;

    .line 106
    .line 107
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/FolderListPreference;->noFolderSelectedName:Landroid/text/SpannableString;

    .line 112
    .line 113
    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-virtual {p0, p2}, Lcom/fsck/k9/ui/settings/account/FolderListPreference;->getFolderDisplayNames(Ljava/util/List;)Ljava/util/ArrayList;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 126
    .line 127
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    check-cast p3, [Ljava/lang/CharSequence;

    .line 132
    .line 133
    iput-object p3, p0, Landroidx/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 134
    .line 135
    invoke-static {p1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string p3, "MANUAL|"

    .line 140
    .line 141
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p2}, Lcom/fsck/k9/ui/settings/account/FolderListPreference;->getFolderValues(Ljava/util/List;)Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    new-array p2, v3, [Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, [Ljava/lang/CharSequence;

    .line 160
    .line 161
    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final updateNotificationPreferences(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationSettingsUpdater$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/fsck/k9/notification/NotificationSettingsUpdater;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/fsck/k9/notification/NotificationSettingsUpdater;->updateNotificationSettings(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->getNotificationSettings()Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationSoundPreference:Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    iget-object v1, p1, Lnet/thunderbird/feature/notification/NotificationSettings;->ringtone:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v1, v2

    .line 31
    :goto_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_1
    if-nez v2, :cond_2

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationLightPreference:Landroidx/preference/ListPreference;

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    iget-object v1, p1, Lnet/thunderbird/feature/notification/NotificationSettings;->light:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationVibrationPreference:Lcom/fsck/k9/ui/settings/account/VibrationPreference;

    .line 58
    .line 59
    if-eqz p0, :cond_5

    .line 60
    .line 61
    iget-object p1, p1, Lnet/thunderbird/feature/notification/NotificationSettings;->vibration:Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 62
    .line 63
    iget-boolean v0, p1, Lnet/thunderbird/feature/notification/NotificationVibration;->isEnabled:Z

    .line 64
    .line 65
    iget-object v1, p1, Lnet/thunderbird/feature/notification/NotificationVibration;->pattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 66
    .line 67
    iget p1, p1, Lnet/thunderbird/feature/notification/NotificationVibration;->repeatCount:I

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->isVibrationEnabled:Z

    .line 73
    .line 74
    iput-object v1, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibratePattern:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 75
    .line 76
    iput p1, p0, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->vibrationTimes:I

    .line 77
    .line 78
    invoke-static {v0, v1, p1}, Landroidx/appcompat/app/ActionBar;->encode(ZLnet/thunderbird/feature/notification/VibratePattern;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/account/VibrationPreference;->updateSummary()V

    .line 86
    .line 87
    .line 88
    :cond_5
    return-void
.end method
