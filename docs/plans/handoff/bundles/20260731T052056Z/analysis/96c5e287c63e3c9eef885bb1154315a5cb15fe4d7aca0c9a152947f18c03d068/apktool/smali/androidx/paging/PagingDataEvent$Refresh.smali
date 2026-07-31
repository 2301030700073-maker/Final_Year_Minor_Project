.class public final Landroidx/paging/PagingDataEvent$Refresh;
.super Landroidx/paging/FlowExtKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final newList:Landroidx/paging/PageStore;

.field public final previousList:Landroidx/paging/PageStore;


# direct methods
.method public constructor <init>(Landroidx/paging/PageStore;Landroidx/paging/PageStore;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/paging/PagingDataEvent$Refresh;->newList:Landroidx/paging/PageStore;

    .line 8
    .line 9
    iput-object p2, p0, Landroidx/paging/PagingDataEvent$Refresh;->previousList:Landroidx/paging/PageStore;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Landroidx/paging/PagingDataEvent$Refresh;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/paging/PagingDataEvent$Refresh;->newList:Landroidx/paging/PageStore;

    .line 6
    .line 7
    iget v1, v0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 8
    .line 9
    check-cast p1, Landroidx/paging/PagingDataEvent$Refresh;

    .line 10
    .line 11
    iget-object v2, p1, Landroidx/paging/PagingDataEvent$Refresh;->previousList:Landroidx/paging/PageStore;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/paging/PagingDataEvent$Refresh;->newList:Landroidx/paging/PageStore;

    .line 14
    .line 15
    iget v3, p1, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    iget v1, v0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 20
    .line 21
    iget v3, p1, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/paging/PageStore;->getSize()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {p1}, Landroidx/paging/PageStore;->getSize()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne v1, v3, :cond_0

    .line 34
    .line 35
    iget v0, v0, Landroidx/paging/PageStore;->dataCount:I

    .line 36
    .line 37
    iget p1, p1, Landroidx/paging/PageStore;->dataCount:I

    .line 38
    .line 39
    if-ne v0, p1, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/paging/PagingDataEvent$Refresh;->previousList:Landroidx/paging/PageStore;

    .line 42
    .line 43
    iget p1, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 44
    .line 45
    iget v0, v2, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 46
    .line 47
    if-ne p1, v0, :cond_0

    .line 48
    .line 49
    iget p1, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 50
    .line 51
    iget v0, v2, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 52
    .line 53
    if-ne p1, v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getSize()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {v2}, Landroidx/paging/PageStore;->getSize()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-ne p1, v0, :cond_0

    .line 64
    .line 65
    iget p0, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 66
    .line 67
    iget p1, v2, Landroidx/paging/PageStore;->dataCount:I

    .line 68
    .line 69
    if-ne p0, p1, :cond_0

    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0

    .line 73
    :cond_0
    const/4 p0, 0x0

    .line 74
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/paging/PagingDataEvent$Refresh;->newList:Landroidx/paging/PageStore;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/paging/PageStore;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Landroidx/paging/PagingDataEvent$Refresh;->previousList:Landroidx/paging/PageStore;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/paging/PageStore;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PagingDataEvent.Refresh loaded newList\n                    |   newList (\n                    |       placeholdersBefore: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/paging/PagingDataEvent$Refresh;->newList:Landroidx/paging/PageStore;

    .line 9
    .line 10
    iget v2, v1, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "\n                    |       placeholdersAfter: "

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v3, v1, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, "\n                    |       size: "

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/paging/PageStore;->getSize()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, "\n                    |       dataCount: "

    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, v1, Landroidx/paging/PageStore;->dataCount:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "\n                    |   )\n                    |   previousList (\n                    |       placeholdersBefore: "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Landroidx/paging/PagingDataEvent$Refresh;->previousList:Landroidx/paging/PageStore;

    .line 53
    .line 54
    iget v1, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getSize()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget p0, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, "\n                    |   )\n                    |"

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method
