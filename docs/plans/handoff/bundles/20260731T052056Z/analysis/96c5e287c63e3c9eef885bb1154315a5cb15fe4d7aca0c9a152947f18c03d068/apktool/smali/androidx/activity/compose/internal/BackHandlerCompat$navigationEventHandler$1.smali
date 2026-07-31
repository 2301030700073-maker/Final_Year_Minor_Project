.class public final Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/view/menu/BaseMenuWrapper;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/BaseMenuWrapper;Lkotlin/TuplesKt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigationevent/NavigationEventHandler;->currentInfo:Lkotlin/TuplesKt;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/navigationevent/NavigationEventHandler;->isBackEnabled:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->onBackCancelled()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackCompleted()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->onBackCompleted()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackProgressed(Landroidx/navigationevent/NavigationEvent;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/activity/BackEventCompat;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroidx/navigationevent/NavigationEvent;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->onBackProgressed(Landroidx/activity/BackEventCompat;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onBackStarted(Landroidx/navigationevent/NavigationEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Landroidx/appcompat/view/menu/BaseMenuWrapper;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/BaseMenuWrapper;->onBackStarted()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
