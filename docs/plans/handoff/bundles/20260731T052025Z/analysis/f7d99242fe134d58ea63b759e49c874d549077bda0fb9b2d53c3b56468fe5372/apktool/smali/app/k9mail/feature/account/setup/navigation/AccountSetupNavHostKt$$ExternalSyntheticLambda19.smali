.class public final synthetic Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/navigation/NavHostController;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;)V
    .locals 0

    .line 1
    iput p1, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;->f$0:Landroidx/navigation/NavHostController;

    .line 4
    .line 5
    iput-object p2, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;->f$1:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;->f$1:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    iget-object p0, p0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda19;->f$0:Landroidx/navigation/NavHostController;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    new-instance v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda30;

    .line 20
    .line 21
    invoke-direct {v0, p1, v3, v2}, Lapp/k9mail/feature/account/setup/navigation/AccountSetupNavHostKt$$ExternalSyntheticLambda30;-><init>(ZLandroidx/compose/runtime/MutableState;I)V

    .line 22
    .line 23
    .line 24
    const-string p1, "display-options"

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavHostController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :pswitch_0
    check-cast p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Lapp/k9mail/feature/account/server/settings/ui/incoming/IncomingServerSettingsContract$State;->protocolType:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 36
    .line 37
    sget-object v0, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->IMAP:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 38
    .line 39
    if-ne p1, v0, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v3, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-string p1, "incoming-server/validation"

    .line 50
    .line 51
    invoke-static {p0, p1}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
