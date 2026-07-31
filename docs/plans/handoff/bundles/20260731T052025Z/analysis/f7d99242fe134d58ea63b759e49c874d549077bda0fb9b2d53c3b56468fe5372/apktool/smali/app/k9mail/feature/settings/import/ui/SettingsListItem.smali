.class public abstract Lapp/k9mail/feature/settings/import/ui/SettingsListItem;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public enabled:Z

.field public importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

.field public selected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->enabled:Z

    .line 8
    .line 9
    sget-object v0, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->NOT_AVAILABLE:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 10
    .line 11
    iput-object v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 12
    .line 13
    return-void
.end method
