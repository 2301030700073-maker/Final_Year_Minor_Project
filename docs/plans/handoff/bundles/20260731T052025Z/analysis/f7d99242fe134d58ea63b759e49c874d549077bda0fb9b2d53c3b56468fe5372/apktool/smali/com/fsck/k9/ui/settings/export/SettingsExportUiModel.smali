.class public final Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

.field public isProgressVisible:Z

.field public isSettingsListEnabled:Z

.field public isShareButtonVisible:Z

.field public settingsList:Ljava/util/List;

.field public statusText:Lcom/fsck/k9/ui/settings/export/StatusText;


# virtual methods
.method public final updateExportButtonFromSelection()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->settingsList:Ljava/util/List;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/fsck/k9/ui/settings/export/SettingsListItem;

    .line 37
    .line 38
    iget-boolean v2, v2, Lcom/fsck/k9/ui/settings/export/SettingsListItem;->selected:Z

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    sget-object v0, Lcom/fsck/k9/ui/settings/export/ButtonState;->ENABLED:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isSettingsListEnabled:Z

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    :goto_0
    sget-object v0, Lcom/fsck/k9/ui/settings/export/ButtonState;->DISABLED:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 55
    .line 56
    iput-object v0, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 57
    .line 58
    iput-boolean v1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 59
    .line 60
    iput-boolean v1, p0, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 61
    .line 62
    :cond_4
    :goto_1
    return-void
.end method
