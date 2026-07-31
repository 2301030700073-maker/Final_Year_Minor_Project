.class public final Lorg/wikipedia/notifications/NotificationListItemContainer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final notification:Lorg/wikipedia/notifications/db/Notification;

.field public selected:Z

.field public final type:I


# direct methods
.method public constructor <init>(Lorg/wikipedia/notifications/db/Notification;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    const/4 p2, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    move v0, p2

    .line 10
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationListItemContainer;->notification:Lorg/wikipedia/notifications/db/Notification;

    .line 14
    .line 15
    iput v0, p0, Lorg/wikipedia/notifications/NotificationListItemContainer;->type:I

    .line 16
    .line 17
    iput-boolean p2, p0, Lorg/wikipedia/notifications/NotificationListItemContainer;->selected:Z

    .line 18
    .line 19
    return-void
.end method
