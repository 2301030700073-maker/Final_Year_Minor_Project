.class public abstract Lcom/takisoft/preferencex/PreferenceFragmentCompat;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final dialogPreferences:Ljava/util/HashMap;

.field public static final preferenceManagerField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-class v5, Landroidx/preference/PreferenceManager;

    .line 18
    .line 19
    if-ne v4, v5, :cond_0

    .line 20
    .line 21
    sput-object v3, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->preferenceManagerField:Ljava/lang/reflect/Field;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->dialogPreferences:Ljava/util/HashMap;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static onActivityResult(Landroidx/preference/PreferenceGroup;IILandroid/content/Intent;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_8

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    instance-of v3, v2, Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;

    .line 15
    .line 16
    if-eqz v3, :cond_6

    .line 17
    .line 18
    move-object v3, v2

    .line 19
    check-cast v3, Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne p1, v4, :cond_6

    .line 23
    .line 24
    const/4 v5, -0x1

    .line 25
    if-eq p2, v5, :cond_0

    .line 26
    .line 27
    goto :goto_4

    .line 28
    :cond_0
    const/4 v5, 0x0

    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    const-string v6, "android.intent.extra.ringtone.PICKED_URI"

    .line 32
    .line 33
    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Landroid/net/Uri;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v6, v5

    .line 41
    :goto_1
    if-eqz v6, :cond_2

    .line 42
    .line 43
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object v7, v5

    .line 49
    :goto_2
    const-string v8, ""

    .line 50
    .line 51
    if-nez v7, :cond_3

    .line 52
    .line 53
    move-object v7, v8

    .line 54
    :cond_3
    invoke-virtual {v3, v7}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iput-boolean v4, v3, Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;->receivedActivityResultJustNow:Z

    .line 58
    .line 59
    if-eqz v6, :cond_4

    .line 60
    .line 61
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    :cond_4
    if-nez v5, :cond_5

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_5
    move-object v8, v5

    .line 69
    :goto_3
    invoke-virtual {v3, v8}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_6
    :goto_4
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    .line 73
    .line 74
    if-eqz v3, :cond_7

    .line 75
    .line 76
    check-cast v2, Landroidx/preference/PreferenceGroup;

    .line 77
    .line 78
    invoke-static {v2, p1, p2, p3}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->onActivityResult(Landroidx/preference/PreferenceGroup;IILandroid/content/Intent;)V

    .line 79
    .line 80
    .line 81
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_8
    return-void
.end method

.method public static registerPreferenceFragment(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->dialogPreferences:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static traverseAndRefreshPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferences:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    instance-of v4, v3, Lcom/takisoft/preferencex/SwitchPreferenceCompat;

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    check-cast v3, Lcom/takisoft/preferencex/SwitchPreferenceCompat;

    .line 20
    .line 21
    iget-boolean v4, v3, Lcom/takisoft/preferencex/SwitchPreferenceCompat;->withSeparator:Z

    .line 22
    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    iget-boolean v5, v3, Landroidx/preference/Preference;->mPersistent:Z

    .line 31
    .line 32
    iput-boolean v1, v3, Landroidx/preference/Preference;->mPersistent:Z

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 35
    .line 36
    .line 37
    iput-boolean v5, v3, Landroidx/preference/Preference;->mPersistent:Z

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    instance-of v4, v3, Landroidx/preference/PreferenceGroup;

    .line 41
    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 45
    .line 46
    invoke-static {v3}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->traverseAndRefreshPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-void
.end method


# virtual methods
.method public final displayPreferenceDialog(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v3, "key"

    .line 13
    .line 14
    invoke-virtual {v1, v3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2, p0}, Landroidx/fragment/app/Fragment;->setTargetFragment(ILandroidx/fragment/app/Fragment;)V

    .line 22
    .line 23
    .line 24
    instance-of p0, p1, Landroidx/fragment/app/DialogFragment;

    .line 25
    .line 26
    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p2, p1, v1, v2}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 86
    iget-object v0, v0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 87
    invoke-static {v0, p1, p2, p3}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->onActivityResult(Landroidx/preference/PreferenceGroup;IILandroid/content/Intent;)V

    .line 88
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f0404ca

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    .line 23
    .line 24
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const v0, 0x7f1301b5

    .line 29
    .line 30
    .line 31
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Landroidx/preference/PreferenceManagerFix;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object p0, v0, Landroidx/preference/PreferenceManager;->mOnNavigateToScreenListener:Landroidx/preference/PreferenceFragmentCompat;

    .line 46
    .line 47
    :try_start_0
    sget-object v1, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->preferenceManagerField:Ljava/lang/reflect/Field;

    .line 48
    .line 49
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v0, 0x0

    .line 69
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->onCreatePreferencesFix(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public abstract onCreatePreferencesFix(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public final onDisplayPreferenceDialog(Landroidx/preference/DialogPreference;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    instance-of v0, p1, Lcom/takisoft/preferencex/EditTextPreference;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->displayPreferenceDialog(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->dialogPreferences:Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Class;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    iget-object p1, p1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->displayPreferenceDialog(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/DialogPreference;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    iget-object v5, p1, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 13
    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    new-instance v5, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v5, p1, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 22
    .line 23
    :cond_0
    iget-object v5, p1, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v0}, Landroidx/fragment/app/FragmentManager$3;->instantiate(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3, p0}, Landroidx/fragment/app/Fragment;->setTargetFragment(ILandroidx/fragment/app/Fragment;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    .line 47
    .line 48
    invoke-direct {v3, v4}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 49
    .line 50
    .line 51
    const/16 v4, 0x1001

    .line 52
    .line 53
    iput v4, v3, Landroidx/fragment/app/BackStackRecord;->mTransition:I

    .line 54
    .line 55
    iget-object v4, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v3, v4, v0, v2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p1, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 76
    .line 77
    .line 78
    move v3, v1

    .line 79
    :cond_1
    if-nez v3, :cond_2

    .line 80
    .line 81
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    :cond_2
    if-nez v3, :cond_5

    .line 86
    .line 87
    instance-of v0, p1, Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    check-cast p1, Lcom/fsck/k9/ui/settings/account/NotificationSoundPreference;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-lez v4, :cond_3

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    move-object v0, v2

    .line 107
    :goto_0
    if-eqz v0, :cond_4

    .line 108
    .line 109
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    :cond_4
    new-instance v0, Landroid/content/Intent;

    .line 114
    .line 115
    const-string v4, "android.intent.action.RINGTONE_PICKER"

    .line 116
    .line 117
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v4, "android.intent.extra.ringtone.TYPE"

    .line 121
    .line 122
    const/4 v5, 0x2

    .line 123
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v4, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 128
    .line 129
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v4, "android.intent.extra.ringtone.TITLE"

    .line 138
    .line 139
    iget-object p1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 140
    .line 141
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    .line 146
    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    .line 152
    .line 153
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    .line 158
    .line 159
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    .line 168
    .line 169
    :cond_5
    return v3
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/takisoft/preferencex/PreferenceFragmentCompat;->traverseAndRefreshPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
