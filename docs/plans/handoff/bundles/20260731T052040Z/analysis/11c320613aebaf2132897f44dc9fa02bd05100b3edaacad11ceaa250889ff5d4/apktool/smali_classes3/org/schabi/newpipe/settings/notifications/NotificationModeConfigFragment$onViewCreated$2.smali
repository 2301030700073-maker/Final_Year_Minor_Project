.class final synthetic Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;->$tmp0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigFragment$onViewCreated$2;->$tmp0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->update(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
