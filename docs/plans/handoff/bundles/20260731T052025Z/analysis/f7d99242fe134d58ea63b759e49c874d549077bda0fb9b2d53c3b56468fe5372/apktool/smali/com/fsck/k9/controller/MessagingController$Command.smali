.class public final Lcom/fsck/k9/controller/MessagingController$Command;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public description:Ljava/lang/String;

.field public isForegroundPriority:Z

.field public runnable:Ljava/lang/Runnable;

.field public sequence:I


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lcom/fsck/k9/controller/MessagingController$Command;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/fsck/k9/controller/MessagingController$Command;->isForegroundPriority:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    return p0

    .line 21
    :cond_1
    iget p0, p0, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    .line 22
    .line 23
    iget p1, p1, Lcom/fsck/k9/controller/MessagingController$Command;->sequence:I

    .line 24
    .line 25
    sub-int/2addr p0, p1

    .line 26
    return p0
.end method
