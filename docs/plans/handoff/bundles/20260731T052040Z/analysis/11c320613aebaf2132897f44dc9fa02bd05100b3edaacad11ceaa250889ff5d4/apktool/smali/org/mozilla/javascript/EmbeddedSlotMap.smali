.class public Lorg/mozilla/javascript/EmbeddedSlotMap;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;
    }
.end annotation


# static fields
.field private static final INITIAL_SLOT_SIZE:I = 0x4


# instance fields
.field private count:I

.field private firstAdded:Lorg/mozilla/javascript/Slot;

.field private lastAdded:Lorg/mozilla/javascript/Slot;

.field private slots:[Lorg/mozilla/javascript/Slot;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static addKnownAbsentSlot([Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;)V
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    iget v1, p1, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    .line 3
    .line 4
    invoke-static {v0, v1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    aget-object v1, p0, v0

    .line 9
    .line 10
    iput-object v1, p1, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 11
    .line 12
    aput-object p1, p0, v0

    .line 13
    .line 14
    return-void
.end method

.method private static copyTable([Lorg/mozilla/javascript/Slot;[Lorg/mozilla/javascript/Slot;)V
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget-object v2, p0, v1

    .line 6
    .line 7
    :goto_1
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v3, v2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 10
    .line 11
    invoke-static {p1, v2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->addKnownAbsentSlot([Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;)V

    .line 12
    .line 13
    .line 14
    move-object v2, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method

.method private createNewSlot(Lorg/mozilla/javascript/Slot;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-array v2, v1, [Lorg/mozilla/javascript/Slot;

    .line 7
    .line 8
    iput-object v2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 9
    .line 10
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    mul-int/2addr v0, v1

    .line 13
    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    mul-int/lit8 v2, v2, 0x3

    .line 17
    .line 18
    if-le v0, v2, :cond_1

    .line 19
    .line 20
    array-length v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    new-array v0, v0, [Lorg/mozilla/javascript/Slot;

    .line 24
    .line 25
    invoke-static {v1, v0}, Lorg/mozilla/javascript/EmbeddedSlotMap;->copyTable([Lorg/mozilla/javascript/Slot;[Lorg/mozilla/javascript/Slot;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 29
    .line 30
    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->insertNewSlot(Lorg/mozilla/javascript/Slot;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static getSlotIndex(II)I
    .locals 0

    .line 1
    add-int/lit8 p0, p0, -0x1

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    return p0
.end method

.method private insertNewSlot(Lorg/mozilla/javascript/Slot;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    .line 6
    .line 7
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object p1, v0, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    .line 18
    .line 19
    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    .line 20
    .line 21
    iget-object p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 22
    .line 23
    invoke-static {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->addKnownAbsentSlot([Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private removeSlot(Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iget p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    .line 2
    .line 3
    add-int/lit8 p4, p4, -0x1

    .line 4
    .line 5
    iput p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    .line 6
    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 10
    .line 11
    iget-object p4, p1, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 12
    .line 13
    aput-object p4, p2, p3

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p3, p1, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 17
    .line 18
    iput-object p3, p2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 19
    .line 20
    :goto_0
    iget-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    .line 21
    .line 22
    if-ne p1, p2, :cond_1

    .line 23
    .line 24
    iget-object p2, p1, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 25
    .line 26
    iput-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    :goto_1
    iget-object p3, p2, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 31
    .line 32
    if-eq p3, p1, :cond_2

    .line 33
    .line 34
    move-object p2, p3

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object p3, p1, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 37
    .line 38
    iput-object p3, p2, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 39
    .line 40
    :goto_2
    iget-object p3, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    .line 41
    .line 42
    if-ne p1, p3, :cond_3

    .line 43
    .line 44
    iput-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    .line 45
    .line 46
    :cond_3
    return-void
.end method


# virtual methods
.method public add(Lorg/mozilla/javascript/Slot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lorg/mozilla/javascript/Slot;

    .line 7
    .line 8
    iput-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 9
    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->insertNewSlot(Lorg/mozilla/javascript/Slot;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/mozilla/javascript/Slot;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lorg/mozilla/javascript/SlotMap$SlotComputer<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, p2

    .line 9
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 10
    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    invoke-static {v1, v0}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    move-object v3, v2

    .line 23
    :goto_1
    if-eqz v2, :cond_2

    .line 24
    .line 25
    iget v4, v2, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    .line 26
    .line 27
    if-ne v0, v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v2, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v4, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object v3, v2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 39
    .line 40
    move-object v5, v3

    .line 41
    move-object v3, v2

    .line 42
    move-object v2, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_2
    if-eqz v2, :cond_9

    .line 45
    .line 46
    invoke-interface {p3, p1, p2, v2}, Lorg/mozilla/javascript/SlotMap$SlotComputer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-nez p2, :cond_3

    .line 51
    .line 52
    invoke-direct {p0, v2, v3, v1, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->removeSlot(Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object p2

    .line 56
    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_8

    .line 61
    .line 62
    if-ne v3, v2, :cond_4

    .line 63
    .line 64
    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 65
    .line 66
    aput-object p2, p1, v1

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    iput-object p2, v3, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 70
    .line 71
    :goto_3
    iget-object p1, v2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 72
    .line 73
    iput-object p1, p2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 74
    .line 75
    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    .line 76
    .line 77
    if-ne v2, p1, :cond_5

    .line 78
    .line 79
    iput-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_5
    :goto_4
    if-eqz p1, :cond_6

    .line 83
    .line 84
    iget-object p3, p1, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 85
    .line 86
    if-eq p3, v2, :cond_6

    .line 87
    .line 88
    move-object p1, p3

    .line 89
    goto :goto_4

    .line 90
    :cond_6
    if-eqz p1, :cond_7

    .line 91
    .line 92
    iput-object p2, p1, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 93
    .line 94
    :cond_7
    :goto_5
    iget-object p1, v2, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 95
    .line 96
    iput-object p1, p2, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    .line 97
    .line 98
    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    .line 99
    .line 100
    if-ne v2, p1, :cond_8

    .line 101
    .line 102
    iput-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    .line 103
    .line 104
    :cond_8
    return-object p2

    .line 105
    :cond_9
    const/4 v0, 0x0

    .line 106
    invoke-interface {p3, p1, p2, v0}, Lorg/mozilla/javascript/SlotMap$SlotComputer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_a

    .line 111
    .line 112
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->createNewSlot(Lorg/mozilla/javascript/Slot;)V

    .line 113
    .line 114
    .line 115
    :cond_a
    return-object p1
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/Slot;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;-><init>(Lorg/mozilla/javascript/Slot;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public modify(Ljava/lang/Object;II)Lorg/mozilla/javascript/Slot;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, p2

    .line 9
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    invoke-static {v1, v0}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 19
    .line 20
    aget-object v1, v2, v1

    .line 21
    .line 22
    :goto_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget v2, v1, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    .line 25
    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    iget-object v2, v1, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_1
    iget-object v1, v1, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 41
    .line 42
    return-object v1

    .line 43
    :cond_3
    new-instance v0, Lorg/mozilla/javascript/Slot;

    .line 44
    .line 45
    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/Slot;-><init>(Ljava/lang/Object;II)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/EmbeddedSlotMap;->createNewSlot(Lorg/mozilla/javascript/Slot;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    invoke-static {v0, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    .line 21
    .line 22
    aget-object p0, p0, v0

    .line 23
    .line 24
    :goto_0
    if-eqz p0, :cond_3

    .line 25
    .line 26
    iget v0, p0, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    .line 27
    .line 28
    if-ne p2, v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    iget-object p0, p0, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    return-object v1
.end method

.method public size()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    .line 2
    .line 3
    return p0
.end method
