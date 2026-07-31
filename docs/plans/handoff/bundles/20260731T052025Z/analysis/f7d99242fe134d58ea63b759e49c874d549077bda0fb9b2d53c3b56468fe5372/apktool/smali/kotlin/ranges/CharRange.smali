.class public final Lkotlin/ranges/CharRange;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final first:C

.field public final last:C

.field public final step:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/ranges/CharRange;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lkotlin/ranges/CharRange;-><init>(CC)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(CC)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-char p1, p0, Lkotlin/ranges/CharRange;->first:C

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p1, p2, v0}, Lokio/Options$Companion;->getProgressionLastElement(III)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    int-to-char p1, p1

    .line 12
    iput-char p1, p0, Lkotlin/ranges/CharRange;->last:C

    .line 13
    .line 14
    iput v0, p0, Lkotlin/ranges/CharRange;->step:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lkotlin/ranges/CharRange;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-char v0, p0, Lkotlin/ranges/CharRange;->first:C

    .line 6
    .line 7
    iget-char p0, p0, Lkotlin/ranges/CharRange;->last:C

    .line 8
    .line 9
    if-le v0, p0, :cond_0

    .line 10
    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Lkotlin/ranges/CharRange;

    .line 13
    .line 14
    iget-char v2, v1, Lkotlin/ranges/CharRange;->first:C

    .line 15
    .line 16
    iget-char v1, v1, Lkotlin/ranges/CharRange;->last:C

    .line 17
    .line 18
    if-le v2, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    check-cast p1, Lkotlin/ranges/CharRange;

    .line 22
    .line 23
    iget-char v1, p1, Lkotlin/ranges/CharRange;->first:C

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    iget-char p1, p1, Lkotlin/ranges/CharRange;->last:C

    .line 28
    .line 29
    if-ne p0, p1, :cond_1

    .line 30
    .line 31
    :goto_0
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-char v0, p0, Lkotlin/ranges/CharRange;->first:C

    .line 2
    .line 3
    iget-char p0, p0, Lkotlin/ranges/CharRange;->last:C

    .line 4
    .line 5
    if-le v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    add-int/2addr v0, p0

    .line 12
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/ranges/CharProgressionIterator;

    .line 2
    .line 3
    iget-char v1, p0, Lkotlin/ranges/CharRange;->last:C

    .line 4
    .line 5
    iget v2, p0, Lkotlin/ranges/CharRange;->step:I

    .line 6
    .line 7
    iget-char p0, p0, Lkotlin/ranges/CharRange;->first:C

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2}, Lkotlin/ranges/CharProgressionIterator;-><init>(CCI)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-char v1, p0, Lkotlin/ranges/CharRange;->first:C

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ".."

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-char p0, p0, Lkotlin/ranges/CharRange;->last:C

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
