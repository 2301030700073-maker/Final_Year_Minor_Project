.class public final Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;
.super Lcom/takisoft/preferencex/PreferenceFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final choseFileSyncDebugLogsResultContract:Landroidx/fragment/app/Fragment$10;

.field public currentUiState:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;

.field public final dataStore$delegate:Lkotlin/Lazy;

.field public final exportLogsResultContract:Landroidx/fragment/app/Fragment$10;

.field public final exportSyncDebugLogsResultContract:Landroidx/fragment/app/Fragment$10;

.field public final featureFlagProvider$delegate:Lkotlin/Lazy;

.field public final jobManager$delegate:Lkotlin/Lazy;

.field public rootKey:Ljava/lang/String;

.field public snackbar:Lcom/google/android/material/snackbar/Snackbar;

.field public final telemetryManager$delegate:Lkotlin/Lazy;

.field public final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    .line 11
    .line 12
    const/16 v2, 0x1a

    .line 13
    .line 14
    invoke-direct {v1, v2, p0, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 24
    .line 25
    new-instance v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 32
    .line 33
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->dataStore$delegate:Lkotlin/Lazy;

    .line 38
    .line 39
    new-instance v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-direct {v0, p0, v3}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->telemetryManager$delegate:Lkotlin/Lazy;

    .line 50
    .line 51
    new-instance v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;

    .line 52
    .line 53
    const/4 v4, 0x2

    .line 54
    invoke-direct {v0, p0, v4}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 62
    .line 63
    new-instance v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;

    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    invoke-direct {v0, p0, v5}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$special$$inlined$inject$default$1;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->jobManager$delegate:Lkotlin/Lazy;

    .line 74
    .line 75
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 76
    .line 77
    invoke-direct {v0, v3}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    invoke-direct {v2, p0, v1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->exportLogsResultContract:Landroidx/fragment/app/Fragment$10;

    .line 90
    .line 91
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 92
    .line 93
    invoke-direct {v0, v3}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;

    .line 97
    .line 98
    invoke-direct {v1, p0, v3}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->exportSyncDebugLogsResultContract:Landroidx/fragment/app/Fragment$10;

    .line 106
    .line 107
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;

    .line 108
    .line 109
    invoke-direct {v0, v3}, Lapp/k9mail/feature/settings/import/ui/AuthorizationContract;-><init>(I)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;

    .line 113
    .line 114
    invoke-direct {v1, p0, v4}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/ActivityResultCallback;Lcom/fsck/k9/sasl/OAuthBearer;)Landroidx/fragment/app/Fragment$10;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->choseFileSyncDebugLogsResultContract:Landroidx/fragment/app/Fragment$10;

    .line 122
    .line 123
    return-void
.end method

.method public static formatFileExportUriString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    const-string/jumbo v3, "yyyy-MM-dd"

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string v4, "thunderbird-sync-logs"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    aput-object v4, v3, v5

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    aput-object v0, v3, v4

    .line 33
    .line 34
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "%s_%s.txt"

    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method


# virtual methods
.method public final getViewModel()Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreatePreferencesFix(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->dataStore$delegate:Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;

    .line 10
    .line 11
    iput-object v0, p2, Landroidx/preference/PreferenceManager;->mPreferenceDataStore:Landroidx/compose/ui/unit/IntRectKt;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->rootKey:Ljava/lang/String;

    .line 14
    .line 15
    const p2, 0x7f160005

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string p1, "notification_actions_settings"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda3;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 35
    .line 36
    :cond_0
    new-instance p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda3;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;)V

    .line 39
    .line 40
    .line 41
    const-string p2, "sync_debug_logging"

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iput-object p1, p2, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->featureFlagProvider$delegate:Lkotlin/Lazy;

    .line 52
    .line 53
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;

    .line 58
    .line 59
    const-string p2, "disable_font_size_config"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Lnet/thunderbird/core/featureflag/InMemoryFeatureFlagProvider;->provide-dj3aFNw(Ljava/lang/String;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance p2, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/16 v0, 0x14

    .line 68
    .line 69
    invoke-direct {p2, v0, p0}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, p2}, Lnet/thunderbird/core/featureflag/FeatureFlagResult;->onEnabled(Lkotlin/jvm/functions/Function0;)Lnet/thunderbird/core/featureflag/FeatureFlagResult;

    .line 73
    .line 74
    .line 75
    const-string p1, "debug_secret_debug_screen"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 84
    .line 85
    .line 86
    const/4 p2, 0x0

    .line 87
    iput-object p2, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 88
    .line 89
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->telemetryManager$delegate:Lkotlin/Lazy;

    .line 90
    .line 91
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    const-string p1, "data_collection"

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    invoke-static {p1}, Landroidx/room/util/RelationUtil;->remove(Landroidx/preference/Preference;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->getViewModel()Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 116
    .line 117
    new-instance p2, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$onCreatePreferencesFix$4;

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-direct {p2, p0, v0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment$onCreatePreferencesFix$4;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;I)V

    .line 121
    .line 122
    .line 123
    invoke-static {p1, p0, p2}, Landroidx/work/Data$Companion;->observe(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsFragment;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 14
    .line 15
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 14
    .line 15
    iget-object p2, p2, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 16
    .line 17
    iget-object p2, p2, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance p2, Landroidx/fragment/app/FragmentManager$2;

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    invoke-direct {p2, v0, p0}, Landroidx/fragment/app/FragmentManager$2;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p1, p2, p0}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/fragment/app/FragmentManager$2;Landroidx/lifecycle/LifecycleOwner;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
