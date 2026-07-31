.class public final Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/command/outcome/Success;


# instance fields
.field public final command:Lnet/thunderbird/feature/notification/api/command/NotificationCommand;

.field public final notificationId:I


# direct methods
.method public constructor <init>(ILnet/thunderbird/feature/notification/api/command/NotificationCommand;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->notificationId:I

    .line 8
    .line 9
    iput-object p2, p0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->command:Lnet/thunderbird/feature/notification/api/command/NotificationCommand;

    .line 10
    .line 11
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
    instance-of v1, p1, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;

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
    check-cast p1, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;

    .line 12
    .line 13
    iget v1, p0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->notificationId:I

    .line 14
    .line 15
    iget v3, p1, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->notificationId:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_3

    .line 18
    .line 19
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->command:Lnet/thunderbird/feature/notification/api/command/NotificationCommand;

    .line 20
    .line 21
    iget-object p1, p1, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->command:Lnet/thunderbird/feature/notification/api/command/NotificationCommand;

    .line 22
    .line 23
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_2

    .line 28
    .line 29
    return v2

    .line 30
    :cond_2
    return v0

    .line 31
    :cond_3
    return v2
.end method

.method public final getRawNotificationId()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->notificationId:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->notificationId:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->command:Lnet/thunderbird/feature/notification/api/command/NotificationCommand;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    add-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->notificationId:I

    .line 2
    .line 3
    invoke-static {v0}, Lnet/thunderbird/feature/notification/api/NotificationId;->toString-impl(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Executed(notificationId="

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", command="

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lnet/thunderbird/feature/notification/api/command/outcome/Success$Executed;->command:Lnet/thunderbird/feature/notification/api/command/NotificationCommand;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, ")"

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
