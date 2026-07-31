.class public Lorg/schabi/newpipe/settings/MainSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    return-void
.end method

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
.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 8
    .line 9
    const v0, 0x7f0f0011

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-interface {p1, p2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p2, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 21
    .line 22
    iput-object p1, p2, Lorg/schabi/newpipe/settings/SettingsActivity;->menuSearchItem:Landroid/view/MenuItem;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/SettingsActivity;->isSearchActive()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    xor-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance p2, Lorg/schabi/newpipe/settings/MainSettingsFragment$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/MainSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/MainSettingsFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onCreatePreferences()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/schabi/newpipe/util/ReleaseVersionUtil;->isReleaseApk()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroidx/preference/PreferenceScreen;

    .line 19
    .line 20
    const v1, 0x7f13051a

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v1, 0x7f130517

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 52
    .line 53
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Landroidx/preference/PreferenceScreen;

    .line 56
    .line 57
    const v1, 0x7f1300d1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lorg/schabi/newpipe/settings/SettingsActivity;->menuSearchItem:Landroid/view/MenuItem;

    .line 7
    .line 8
    iput-object v1, p0, Lorg/schabi/newpipe/settings/MainSettingsFragment;->settingsActivity:Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 9
    .line 10
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
