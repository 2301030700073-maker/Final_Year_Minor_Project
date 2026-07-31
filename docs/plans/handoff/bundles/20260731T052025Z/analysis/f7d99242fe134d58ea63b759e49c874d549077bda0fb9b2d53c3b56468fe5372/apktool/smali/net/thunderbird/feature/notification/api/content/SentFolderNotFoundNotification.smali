.class public final Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;
.super Lnet/thunderbird/feature/notification/api/content/AppNotification;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/content/InAppNotification;


# instance fields
.field public final accountUuid:Ljava/lang/String;

.field public final actions:Ljava/util/Set;

.field public final contentText:Ljava/lang/String;

.field public final severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lnet/thunderbird/feature/notification/api/content/AppNotification;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->accountUuid:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->title:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->contentText:Ljava/lang/String;

    .line 15
    .line 16
    sget-object p2, Lnet/thunderbird/feature/notification/api/NotificationSeverity;->Warning:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 17
    .line 18
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 19
    .line 20
    new-instance p2, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$AssignSentFolder;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Lnet/thunderbird/feature/notification/api/ui/action/NotificationAction$AssignSentFolder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->actions:Ljava/util/Set;

    .line 30
    .line 31
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
    instance-of v1, p1, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;

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
    check-cast p1, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->accountUuid:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->accountUuid:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->title:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p1, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->title:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getAccountUuid()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->accountUuid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getActions()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->actions:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getContentText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->contentText:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInAppNotificationStyle()Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;
    .locals 1

    .line 1
    new-instance p0, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v0, 0x18

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lnet/thunderbird/feature/changelog/internal/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lokio/Okio;->inAppNotificationStyle(Lkotlin/jvm/functions/Function1;)Lnet/thunderbird/feature/notification/api/ui/style/InAppNotificationStyle;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getSeverity()Lnet/thunderbird/feature/notification/api/NotificationSeverity;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->severity:Lnet/thunderbird/feature/notification/api/NotificationSeverity;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->accountUuid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->title:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ", title="

    .line 2
    .line 3
    const-string v1, ")"

    .line 4
    .line 5
    const-string v2, "SentFolderNotFoundNotification(accountUuid="

    .line 6
    .line 7
    iget-object v3, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->accountUuid:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/content/SentFolderNotFoundNotification;->title:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, p0, v1}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
