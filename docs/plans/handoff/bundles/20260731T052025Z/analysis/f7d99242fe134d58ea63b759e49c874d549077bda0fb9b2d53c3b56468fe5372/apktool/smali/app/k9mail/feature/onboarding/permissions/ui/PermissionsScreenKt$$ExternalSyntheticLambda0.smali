.class public final synthetic Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsScreenKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;


# direct methods
.method public synthetic constructor <init>(Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsScreenKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsScreenKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsScreenKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsScreenKt$$ExternalSyntheticLambda0;->f$0:Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$NotificationsPermissionResult;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$NotificationsPermissionResult;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->event(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_0
    new-instance v0, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$ContactsPermissionResult;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsContract$Event$ContactsPermissionResult;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lapp/k9mail/feature/onboarding/permissions/ui/PermissionsViewModel;->event(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
