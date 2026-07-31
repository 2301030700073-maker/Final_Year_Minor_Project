.class public abstract Landroidx/core/app/NotificationCompat$ProgressStyle$Api37Impl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static setProgressPoints(Landroid/app/Notification$ProgressStyle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification$ProgressStyle;",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$ProgressStyle$Point;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Api37Impl;->toPlatformPoint(Landroidx/core/app/NotificationCompat$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle$Point;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle;->addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public static setProgressSegments(Landroid/app/Notification$ProgressStyle;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification$ProgressStyle;",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Api37Impl;->toPlatformSegment(Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle$Segment;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle;->addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public static toPlatformPoint(Landroidx/core/app/NotificationCompat$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle$Point;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Api36Impl;->toPlatformPoint(Landroidx/core/app/NotificationCompat$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle$Point;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Point;->mSemanticStyle:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/Notification$ProgressStyle$Point;->setSemanticStyle(I)Landroid/app/Notification$ProgressStyle$Point;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static toPlatformSegment(Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle$Segment;
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/app/NotificationCompat$ProgressStyle$Api36Impl;->toPlatformSegment(Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle$Segment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Landroidx/core/app/NotificationCompat$ProgressStyle$Segment;->mSemanticStyle:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/app/Notification$ProgressStyle$Segment;->setSemanticStyle(I)Landroid/app/Notification$ProgressStyle$Segment;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
