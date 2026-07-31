.class public final Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;
.super Lapp/k9mail/feature/settings/import/ui/SettingsListItem;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountIndex:I

.field public displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->accountIndex:I

    .line 8
    .line 9
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;->displayName:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method
