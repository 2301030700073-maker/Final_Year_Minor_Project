.class public final Landroidx/paging/PagingDataEvent$DropAppend;
.super Landroidx/paging/FlowExtKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final dropCount:I

.field public final newPlaceholdersAfter:I

.field public final oldPlaceholdersAfter:I

.field public final startIndex:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/paging/PagingDataEvent$DropAppend;->startIndex:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/paging/PagingDataEvent$DropAppend;->dropCount:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/paging/PagingDataEvent$DropAppend;->newPlaceholdersAfter:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/paging/PagingDataEvent$DropAppend;->oldPlaceholdersAfter:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/paging/PagingDataEvent$DropAppend;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/paging/PagingDataEvent$DropAppend;

    .line 6
    .line 7
    iget v0, p1, Landroidx/paging/PagingDataEvent$DropAppend;->startIndex:I

    .line 8
    .line 9
    iget v1, p0, Landroidx/paging/PagingDataEvent$DropAppend;->startIndex:I

    .line 10
    .line 11
    if-ne v1, v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Landroidx/paging/PagingDataEvent$DropAppend;->dropCount:I

    .line 14
    .line 15
    iget v1, p1, Landroidx/paging/PagingDataEvent$DropAppend;->dropCount:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget v0, p0, Landroidx/paging/PagingDataEvent$DropAppend;->newPlaceholdersAfter:I

    .line 20
    .line 21
    iget v1, p1, Landroidx/paging/PagingDataEvent$DropAppend;->newPlaceholdersAfter:I

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget p0, p0, Landroidx/paging/PagingDataEvent$DropAppend;->oldPlaceholdersAfter:I

    .line 26
    .line 27
    iget p1, p1, Landroidx/paging/PagingDataEvent$DropAppend;->oldPlaceholdersAfter:I

    .line 28
    .line 29
    if-ne p0, p1, :cond_0

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/paging/PagingDataEvent$DropAppend;->startIndex:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/paging/PagingDataEvent$DropAppend;->dropCount:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Landroidx/paging/PagingDataEvent$DropAppend;->newPlaceholdersAfter:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    iget p0, p0, Landroidx/paging/PagingDataEvent$DropAppend;->oldPlaceholdersAfter:I

    .line 10
    .line 11
    add-int/2addr v0, p0

    .line 12
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PagingDataEvent.DropAppend dropped "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/paging/PagingDataEvent$DropAppend;->dropCount:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, " items (\n                    |   startIndex: "

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Landroidx/paging/PagingDataEvent$DropAppend;->startIndex:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "\n                    |   dropCount: "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "\n                    |   newPlaceholdersBefore: "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Landroidx/paging/PagingDataEvent$DropAppend;->newPlaceholdersAfter:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, "\n                    |   oldPlaceholdersBefore: "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget p0, p0, Landroidx/paging/PagingDataEvent$DropAppend;->oldPlaceholdersAfter:I

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p0, "\n                    |)\n                    |"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
