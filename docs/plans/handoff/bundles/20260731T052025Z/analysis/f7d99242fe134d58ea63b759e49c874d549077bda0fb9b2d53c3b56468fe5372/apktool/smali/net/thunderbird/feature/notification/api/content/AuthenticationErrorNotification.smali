.class public final Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;
.super Lnet/thunderbird/feature/notification/api/content/AppNotification;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/content/InAppNotification;
.implements Lnet/thunderbird/feature/notification/api/content/Notification;


# static fields
.field public static final Companion:Lokio/Path$Companion;


# instance fields
.field public final accountNumber:I

.field public final accountUuid:Ljava/lang/String;

.field public final actions:Lkotlin/collections/builders/SetBuilder;

.field public final channel:Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;

.field public final contentText:Ljava/lang/String;

.field public final icon:Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;

.field public final inAppNotificationStyle:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

.field public final isIncomingServerError:Z

.field public final severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokio/Path$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->Companion:Lokio/Path$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/thunderbird/feature/notification/api/content/AppNotification;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->isIncomingServerError:Z

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountUuid:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountNumber:I

    .line 9
    .line 10
    iput-object p4, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->title:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->contentText:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->channel:Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;

    .line 15
    .line 16
    sget-object p4, Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcons_androidKt;->Warning:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 17
    .line 18
    new-instance p4, Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;

    .line 19
    .line 20
    const p5, 0x7f080122

    .line 21
    .line 22
    .line 23
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p5

    .line 27
    sget-object p6, Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcons_androidKt;->Warning:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 28
    .line 29
    invoke-direct {p4, p5, p6}, Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;-><init>(Ljava/lang/Integer;Landroidx/compose/ui/graphics/vector/ImageVector;)V

    .line 30
    .line 31
    .line 32
    iput-object p4, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->icon:Lnet/thunderbird/feature/notification/api/ui/icon/NotificationIcon;

    .line 33
    .line 34
    sget-object p4, Lnet/thunderbird/feature/notification/api/NotificationSeverity;->Fatal:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 35
    .line 36
    iput-object p4, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 37
    .line 38
    new-instance p4, Lkotlin/collections/builders/SetBuilder;

    .line 39
    .line 40
    invoke-direct {p4}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    new-instance p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;

    .line 46
    .line 47
    invoke-direct {p1, p2, p3}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateIncomingServerSettings;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p1, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;

    .line 52
    .line 53
    invoke-direct {p1, p2, p3}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$UpdateOutgoingServerSettings;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p4, p1}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;

    .line 60
    .line 61
    invoke-direct {p2, p1}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$Tap;-><init>(Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, p2}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-static {p4}, Lorg/jsoup/helper/Validate;->build(Lkotlin/collections/builders/SetBuilder;)Lkotlin/collections/builders/SetBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->actions:Lkotlin/collections/builders/SetBuilder;

    .line 72
    .line 73
    new-instance p1, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 74
    .line 75
    const/16 p2, 0x17

    .line 76
    .line 77
    invoke-direct {p1, p2}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lokio/Okio;->inAppNotificationStyle(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->inAppNotificationStyle:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

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
    check-cast p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;

    .line 12
    .line 13
    iget-boolean v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->isIncomingServerError:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->isIncomingServerError:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountUuid:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountUuid:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountNumber:I

    .line 32
    .line 33
    iget v3, p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountNumber:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->title:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->title:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->contentText:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->contentText:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->channel:Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;

    .line 61
    .line 62
    iget-object p1, p1, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->channel:Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;

    .line 63
    .line 64
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    return v0
.end method

.method public final getAccountUuid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getActions()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->actions:Lkotlin/collections/builders/SetBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->contentText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInAppNotificationStyle()Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->inAppNotificationStyle:Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSeverity()Lnet/thunderbird/feature/notification/api/NotificationSeverity;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->isIncomingServerError:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x4cf

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x4d5

    .line 9
    .line 10
    :goto_0
    const/16 v1, 0x1f

    .line 11
    .line 12
    mul-int/2addr v0, v1

    .line 13
    iget-object v2, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountUuid:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v2, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountNumber:I

    .line 20
    .line 21
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v2, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->title:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v2, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->contentText:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_1
    add-int/2addr v0, v2

    .line 40
    mul-int/2addr v0, v1

    .line 41
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->channel:Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    add-int/2addr p0, v0

    .line 48
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "AuthenticationErrorNotification(isIncomingServerError="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->isIncomingServerError:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", accountUuid="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountUuid:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", accountNumber="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->accountNumber:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", title="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->title:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", contentText="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->contentText:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", channel="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/AuthenticationErrorNotification;->channel:Lnet/thunderbird/feature/notification/api/NotificationChannel$Miscellaneous;

    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p0, ")"

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
