.class public final synthetic Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/notifications/NotificationActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda1;->f$2:Z

    .line 2
    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 9
    .line 10
    iget-object p0, p0, Lorg/wikipedia/notifications/NotificationActivity$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {v2, p0, p1, v0, v1}, Lorg/wikipedia/notifications/NotificationActivity;->markReadItems$default(Lorg/wikipedia/notifications/NotificationActivity;Ljava/util/List;ZLjava/lang/Integer;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
