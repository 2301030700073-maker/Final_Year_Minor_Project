.class public final synthetic Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;

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
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/usecase/UpdateGeneralSettings$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand;

    .line 6
    .line 7
    check-cast p1, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateAvatar;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateAvatar;->value:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 18
    .line 19
    const/4 v0, 0x7

    .line 20
    invoke-static {p1, v2, v1, p0, v0}, Lnet/thunderbird/feature/account/profile/AccountProfile;->copy$default(Lnet/thunderbird/feature/account/profile/AccountProfile;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;I)Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateColor;

    .line 29
    .line 30
    iget p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateColor;->value:I

    .line 31
    .line 32
    const/16 v0, 0xb

    .line 33
    .line 34
    invoke-static {p1, v2, p0, v2, v0}, Lnet/thunderbird/feature/account/profile/AccountProfile;->copy$default(Lnet/thunderbird/feature/account/profile/AccountProfile;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;I)Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateName;

    .line 43
    .line 44
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$UpdateGeneralSettingCommand$UpdateName;->value:Ljava/lang/String;

    .line 45
    .line 46
    const/16 v0, 0xd

    .line 47
    .line 48
    invoke-static {p1, p0, v1, v2, v0}, Lnet/thunderbird/feature/account/profile/AccountProfile;->copy$default(Lnet/thunderbird/feature/account/profile/AccountProfile;Ljava/lang/String;ILnet/thunderbird/feature/account/avatar/Avatar;I)Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
