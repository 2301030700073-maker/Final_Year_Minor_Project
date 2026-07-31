.class public final Landroidx/compose/ui/text/input/GapBuffer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public buffer:Ljava/lang/Object;

.field public capacity:I

.field public gapEnd:I

.field public gapStart:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 17
    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->$r8$classId:I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->$r8$classId:I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 20
    sget-object v0, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    iput-object p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 21
    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->wrapper:Landroidx/compose/ui/text/input/GapBuffer;

    return-void
.end method

.method public constructor <init>(Landroidx/glance/appwidget/protobuf/CodedInputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 9
    .line 10
    sget-object v0, Landroidx/glance/appwidget/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p0, p1, Landroidx/glance/appwidget/protobuf/CodedInputStream;->wrapper:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .locals 5

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-ltz p2, :cond_2

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 6
    .line 7
    mul-int/lit8 v1, v0, 0x2

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, [I

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    new-array v0, v3, [I

    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length v4, v2

    .line 26
    if-lt v1, v4, :cond_1

    .line 27
    .line 28
    mul-int/2addr v0, v3

    .line 29
    new-array v0, v0, [I

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 32
    .line 33
    array-length v3, v2

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, [I

    .line 41
    .line 42
    aput p1, v0, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    aput p2, v0, v1

    .line 47
    .line 48
    iget p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 49
    .line 50
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const-string p0, "Pixel distance must be non-negative"

    .line 56
    .line 57
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    const-string p0, "Layout positions must be non-negative"

    .line 62
    .line 63
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, [I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    .line 16
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/node/RulerTrackingMap;->hasPendingUpdates()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroidx/compose/ui/text/input/GapBuffer;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 53
    .line 54
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 55
    .line 56
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/compose/ui/text/input/GapBuffer;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 62
    .line 63
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 64
    .line 65
    if-le p0, v1, :cond_3

    .line 66
    .line 67
    iput p0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 68
    .line 69
    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 70
    .line 71
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public gapLength()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 2
    .line 3
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 4
    .line 5
    sub-int/2addr v0, p0

    .line 6
    return v0
.end method

.method public getFieldNumber()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->$r8$classId:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 15
    .line 16
    iput v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 28
    .line 29
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 32
    .line 33
    if-ne v0, p0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    ushr-int/lit8 v1, v0, 0x3

    .line 37
    .line 38
    :cond_2
    :goto_1
    return v1

    .line 39
    :pswitch_0
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 44
    .line 45
    iput v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 57
    .line 58
    :goto_2
    if-eqz v0, :cond_5

    .line 59
    .line 60
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 61
    .line 62
    if-ne v0, p0, :cond_4

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    ushr-int/lit8 v1, v0, 0x3

    .line 66
    .line 67
    :cond_5
    :goto_3
    return v1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgs:[I

    .line 6
    .line 7
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 8
    .line 9
    add-int/2addr p0, p1

    .line 10
    aget p0, v0, p0

    .line 11
    .line 12
    return p0
.end method

.method public getObject-PtL-UHM(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 6
    .line 7
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 8
    .line 9
    add-int/2addr p0, p1

    .line 10
    aget-object p0, v0, p0

    .line 11
    .line 12
    return-object p0
.end method

.method public getTag()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 2
    .line 3
    return p0
.end method

.method public mergeGroupFieldInternal(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 4
    .line 5
    ushr-int/lit8 v1, v1, 0x3

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    or-int/lit8 v1, v1, 0x4

    .line 10
    .line 11
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 17
    .line 18
    iget p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    new-instance p1, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 26
    .line 27
    const-string p2, "Failed to parse the message."

    .line 28
    .line 29
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 35
    .line 36
    throw p1
.end method

.method public mergeMessageFieldInternal(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/Schema;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;->recursionDepth:I

    .line 10
    .line 11
    const/16 v3, 0x64

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->pushLimit(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;->recursionDepth:I

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    iput v2, v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;->recursionDepth:I

    .line 24
    .line 25
    invoke-interface {p2, p1, p0, p3}, Landroidx/glance/appwidget/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;Landroidx/glance/appwidget/protobuf/ExtensionRegistryLite;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    invoke-virtual {v0, p0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 30
    .line 31
    .line 32
    iget p0, v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;->recursionDepth:I

    .line 33
    .line 34
    add-int/lit8 p0, p0, -0x1

    .line 35
    .line 36
    iput p0, v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;->recursionDepth:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->popLimit(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 43
    .line 44
    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public readBool()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readBool()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public readBoolList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readBool()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readBool()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 82
    .line 83
    return-void
.end method

.method public readBoolList(Ljava/util/List;)V
    .locals 3

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 85
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition$1(I)V

    return-void

    .line 91
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readBool()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 95
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_2

    .line 96
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readBytes()Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 16
    .line 17
    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 18
    .line 19
    sub-int/2addr v2, v3

    .line 20
    if-gt v1, v2, :cond_0

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0, v3, v1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 29
    .line 30
    add-int/2addr v2, v1

    .line 31
    iput v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    if-nez v1, :cond_1

    .line 35
    .line 36
    sget-object v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathOneChunk(I)[B

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    array-length p0, v2

    .line 47
    invoke-static {v2, v3, p0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->copyFrom([BII)Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 53
    .line 54
    iget v4, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 55
    .line 56
    sub-int v5, v4, v2

    .line 57
    .line 58
    iget v6, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 59
    .line 60
    add-int/2addr v6, v4

    .line 61
    iput v6, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->totalBytesRetired:I

    .line 62
    .line 63
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 64
    .line 65
    iput v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 66
    .line 67
    sub-int v4, v1, v5

    .line 68
    .line 69
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPathRemainingChunks(I)Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-array v1, v1, [B

    .line 74
    .line 75
    invoke-static {v0, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, [B

    .line 93
    .line 94
    array-length v2, v0

    .line 95
    invoke-static {v0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    array-length v0, v0

    .line 99
    add-int/2addr v5, v0

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 102
    .line 103
    new-instance v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 104
    .line 105
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-object v0
.end method

.method public readBytes()Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;
    .locals 1

    const/4 v0, 0x2

    .line 109
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 110
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast p0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readBytes()Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    move-result-object p0

    return-object p0
.end method

.method public readBytesList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/glance/appwidget/protobuf/ByteString$LiteralByteString;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    move-object v2, p1

    .line 17
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 34
    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    .line 37
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    throw p0
.end method

.method public readBytesList(Ljava/util/List;)V
    .locals 3

    .line 45
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 48
    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 49
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_0

    .line 50
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void

    .line 51
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public readDouble()D
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readDouble()D

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public readDoubleList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-ne v1, p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    and-int/lit8 v1, p0, 0x7

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, p0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readDouble()D

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v2, p1

    .line 37
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-lt p0, v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 50
    .line 51
    const-string p1, "Failed to parse the message."

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    throw p0

    .line 62
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readDouble()D

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v2, p1

    .line 71
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    :goto_0
    return-void

    .line 83
    :cond_4
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 88
    .line 89
    if-eq v1, v2, :cond_3

    .line 90
    .line 91
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 92
    .line 93
    return-void
.end method

.method public readDoubleList(Ljava/util/List;)V
    .locals 4

    .line 94
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 95
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 p0, 0x2

    if-ne v1, p0, :cond_2

    .line 96
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result p0

    and-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p0

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 101
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 102
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-void

    .line 104
    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 105
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_3

    .line 106
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readEnum()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readEnum()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public readEnumList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readEnum()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readEnum()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 82
    .line 83
    return-void
.end method

.method public readEnumList(Ljava/util/List;)V
    .locals 3

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 85
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readEnum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition$1(I)V

    return-void

    .line 91
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readEnum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 95
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_2

    .line 96
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readField$1(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string/jumbo p0, "unsupported field type."

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :pswitch_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt64()J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt32()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readStringRequireUtf8()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt64()J

    .line 44
    .line 45
    .line 46
    move-result-wide p0

    .line 47
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt32()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_5
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed64()J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_6
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed32()I

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_7
    const/4 p1, 0x2

    .line 80
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p0, p1, p3}, Landroidx/compose/ui/text/input/GapBuffer;->readMessage$1(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :pswitch_8
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readInt64()J

    .line 95
    .line 96
    .line 97
    move-result-wide p0

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :pswitch_9
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readInt32()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    :pswitch_a
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readFloat()F

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :pswitch_b
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed64()J

    .line 122
    .line 123
    .line 124
    move-result-wide p0

    .line 125
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    return-object p0

    .line 130
    :pswitch_c
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed32()I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :pswitch_d
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readEnum()I

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :pswitch_e
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readDouble()D

    .line 149
    .line 150
    .line 151
    move-result-wide p0

    .line 152
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :pswitch_f
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0

    .line 162
    :pswitch_10
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readBool()Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readFixed32()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readFixed32()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public readFixed32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFixed32()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, p1

    .line 24
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 41
    .line 42
    if-eq v1, v2, :cond_0

    .line 43
    .line 44
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    and-int/lit8 v1, p0, 0x3

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v1, p0

    .line 65
    :cond_4
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFixed32()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object v2, p1

    .line 74
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 75
    .line 76
    invoke-virtual {v2, p0}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-lt p0, v1, :cond_4

    .line 84
    .line 85
    :goto_0
    return-void

    .line 86
    :cond_5
    new-instance p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 87
    .line 88
    const-string p1, "Failed to parse the message."

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .locals 3

    .line 94
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 95
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 99
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_0

    .line 100
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void

    .line 101
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 102
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result p0

    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_5

    .line 103
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p0

    .line 104
    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v1, :cond_4

    :goto_0
    return-void

    .line 106
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public readFixed64()J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readFixed64()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public readFixed64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-ne v1, p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    and-int/lit8 v1, p0, 0x7

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, p0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFixed64()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v2, p1

    .line 37
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-lt p0, v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 50
    .line 51
    const-string p1, "Failed to parse the message."

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    throw p0

    .line 62
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFixed64()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v2, p1

    .line 71
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    :goto_0
    return-void

    .line 83
    :cond_4
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 88
    .line 89
    if-eq v1, v2, :cond_3

    .line 90
    .line 91
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 92
    .line 93
    return-void
.end method

.method public readFixed64List(Ljava/util/List;)V
    .locals 4

    .line 94
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 95
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 p0, 0x2

    if-ne v1, p0, :cond_2

    .line 96
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result p0

    and-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p0

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 101
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 102
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readFixed64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-void

    .line 104
    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 105
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_3

    .line 106
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readFloat()F
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readFloat()F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public readFloatList(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFloat()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, p1

    .line 24
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 41
    .line 42
    if-eq v1, v2, :cond_0

    .line 43
    .line 44
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    and-int/lit8 v1, p0, 0x3

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v1, p0

    .line 65
    :cond_4
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readFloat()F

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object v2, p1

    .line 74
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 75
    .line 76
    invoke-virtual {v2, p0}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-lt p0, v1, :cond_4

    .line 84
    .line 85
    :goto_0
    return-void

    .line 86
    :cond_5
    new-instance p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 87
    .line 88
    const-string p1, "Failed to parse the message."

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public readFloatList(Ljava/util/List;)V
    .locals 3

    .line 94
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 95
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 99
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_0

    .line 100
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void

    .line 101
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 102
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result p0

    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_5

    .line 103
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p0

    .line 104
    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v1, :cond_4

    :goto_0
    return-void

    .line 106
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public readGroup$1(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 4
    .line 5
    ushr-int/lit8 v1, v1, 0x3

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    or-int/lit8 v1, v1, 0x4

    .line 10
    .line 11
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 12
    .line 13
    :try_start_0
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {p1, v1, p0, p2}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v1}, Landroidx/datastore/preferences/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 24
    .line 25
    iget p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    if-ne p1, p2, :cond_0

    .line 28
    .line 29
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    :try_start_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    iput v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 39
    .line 40
    throw p1
.end method

.method public readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/input/GapBuffer;->readGroup$1(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public readGroupList(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v2, v1, 0x7

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-ne v2, v3, :cond_3

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/text/input/GapBuffer;->readGroup$1(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eq v2, v1, :cond_0

    .line 35
    .line 36
    iput v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void

    .line 39
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    throw p0
.end method

.method public readInt32()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readInt32()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public readInt32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readInt32()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readInt32()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 82
    .line 83
    return-void
.end method

.method public readInt32List(Ljava/util/List;)V
    .locals 3

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 85
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition$1(I)V

    return-void

    .line 91
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 95
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_2

    .line 96
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readInt64()J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public readInt64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readInt64()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readInt64()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 82
    .line 83
    return-void
.end method

.method public readInt64List(Ljava/util/List;)V
    .locals 5

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 85
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition$1(I)V

    return-void

    .line 91
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 95
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_2

    .line 96
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readMessage$1(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 10
    .line 11
    const/16 v3, 0x64

    .line 12
    .line 13
    if-ge v2, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/Schema;->newInstance()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v3, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 24
    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    iput v3, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 28
    .line 29
    invoke-interface {p1, v2, p0, p2}, Landroidx/datastore/preferences/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v2}, Landroidx/datastore/preferences/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    invoke-virtual {v0, p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->checkLastTagWas(I)V

    .line 37
    .line 38
    .line 39
    iget p0, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 40
    .line 41
    add-int/lit8 p0, p0, -0x1

    .line 42
    .line 43
    iput p0, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->recursionDepth:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_0
    new-instance p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 50
    .line 51
    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/input/GapBuffer;->readMessage$1(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public readSFixed32()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSFixed32()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public readSFixed32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-ne v1, v2, :cond_2

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSFixed32()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, p1

    .line 24
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 41
    .line 42
    if-eq v1, v2, :cond_0

    .line 43
    .line 44
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    and-int/lit8 v1, p0, 0x3

    .line 57
    .line 58
    if-nez v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v1, p0

    .line 65
    :cond_4
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSFixed32()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    move-object v2, p1

    .line 74
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 75
    .line 76
    invoke-virtual {v2, p0}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-lt p0, v1, :cond_4

    .line 84
    .line 85
    :goto_0
    return-void

    .line 86
    :cond_5
    new-instance p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 87
    .line 88
    const-string p1, "Failed to parse the message."

    .line 89
    .line 90
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .locals 3

    .line 94
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 95
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSFixed32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 99
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_0

    .line 100
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void

    .line 101
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 102
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result p0

    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_5

    .line 103
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p0

    .line 104
    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSFixed32()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v1, :cond_4

    :goto_0
    return-void

    .line 106
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public readSFixed64()J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSFixed64()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public readSFixed64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_3

    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-ne v1, p0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    and-int/lit8 v1, p0, 0x7

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, p0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSFixed64()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v2, p1

    .line 37
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 38
    .line 39
    invoke-virtual {v2, p0}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-lt p0, v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance p0, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 50
    .line 51
    const-string p1, "Failed to parse the message."

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    throw p0

    .line 62
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSFixed64()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v2, p1

    .line 71
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    :goto_0
    return-void

    .line 83
    :cond_4
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 88
    .line 89
    if-eq v1, v2, :cond_3

    .line 90
    .line 91
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 92
    .line 93
    return-void
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .locals 4

    .line 94
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 95
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 p0, 0x2

    if-ne v1, p0, :cond_2

    .line 96
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result p0

    and-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, p0

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result p0

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->parseFailure()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 101
    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 102
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSFixed64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-void

    .line 104
    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 105
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_3

    .line 106
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readSInt32()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSInt32()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public readSInt32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSInt32()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSInt32()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 82
    .line 83
    return-void
.end method

.method public readSInt32List(Ljava/util/List;)V
    .locals 3

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 85
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition$1(I)V

    return-void

    .line 91
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 95
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_2

    .line 96
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readSInt64()J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSInt64()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public readSInt64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSInt64()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readSInt64()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 82
    .line 83
    return-void
.end method

.method public readSInt64List(Ljava/util/List;)V
    .locals 5

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 85
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition$1(I)V

    return-void

    .line 91
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readSInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 95
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_2

    .line 96
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 18
    .line 19
    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 20
    .line 21
    sub-int/2addr v2, v3

    .line 22
    if-gt v1, v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Ljava/lang/String;

    .line 25
    .line 26
    sget-object v4, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-nez v1, :cond_1

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget v2, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 43
    .line 44
    if-gt v1, v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/lang/String;

    .line 50
    .line 51
    iget v3, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 52
    .line 53
    sget-object v4, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 56
    .line 57
    .line 58
    iget v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 59
    .line 60
    add-int/2addr v0, v1

    .line 61
    iput v0, p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance v2, Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(I)[B

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    sget-object v0, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    invoke-direct {v2, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-object v2
.end method

.method public readStringListInternal(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;Z)V
    .locals 4

    .line 83
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 85
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType(I)V

    .line 87
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_0
    move-object v3, p1

    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 90
    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 91
    iget v3, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v3, :cond_0

    .line 92
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void

    .line 93
    :cond_3
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-ne v1, v2, :cond_5

    .line 11
    .line 12
    instance-of v1, p1, Landroidx/datastore/preferences/protobuf/LazyStringList;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    if-nez p2, :cond_2

    .line 17
    .line 18
    move-object v1, p1

    .line 19
    check-cast v1, Landroidx/datastore/preferences/protobuf/LazyStringList;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v1, p1}, Landroidx/datastore/preferences/protobuf/LazyStringList;->add(Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget p2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 40
    .line 41
    if-eq p1, p2, :cond_0

    .line 42
    .line 43
    iput p1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    if-eqz p2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readStringRequireUtf8()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/GapBuffer;->readString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    :goto_1
    return-void

    .line 67
    :cond_4
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 72
    .line 73
    if-eq v1, v2, :cond_2

    .line 74
    .line 75
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    throw p0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .locals 15

    .line 1
    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->buffer:[B

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawVarint32()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iget v4, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 16
    .line 17
    iget v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->bufferSize:I

    .line 18
    .line 19
    sub-int v6, v5, v4

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    if-gt v3, v6, :cond_0

    .line 23
    .line 24
    if-lez v3, :cond_0

    .line 25
    .line 26
    add-int v5, v4, v3

    .line 27
    .line 28
    iput v5, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    if-nez v3, :cond_1

    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    goto/16 :goto_a

    .line 36
    .line 37
    :cond_1
    if-gt v3, v5, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->refillBuffer(I)V

    .line 40
    .line 41
    .line 42
    iput v3, v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pos:I

    .line 43
    .line 44
    :goto_0
    move v4, v7

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readRawBytesSlowPath(I)[B

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;

    .line 52
    .line 53
    iget v0, v0, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 54
    .line 55
    const-string v5, "buffer length=%d, index=%d, size=%d"

    .line 56
    .line 57
    const/16 v6, -0x10

    .line 58
    .line 59
    const/16 v8, -0x20

    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    const/4 v10, 0x3

    .line 63
    packed-switch v0, :pswitch_data_0

    .line 64
    .line 65
    .line 66
    or-int v0, v4, v3

    .line 67
    .line 68
    array-length v11, v2

    .line 69
    sub-int/2addr v11, v4

    .line 70
    sub-int/2addr v11, v3

    .line 71
    or-int/2addr v0, v11

    .line 72
    if-ltz v0, :cond_c

    .line 73
    .line 74
    add-int v0, v4, v3

    .line 75
    .line 76
    new-array v13, v3, [C

    .line 77
    .line 78
    move v1, v7

    .line 79
    :goto_2
    if-ge v4, v0, :cond_3

    .line 80
    .line 81
    int-to-long v9, v4

    .line 82
    invoke-static {v2, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-ltz v3, :cond_3

    .line 87
    .line 88
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    add-int/lit8 v5, v1, 0x1

    .line 91
    .line 92
    int-to-char v3, v3

    .line 93
    aput-char v3, v13, v1

    .line 94
    .line 95
    move v1, v5

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move v14, v1

    .line 98
    :goto_3
    if-ge v4, v0, :cond_b

    .line 99
    .line 100
    add-int/lit8 v1, v4, 0x1

    .line 101
    .line 102
    int-to-long v9, v4

    .line 103
    invoke-static {v2, v9, v10}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-ltz v9, :cond_5

    .line 108
    .line 109
    add-int/lit8 v3, v14, 0x1

    .line 110
    .line 111
    int-to-char v4, v9

    .line 112
    aput-char v4, v13, v14

    .line 113
    .line 114
    :goto_4
    if-ge v1, v0, :cond_4

    .line 115
    .line 116
    int-to-long v4, v1

    .line 117
    invoke-static {v2, v4, v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-ltz v4, :cond_4

    .line 122
    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    add-int/lit8 v5, v3, 0x1

    .line 126
    .line 127
    int-to-char v4, v4

    .line 128
    aput-char v4, v13, v3

    .line 129
    .line 130
    move v3, v5

    .line 131
    goto :goto_4

    .line 132
    :cond_4
    move v4, v1

    .line 133
    :goto_5
    move v14, v3

    .line 134
    goto :goto_6

    .line 135
    :cond_5
    if-ge v9, v8, :cond_7

    .line 136
    .line 137
    if-ge v1, v0, :cond_6

    .line 138
    .line 139
    add-int/lit8 v4, v4, 0x2

    .line 140
    .line 141
    int-to-long v10, v1

    .line 142
    invoke-static {v2, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    add-int/lit8 v3, v14, 0x1

    .line 147
    .line 148
    invoke-static {v9, v1, v13, v14}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->handleTwoBytes(BB[CI)V

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_6
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    throw v0

    .line 157
    :cond_7
    if-ge v9, v6, :cond_9

    .line 158
    .line 159
    add-int/lit8 v3, v0, -0x1

    .line 160
    .line 161
    if-ge v1, v3, :cond_8

    .line 162
    .line 163
    add-int/lit8 v3, v4, 0x2

    .line 164
    .line 165
    int-to-long v10, v1

    .line 166
    invoke-static {v2, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    add-int/lit8 v4, v4, 0x3

    .line 171
    .line 172
    int-to-long v10, v3

    .line 173
    invoke-static {v2, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    add-int/lit8 v5, v14, 0x1

    .line 178
    .line 179
    invoke-static {v9, v1, v3, v13, v14}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->handleThreeBytes(BBB[CI)V

    .line 180
    .line 181
    .line 182
    move v14, v5

    .line 183
    goto :goto_6

    .line 184
    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    throw v0

    .line 189
    :cond_9
    add-int/lit8 v3, v0, -0x2

    .line 190
    .line 191
    if-ge v1, v3, :cond_a

    .line 192
    .line 193
    add-int/lit8 v3, v4, 0x2

    .line 194
    .line 195
    int-to-long v10, v1

    .line 196
    invoke-static {v2, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    add-int/lit8 v1, v4, 0x3

    .line 201
    .line 202
    int-to-long v11, v3

    .line 203
    invoke-static {v2, v11, v12}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    add-int/lit8 v4, v4, 0x4

    .line 208
    .line 209
    move v3, v9

    .line 210
    int-to-long v8, v1

    .line 211
    invoke-static {v2, v8, v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    move v9, v3

    .line 216
    invoke-static/range {v9 .. v14}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->handleFourBytes(BBBB[CI)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v14, v14, 0x2

    .line 220
    .line 221
    :goto_6
    const/16 v8, -0x20

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    throw v0

    .line 229
    :cond_b
    new-instance v0, Ljava/lang/String;

    .line 230
    .line 231
    invoke-direct {v0, v13, v7, v14}, Ljava/lang/String;-><init>([CII)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_a

    .line 235
    .line 236
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 237
    .line 238
    array-length v2, v2

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    new-array v6, v10, [Ljava/lang/Object;

    .line 252
    .line 253
    aput-object v2, v6, v7

    .line 254
    .line 255
    aput-object v4, v6, v9

    .line 256
    .line 257
    aput-object v3, v6, v1

    .line 258
    .line 259
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw v0

    .line 267
    :pswitch_0
    or-int v0, v4, v3

    .line 268
    .line 269
    array-length v8, v2

    .line 270
    sub-int/2addr v8, v4

    .line 271
    sub-int/2addr v8, v3

    .line 272
    or-int/2addr v0, v8

    .line 273
    if-ltz v0, :cond_16

    .line 274
    .line 275
    add-int v0, v4, v3

    .line 276
    .line 277
    new-array v12, v3, [C

    .line 278
    .line 279
    move v1, v7

    .line 280
    :goto_7
    if-ge v4, v0, :cond_d

    .line 281
    .line 282
    aget-byte v3, v2, v4

    .line 283
    .line 284
    if-ltz v3, :cond_d

    .line 285
    .line 286
    add-int/lit8 v4, v4, 0x1

    .line 287
    .line 288
    add-int/lit8 v5, v1, 0x1

    .line 289
    .line 290
    int-to-char v3, v3

    .line 291
    aput-char v3, v12, v1

    .line 292
    .line 293
    move v1, v5

    .line 294
    goto :goto_7

    .line 295
    :cond_d
    move v13, v1

    .line 296
    :goto_8
    if-ge v4, v0, :cond_15

    .line 297
    .line 298
    add-int/lit8 v1, v4, 0x1

    .line 299
    .line 300
    aget-byte v8, v2, v4

    .line 301
    .line 302
    if-ltz v8, :cond_f

    .line 303
    .line 304
    add-int/lit8 v3, v13, 0x1

    .line 305
    .line 306
    int-to-char v4, v8

    .line 307
    aput-char v4, v12, v13

    .line 308
    .line 309
    :goto_9
    if-ge v1, v0, :cond_e

    .line 310
    .line 311
    aget-byte v4, v2, v1

    .line 312
    .line 313
    if-ltz v4, :cond_e

    .line 314
    .line 315
    add-int/lit8 v1, v1, 0x1

    .line 316
    .line 317
    add-int/lit8 v5, v3, 0x1

    .line 318
    .line 319
    int-to-char v4, v4

    .line 320
    aput-char v4, v12, v3

    .line 321
    .line 322
    move v3, v5

    .line 323
    goto :goto_9

    .line 324
    :cond_e
    move v4, v1

    .line 325
    move v13, v3

    .line 326
    const/16 v3, -0x20

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_f
    const/16 v3, -0x20

    .line 330
    .line 331
    if-ge v8, v3, :cond_11

    .line 332
    .line 333
    if-ge v1, v0, :cond_10

    .line 334
    .line 335
    add-int/lit8 v4, v4, 0x2

    .line 336
    .line 337
    aget-byte v1, v2, v1

    .line 338
    .line 339
    add-int/lit8 v5, v13, 0x1

    .line 340
    .line 341
    invoke-static {v8, v1, v12, v13}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->handleTwoBytes(BB[CI)V

    .line 342
    .line 343
    .line 344
    move v13, v5

    .line 345
    goto :goto_8

    .line 346
    :cond_10
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    throw v0

    .line 351
    :cond_11
    if-ge v8, v6, :cond_13

    .line 352
    .line 353
    add-int/lit8 v5, v0, -0x1

    .line 354
    .line 355
    if-ge v1, v5, :cond_12

    .line 356
    .line 357
    add-int/lit8 v5, v4, 0x2

    .line 358
    .line 359
    aget-byte v1, v2, v1

    .line 360
    .line 361
    add-int/lit8 v4, v4, 0x3

    .line 362
    .line 363
    aget-byte v5, v2, v5

    .line 364
    .line 365
    add-int/lit8 v9, v13, 0x1

    .line 366
    .line 367
    invoke-static {v8, v1, v5, v12, v13}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->handleThreeBytes(BBB[CI)V

    .line 368
    .line 369
    .line 370
    move v13, v9

    .line 371
    goto :goto_8

    .line 372
    :cond_12
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    throw v0

    .line 377
    :cond_13
    add-int/lit8 v5, v0, -0x2

    .line 378
    .line 379
    if-ge v1, v5, :cond_14

    .line 380
    .line 381
    add-int/lit8 v5, v4, 0x2

    .line 382
    .line 383
    aget-byte v9, v2, v1

    .line 384
    .line 385
    add-int/lit8 v1, v4, 0x3

    .line 386
    .line 387
    aget-byte v10, v2, v5

    .line 388
    .line 389
    add-int/lit8 v4, v4, 0x4

    .line 390
    .line 391
    aget-byte v11, v2, v1

    .line 392
    .line 393
    invoke-static/range {v8 .. v13}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->handleFourBytes(BBBB[CI)V

    .line 394
    .line 395
    .line 396
    add-int/lit8 v13, v13, 0x2

    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_14
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidUtf8()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    throw v0

    .line 404
    :cond_15
    new-instance v0, Ljava/lang/String;

    .line 405
    .line 406
    invoke-direct {v0, v12, v7, v13}, Ljava/lang/String;-><init>([CII)V

    .line 407
    .line 408
    .line 409
    :goto_a
    return-object v0

    .line 410
    :cond_16
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 411
    .line 412
    array-length v2, v2

    .line 413
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    new-array v6, v10, [Ljava/lang/Object;

    .line 426
    .line 427
    aput-object v2, v6, v7

    .line 428
    .line 429
    aput-object v4, v6, v9

    .line 430
    .line 431
    aput-object v3, v6, v1

    .line 432
    .line 433
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    throw v0

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public readUInt32()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public readUInt32List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 82
    .line 83
    return-void
.end method

.method public readUInt32List(Ljava/util/List;)V
    .locals 3

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 85
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition$1(I)V

    return-void

    .line 91
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 95
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_2

    .line 96
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public readUInt64()J
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt64()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public readUInt64List(Landroidx/glance/appwidget/protobuf/Internal$ProtobufList;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 6
    .line 7
    and-int/lit8 v1, v1, 0x7

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt32()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt64()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, p1

    .line 32
    check-cast v3, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v1, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readUInt64()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    move-object v2, p1

    .line 61
    check-cast v2, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroidx/glance/appwidget/protobuf/ProtobufArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->isAtEnd()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->readTag()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 78
    .line 79
    if-eq v1, v2, :cond_2

    .line 80
    .line 81
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 82
    .line 83
    return-void
.end method

.method public readUInt64List(Ljava/util/List;)V
    .locals 5

    .line 84
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 85
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 86
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt64()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Landroidx/compose/ui/text/input/GapBuffer;->requirePosition$1(I)V

    return-void

    .line 91
    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    .line 92
    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt64()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    move-result v1

    .line 95
    iget v2, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    if-eq v1, v2, :cond_2

    .line 96
    iput v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    return-void
.end method

.method public requirePosition(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/glance/appwidget/protobuf/CodedInputStream;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/CodedInputStream;->getTotalBytesRead()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0
.end method

.method public requirePosition$1(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->getTotalBytesRead()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->truncatedMessage()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0
.end method

.method public requireWireType(I)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x7

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/glance/appwidget/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public requireWireType$1(I)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x7

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method public skipField()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 12
    .line 13
    iget p0, p0, Landroidx/compose/ui/text/input/GapBuffer;->gapStart:I

    .line 14
    .line 15
    if-ne v1, p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->skipField(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/GapBuffer;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, ""

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
