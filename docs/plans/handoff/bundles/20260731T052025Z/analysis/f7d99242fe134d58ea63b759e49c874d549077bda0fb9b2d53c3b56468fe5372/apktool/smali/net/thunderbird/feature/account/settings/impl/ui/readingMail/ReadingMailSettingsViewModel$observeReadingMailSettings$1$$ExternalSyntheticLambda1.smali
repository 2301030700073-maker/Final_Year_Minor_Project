.class public final synthetic Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

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
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel$observeReadingMailSettings$1$$ExternalSyntheticLambda1;->f$0:Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 9
    .line 10
    const v0, 0x7f12014f

    .line 11
    .line 12
    .line 13
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :pswitch_0
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 21
    .line 22
    const v0, 0x7f12014c

    .line 23
    .line 24
    .line 25
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/readingMail/ReadingMailSettingsViewModel;->resources:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 33
    .line 34
    const v0, 0x7f12014e

    .line 35
    .line 36
    .line 37
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
