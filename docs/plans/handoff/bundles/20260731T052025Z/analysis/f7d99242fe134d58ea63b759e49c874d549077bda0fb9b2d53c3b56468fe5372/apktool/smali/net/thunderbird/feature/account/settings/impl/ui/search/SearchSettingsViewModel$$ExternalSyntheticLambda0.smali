.class public final synthetic Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/core/common/resources/StringsResourceManager;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/common/resources/StringsResourceManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/common/resources/StringsResourceManager;

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
    iget v0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lnet/thunderbird/feature/account/settings/impl/ui/search/SearchSettingsViewModel$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/common/resources/StringsResourceManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const v0, 0x7f12014e

    .line 9
    .line 10
    .line 11
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :pswitch_0
    const v0, 0x7f120141

    .line 19
    .line 20
    .line 21
    check-cast p0, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lnet/thunderbird/core/android/common/resources/AndroidResourceManager;->stringResource(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
