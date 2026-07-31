.class public Lorg/schabi/newpipe/settings/ContentSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public youtubeRestrictedModeEnabledKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreatePreferences()V
    .locals 5

    .line 1
    const v0, 0x7f130548

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->youtubeRestrictedModeEnabledKey:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    .line 11
    .line 12
    .line 13
    const v0, 0x7f130036

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v2, 0x21

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-lt v1, v2, :cond_1

    .line 26
    .line 27
    iget-boolean v1, v0, Landroidx/preference/Preference;->mVisible:Z

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iput-boolean v3, v0, Landroidx/preference/Preference;->mVisible:Z

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v1, v0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/lifecycle/LiveData$1;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_0
    const v0, 0x7f130035

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/ContentSettingsFragment;I)V

    .line 58
    .line 59
    .line 60
    iput-object v1, v0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 v4, 0x2

    .line 68
    invoke-direct {v1, p0, v4}, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/ContentSettingsFragment;I)V

    .line 69
    .line 70
    .line 71
    iput-object v1, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 72
    .line 73
    iget-boolean v1, v0, Landroidx/preference/Preference;->mVisible:Z

    .line 74
    .line 75
    if-eq v1, v2, :cond_2

    .line 76
    .line 77
    iput-boolean v2, v0, Landroidx/preference/Preference;->mVisible:Z

    .line 78
    .line 79
    iget-object v0, v0, Landroidx/preference/Preference;->mListener:Landroidx/preference/PreferenceGroupAdapter;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    iget-object v1, v0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 84
    .line 85
    iget-object v0, v0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Landroidx/lifecycle/LiveData$1;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    const/4 v2, 0x3

    .line 97
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/ContentSettingsFragment;I)V

    .line 98
    .line 99
    .line 100
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 101
    .line 102
    :cond_2
    :goto_0
    const v0, 0x7f130208

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v1, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;

    .line 110
    .line 111
    invoke-direct {v1, p0, v3}, Lorg/schabi/newpipe/settings/ContentSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/ContentSettingsFragment;I)V

    .line 112
    .line 113
    .line 114
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 115
    .line 116
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->getPreferredLocale(Landroid/content/Context;)Ljava/util/Locale;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/localization/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lorg/schabi/newpipe/util/Localization;->getPreferredContentCountry(Landroid/content/Context;)Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sput-object v1, Lus/shandian/giga/util/Utility;->preferredLocalization:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 30
    .line 31
    sput-object p0, Lus/shandian/giga/util/Utility;->preferredContentCountry:Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 32
    .line 33
    sget-object p0, Lorg/schabi/newpipe/player/helper/PlayerHelper;->FORMATTERS_PROVIDER:Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/schabi/newpipe/player/ui/VideoPlayerUi$1;->this$0:Ljava/lang/Object;

    .line 37
    .line 38
    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/settings/ContentSettingsFragment;->youtubeRestrictedModeEnabledKey:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lorg/schabi/newpipe/DownloaderImpl;->instance:Lorg/schabi/newpipe/DownloaderImpl;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/DownloaderImpl;->updateYoutubeRestrictedModeCookies(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "onPreferenceTreeClick: null context"

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method
