.class public final Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;
.super Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final INSTANCE:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;

.field public static final labelResource:Lorg/jetbrains/compose/resources/StringResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;->INSTANCE:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;

    .line 7
    .line 8
    sget-object v0, Lnet/thunderbird/feature/notification/resources/api/String0_commonMainKt;->banner_inline_notification_open_notifications$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/jetbrains/compose/resources/StringResource;

    .line 15
    .line 16
    sput-object v0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;->labelResource:Lorg/jetbrains/compose/resources/StringResource;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p0, p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    return v0
.end method

.method public final getIcon()Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getLabelResource()Lorg/jetbrains/compose/resources/StringResource;
    .locals 0

    .line 1
    sget-object p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$OpenNotificationCentre;->labelResource:Lorg/jetbrains/compose/resources/StringResource;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, 0x338b5682

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "OpenNotificationCentre"

    .line 2
    .line 3
    return-object p0
.end method
