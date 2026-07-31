.class public final Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final head:[Ljava/lang/Object;

.field public offset:I

.field public tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final accept(Lio/reactivex/rxjava3/core/Observer;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->head:[Ljava/lang/Object;

    .line 2
    .line 3
    :goto_0
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 5
    .line 6
    :goto_1
    const/4 v1, 0x4

    .line 7
    if-ge v0, v1, :cond_3

    .line 8
    .line 9
    aget-object v2, p0, v0

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget-object v1, Lio/reactivex/rxjava3/internal/util/NotificationLite;->COMPLETE:Lio/reactivex/rxjava3/internal/util/NotificationLite;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v2, v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Lio/reactivex/rxjava3/core/Observer;->onComplete()V

    .line 20
    .line 21
    .line 22
    return v3

    .line 23
    :cond_1
    instance-of v1, v2, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    check-cast v2, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;

    .line 28
    .line 29
    iget-object p0, v2, Lio/reactivex/rxjava3/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    .line 30
    .line 31
    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    return v3

    .line 35
    :cond_2
    invoke-interface {p1, v2}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    :goto_2
    aget-object p0, p0, v1

    .line 42
    .line 43
    check-cast p0, [Ljava/lang/Object;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    return v0
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->offset:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    .line 10
    .line 11
    aput-object v0, v2, v1

    .line 12
    .line 13
    iput-object v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->tail:[Ljava/lang/Object;

    .line 17
    .line 18
    aput-object p1, v1, v0

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p0, Lio/reactivex/rxjava3/internal/util/AppendOnlyLinkedArrayList;->offset:I

    .line 23
    .line 24
    return-void
.end method
