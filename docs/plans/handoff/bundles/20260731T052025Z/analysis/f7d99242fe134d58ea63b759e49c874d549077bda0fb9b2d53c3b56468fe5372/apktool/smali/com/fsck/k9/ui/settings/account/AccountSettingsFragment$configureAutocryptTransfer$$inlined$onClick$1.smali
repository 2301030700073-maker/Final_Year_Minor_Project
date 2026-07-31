.class public final Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $account$inlined:Lnet/thunderbird/core/android/account/LegacyAccountDto;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;->this$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;->$account$inlined:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;->$account$inlined:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$configureAutocryptTransfer$$inlined$onClick$1;->this$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p1, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 13
    .line 14
    sget p1, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpProvider(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-virtual {v2, v3, v4}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOpenPgpKey(J)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->dataStore:Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore;->saveSettingsInBackground()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->configureCryptoPreferences(Lnet/thunderbird/core/android/account/LegacyAccountDto;)V

    .line 32
    .line 33
    .line 34
    return v1

    .line 35
    :cond_0
    const-string p0, "dataStore"

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :pswitch_0
    sget p1, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;->$r8$clinit:I

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, v2, Lnet/thunderbird/core/android/account/LegacyAccountDto;->uuid:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v2, Landroid/content/Intent;

    .line 53
    .line 54
    const-class v3, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferActivity;

    .line 55
    .line 56
    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    const-string p1, "account"

    .line 60
    .line 61
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
