.class public final synthetic Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;
.implements Lio/reactivex/rxjava3/functions/Action;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iput p3, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$2:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public synthetic constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;ILorg/schabi/newpipe/local/subscription/SubscriptionManager;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$2:I

    iput-object p3, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v7, v1

    .line 8
    check-cast v7, Ljava/lang/String;

    .line 9
    .line 10
    move-object v3, p1

    .line 11
    check-cast v3, Ljava/lang/Throwable;

    .line 12
    .line 13
    new-instance v2, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 14
    .line 15
    const-string p1, "Loading stream info: "

    .line 16
    .line 17
    invoke-static {p1, v7}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget p0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$2:I

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    sget-object v4, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 28
    .line 29
    invoke-direct/range {v2 .. v7}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v2}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/exoplayer2/MediaItem;

    .line 8
    .line 9
    iget p0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$2:I

    .line 10
    .line 11
    check-cast p1, Lcom/google/android/exoplayer2/analytics/AnalyticsListener;

    .line 12
    .line 13
    invoke-static {v0, v1, p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;->$r8$lambda$TyZWqUUMWsGOrPg7iKY7tusaQNA(Lcom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 8
    .line 9
    iget p0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;->f$2:I

    .line 10
    .line 11
    iput p0, v0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->notificationMode:I

    .line 12
    .line 13
    iget-object p0, v1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->subscriptionTable:Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionDAO_Impl;->update(Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method
