.class public final synthetic Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lnet/thunderbird/feature/notification/VibratePattern;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ZLnet/thunderbird/feature/notification/VibratePattern;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore$$ExternalSyntheticLambda2;->f$0:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore$$ExternalSyntheticLambda2;->f$1:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 7
    .line 8
    iput p3, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnet/thunderbird/feature/notification/NotificationVibration;

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore$$ExternalSyntheticLambda2;->f$0:Z

    .line 9
    .line 10
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore$$ExternalSyntheticLambda2;->f$1:Lnet/thunderbird/feature/notification/VibratePattern;

    .line 11
    .line 12
    iget p0, p0, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStore$$ExternalSyntheticLambda2;->f$2:I

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, p0}, Lnet/thunderbird/feature/notification/NotificationVibration;-><init>(ZLnet/thunderbird/feature/notification/VibratePattern;I)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x7

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p1, v1, v1, v0, p0}, Lnet/thunderbird/feature/notification/NotificationSettings;->copy$default(Lnet/thunderbird/feature/notification/NotificationSettings;Ljava/lang/String;Lnet/thunderbird/feature/notification/NotificationLight;Lnet/thunderbird/feature/notification/NotificationVibration;I)Lnet/thunderbird/feature/notification/NotificationSettings;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
