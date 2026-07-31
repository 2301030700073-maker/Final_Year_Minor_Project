.class public Lorg/schabi/newpipe/settings/UpdateSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final manualUpdateClick:Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;

.field public final updatePreferenceChange:Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/UpdateSettingsFragment;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->updatePreferenceChange:Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    new-instance v0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/UpdateSettingsFragment;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->manualUpdateClick:Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onCreatePreferences()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f130517

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->updatePreferenceChange:Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    iput-object v1, v0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 14
    .line 15
    const v0, 0x7f1302b6

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p0, p0, Lorg/schabi/newpipe/settings/UpdateSettingsFragment;->manualUpdateClick:Lorg/schabi/newpipe/settings/UpdateSettingsFragment$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    iput-object p0, v0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 25
    .line 26
    return-void
.end method
