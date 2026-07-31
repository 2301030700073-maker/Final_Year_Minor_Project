.class public final synthetic Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

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
    .locals 1

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;

    .line 9
    .line 10
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;->message:Ljava/lang/String;

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_0
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;

    .line 14
    .line 15
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;->message:Ljava/lang/String;

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_1
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;

    .line 19
    .line 20
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;->message:Ljava/lang/String;

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_2
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;

    .line 24
    .line 25
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;->message:Ljava/lang/String;

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_3
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 29
    .line 30
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;->message:Ljava/lang/String;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_4
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;

    .line 34
    .line 35
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;->message:Ljava/lang/String;

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_5
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;

    .line 39
    .line 40
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;->message:Ljava/lang/String;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_6
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 44
    .line 45
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;->message:Ljava/lang/String;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_7
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;

    .line 49
    .line 50
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$UnsupportedFormat;->message:Ljava/lang/String;

    .line 51
    .line 52
    return-object p0

    .line 53
    :pswitch_8
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;

    .line 54
    .line 55
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$StorageError;->message:Ljava/lang/String;

    .line 56
    .line 57
    return-object p0

    .line 58
    :pswitch_9
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 59
    .line 60
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;->message:Ljava/lang/String;

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_a
    check-cast p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;

    .line 64
    .line 65
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/domain/AccountSettingsDomainContract$AccountSettingError$NotFound;->message:Ljava/lang/String;

    .line 66
    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
