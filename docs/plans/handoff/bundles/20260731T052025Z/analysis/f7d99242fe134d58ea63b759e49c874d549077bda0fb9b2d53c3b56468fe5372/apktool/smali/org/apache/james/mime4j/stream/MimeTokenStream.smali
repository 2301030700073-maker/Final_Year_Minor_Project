.class public final Lorg/apache/james/mime4j/stream/MimeTokenStream;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final bodyDescBuilder:Ljava/lang/Object;

.field public final config:Ljava/lang/Object;

.field public currentStateMachine:Ljava/lang/Object;

.field public entities:Ljava/lang/Object;

.field public final fieldBuilder:Ljava/lang/Object;

.field public monitor:Ljava/lang/Object;

.field public recursionMode:I

.field public state:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->bodyDescBuilder:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 47
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:I

    .line 48
    iput p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/stream/MimeConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 10
    .line 11
    const/16 v0, 0xe

    .line 12
    .line 13
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:I

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 17
    .line 18
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;

    .line 21
    .line 22
    iget p1, p1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/stream/DefaultFieldBuilder;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object p1, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 30
    .line 31
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance p1, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {p1, v0, v0}, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->bodyDescBuilder:Ljava/lang/Object;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    instance-of v4, v2, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    check-cast v2, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 24
    .line 25
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v3

    .line 35
    :goto_0
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    if-eqz p2, :cond_5

    .line 39
    .line 40
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-gtz v2, :cond_4

    .line 47
    .line 48
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 49
    .line 50
    if-eqz p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    iget-object p2, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/compose/ui/platform/WeakCache;

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroidx/compose/ui/platform/WeakCache;->removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 65
    .line 66
    if-eqz p2, :cond_5

    .line 67
    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "dispatchViewRecycled: "

    .line 71
    .line 72
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const-string v1, "RecyclerView"

    .line 83
    .line 84
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 p0, 0x0

    .line 89
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_5
    :goto_1
    iput-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 101
    .line 102
    iput-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    .line 104
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 112
    .line 113
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 118
    .line 119
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 120
    .line 121
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 126
    .line 127
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-gt p0, p2, :cond_6

    .line 134
    .line 135
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->callPoolingContainerOnRelease(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_6
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 140
    .line 141
    if-eqz p0, :cond_8

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_7

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    const-string p0, "this scrap item already exists"

    .line 151
    .line 152
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 4

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 6
    .line 7
    if-ltz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge p1, v1, :cond_1

    .line 14
    .line 15
    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/node/RulerTrackingMap;->findPositionOffset(II)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 29
    .line 30
    const-string v2, "invalid position "

    .line 31
    .line 32
    const-string v3, ". State item count is "

    .line 33
    .line 34
    invoke-static {p1, v2, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v1
.end method

.method public getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachCountForClearing:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    .line 32
    .line 33
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->maybeSendPoolingContainerAttach()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 41
    .line 42
    return-object p0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->tryGetViewHolderForPositionByDeadline(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    return-object p0
.end method

.method public maybeSendPoolingContainerAttach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public poolingContainerDetach(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mAttachedAdaptersForPoolingContainer:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    move p1, p0

    .line 24
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-ge p1, p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 39
    .line 40
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 41
    .line 42
    move v1, p0

    .line 43
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ge v1, v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 54
    .line 55
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 56
    .line 57
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->callPoolingContainerOnRelease(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public recycleAndClearCachedViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recycleCachedViewAt(I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/collection/CircularArray;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, [I

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v1, -0x1

    .line 39
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 44
    .line 45
    :cond_2
    return-void
.end method

.method public recycleCachedViewAt(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 6
    .line 7
    const-string v2, "RecyclerView"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v1, "Recycling cached view at index "

    .line 12
    .line 13
    invoke-static {p1, v1, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 21
    .line 22
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "CachedViewHolder to be recycled: "

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 v2, 0x1

    .line 44
    invoke-virtual {p0, v1, v2}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 38
    .line 39
    and-int/lit8 p1, p1, -0x21

    .line 40
    .line 41
    iput p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    iget-object p0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/collection/CircularArray;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x1

    .line 19
    if-nez v3, :cond_14

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto/16 :goto_c

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_13

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_12

    .line 40
    .line 41
    iget v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 42
    .line 43
    and-int/lit8 v3, v3, 0x10

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/view/View;->hasTransientState()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    move v3, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v3, v5

    .line 58
    :goto_0
    iget-object v7, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 59
    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_2

    .line 69
    .line 70
    move v7, v6

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move v7, v5

    .line 73
    :goto_1
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 74
    .line 75
    if-eqz v8, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-nez v8, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v0, "cached view received recycle internal? "

    .line 87
    .line 88
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    :goto_2
    if-nez v7, :cond_7

    .line 103
    .line 104
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-eqz v7, :cond_5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 112
    .line 113
    if-eqz p0, :cond_6

    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string v0, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    .line 120
    .line 121
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const-string v0, "RecyclerView"

    .line 126
    .line 127
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_6
    move v6, v5

    .line 131
    goto/16 :goto_b

    .line 132
    .line 133
    :cond_7
    :goto_3
    iget v7, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 134
    .line 135
    if-lez v7, :cond_f

    .line 136
    .line 137
    iget v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 138
    .line 139
    and-int/lit16 v7, v7, 0x20e

    .line 140
    .line 141
    if-eqz v7, :cond_8

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    iget v8, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 149
    .line 150
    if-lt v7, v8, :cond_9

    .line 151
    .line 152
    if-lez v7, :cond_9

    .line 153
    .line 154
    invoke-virtual {p0, v5}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recycleCachedViewAt(I)V

    .line 155
    .line 156
    .line 157
    add-int/lit8 v7, v7, -0x1

    .line 158
    .line 159
    :cond_9
    sget-boolean v8, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 160
    .line 161
    if-eqz v8, :cond_e

    .line 162
    .line 163
    if-lez v7, :cond_e

    .line 164
    .line 165
    iget v8, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 166
    .line 167
    iget-object v9, v2, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v9, [I

    .line 170
    .line 171
    if-eqz v9, :cond_b

    .line 172
    .line 173
    iget v9, v2, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 174
    .line 175
    mul-int/lit8 v9, v9, 0x2

    .line 176
    .line 177
    move v10, v5

    .line 178
    :goto_4
    if-ge v10, v9, :cond_b

    .line 179
    .line 180
    iget-object v11, v2, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v11, [I

    .line 183
    .line 184
    aget v11, v11, v10

    .line 185
    .line 186
    if-ne v11, v8, :cond_a

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_a
    add-int/lit8 v10, v10, 0x2

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 193
    .line 194
    :goto_5
    if-ltz v7, :cond_d

    .line 195
    .line 196
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 201
    .line 202
    iget v8, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 203
    .line 204
    iget-object v9, v2, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v9, [I

    .line 207
    .line 208
    if-eqz v9, :cond_d

    .line 209
    .line 210
    iget v9, v2, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 211
    .line 212
    mul-int/lit8 v9, v9, 0x2

    .line 213
    .line 214
    move v10, v5

    .line 215
    :goto_6
    if-ge v10, v9, :cond_d

    .line 216
    .line 217
    iget-object v11, v2, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v11, [I

    .line 220
    .line 221
    aget v11, v11, v10

    .line 222
    .line 223
    if-ne v11, v8, :cond_c

    .line 224
    .line 225
    add-int/lit8 v7, v7, -0x1

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_c
    add-int/lit8 v10, v10, 0x2

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_d
    add-int/2addr v7, v6

    .line 232
    :cond_e
    :goto_7
    invoke-virtual {v0, v7, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    move v0, v6

    .line 236
    goto :goto_9

    .line 237
    :cond_f
    :goto_8
    move v0, v5

    .line 238
    :goto_9
    if-nez v0, :cond_10

    .line 239
    .line 240
    invoke-virtual {p0, p1, v6}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 241
    .line 242
    .line 243
    :goto_a
    move v5, v0

    .line 244
    goto :goto_b

    .line 245
    :cond_10
    move v6, v5

    .line 246
    goto :goto_a

    .line 247
    :goto_b
    iget-object p0, v1, Landroidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Landroidx/compose/ui/platform/WeakCache;

    .line 248
    .line 249
    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/WeakCache;->removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 250
    .line 251
    .line 252
    if-nez v5, :cond_11

    .line 253
    .line 254
    if-nez v6, :cond_11

    .line 255
    .line 256
    if-eqz v3, :cond_11

    .line 257
    .line 258
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->callPoolingContainerOnRelease(Landroid/view/View;)V

    .line 259
    .line 260
    .line 261
    const/4 p0, 0x0

    .line 262
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 263
    .line 264
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    .line 266
    :cond_11
    return-void

    .line 267
    :cond_12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    const-string p1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    .line 272
    .line 273
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v0, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    .line 284
    .line 285
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_14
    :goto_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 300
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v2, "Scrapped or attached views may not be recycled. isScrap:"

    .line 304
    .line 305
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 309
    .line 310
    .line 311
    move-result p1

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const-string p1, " isAttached:"

    .line 316
    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    if-eqz p1, :cond_15

    .line 325
    .line 326
    move v5, v6

    .line 327
    :cond_15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p0
.end method

.method public scrapView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 10
    .line 11
    and-int/lit8 v1, v1, 0xc

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    iget-boolean v1, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->mSupportsChangeAnimations:Z

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 61
    .line 62
    :cond_2
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 66
    .line 67
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_5

    .line 86
    .line 87
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 88
    .line 89
    iget-boolean v1, v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string p1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_5
    :goto_1
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 112
    .line 113
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public tryGetViewHolderForPositionByDeadline(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v3, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v4, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 18
    .line 19
    if-ltz v1, :cond_58

    .line 20
    .line 21
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-ge v1, v6, :cond_58

    .line 26
    .line 27
    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 28
    .line 29
    const/16 v7, 0x20

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    if-eqz v6, :cond_7

    .line 33
    .line 34
    iget-object v6, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v6, Ljava/util/ArrayList;

    .line 37
    .line 38
    if-eqz v6, :cond_5

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    move v11, v10

    .line 49
    :goto_0
    if-ge v11, v6, :cond_2

    .line 50
    .line 51
    iget-object v12, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v12, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 60
    .line 61
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    if-nez v13, :cond_1

    .line 66
    .line 67
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 68
    .line 69
    .line 70
    move-result v13

    .line 71
    if-ne v13, v1, :cond_1

    .line 72
    .line 73
    invoke-virtual {v12, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 74
    .line 75
    .line 76
    const/4 v15, 0x0

    .line 77
    const/16 v16, 0x1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 84
    .line 85
    iget-boolean v11, v11, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 86
    .line 87
    if-eqz v11, :cond_5

    .line 88
    .line 89
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 90
    .line 91
    invoke-virtual {v11, v1, v10}, Landroidx/compose/ui/node/RulerTrackingMap;->findPositionOffset(II)I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-lez v11, :cond_5

    .line 96
    .line 97
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 98
    .line 99
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-ge v11, v12, :cond_5

    .line 104
    .line 105
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 106
    .line 107
    invoke-virtual {v12, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide v11

    .line 111
    move v13, v10

    .line 112
    :goto_1
    if-ge v13, v6, :cond_5

    .line 113
    .line 114
    iget-object v14, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v14, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v14

    .line 122
    check-cast v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 123
    .line 124
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    if-nez v15, :cond_3

    .line 129
    .line 130
    const/4 v15, 0x0

    .line 131
    const/16 v16, 0x1

    .line 132
    .line 133
    iget-wide v8, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 134
    .line 135
    cmp-long v8, v8, v11

    .line 136
    .line 137
    if-nez v8, :cond_4

    .line 138
    .line 139
    invoke-virtual {v14, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 140
    .line 141
    .line 142
    move-object v12, v14

    .line 143
    goto :goto_3

    .line 144
    :cond_3
    const/4 v15, 0x0

    .line 145
    const/16 v16, 0x1

    .line 146
    .line 147
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    :goto_2
    const/4 v15, 0x0

    .line 151
    const/16 v16, 0x1

    .line 152
    .line 153
    move-object v12, v15

    .line 154
    :goto_3
    if-eqz v12, :cond_6

    .line 155
    .line 156
    move/from16 v6, v16

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_6
    move v6, v10

    .line 160
    goto :goto_4

    .line 161
    :cond_7
    const/4 v15, 0x0

    .line 162
    const/16 v16, 0x1

    .line 163
    .line 164
    move v6, v10

    .line 165
    move-object v12, v15

    .line 166
    :goto_4
    const-string v8, "RecyclerView"

    .line 167
    .line 168
    if-nez v12, :cond_21

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    move v11, v10

    .line 175
    :goto_5
    if-ge v11, v9, :cond_a

    .line 176
    .line 177
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 182
    .line 183
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-nez v13, :cond_9

    .line 188
    .line 189
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    if-ne v13, v1, :cond_9

    .line 194
    .line 195
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    if-nez v13, :cond_9

    .line 200
    .line 201
    iget-boolean v13, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 202
    .line 203
    if-nez v13, :cond_8

    .line 204
    .line 205
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    if-nez v13, :cond_9

    .line 210
    .line 211
    :cond_8
    invoke-virtual {v12, v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v17, v15

    .line 215
    .line 216
    move-object v15, v12

    .line 217
    goto/16 :goto_b

    .line 218
    .line 219
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_a
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Lorg/apache/james/mime4j/stream/RawField;

    .line 223
    .line 224
    iget-object v9, v9, Lorg/apache/james/mime4j/stream/RawField;->body:Ljava/io/Serializable;

    .line 225
    .line 226
    check-cast v9, Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    move v12, v10

    .line 233
    :goto_6
    if-ge v12, v11, :cond_c

    .line 234
    .line 235
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    check-cast v13, Landroid/view/View;

    .line 240
    .line 241
    invoke-static {v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    move-object/from16 v17, v15

    .line 246
    .line 247
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 248
    .line 249
    .line 250
    move-result v15

    .line 251
    if-ne v15, v1, :cond_b

    .line 252
    .line 253
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 254
    .line 255
    .line 256
    move-result v15

    .line 257
    if-nez v15, :cond_b

    .line 258
    .line 259
    invoke-virtual {v14}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    if-nez v14, :cond_b

    .line 264
    .line 265
    move-object v15, v13

    .line 266
    goto :goto_7

    .line 267
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 268
    .line 269
    move-object/from16 v15, v17

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_c
    move-object/from16 v17, v15

    .line 273
    .line 274
    :goto_7
    if-eqz v15, :cond_12

    .line 275
    .line 276
    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Lorg/apache/james/mime4j/stream/RawField;

    .line 281
    .line 282
    iget-object v12, v11, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v12, Lokhttp3/internal/http1/HeadersReader;

    .line 285
    .line 286
    iget-object v13, v11, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 289
    .line 290
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 291
    .line 292
    invoke-virtual {v13, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    if-ltz v13, :cond_11

    .line 297
    .line 298
    invoke-virtual {v12, v13}, Lokhttp3/internal/http1/HeadersReader;->get(I)Z

    .line 299
    .line 300
    .line 301
    move-result v14

    .line 302
    if-eqz v14, :cond_10

    .line 303
    .line 304
    invoke-virtual {v12, v13}, Lokhttp3/internal/http1/HeadersReader;->clear(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v11, v15}, Lorg/apache/james/mime4j/stream/RawField;->unhideViewInternal(Landroid/view/View;)V

    .line 308
    .line 309
    .line 310
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Lorg/apache/james/mime4j/stream/RawField;

    .line 311
    .line 312
    iget-object v12, v11, Lorg/apache/james/mime4j/stream/RawField;->name:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v12, Lokhttp3/internal/http1/HeadersReader;

    .line 315
    .line 316
    iget-object v11, v11, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v11, Landroidx/recyclerview/widget/RecyclerView$4;

    .line 319
    .line 320
    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$4;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 321
    .line 322
    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    const/4 v13, -0x1

    .line 327
    if-ne v11, v13, :cond_d

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_d
    invoke-virtual {v12, v11}, Lokhttp3/internal/http1/HeadersReader;->get(I)Z

    .line 331
    .line 332
    .line 333
    move-result v14

    .line 334
    if-eqz v14, :cond_e

    .line 335
    .line 336
    :goto_8
    move v11, v13

    .line 337
    goto :goto_9

    .line 338
    :cond_e
    invoke-virtual {v12, v11}, Lokhttp3/internal/http1/HeadersReader;->countOnesBefore(I)I

    .line 339
    .line 340
    .line 341
    move-result v12

    .line 342
    sub-int/2addr v11, v12

    .line 343
    :goto_9
    if-eq v11, v13, :cond_f

    .line 344
    .line 345
    iget-object v12, v4, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Lorg/apache/james/mime4j/stream/RawField;

    .line 346
    .line 347
    invoke-virtual {v12, v11}, Lorg/apache/james/mime4j/stream/RawField;->detachViewFromParent(I)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->scrapView(Landroid/view/View;)V

    .line 351
    .line 352
    .line 353
    const/16 v11, 0x2020

    .line 354
    .line 355
    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 356
    .line 357
    .line 358
    move-object v15, v9

    .line 359
    goto :goto_b

    .line 360
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    const-string v1, "layout index should not be -1 after unhiding a view:"

    .line 363
    .line 364
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 375
    .line 376
    .line 377
    return-object v17

    .line 378
    :cond_10
    const-string v0, "trying to unhide a view that was not hidden"

    .line 379
    .line 380
    invoke-static {v15, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    return-object v17

    .line 384
    :cond_11
    const-string/jumbo v0, "view is not a child, cannot hide "

    .line 385
    .line 386
    .line 387
    invoke-static {v15, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    return-object v17

    .line 391
    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 392
    .line 393
    .line 394
    move-result v9

    .line 395
    move v11, v10

    .line 396
    :goto_a
    if-ge v11, v9, :cond_14

    .line 397
    .line 398
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v12

    .line 402
    move-object v15, v12

    .line 403
    check-cast v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 404
    .line 405
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 406
    .line 407
    .line 408
    move-result v12

    .line 409
    if-nez v12, :cond_13

    .line 410
    .line 411
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 412
    .line 413
    .line 414
    move-result v12

    .line 415
    if-ne v12, v1, :cond_13

    .line 416
    .line 417
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 418
    .line 419
    .line 420
    move-result v12

    .line 421
    if-nez v12, :cond_13

    .line 422
    .line 423
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 427
    .line 428
    if-eqz v9, :cond_15

    .line 429
    .line 430
    new-instance v9, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v11, "getScrapOrHiddenOrCachedHolderForPosition("

    .line 433
    .line 434
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v11, ") found match in cache: "

    .line 441
    .line 442
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    goto :goto_b

    .line 456
    :cond_13
    add-int/lit8 v11, v11, 0x1

    .line 457
    .line 458
    goto :goto_a

    .line 459
    :cond_14
    move-object/from16 v15, v17

    .line 460
    .line 461
    :cond_15
    :goto_b
    if-eqz v15, :cond_20

    .line 462
    .line 463
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 464
    .line 465
    .line 466
    move-result v9

    .line 467
    if-eqz v9, :cond_18

    .line 468
    .line 469
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 470
    .line 471
    if-eqz v9, :cond_17

    .line 472
    .line 473
    iget-boolean v9, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 474
    .line 475
    if-eqz v9, :cond_16

    .line 476
    .line 477
    goto :goto_c

    .line 478
    :cond_16
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    const-string v1, "should not receive a removed view unless it is pre layout"

    .line 483
    .line 484
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    return-object v17

    .line 492
    :cond_17
    :goto_c
    iget-boolean v9, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 493
    .line 494
    goto :goto_d

    .line 495
    :cond_18
    iget v9, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 496
    .line 497
    if-ltz v9, :cond_1f

    .line 498
    .line 499
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 500
    .line 501
    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 502
    .line 503
    .line 504
    move-result v11

    .line 505
    if-ge v9, v11, :cond_1f

    .line 506
    .line 507
    iget-boolean v9, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 508
    .line 509
    if-nez v9, :cond_1a

    .line 510
    .line 511
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 512
    .line 513
    iget v11, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 514
    .line 515
    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 516
    .line 517
    .line 518
    move-result v9

    .line 519
    iget v11, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 520
    .line 521
    if-eq v9, v11, :cond_1a

    .line 522
    .line 523
    :cond_19
    move v9, v10

    .line 524
    goto :goto_d

    .line 525
    :cond_1a
    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 526
    .line 527
    iget-boolean v11, v9, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 528
    .line 529
    if-eqz v11, :cond_1b

    .line 530
    .line 531
    iget-wide v11, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 532
    .line 533
    iget v13, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 534
    .line 535
    invoke-virtual {v9, v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 536
    .line 537
    .line 538
    move-result-wide v13

    .line 539
    cmp-long v9, v11, v13

    .line 540
    .line 541
    if-nez v9, :cond_19

    .line 542
    .line 543
    :cond_1b
    move/from16 v9, v16

    .line 544
    .line 545
    :goto_d
    if-nez v9, :cond_1e

    .line 546
    .line 547
    const/4 v9, 0x4

    .line 548
    invoke-virtual {v15, v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    .line 552
    .line 553
    .line 554
    move-result v9

    .line 555
    if-eqz v9, :cond_1c

    .line 556
    .line 557
    iget-object v9, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 558
    .line 559
    invoke-virtual {v4, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 560
    .line 561
    .line 562
    iget-object v9, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 563
    .line 564
    invoke-virtual {v9, v15}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 565
    .line 566
    .line 567
    goto :goto_e

    .line 568
    :cond_1c
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 569
    .line 570
    .line 571
    move-result v9

    .line 572
    if-eqz v9, :cond_1d

    .line 573
    .line 574
    iget v9, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 575
    .line 576
    and-int/lit8 v9, v9, -0x21

    .line 577
    .line 578
    iput v9, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 579
    .line 580
    :cond_1d
    :goto_e
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 581
    .line 582
    .line 583
    move-object/from16 v12, v17

    .line 584
    .line 585
    goto :goto_f

    .line 586
    :cond_1e
    move-object v12, v15

    .line 587
    move/from16 v6, v16

    .line 588
    .line 589
    goto :goto_f

    .line 590
    :cond_1f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 591
    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    .line 595
    .line 596
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    throw v0

    .line 617
    :cond_20
    move-object v12, v15

    .line 618
    goto :goto_f

    .line 619
    :cond_21
    move-object/from16 v17, v15

    .line 620
    .line 621
    :goto_f
    const-wide/16 v18, 0x4

    .line 622
    .line 623
    const-wide/16 v20, 0x0

    .line 624
    .line 625
    const-wide v22, 0x7fffffffffffffffL

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    if-nez v12, :cond_37

    .line 631
    .line 632
    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 633
    .line 634
    invoke-virtual {v11, v1, v10}, Landroidx/compose/ui/node/RulerTrackingMap;->findPositionOffset(II)I

    .line 635
    .line 636
    .line 637
    move-result v11

    .line 638
    if-ltz v11, :cond_36

    .line 639
    .line 640
    iget-object v15, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 641
    .line 642
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 643
    .line 644
    .line 645
    move-result v15

    .line 646
    if-ge v11, v15, :cond_36

    .line 647
    .line 648
    iget-object v15, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 649
    .line 650
    invoke-virtual {v15, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 651
    .line 652
    .line 653
    move-result v15

    .line 654
    const-wide/16 v24, 0x3

    .line 655
    .line 656
    iget-object v13, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 657
    .line 658
    iget-boolean v14, v13, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 659
    .line 660
    if-eqz v14, :cond_2a

    .line 661
    .line 662
    invoke-virtual {v13, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 663
    .line 664
    .line 665
    move-result-wide v12

    .line 666
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 667
    .line 668
    .line 669
    move-result v14

    .line 670
    add-int/lit8 v14, v14, -0x1

    .line 671
    .line 672
    :goto_10
    if-ltz v14, :cond_25

    .line 673
    .line 674
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v26

    .line 678
    const/16 v27, 0x2

    .line 679
    .line 680
    move-object/from16 v9, v26

    .line 681
    .line 682
    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 683
    .line 684
    move/from16 v28, v11

    .line 685
    .line 686
    iget-wide v10, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 687
    .line 688
    iget-object v7, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 689
    .line 690
    cmp-long v10, v10, v12

    .line 691
    .line 692
    if-nez v10, :cond_24

    .line 693
    .line 694
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    .line 695
    .line 696
    .line 697
    move-result v10

    .line 698
    if-nez v10, :cond_24

    .line 699
    .line 700
    iget v10, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 701
    .line 702
    if-ne v15, v10, :cond_23

    .line 703
    .line 704
    const/16 v10, 0x20

    .line 705
    .line 706
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 710
    .line 711
    .line 712
    move-result v2

    .line 713
    if-eqz v2, :cond_22

    .line 714
    .line 715
    iget-boolean v2, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 716
    .line 717
    if-nez v2, :cond_22

    .line 718
    .line 719
    iget v2, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 720
    .line 721
    and-int/lit8 v2, v2, -0xf

    .line 722
    .line 723
    or-int/lit8 v2, v2, 0x2

    .line 724
    .line 725
    iput v2, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 726
    .line 727
    :cond_22
    move v11, v15

    .line 728
    goto :goto_13

    .line 729
    :cond_23
    const/16 v10, 0x20

    .line 730
    .line 731
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    const/4 v9, 0x0

    .line 735
    invoke-virtual {v4, v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 736
    .line 737
    .line 738
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 739
    .line 740
    .line 741
    move-result-object v7

    .line 742
    move-object/from16 v11, v17

    .line 743
    .line 744
    iput-object v11, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 745
    .line 746
    move v11, v15

    .line 747
    iput-boolean v9, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 748
    .line 749
    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 750
    .line 751
    and-int/lit8 v9, v9, -0x21

    .line 752
    .line 753
    iput v9, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 754
    .line 755
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recycleViewHolderInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 756
    .line 757
    .line 758
    goto :goto_11

    .line 759
    :cond_24
    move v11, v15

    .line 760
    const/16 v10, 0x20

    .line 761
    .line 762
    :goto_11
    add-int/lit8 v14, v14, -0x1

    .line 763
    .line 764
    move v7, v10

    .line 765
    move v15, v11

    .line 766
    move/from16 v11, v28

    .line 767
    .line 768
    const/4 v10, 0x0

    .line 769
    const/16 v17, 0x0

    .line 770
    .line 771
    goto :goto_10

    .line 772
    :cond_25
    move/from16 v28, v11

    .line 773
    .line 774
    move v11, v15

    .line 775
    const/16 v27, 0x2

    .line 776
    .line 777
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    add-int/lit8 v2, v2, -0x1

    .line 782
    .line 783
    :goto_12
    if-ltz v2, :cond_27

    .line 784
    .line 785
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v7

    .line 789
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 790
    .line 791
    iget-wide v9, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 792
    .line 793
    cmp-long v9, v9, v12

    .line 794
    .line 795
    if-nez v9, :cond_28

    .line 796
    .line 797
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 798
    .line 799
    .line 800
    move-result v9

    .line 801
    if-nez v9, :cond_28

    .line 802
    .line 803
    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 804
    .line 805
    if-ne v11, v9, :cond_26

    .line 806
    .line 807
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-object v9, v7

    .line 811
    goto :goto_13

    .line 812
    :cond_26
    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recycleCachedViewAt(I)V

    .line 813
    .line 814
    .line 815
    :cond_27
    const/4 v9, 0x0

    .line 816
    goto :goto_13

    .line 817
    :cond_28
    add-int/lit8 v2, v2, -0x1

    .line 818
    .line 819
    goto :goto_12

    .line 820
    :goto_13
    if-eqz v9, :cond_29

    .line 821
    .line 822
    move/from16 v2, v28

    .line 823
    .line 824
    iput v2, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 825
    .line 826
    move-object v12, v9

    .line 827
    move/from16 v6, v16

    .line 828
    .line 829
    goto :goto_14

    .line 830
    :cond_29
    move-object v12, v9

    .line 831
    goto :goto_14

    .line 832
    :cond_2a
    move v11, v15

    .line 833
    const/16 v27, 0x2

    .line 834
    .line 835
    :goto_14
    if-nez v12, :cond_2f

    .line 836
    .line 837
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 838
    .line 839
    if-eqz v2, :cond_2b

    .line 840
    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    .line 842
    .line 843
    const-string v3, "tryGetViewHolderForPositionByDeadline("

    .line 844
    .line 845
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    const-string v3, ") fetching from shared pool"

    .line 852
    .line 853
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .line 862
    .line 863
    :cond_2b
    invoke-virtual {v0}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 864
    .line 865
    .line 866
    move-result-object v2

    .line 867
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 868
    .line 869
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 874
    .line 875
    if-eqz v2, :cond_2d

    .line 876
    .line 877
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 878
    .line 879
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 880
    .line 881
    .line 882
    move-result v3

    .line 883
    if-nez v3, :cond_2d

    .line 884
    .line 885
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    add-int/lit8 v3, v3, -0x1

    .line 890
    .line 891
    :goto_15
    if-ltz v3, :cond_2d

    .line 892
    .line 893
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v7

    .line 897
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 898
    .line 899
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAttachedToTransitionOverlay()Z

    .line 900
    .line 901
    .line 902
    move-result v7

    .line 903
    if-nez v7, :cond_2c

    .line 904
    .line 905
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v2

    .line 909
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 910
    .line 911
    goto :goto_16

    .line 912
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    .line 913
    .line 914
    goto :goto_15

    .line 915
    :cond_2d
    const/4 v2, 0x0

    .line 916
    :goto_16
    if-eqz v2, :cond_2e

    .line 917
    .line 918
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 919
    .line 920
    .line 921
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 922
    .line 923
    :cond_2e
    move-object v12, v2

    .line 924
    :cond_2f
    if-nez v12, :cond_38

    .line 925
    .line 926
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 927
    .line 928
    .line 929
    move-result-wide v2

    .line 930
    cmp-long v7, p2, v22

    .line 931
    .line 932
    if-eqz v7, :cond_31

    .line 933
    .line 934
    iget-object v7, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 937
    .line 938
    invoke-virtual {v7, v11}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 939
    .line 940
    .line 941
    move-result-object v7

    .line 942
    iget-wide v9, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 943
    .line 944
    cmp-long v7, v9, v20

    .line 945
    .line 946
    if-eqz v7, :cond_31

    .line 947
    .line 948
    add-long/2addr v9, v2

    .line 949
    cmp-long v7, v9, p2

    .line 950
    .line 951
    if-gez v7, :cond_30

    .line 952
    .line 953
    goto :goto_17

    .line 954
    :cond_30
    const/4 v15, 0x0

    .line 955
    return-object v15

    .line 956
    :cond_31
    :goto_17
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 957
    .line 958
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 959
    .line 960
    .line 961
    :try_start_0
    invoke-static {}, Landroidx/core/os/TraceCompat;->isEnabled()Z

    .line 962
    .line 963
    .line 964
    move-result v9

    .line 965
    if-eqz v9, :cond_32

    .line 966
    .line 967
    const-string v9, "RV onCreateViewHolder type=0x%X"

    .line 968
    .line 969
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 970
    .line 971
    .line 972
    move-result-object v10

    .line 973
    move/from16 v12, v16

    .line 974
    .line 975
    new-array v13, v12, [Ljava/lang/Object;

    .line 976
    .line 977
    const/16 v26, 0x0

    .line 978
    .line 979
    aput-object v10, v13, v26

    .line 980
    .line 981
    invoke-static {v9, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v9

    .line 985
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    :cond_32
    invoke-virtual {v7, v4, v11}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 989
    .line 990
    .line 991
    move-result-object v12

    .line 992
    iget-object v7, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 993
    .line 994
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 995
    .line 996
    .line 997
    move-result-object v9

    .line 998
    if-nez v9, :cond_35

    .line 999
    .line 1000
    iput v11, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    .line 1002
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1003
    .line 1004
    .line 1005
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 1006
    .line 1007
    if-eqz v9, :cond_33

    .line 1008
    .line 1009
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v7

    .line 1013
    if-eqz v7, :cond_33

    .line 1014
    .line 1015
    new-instance v9, Ljava/lang/ref/WeakReference;

    .line 1016
    .line 1017
    invoke-direct {v9, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1018
    .line 1019
    .line 1020
    iput-object v9, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 1021
    .line 1022
    :cond_33
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1023
    .line 1024
    .line 1025
    move-result-wide v9

    .line 1026
    iget-object v7, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 1027
    .line 1028
    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1029
    .line 1030
    sub-long/2addr v9, v2

    .line 1031
    invoke-virtual {v7, v11}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v2

    .line 1035
    iget-wide v13, v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 1036
    .line 1037
    cmp-long v3, v13, v20

    .line 1038
    .line 1039
    if-nez v3, :cond_34

    .line 1040
    .line 1041
    goto :goto_18

    .line 1042
    :cond_34
    div-long v13, v13, v18

    .line 1043
    .line 1044
    mul-long v13, v13, v24

    .line 1045
    .line 1046
    div-long v9, v9, v18

    .line 1047
    .line 1048
    add-long/2addr v9, v13

    .line 1049
    :goto_18
    iput-wide v9, v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    .line 1050
    .line 1051
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->sVerboseLoggingEnabled:Z

    .line 1052
    .line 1053
    if-eqz v2, :cond_38

    .line 1054
    .line 1055
    const-string v2, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    .line 1056
    .line 1057
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    goto :goto_19

    .line 1061
    :cond_35
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1062
    .line 1063
    const-string v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    .line 1064
    .line 1065
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    :catchall_0
    move-exception v0

    .line 1070
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1071
    .line 1072
    .line 1073
    throw v0

    .line 1074
    :cond_36
    move v2, v11

    .line 1075
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1076
    .line 1077
    const-string v3, "(offset:"

    .line 1078
    .line 1079
    const-string v6, ").state:"

    .line 1080
    .line 1081
    const-string v7, "Inconsistency detected. Invalid item position "

    .line 1082
    .line 1083
    invoke-static {v7, v1, v3, v2, v6}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 1088
    .line 1089
    .line 1090
    move-result v2

    .line 1091
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v2

    .line 1098
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    throw v0

    .line 1109
    :cond_37
    const-wide/16 v24, 0x3

    .line 1110
    .line 1111
    const/16 v27, 0x2

    .line 1112
    .line 1113
    :cond_38
    :goto_19
    iget-object v2, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1114
    .line 1115
    if-eqz v6, :cond_39

    .line 1116
    .line 1117
    iget-boolean v3, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 1118
    .line 1119
    if-nez v3, :cond_39

    .line 1120
    .line 1121
    iget v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1122
    .line 1123
    and-int/lit16 v7, v3, 0x2000

    .line 1124
    .line 1125
    if-eqz v7, :cond_39

    .line 1126
    .line 1127
    and-int/lit16 v3, v3, -0x2001

    .line 1128
    .line 1129
    iput v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1130
    .line 1131
    iget-boolean v3, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 1132
    .line 1133
    if-eqz v3, :cond_39

    .line 1134
    .line 1135
    invoke-static {v12}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1136
    .line 1137
    .line 1138
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 1139
    .line 1140
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1144
    .line 1145
    .line 1146
    new-instance v3, Landroidx/compose/material3/FabPlacement;

    .line 1147
    .line 1148
    move/from16 v7, v27

    .line 1149
    .line 1150
    const/4 v9, 0x0

    .line 1151
    invoke-direct {v3, v7, v9}, Landroidx/compose/material3/FabPlacement;-><init>(IB)V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v3, v12}, Landroidx/compose/material3/FabPlacement;->setFrom(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v4, v12, v3}, Landroidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/compose/material3/FabPlacement;)V

    .line 1158
    .line 1159
    .line 1160
    :cond_39
    iget-boolean v3, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 1161
    .line 1162
    if-eqz v3, :cond_3a

    .line 1163
    .line 1164
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    .line 1165
    .line 1166
    .line 1167
    move-result v3

    .line 1168
    if-eqz v3, :cond_3a

    .line 1169
    .line 1170
    iput v1, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 1171
    .line 1172
    goto :goto_1a

    .line 1173
    :cond_3a
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v3

    .line 1177
    if-eqz v3, :cond_3d

    .line 1178
    .line 1179
    iget v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1180
    .line 1181
    const/16 v27, 0x2

    .line 1182
    .line 1183
    and-int/lit8 v3, v3, 0x2

    .line 1184
    .line 1185
    if-eqz v3, :cond_3b

    .line 1186
    .line 1187
    goto :goto_1b

    .line 1188
    :cond_3b
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    .line 1189
    .line 1190
    .line 1191
    move-result v3

    .line 1192
    if-eqz v3, :cond_3c

    .line 1193
    .line 1194
    goto :goto_1b

    .line 1195
    :cond_3c
    :goto_1a
    const/4 v9, 0x0

    .line 1196
    const/4 v14, 0x1

    .line 1197
    const/16 v26, 0x0

    .line 1198
    .line 1199
    goto/16 :goto_26

    .line 1200
    .line 1201
    :cond_3d
    :goto_1b
    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 1202
    .line 1203
    if-eqz v3, :cond_3e

    .line 1204
    .line 1205
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    .line 1206
    .line 1207
    .line 1208
    move-result v3

    .line 1209
    if-nez v3, :cond_3f

    .line 1210
    .line 1211
    :cond_3e
    const/4 v15, 0x0

    .line 1212
    goto :goto_1d

    .line 1213
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1214
    .line 1215
    const-string v1, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    .line 1216
    .line 1217
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v1

    .line 1227
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1228
    .line 1229
    .line 1230
    :goto_1c
    const/4 v15, 0x0

    .line 1231
    return-object v15

    .line 1232
    :goto_1d
    iget-object v3, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 1233
    .line 1234
    const/4 v9, 0x0

    .line 1235
    invoke-virtual {v3, v1, v9}, Landroidx/compose/ui/node/RulerTrackingMap;->findPositionOffset(II)I

    .line 1236
    .line 1237
    .line 1238
    move-result v3

    .line 1239
    iput-object v15, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1240
    .line 1241
    iput-object v4, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1242
    .line 1243
    iget v7, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 1244
    .line 1245
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1246
    .line 1247
    .line 1248
    move-result-wide v8

    .line 1249
    cmp-long v10, p2, v22

    .line 1250
    .line 1251
    if-eqz v10, :cond_40

    .line 1252
    .line 1253
    iget-object v10, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 1254
    .line 1255
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1256
    .line 1257
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v7

    .line 1261
    iget-wide v10, v7, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 1262
    .line 1263
    cmp-long v7, v10, v20

    .line 1264
    .line 1265
    if-eqz v7, :cond_40

    .line 1266
    .line 1267
    add-long/2addr v10, v8

    .line 1268
    cmp-long v7, v10, p2

    .line 1269
    .line 1270
    if-gez v7, :cond_3c

    .line 1271
    .line 1272
    :cond_40
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v7

    .line 1276
    if-eqz v7, :cond_41

    .line 1277
    .line 1278
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1279
    .line 1280
    .line 1281
    move-result v7

    .line 1282
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v10

    .line 1286
    invoke-static {v4, v2, v7, v10}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1287
    .line 1288
    .line 1289
    const/4 v7, 0x1

    .line 1290
    goto :goto_1e

    .line 1291
    :cond_41
    const/4 v7, 0x0

    .line 1292
    :goto_1e
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1293
    .line 1294
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1295
    .line 1296
    .line 1297
    iget-object v11, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1298
    .line 1299
    if-nez v11, :cond_42

    .line 1300
    .line 1301
    const/4 v11, 0x1

    .line 1302
    goto :goto_1f

    .line 1303
    :cond_42
    const/4 v11, 0x0

    .line 1304
    :goto_1f
    if-eqz v11, :cond_44

    .line 1305
    .line 1306
    iput v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 1307
    .line 1308
    iget-boolean v13, v10, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 1309
    .line 1310
    if-eqz v13, :cond_43

    .line 1311
    .line 1312
    invoke-virtual {v10, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    .line 1313
    .line 1314
    .line 1315
    move-result-wide v13

    .line 1316
    iput-wide v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 1317
    .line 1318
    :cond_43
    iget v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1319
    .line 1320
    and-int/lit16 v13, v13, -0x208

    .line 1321
    .line 1322
    const/4 v14, 0x1

    .line 1323
    or-int/2addr v13, v14

    .line 1324
    iput v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1325
    .line 1326
    invoke-static {}, Landroidx/core/os/TraceCompat;->isEnabled()Z

    .line 1327
    .line 1328
    .line 1329
    move-result v13

    .line 1330
    if-eqz v13, :cond_44

    .line 1331
    .line 1332
    iget v13, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 1333
    .line 1334
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v13

    .line 1338
    new-array v15, v14, [Ljava/lang/Object;

    .line 1339
    .line 1340
    const/16 v26, 0x0

    .line 1341
    .line 1342
    aput-object v13, v15, v26

    .line 1343
    .line 1344
    const-string v13, "RV onBindViewHolder type=0x%X"

    .line 1345
    .line 1346
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v13

    .line 1350
    invoke-static {v13}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1351
    .line 1352
    .line 1353
    goto :goto_20

    .line 1354
    :cond_44
    const/16 v26, 0x0

    .line 1355
    .line 1356
    :goto_20
    iput-object v10, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1357
    .line 1358
    sget-boolean v13, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    .line 1359
    .line 1360
    if-eqz v13, :cond_47

    .line 1361
    .line 1362
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v13

    .line 1366
    if-nez v13, :cond_46

    .line 1367
    .line 1368
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1369
    .line 1370
    .line 1371
    move-result v13

    .line 1372
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 1373
    .line 1374
    .line 1375
    move-result v14

    .line 1376
    if-ne v13, v14, :cond_45

    .line 1377
    .line 1378
    goto :goto_21

    .line 1379
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1380
    .line 1381
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    .line 1382
    .line 1383
    .line 1384
    move-result v1

    .line 1385
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1386
    .line 1387
    .line 1388
    move-result v2

    .line 1389
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    const-string v4, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    .line 1392
    .line 1393
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1397
    .line 1398
    .line 1399
    const-string v1, ", attached to window: "

    .line 1400
    .line 1401
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    .line 1407
    const-string v1, ", holder: "

    .line 1408
    .line 1409
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    .line 1411
    .line 1412
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v1

    .line 1419
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    throw v0

    .line 1423
    :cond_46
    :goto_21
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v13

    .line 1427
    if-nez v13, :cond_47

    .line 1428
    .line 1429
    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    .line 1430
    .line 1431
    .line 1432
    move-result v13

    .line 1433
    if-nez v13, :cond_48

    .line 1434
    .line 1435
    :cond_47
    const/4 v15, 0x0

    .line 1436
    goto :goto_22

    .line 1437
    :cond_48
    const-string v0, "Attempting to bind attached holder with no parent (AKA temp detached): "

    .line 1438
    .line 1439
    invoke-static {v12, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1440
    .line 1441
    .line 1442
    goto/16 :goto_1c

    .line 1443
    .line 1444
    :goto_22
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v13

    .line 1448
    invoke-virtual {v10, v12, v3, v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 1449
    .line 1450
    .line 1451
    if-eqz v11, :cond_4b

    .line 1452
    .line 1453
    iget-object v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/ArrayList;

    .line 1454
    .line 1455
    if-eqz v3, :cond_49

    .line 1456
    .line 1457
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1458
    .line 1459
    .line 1460
    :cond_49
    iget v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1461
    .line 1462
    and-int/lit16 v3, v3, -0x401

    .line 1463
    .line 1464
    iput v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 1465
    .line 1466
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v3

    .line 1470
    instance-of v10, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1471
    .line 1472
    if-eqz v10, :cond_4a

    .line 1473
    .line 1474
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1475
    .line 1476
    const/4 v14, 0x1

    .line 1477
    iput-boolean v14, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 1478
    .line 1479
    :cond_4a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1480
    .line 1481
    .line 1482
    :cond_4b
    if-eqz v7, :cond_4c

    .line 1483
    .line 1484
    invoke-static {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->access$400(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1485
    .line 1486
    .line 1487
    :cond_4c
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    .line 1488
    .line 1489
    .line 1490
    move-result-wide v10

    .line 1491
    iget-object v0, v0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->entities:Ljava/lang/Object;

    .line 1492
    .line 1493
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1494
    .line 1495
    iget v3, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 1496
    .line 1497
    sub-long/2addr v10, v8

    .line 1498
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v0

    .line 1502
    iget-wide v7, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 1503
    .line 1504
    cmp-long v3, v7, v20

    .line 1505
    .line 1506
    if-nez v3, :cond_4d

    .line 1507
    .line 1508
    goto :goto_23

    .line 1509
    :cond_4d
    div-long v7, v7, v18

    .line 1510
    .line 1511
    mul-long v7, v7, v24

    .line 1512
    .line 1513
    div-long v10, v10, v18

    .line 1514
    .line 1515
    add-long/2addr v10, v7

    .line 1516
    :goto_23
    iput-wide v10, v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    .line 1517
    .line 1518
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1519
    .line 1520
    if-eqz v0, :cond_53

    .line 1521
    .line 1522
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 1523
    .line 1524
    .line 1525
    move-result v0

    .line 1526
    if-eqz v0, :cond_53

    .line 1527
    .line 1528
    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    .line 1529
    .line 1530
    .line 1531
    move-result v0

    .line 1532
    const/4 v14, 0x1

    .line 1533
    if-nez v0, :cond_4e

    .line 1534
    .line 1535
    invoke-virtual {v2, v14}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1536
    .line 1537
    .line 1538
    :cond_4e
    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->mAccessibilityDelegate:Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 1539
    .line 1540
    if-nez v0, :cond_4f

    .line 1541
    .line 1542
    goto :goto_25

    .line 1543
    :cond_4f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v0

    .line 1547
    instance-of v3, v0, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 1548
    .line 1549
    if-eqz v3, :cond_52

    .line 1550
    .line 1551
    move-object v3, v0

    .line 1552
    check-cast v3, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 1553
    .line 1554
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    .line 1555
    .line 1556
    .line 1557
    move-result-object v7

    .line 1558
    if-nez v7, :cond_50

    .line 1559
    .line 1560
    move-object v8, v15

    .line 1561
    goto :goto_24

    .line 1562
    :cond_50
    instance-of v8, v7, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 1563
    .line 1564
    if-eqz v8, :cond_51

    .line 1565
    .line 1566
    check-cast v7, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    .line 1567
    .line 1568
    iget-object v8, v7, Landroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 1569
    .line 1570
    goto :goto_24

    .line 1571
    :cond_51
    new-instance v8, Landroidx/core/view/AccessibilityDelegateCompat;

    .line 1572
    .line 1573
    invoke-direct {v8, v7}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    .line 1574
    .line 1575
    .line 1576
    :goto_24
    if-eqz v8, :cond_52

    .line 1577
    .line 1578
    if-eq v8, v3, :cond_52

    .line 1579
    .line 1580
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/WeakHashMap;

    .line 1581
    .line 1582
    invoke-virtual {v3, v2, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    :cond_52
    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 1586
    .line 1587
    .line 1588
    goto :goto_25

    .line 1589
    :cond_53
    const/4 v14, 0x1

    .line 1590
    :goto_25
    iget-boolean v0, v5, Landroidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 1591
    .line 1592
    if-eqz v0, :cond_54

    .line 1593
    .line 1594
    iput v1, v12, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 1595
    .line 1596
    :cond_54
    move v9, v14

    .line 1597
    :goto_26
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v0

    .line 1601
    if-nez v0, :cond_55

    .line 1602
    .line 1603
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v0

    .line 1607
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1608
    .line 1609
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1610
    .line 1611
    .line 1612
    goto :goto_27

    .line 1613
    :cond_55
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 1614
    .line 1615
    .line 1616
    move-result v1

    .line 1617
    if-nez v1, :cond_56

    .line 1618
    .line 1619
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v0

    .line 1623
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1624
    .line 1625
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1626
    .line 1627
    .line 1628
    goto :goto_27

    .line 1629
    :cond_56
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1630
    .line 1631
    :goto_27
    iput-object v12, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1632
    .line 1633
    if-eqz v6, :cond_57

    .line 1634
    .line 1635
    if-eqz v9, :cond_57

    .line 1636
    .line 1637
    move v9, v14

    .line 1638
    goto :goto_28

    .line 1639
    :cond_57
    move/from16 v9, v26

    .line 1640
    .line 1641
    :goto_28
    iput-boolean v9, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 1642
    .line 1643
    return-object v12

    .line 1644
    :cond_58
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 1645
    .line 1646
    const-string v2, "("

    .line 1647
    .line 1648
    const-string v3, "). Item count:"

    .line 1649
    .line 1650
    const-string v6, "Invalid item position "

    .line 1651
    .line 1652
    invoke-static {v6, v1, v2, v1, v3}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v1

    .line 1656
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 1657
    .line 1658
    .line 1659
    move-result v2

    .line 1660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1661
    .line 1662
    .line 1663
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v2

    .line 1667
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    .line 1669
    .line 1670
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1671
    .line 1672
    .line 1673
    move-result-object v1

    .line 1674
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 1675
    .line 1676
    .line 1677
    throw v0
.end method

.method public unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->monitor:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->config:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x0

    .line 21
    iput-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/apache/james/mime4j/stream/MimeTokenStream;

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    iput-boolean p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 25
    .line 26
    iget p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 27
    .line 28
    and-int/lit8 p0, p0, -0x21

    .line 29
    .line 30
    iput p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 31
    .line 32
    return-void
.end method

.method public updateViewCacheSize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->fieldBuilder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->currentStateMachine:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->state:I

    .line 18
    .line 19
    add-int/2addr v2, v1

    .line 20
    iput v2, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    :goto_1
    if-ltz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v3, p0, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recursionMode:I

    .line 35
    .line 36
    if-le v2, v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/stream/MimeTokenStream;->recycleCachedViewAt(I)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v1, v1, -0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    return-void
.end method
