.class public final Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$immediateDragGesture$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic $onDrag:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onDragEnd:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onDragStart:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$immediateDragGesture$1;->$onDragStart:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$immediateDragGesture$1;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$immediateDragGesture$1;->$onDrag:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v1, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    iget-object v2, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$immediateDragGesture$1;->$onDragStart:Lkotlin/jvm/functions/Function0;

    .line 5
    .line 6
    invoke-direct {v1, v0, v2}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 10
    .line 11
    const/16 v0, 0xb

    .line 12
    .line 13
    iget-object v3, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$immediateDragGesture$1;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    invoke-direct {v2, v0, v3}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    move-object v0, v3

    .line 19
    new-instance v3, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/16 v4, 0xc

    .line 22
    .line 23
    invoke-direct {v3, v4, v0}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/16 v0, 0x9

    .line 29
    .line 30
    iget-object p0, p0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsSettingsScreenKt$immediateDragGesture$1;->$onDrag:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    invoke-direct {v4, v0, p0}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 33
    .line 34
    .line 35
    move-object v0, p1

    .line 36
    move-object v5, p2

    .line 37
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
