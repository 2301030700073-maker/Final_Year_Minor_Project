.class public final synthetic Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

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
    .locals 9

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsScreenKt$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, Lnet/thunderbird/feature/account/profile/AccountProfile;

    .line 12
    .line 13
    iget-object v2, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    move-object v3, p0

    .line 20
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;

    .line 21
    .line 22
    iget-object p1, v3, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->name:Lnet/thunderbird/core/validation/input/StringInputField;

    .line 23
    .line 24
    iget-object p1, v0, Lnet/thunderbird/feature/account/profile/AccountProfile;->name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {p1}, Lnet/thunderbird/core/validation/input/StringInputField;->updateValue(Ljava/lang/String;)Lnet/thunderbird/core/validation/input/StringInputField;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    new-instance v6, Lnet/thunderbird/core/validation/input/IntegerInputField;

    .line 31
    .line 32
    iget p1, v0, Lnet/thunderbird/feature/account/profile/AccountProfile;->color:I

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v4, 0x6

    .line 39
    invoke-direct {v6, v4, p1}, Lnet/thunderbird/core/validation/input/IntegerInputField;-><init>(ILjava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    iget-object v7, v0, Lnet/thunderbird/feature/account/profile/AccountProfile;->avatar:Lnet/thunderbird/feature/account/avatar/Avatar;

    .line 43
    .line 44
    const/16 v8, 0x29

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-static/range {v3 .. v8}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/IntegerInputField;Lnet/thunderbird/feature/account/avatar/Avatar;I)Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v2, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    return-object v1

    .line 58
    :pswitch_0
    move-object v4, p1

    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    iget-object v0, p0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 62
    .line 63
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    move-object v3, p0

    .line 68
    check-cast v3, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const/16 v8, 0x3e

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-static/range {v3 .. v8}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;->copy$default(Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;Ljava/lang/String;Lnet/thunderbird/core/validation/input/StringInputField;Lnet/thunderbird/core/validation/input/IntegerInputField;Lnet/thunderbird/feature/account/avatar/Avatar;I)Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$State;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_1

    .line 84
    .line 85
    return-object v1

    .line 86
    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    new-instance v0, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarImagePicked;

    .line 91
    .line 92
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->toKmpUri(Landroid/net/Uri;)Lcom/eygraber/uri/uris/StringUri;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsContract$Event$OnAvatarImagePicked;-><init>(Lcom/eygraber/uri/uris/StringUri;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lnet/thunderbird/feature/account/settings/impl/ui/general/GeneralSettingsViewModel;->event(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-object v1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
