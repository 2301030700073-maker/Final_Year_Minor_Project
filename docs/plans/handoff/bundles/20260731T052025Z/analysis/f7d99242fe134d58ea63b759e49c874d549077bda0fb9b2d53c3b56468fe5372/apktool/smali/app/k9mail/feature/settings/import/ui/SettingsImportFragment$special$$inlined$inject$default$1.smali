.class public final Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_inject:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;->$this_inject:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment$special$$inlined$inject$default$1;->$this_inject:Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->getKoinScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-class v0, Lapp/k9mail/feature/migration/launcher/k9/K9MigrationManager;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
