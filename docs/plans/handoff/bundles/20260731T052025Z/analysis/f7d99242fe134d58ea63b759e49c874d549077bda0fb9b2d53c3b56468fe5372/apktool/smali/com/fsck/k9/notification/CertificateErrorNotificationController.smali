.class public final Lcom/fsck/k9/notification/CertificateErrorNotificationController;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

.field public final generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

.field public final notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

.field public final resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/notification/NotificationHelper;Lcom/fsck/k9/notification/K9NotificationActionCreator;Lcom/fsck/k9/notification/K9NotificationResourceProvider;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/notification/CertificateErrorNotificationController;->notificationHelper:Lcom/fsck/k9/notification/NotificationHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/notification/CertificateErrorNotificationController;->actionCreator:Lcom/fsck/k9/notification/K9NotificationActionCreator;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/notification/CertificateErrorNotificationController;->resourceProvider:Lcom/fsck/k9/notification/K9NotificationResourceProvider;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/notification/CertificateErrorNotificationController;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 11
    .line 12
    return-void
.end method
