.class public final Lorg/schabi/newpipe/extractor/utils/Pair;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private firstObject:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/io/Serializable;"
        }
    .end annotation
.end field

.field private secondObject:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/io/Serializable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljava/io/Serializable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    .line 7
    .line 8
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-class v2, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 20
    .line 21
    iget-object v3, p1, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    .line 30
    .line 31
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    .line 32
    .line 33
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    :goto_0
    return v1
.end method

.method public final getFirst()Ljava/io/Serializable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSecond()Ljava/io/Serializable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    .line 2
    .line 3
    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    aput-object p0, v1, v0

    .line 13
    .line 14
    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final setFirst(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 2
    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "{"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ", "

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string/jumbo p0, "}"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
