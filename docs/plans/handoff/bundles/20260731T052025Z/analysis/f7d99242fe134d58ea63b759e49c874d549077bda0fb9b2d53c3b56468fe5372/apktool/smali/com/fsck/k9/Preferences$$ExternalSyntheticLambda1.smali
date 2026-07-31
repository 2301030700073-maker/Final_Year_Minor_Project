.class public final synthetic Lcom/fsck/k9/Preferences$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/Preferences;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/Preferences;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/Preferences$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/Preferences$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/Preferences;

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
    iget v0, p0, Lcom/fsck/k9/Preferences$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/fsck/k9/Preferences$$ExternalSyntheticLambda1;->f$0:Lcom/fsck/k9/Preferences;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/fsck/k9/Preferences;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 15
    .line 16
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 23
    .line 24
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 25
    .line 26
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    iget-object p0, p0, Lcom/fsck/k9/Preferences;->generalSettingsManager$delegate:Lkotlin/Lazy;

    .line 32
    .line 33
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 38
    .line 39
    check-cast p0, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-object p0, p0, Lnet/thunderbird/core/preference/GeneralSettings;->debugging:Lnet/thunderbird/core/preference/debugging/DebuggingSettings;

    .line 46
    .line 47
    iget-boolean p0, p0, Lnet/thunderbird/core/preference/debugging/DebuggingSettings;->isSensitiveLoggingEnabled:Z

    .line 48
    .line 49
    goto :goto_0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
