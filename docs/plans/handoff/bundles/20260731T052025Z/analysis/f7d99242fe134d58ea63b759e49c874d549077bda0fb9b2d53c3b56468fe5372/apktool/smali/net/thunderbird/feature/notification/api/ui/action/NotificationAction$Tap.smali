.class public final Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;
.super Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final icon:Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;

.field public final labelResource:Lorg/jetbrains/compose/resources/StringResource;

.field public final override:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->override:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;->getIcon()Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v1, v0

    .line 15
    :goto_0
    iput-object v1, p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->icon:Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;->getLabelResource()Lorg/jetbrains/compose/resources/StringResource;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    iput-object v0, p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->labelResource:Lorg/jetbrains/compose/resources/StringResource;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 12
    .line 13
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->override:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 14
    .line 15
    iget-object p1, p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->override:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 16
    .line 17
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final getIcon()Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->icon:Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLabelResource()Lorg/jetbrains/compose/resources/StringResource;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->labelResource:Lorg/jetbrains/compose/resources/StringResource;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->override:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Tap(override="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;->override:Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, ")"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
