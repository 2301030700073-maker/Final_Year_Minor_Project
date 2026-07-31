.class public final Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$special$$inlined$filterIsInstance$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$special$$inlined$filterIsInstance$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$special$$inlined$filterIsInstance$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$special$$inlined$filterIsInstance$1;->INSTANCE:Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel$special$$inlined$filterIsInstance$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
