.class public abstract Landroidx/paging/ViewportHint;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final originalPageOffsetFirst:I

.field public final originalPageOffsetLast:I

.field public final presentedItemsAfter:I

.field public final presentedItemsBefore:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/paging/ViewportHint;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/paging/ViewportHint;

    .line 12
    .line 13
    iget v1, p1, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    .line 14
    .line 15
    iget v3, p0, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget v1, p0, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    .line 20
    .line 21
    iget v3, p1, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget v1, p0, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    .line 26
    .line 27
    iget v3, p1, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget p0, p0, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    .line 32
    .line 33
    iget p1, p1, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    .line 34
    .line 35
    if-ne p0, p1, :cond_2

    .line 36
    .line 37
    return v0

    .line 38
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroidx/paging/ViewportHint;->originalPageOffsetFirst:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iget p0, p0, Landroidx/paging/ViewportHint;->originalPageOffsetLast:I

    .line 10
    .line 11
    add-int/2addr v0, p0

    .line 12
    return v0
.end method

.method public final presentedItemsBeyondAnchor$paging_common(Landroidx/paging/LoadType;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/paging/ViewportHint$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    iget p0, p0, Landroidx/paging/ViewportHint;->presentedItemsAfter:I

    .line 23
    .line 24
    return p0

    .line 25
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget p0, p0, Landroidx/paging/ViewportHint;->presentedItemsBefore:I

    .line 30
    .line 31
    return p0

    .line 32
    :cond_2
    const-string p0, "Cannot get presentedItems for loadType: REFRESH"

    .line 33
    .line 34
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return v1
.end method
