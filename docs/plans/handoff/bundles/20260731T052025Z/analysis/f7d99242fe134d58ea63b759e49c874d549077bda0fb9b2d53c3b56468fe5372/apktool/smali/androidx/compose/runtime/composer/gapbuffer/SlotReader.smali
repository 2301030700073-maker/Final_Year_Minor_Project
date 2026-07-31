.class public final Landroidx/compose/runtime/composer/gapbuffer/SlotReader;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public closed:Z

.field public currentEnd:I

.field public currentGroup:I

.field public currentSlot:I

.field public currentSlotEnd:I

.field public currentSlotStack:Ljava/lang/Object;

.field public emptyCount:I

.field public groups:[I

.field public groupsSize:I

.field public hadNext:Z

.field public parent:I

.field public slots:Ljava/lang/Object;

.field public slotsSize:I

.field public table:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groups:[I

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 12
    .line 13
    iget v0, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groupsSize:I

    .line 14
    .line 15
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 16
    .line 17
    iget-object v1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->slots:[Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slots:Ljava/lang/Object;

    .line 20
    .line 21
    iget p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->slotsSize:I

    .line 22
    .line 23
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 24
    .line 25
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 26
    .line 27
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 29
    .line 30
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 31
    .line 32
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public ExpandBuff(Z)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 2
    .line 3
    add-int/lit16 v1, v0, 0x800

    .line 4
    .line 5
    new-array v2, v1, [C

    .line 6
    .line 7
    new-array v3, v1, [I

    .line 8
    .line 9
    new-array v1, v1, [I

    .line 10
    .line 11
    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v4, [C

    .line 14
    .line 15
    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sub-int/2addr v0, v5

    .line 21
    :try_start_0
    invoke-static {v4, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, [C

    .line 27
    .line 28
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 29
    .line 30
    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 31
    .line 32
    sub-int/2addr v0, v4

    .line 33
    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 34
    .line 35
    invoke-static {p1, v6, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 41
    .line 42
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 43
    .line 44
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 45
    .line 46
    sub-int/2addr v2, v0

    .line 47
    invoke-static {p1, v0, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 51
    .line 52
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 53
    .line 54
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 55
    .line 56
    sub-int/2addr v0, v2

    .line 57
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 58
    .line 59
    invoke-static {p1, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    .line 61
    .line 62
    iput-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 63
    .line 64
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, [I

    .line 67
    .line 68
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 69
    .line 70
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 71
    .line 72
    sub-int/2addr v2, v0

    .line 73
    invoke-static {p1, v0, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p1, [I

    .line 79
    .line 80
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 81
    .line 82
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 83
    .line 84
    sub-int/2addr v0, v2

    .line 85
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 86
    .line 87
    invoke-static {p1, v6, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 91
    .line 92
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 93
    .line 94
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 95
    .line 96
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 97
    .line 98
    sub-int/2addr v0, v1

    .line 99
    add-int/2addr v0, p1

    .line 100
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 101
    .line 102
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    sub-int/2addr v0, v5

    .line 106
    invoke-static {v4, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 110
    .line 111
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 112
    .line 113
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 114
    .line 115
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 116
    .line 117
    sub-int/2addr v2, v0

    .line 118
    invoke-static {p1, v0, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    iput-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 122
    .line 123
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, [I

    .line 126
    .line 127
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 128
    .line 129
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 130
    .line 131
    sub-int/2addr v2, v0

    .line 132
    invoke-static {p1, v0, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    .line 134
    .line 135
    iput-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 136
    .line 137
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 138
    .line 139
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 140
    .line 141
    sub-int/2addr p1, v0

    .line 142
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 143
    .line 144
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 146
    :goto_0
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 147
    .line 148
    add-int/lit16 p1, p1, 0x800

    .line 149
    .line 150
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 151
    .line 152
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 153
    .line 154
    iput v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 155
    .line 156
    return-void

    .line 157
    :catchall_0
    move-exception p0

    .line 158
    new-instance p1, Ljava/lang/Error;

    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1
.end method

.method public GetImage()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, [C

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    new-instance p0, Ljava/lang/String;

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    invoke-direct {p0, v2, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 21
    .line 22
    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 23
    .line 24
    sub-int/2addr v3, v1

    .line 25
    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, [C

    .line 33
    .line 34
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 35
    .line 36
    add-int/lit8 p0, p0, 0x1

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {v1, v2, v3, p0}, Ljava/lang/String;-><init>([CII)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public GetSuffix(I)[C
    .locals 6

    .line 1
    new-array v0, p1, [C

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, [C

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-lt v2, p1, :cond_0

    .line 13
    .line 14
    sub-int/2addr v1, p1

    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    invoke-static {v3, v1, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 22
    .line 23
    sub-int v5, p1, v1

    .line 24
    .line 25
    add-int/lit8 v5, v5, -0x1

    .line 26
    .line 27
    sub-int/2addr v2, v5

    .line 28
    sub-int v1, p1, v1

    .line 29
    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    invoke-static {v3, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, [C

    .line 38
    .line 39
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 40
    .line 41
    sub-int/2addr p1, p0

    .line 42
    add-int/lit8 p1, p1, -0x1

    .line 43
    .line 44
    add-int/lit8 p0, p0, 0x1

    .line 45
    .line 46
    invoke-static {v1, v4, v0, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 8
    .line 9
    invoke-static {v0, p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-gez p0, :cond_0

    .line 14
    .line 15
    new-instance v1, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;-><init>(I)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 p0, p0, 0x1

    .line 21
    .line 22
    neg-int p0, p0

    .line 23
    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 32
    .line 33
    return-object p0
.end method

.method public aux([II)Ljava/lang/Object;
    .locals 2

    .line 1
    mul-int/lit8 p2, p2, 0x5

    .line 2
    .line 3
    add-int/lit8 v0, p2, 0x1

    .line 4
    .line 5
    aget v0, p1, v0

    .line 6
    .line 7
    const/high16 v1, 0x10000000

    .line 8
    .line 9
    and-int/2addr v1, v0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slots:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, [Ljava/lang/Object;

    .line 15
    .line 16
    array-length v1, p1

    .line 17
    if-lt p2, v1, :cond_0

    .line 18
    .line 19
    array-length p1, p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    add-int/lit8 p2, p2, 0x4

    .line 22
    .line 23
    aget p1, p1, p2

    .line 24
    .line 25
    shr-int/lit8 p2, v0, 0x1d

    .line 26
    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    add-int/2addr p1, p2

    .line 32
    :goto_0
    aget-object p0, p0, p1

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 36
    .line 37
    return-object p0
.end method

.method public backup(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 5
    .line 6
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 7
    .line 8
    sub-int/2addr v0, p1

    .line 9
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 14
    .line 15
    add-int/2addr v0, p1

    .line 16
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->closed:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->readers:I

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "Unexpected reader close()"

    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->readers:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    iput v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->readers:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slots:Ljava/lang/Object;

    .line 28
    .line 29
    return-void
.end method

.method public containsMark(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/high16 p1, 0x4000000

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public endGroup()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 6
    .line 7
    if-nez v2, :cond_4

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 10
    .line 11
    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v2, "endGroup() not called at the end of a group"

    .line 17
    .line 18
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 22
    .line 23
    mul-int/lit8 v2, v2, 0x5

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    aget v2, v1, v2

    .line 28
    .line 29
    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 30
    .line 31
    if-gez v2, :cond_1

    .line 32
    .line 33
    move v3, v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    mul-int/lit8 v3, v2, 0x5

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x3

    .line 38
    .line 39
    aget v3, v1, v3

    .line 40
    .line 41
    add-int/2addr v3, v2

    .line 42
    :goto_1
    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 43
    .line 44
    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Landroidx/compose/runtime/IntStack;

    .line 47
    .line 48
    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->pop()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-gez v3, :cond_2

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 56
    .line 57
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 61
    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 63
    .line 64
    if-lt v2, v0, :cond_3

    .line 65
    .line 66
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 70
    .line 71
    mul-int/lit8 v2, v2, 0x5

    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x4

    .line 74
    .line 75
    aget v0, v1, v2

    .line 76
    .line 77
    :goto_2
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 78
    .line 79
    :cond_4
    return-void
.end method

.method public getGroupAux()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->aux([II)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public getGroupKey()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x5

    .line 10
    .line 11
    aget p0, p0, v0

    .line 12
    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public groupGet(II)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$slotAnchor([II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 10
    .line 11
    if-ge p1, v2, :cond_0

    .line 12
    .line 13
    mul-int/lit8 p1, p1, 0x5

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x4

    .line 16
    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 21
    .line 22
    :goto_0
    add-int/2addr v1, p2

    .line 23
    if-ge v1, p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slots:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, [Ljava/lang/Object;

    .line 28
    .line 29
    aget-object p0, p0, v1

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 33
    .line 34
    return-object p0
.end method

.method public groupKey(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public hasMark(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/high16 p1, 0x8000000

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public hasObjectKey(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/high16 p1, 0x20000000

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isNode(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    add-int/2addr p1, v0

    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const/high16 p1, 0x40000000    # 2.0f

    .line 10
    .line 11
    and-int/2addr p0, p1

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hadNext:Z

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slots:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, [Ljava/lang/Object;

    .line 18
    .line 19
    add-int/lit8 v2, v0, 0x1

    .line 20
    .line 21
    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 22
    .line 23
    aget-object p0, v1, v0

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hadNext:Z

    .line 28
    .line 29
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 30
    .line 31
    return-object p0
.end method

.method public node(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 6
    .line 7
    aget v1, v0, v1

    .line 8
    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 10
    .line 11
    and-int/2addr v1, v2

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slots:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, [Ljava/lang/Object;

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x4

    .line 21
    .line 22
    aget p1, v0, p1

    .line 23
    .line 24
    aget-object p0, p0, p1

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public nodeCount(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    const p1, 0x3ffffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p0, p1

    .line 13
    return p0
.end method

.method public objectKey([II)Ljava/lang/Object;
    .locals 2

    .line 1
    mul-int/lit8 p2, p2, 0x5

    .line 2
    .line 3
    add-int/lit8 v0, p2, 0x1

    .line 4
    .line 5
    aget v0, p1, v0

    .line 6
    .line 7
    const/high16 v1, 0x20000000

    .line 8
    .line 9
    and-int/2addr v1, v0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slots:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, [Ljava/lang/Object;

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x4

    .line 17
    .line 18
    aget p1, p1, p2

    .line 19
    .line 20
    shr-int/lit8 p2, v0, 0x1e

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    add-int/2addr p2, p1

    .line 27
    aget-object p0, p0, p2

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public parent(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    aget p0, p0, p1

    .line 8
    .line 9
    return p0
.end method

.method public readChar()C
    .locals 7

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    sub-int/2addr v0, v2

    .line 8
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 9
    .line 10
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 11
    .line 12
    add-int/2addr v0, v2

    .line 13
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 14
    .line 15
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, [C

    .line 24
    .line 25
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 26
    .line 27
    aget-char p0, v0, p0

    .line 28
    .line 29
    return p0

    .line 30
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 31
    .line 32
    add-int/2addr v0, v2

    .line 33
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 34
    .line 35
    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 36
    .line 37
    if-lt v0, v3, :cond_a

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slots:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/io/StringReader;

    .line 42
    .line 43
    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 44
    .line 45
    if-ne v3, v4, :cond_7

    .line 46
    .line 47
    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 48
    .line 49
    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 50
    .line 51
    const/16 v6, 0x800

    .line 52
    .line 53
    if-ne v4, v3, :cond_4

    .line 54
    .line 55
    if-le v5, v6, :cond_2

    .line 56
    .line 57
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 58
    .line 59
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 60
    .line 61
    iput v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    if-gez v5, :cond_3

    .line 65
    .line 66
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 67
    .line 68
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->ExpandBuff(Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    if-le v4, v5, :cond_5

    .line 76
    .line 77
    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    sub-int v3, v5, v4

    .line 81
    .line 82
    if-ge v3, v6, :cond_6

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->ExpandBuff(Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    iput v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 89
    .line 90
    :cond_7
    :goto_0
    const/4 v3, -0x1

    .line 91
    :try_start_0
    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v4, [C

    .line 94
    .line 95
    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 96
    .line 97
    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 98
    .line 99
    sub-int/2addr v6, v5

    .line 100
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eq v4, v3, :cond_8

    .line 105
    .line 106
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 107
    .line 108
    add-int/2addr v0, v4

    .line 109
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto :goto_1

    .line 114
    :cond_8
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 115
    .line 116
    .line 117
    new-instance v0, Ljava/io/IOException;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 120
    .line 121
    .line 122
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 124
    .line 125
    sub-int/2addr v4, v2

    .line 126
    iput v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 127
    .line 128
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->backup(I)V

    .line 129
    .line 130
    .line 131
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 132
    .line 133
    if-ne v1, v3, :cond_9

    .line 134
    .line 135
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 136
    .line 137
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 138
    .line 139
    :cond_9
    throw v0

    .line 140
    :cond_a
    :goto_2
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, [C

    .line 143
    .line 144
    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 145
    .line 146
    aget-char v0, v0, v3

    .line 147
    .line 148
    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 149
    .line 150
    add-int/2addr v4, v2

    .line 151
    iput v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 152
    .line 153
    iget-boolean v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hadNext:Z

    .line 154
    .line 155
    const/16 v5, 0xa

    .line 156
    .line 157
    if-eqz v4, :cond_b

    .line 158
    .line 159
    iput-boolean v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hadNext:Z

    .line 160
    .line 161
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 162
    .line 163
    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 164
    .line 165
    add-int/2addr v1, v2

    .line 166
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_b
    iget-boolean v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->closed:Z

    .line 170
    .line 171
    if-eqz v4, :cond_d

    .line 172
    .line 173
    iput-boolean v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->closed:Z

    .line 174
    .line 175
    if-ne v0, v5, :cond_c

    .line 176
    .line 177
    iput-boolean v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hadNext:Z

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_c
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 181
    .line 182
    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 183
    .line 184
    add-int/2addr v1, v2

    .line 185
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 186
    .line 187
    :cond_d
    :goto_3
    const/16 v1, 0x9

    .line 188
    .line 189
    if-eq v0, v1, :cond_10

    .line 190
    .line 191
    if-eq v0, v5, :cond_f

    .line 192
    .line 193
    const/16 v1, 0xd

    .line 194
    .line 195
    if-eq v0, v1, :cond_e

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_e
    iput-boolean v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->closed:Z

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_f
    iput-boolean v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hadNext:Z

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_10
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 205
    .line 206
    sub-int/2addr v1, v2

    .line 207
    rem-int/lit8 v2, v1, 0x8

    .line 208
    .line 209
    rsub-int/lit8 v2, v2, 0x8

    .line 210
    .line 211
    add-int/2addr v2, v1

    .line 212
    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 213
    .line 214
    :goto_4
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 215
    .line 216
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 217
    .line 218
    aput v2, v1, v3

    .line 219
    .line 220
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v1, [I

    .line 223
    .line 224
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 225
    .line 226
    aput p0, v1, v3

    .line 227
    .line 228
    return v0
.end method

.method public reposition(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "Cannot reposition while in an empty region"

    .line 9
    .line 10
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 14
    .line 15
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 16
    .line 17
    if-ge p1, v1, :cond_1

    .line 18
    .line 19
    mul-int/lit8 p1, p1, 0x5

    .line 20
    .line 21
    add-int/lit8 p1, p1, 0x2

    .line 22
    .line 23
    aget p1, v0, p1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, -0x1

    .line 27
    :goto_1
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 28
    .line 29
    if-eq p1, v2, :cond_3

    .line 30
    .line 31
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 32
    .line 33
    if-gez p1, :cond_2

    .line 34
    .line 35
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    mul-int/lit8 v1, p1, 0x5

    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x3

    .line 41
    .line 42
    aget v0, v0, v1

    .line 43
    .line 44
    add-int/2addr v0, p1

    .line 45
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 46
    .line 47
    :goto_2
    const/4 p1, 0x0

    .line 48
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 49
    .line 50
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public skipGroup()I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "Cannot skip while in an empty region"

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 14
    .line 15
    mul-int/lit8 v2, v1, 0x5

    .line 16
    .line 17
    add-int/lit8 v3, v2, 0x1

    .line 18
    .line 19
    aget v3, v0, v3

    .line 20
    .line 21
    const/high16 v4, 0x40000000    # 2.0f

    .line 22
    .line 23
    and-int/2addr v4, v3

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const v4, 0x3ffffff

    .line 29
    .line 30
    .line 31
    and-int/2addr v3, v4

    .line 32
    :goto_1
    add-int/lit8 v2, v2, 0x3

    .line 33
    .line 34
    aget v0, v0, v2

    .line 35
    .line 36
    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 38
    .line 39
    return v3
.end method

.method public skipToGroupEnd()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "Cannot skip the enclosing group while in an empty region"

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 17
    .line 18
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 19
    .line 20
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 21
    .line 22
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 23
    .line 24
    return-void
.end method

.method public startGroup()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 4
    .line 5
    if-gtz v1, :cond_3

    .line 6
    .line 7
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 10
    .line 11
    mul-int/lit8 v3, v2, 0x5

    .line 12
    .line 13
    add-int/lit8 v4, v3, 0x2

    .line 14
    .line 15
    aget v4, v0, v4

    .line 16
    .line 17
    if-ne v4, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "Invalid slot table detected"

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotStack:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Landroidx/compose/runtime/IntStack;

    .line 28
    .line 29
    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 30
    .line 31
    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    const/4 v4, -0x1

    .line 38
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x3

    .line 48
    .line 49
    aget v1, v0, v3

    .line 50
    .line 51
    add-int/2addr v1, v2

    .line 52
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 53
    .line 54
    add-int/lit8 v1, v2, 0x1

    .line 55
    .line 56
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 57
    .line 58
    invoke-static {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$slotAnchor([II)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 63
    .line 64
    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 65
    .line 66
    add-int/lit8 v3, v3, -0x1

    .line 67
    .line 68
    if-lt v2, v3, :cond_2

    .line 69
    .line 70
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->slotsSize:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    mul-int/lit8 v1, v1, 0x5

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x4

    .line 76
    .line 77
    aget v0, v0, v1

    .line 78
    .line 79
    :goto_2
    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->$r8$classId:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "SlotReader(current="

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", key="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getGroupKey()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", parent="

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", end="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 51
    .line 52
    const/16 v1, 0x29

    .line 53
    .line 54
    invoke-static {v0, p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
