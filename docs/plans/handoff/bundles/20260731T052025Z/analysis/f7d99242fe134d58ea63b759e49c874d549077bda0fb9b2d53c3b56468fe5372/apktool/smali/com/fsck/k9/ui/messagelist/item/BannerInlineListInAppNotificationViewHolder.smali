.class public final Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;
.super Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final eventFilter:Landroidx/room/InvalidationTracker$implementation$1;

.field public final onNotificationActionClick:Landroidx/room/InvalidationTracker$implementation$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/platform/ComposeView;->$r8$clinit:I

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroidx/room/InvalidationTracker$implementation$1;Landroidx/room/InvalidationTracker$implementation$1;Landroidx/compose/ui/platform/ComposeView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder;-><init>(Landroidx/compose/ui/platform/ComposeView;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;->onNotificationActionClick:Landroidx/room/InvalidationTracker$implementation$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;->eventFilter:Landroidx/room/InvalidationTracker$implementation$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final Content(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    .line 1
    move-object v7, p1

    .line 2
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, 0x1224ff2f

    .line 5
    .line 6
    .line 7
    invoke-virtual {v7, p1}, Landroidx/compose/runtime/GapComposer;->startRestartGroup(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v7, p0}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x2

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p1, v0

    .line 20
    :goto_0
    or-int/2addr p1, p2

    .line 21
    and-int/lit8 v1, p1, 0x3

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eq v1, v0, :cond_1

    .line 26
    .line 27
    move v0, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v0, v2

    .line 30
    :goto_1
    and-int/2addr p1, v3

    .line 31
    invoke-virtual {v7, p1, v0}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-array p1, v3, [Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 38
    .line 39
    sget-object v0, Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;->BannerInlineNotifications:Lnet/thunderbird/feature/notification/api/ui/host/DisplayInAppNotificationFlag;

    .line 40
    .line 41
    aput-object v0, p1, v2

    .line 42
    .line 43
    invoke-static {p1}, Lokio/Okio;->persistentSetOf([Ljava/lang/Object;)Lkotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-static {p1, v0, v1}, Landroidx/compose/animation/CrossfadeKt;->animateContentSize$default(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/16 v8, 0x180

    .line 56
    .line 57
    const/16 v9, 0x58

    .line 58
    .line 59
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;->onNotificationActionClick:Landroidx/room/InvalidationTracker$implementation$1;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    iget-object v5, p0, Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;->eventFilter:Landroidx/room/InvalidationTracker$implementation$1;

    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-static/range {v0 .. v9}, Lnet/thunderbird/feature/notification/api/ui/InAppNotificationHostKt;->InAppNotificationHost(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableSet;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 71
    .line 72
    .line 73
    :goto_2
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    new-instance v0, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    invoke-direct {v0, p0, p2}, Lcom/fsck/k9/ui/messagelist/item/MessageListInAppNotificationViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/ui/messagelist/item/BannerInlineListInAppNotificationViewHolder;I)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 85
    .line 86
    :cond_3
    return-void
.end method
