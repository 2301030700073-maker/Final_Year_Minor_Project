.class public final synthetic Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/schabi/newpipe/settings/SettingsActivity;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/CharSequence;

    .line 6
    .line 7
    sget p1, Lorg/schabi/newpipe/settings/SettingsActivity;->$r8$clinit:I

    .line 8
    .line 9
    new-instance p1, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda6;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/settings/SettingsActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SettingsActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;

    .line 4
    .line 5
    sget p1, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->$r8$clinit:I

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x1

    .line 14
    xor-int/2addr p1, p2

    .line 15
    iget-object v0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathVideo:Landroidx/preference/Preference;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lorg/schabi/newpipe/settings/DownloadSettingsFragment;->prefPathAudio:Landroidx/preference/Preference;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    return p2
.end method
