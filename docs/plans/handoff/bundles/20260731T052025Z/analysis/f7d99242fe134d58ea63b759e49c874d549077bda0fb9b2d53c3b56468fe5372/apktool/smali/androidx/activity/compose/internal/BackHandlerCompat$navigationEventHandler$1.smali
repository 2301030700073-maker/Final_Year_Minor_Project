.class public final Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;
.super Landroidx/navigationevent/NavigationEventHandler;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic this$0:Lnet/openid/appauth/JsonUtil$Field;


# direct methods
.method public constructor <init>(Lnet/openid/appauth/JsonUtil$Field;Landroidx/work/OperationKt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Lnet/openid/appauth/JsonUtil$Field;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigationevent/NavigationEventHandler;->currentInfo:Landroidx/work/OperationKt;

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
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Lnet/openid/appauth/JsonUtil$Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/openid/appauth/JsonUtil$Field;->onBackCancelled()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBackCompleted()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Lnet/openid/appauth/JsonUtil$Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnet/openid/appauth/JsonUtil$Field;->onBackCompleted()V

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
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Lnet/openid/appauth/JsonUtil$Field;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lnet/openid/appauth/JsonUtil$Field;->onBackProgressed(Landroidx/activity/BackEventCompat;)V

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
    iget-object p0, p0, Landroidx/activity/compose/internal/BackHandlerCompat$navigationEventHandler$1;->this$0:Lnet/openid/appauth/JsonUtil$Field;

    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/openid/appauth/JsonUtil$Field;->onBackStarted()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
