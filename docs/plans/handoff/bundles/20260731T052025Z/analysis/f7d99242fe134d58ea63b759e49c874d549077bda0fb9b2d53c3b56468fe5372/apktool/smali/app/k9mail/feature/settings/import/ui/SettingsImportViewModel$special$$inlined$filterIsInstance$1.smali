.class public final Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;

.field public static final INSTANCE$1:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;->INSTANCE$1:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;

    .line 8
    .line 9
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;->INSTANCE:Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel$special$$inlined$filterIsInstance$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    instance-of p0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    instance-of p0, p1, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
