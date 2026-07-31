.class public final synthetic Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

.field public final synthetic f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;


# direct methods
.method public synthetic constructor <init>(Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;Lnet/thunderbird/core/android/account/LegacyAccountDto;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;->f$1:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationChannelManager$delegate:Lkotlin/Lazy;

    .line 13
    .line 14
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p0, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MISCELLANEOUS:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 24
    .line 25
    invoke-static {v1, p0}, Lcom/fsck/k9/notification/NotificationChannelManager;->getChannelIdFor(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :pswitch_0
    sget v0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->$r8$clinit:I

    .line 31
    .line 32
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsFragment;->notificationChannelManager$delegate:Lkotlin/Lazy;

    .line 33
    .line 34
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    sget-object p0, Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;->MESSAGES:Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;

    .line 44
    .line 45
    invoke-static {v1, p0}, Lcom/fsck/k9/notification/NotificationChannelManager;->getChannelIdFor(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/notification/NotificationChannelManager$ChannelType;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
