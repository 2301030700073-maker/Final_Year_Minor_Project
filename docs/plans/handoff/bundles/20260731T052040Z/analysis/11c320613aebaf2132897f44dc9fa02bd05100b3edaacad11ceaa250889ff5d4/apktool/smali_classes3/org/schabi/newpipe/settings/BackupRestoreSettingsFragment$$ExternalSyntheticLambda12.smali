.class public final synthetic Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$1:Landroid/net/Uri;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget p1, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$0:Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    .line 4
    .line 5
    iget-object v0, p1, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p1, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportDataPathKey:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;->f$1:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Landroidx/sqlite/SQLite;->restartApp(Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
