.class public final Lorg/wikipedia/categories/db/Category;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final count:I

.field public final lang:Ljava/lang/String;

.field public final month:I

.field public final title:Ljava/lang/String;

.field public final year:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lorg/wikipedia/categories/db/Category;->year:I

    .line 11
    .line 12
    iput p2, p0, Lorg/wikipedia/categories/db/Category;->month:I

    .line 13
    .line 14
    iput-object p4, p0, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p5, p0, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 17
    .line 18
    iput p3, p0, Lorg/wikipedia/categories/db/Category;->count:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
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
    instance-of v1, p1, Lorg/wikipedia/categories/db/Category;

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
    check-cast p1, Lorg/wikipedia/categories/db/Category;

    .line 12
    .line 13
    iget v1, p0, Lorg/wikipedia/categories/db/Category;->year:I

    .line 14
    .line 15
    iget v3, p1, Lorg/wikipedia/categories/db/Category;->year:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lorg/wikipedia/categories/db/Category;->month:I

    .line 21
    .line 22
    iget v3, p1, Lorg/wikipedia/categories/db/Category;->month:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p1, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget p0, p0, Lorg/wikipedia/categories/db/Category;->count:I

    .line 50
    .line 51
    iget p1, p1, Lorg/wikipedia/categories/db/Category;->count:I

    .line 52
    .line 53
    if-eq p0, p1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lorg/wikipedia/categories/db/Category;->year:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    iget v2, p0, Lorg/wikipedia/categories/db/Category;->month:I

    .line 7
    .line 8
    add-int/2addr v0, v2

    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget p0, p0, Lorg/wikipedia/categories/db/Category;->count:I

    .line 23
    .line 24
    add-int/2addr v0, p0

    .line 25
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", month="

    .line 2
    .line 3
    const-string v1, ", title="

    .line 4
    .line 5
    iget v2, p0, Lorg/wikipedia/categories/db/Category;->year:I

    .line 6
    .line 7
    iget v3, p0, Lorg/wikipedia/categories/db/Category;->month:I

    .line 8
    .line 9
    const-string v4, "Category(year="

    .line 10
    .line 11
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, ", lang="

    .line 16
    .line 17
    const-string v2, ", count="

    .line 18
    .line 19
    iget-object v3, p0, Lorg/wikipedia/categories/db/Category;->title:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v4, p0, Lorg/wikipedia/categories/db/Category;->lang:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, v3, v1, v4, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, ")"

    .line 27
    .line 28
    iget p0, p0, Lorg/wikipedia/categories/db/Category;->count:I

    .line 29
    .line 30
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
