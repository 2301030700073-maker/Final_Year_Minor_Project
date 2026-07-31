.class public final synthetic Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final synthetic f$3:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;


# direct methods
.method public synthetic constructor <init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Landroid/content/Context;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->f$3:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->f$3:Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->f$2:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStoreProvider$$ExternalSyntheticLambda0;->f$0:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore;

    .line 15
    .line 16
    invoke-direct {v0, p0, v3, v2, v1}, Lcom/fsck/k9/mailstore/LocalStore;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Landroid/content/Context;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    new-instance v0, Lcom/fsck/k9/mailstore/LocalStore;

    .line 21
    .line 22
    invoke-direct {v0, p0, v3, v2, v1}, Lcom/fsck/k9/mailstore/LocalStore;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Landroid/content/Context;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lnet/thunderbird/feature/mail/message/list/internal/DefaultLocalMessageUidPrefixProvider;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
