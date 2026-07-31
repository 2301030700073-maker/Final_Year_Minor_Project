.class final Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiffCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->INSTANCE:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 12
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    check-cast p2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->areContentsTheSame(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Z

    move-result p0

    return p0
.end method

.method public areContentsTheSame(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Z
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
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    check-cast p2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->areItemsTheSame(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getId()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long p0, p0, v0

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    check-cast p2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->getChangePayload(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getChangePayload(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Ljava/lang/Object;
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
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eq p0, p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method
