.class public Lkotlin/UIntArray$Iterator;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final array:Ljava/lang/Object;

.field public index:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 13
    iput p2, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 1
    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 11
    .line 12
    check-cast v3, [Ljava/lang/Object;

    .line 13
    .line 14
    array-length v0, v3

    .line 15
    if-ge p0, v0, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_0
    return v1

    .line 19
    :pswitch_0
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 20
    .line 21
    check-cast v3, Lkotlin/collections/AbstractList;

    .line 22
    .line 23
    invoke-virtual {v3}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ge p0, v0, :cond_1

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_1
    return v1

    .line 31
    :pswitch_1
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 32
    .line 33
    check-cast v3, [S

    .line 34
    .line 35
    array-length v0, v3

    .line 36
    if-ge p0, v0, :cond_2

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_2
    return v1

    .line 40
    :pswitch_2
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 41
    .line 42
    check-cast v3, [J

    .line 43
    .line 44
    array-length v0, v3

    .line 45
    if-ge p0, v0, :cond_3

    .line 46
    .line 47
    move v1, v2

    .line 48
    :cond_3
    return v1

    .line 49
    :pswitch_3
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 50
    .line 51
    check-cast v3, [B

    .line 52
    .line 53
    array-length v0, v3

    .line 54
    if-ge p0, v0, :cond_4

    .line 55
    .line 56
    move v1, v2

    .line 57
    :cond_4
    return v1

    .line 58
    :pswitch_4
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 59
    .line 60
    check-cast v3, Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-ge p0, v0, :cond_5

    .line 67
    .line 68
    move v1, v2

    .line 69
    :cond_5
    return v1

    .line 70
    :pswitch_5
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 71
    .line 72
    check-cast v3, [I

    .line 73
    .line 74
    array-length v0, v3

    .line 75
    if-ge p0, v0, :cond_6

    .line 76
    .line 77
    move v1, v2

    .line 78
    :cond_6
    return v1

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :try_start_0
    check-cast v2, [Ljava/lang/Object;

    .line 10
    .line 11
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 12
    .line 13
    add-int/lit8 v3, v0, 0x1

    .line 14
    .line 15
    iput v3, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 16
    .line 17
    aget-object v1, v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    iget v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 22
    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-object v1

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    check-cast v2, Lkotlin/collections/AbstractList;

    .line 42
    .line 43
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 44
    .line 45
    add-int/lit8 v1, v0, 0x1

    .line 46
    .line 47
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 48
    .line 49
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    invoke-static {}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m()V

    .line 55
    .line 56
    .line 57
    :goto_1
    return-object v1

    .line 58
    :pswitch_1
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 59
    .line 60
    check-cast v2, [S

    .line 61
    .line 62
    array-length v3, v2

    .line 63
    if-ge v0, v3, :cond_1

    .line 64
    .line 65
    add-int/lit8 v1, v0, 0x1

    .line 66
    .line 67
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 68
    .line 69
    aget-short p0, v2, v0

    .line 70
    .line 71
    new-instance v1, Lkotlin/UShort;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lkotlin/UShort;-><init>(S)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    return-object v1

    .line 85
    :pswitch_2
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 86
    .line 87
    check-cast v2, [J

    .line 88
    .line 89
    array-length v3, v2

    .line 90
    if-ge v0, v3, :cond_2

    .line 91
    .line 92
    add-int/lit8 v1, v0, 0x1

    .line 93
    .line 94
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 95
    .line 96
    aget-wide v0, v2, v0

    .line 97
    .line 98
    new-instance p0, Lkotlin/ULong;

    .line 99
    .line 100
    invoke-direct {p0, v0, v1}, Lkotlin/ULong;-><init>(J)V

    .line 101
    .line 102
    .line 103
    move-object v1, p0

    .line 104
    goto :goto_3

    .line 105
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_3
    return-object v1

    .line 113
    :pswitch_3
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 114
    .line 115
    check-cast v2, [B

    .line 116
    .line 117
    array-length v3, v2

    .line 118
    if-ge v0, v3, :cond_3

    .line 119
    .line 120
    add-int/lit8 v1, v0, 0x1

    .line 121
    .line 122
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 123
    .line 124
    aget-byte p0, v2, v0

    .line 125
    .line 126
    new-instance v1, Lkotlin/UByte;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lkotlin/UByte;-><init>(B)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_4
    return-object v1

    .line 140
    :pswitch_4
    check-cast v2, Landroid/view/ViewGroup;

    .line 141
    .line 142
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 143
    .line 144
    add-int/lit8 v1, v0, 0x1

    .line 145
    .line 146
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    if-eqz p0, :cond_4

    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 156
    .line 157
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 158
    .line 159
    .line 160
    throw p0

    .line 161
    :pswitch_5
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 162
    .line 163
    check-cast v2, [I

    .line 164
    .line 165
    array-length v3, v2

    .line 166
    if-ge v0, v3, :cond_5

    .line 167
    .line 168
    add-int/lit8 v1, v0, 0x1

    .line 169
    .line 170
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 171
    .line 172
    aget p0, v2, v0

    .line 173
    .line 174
    new-instance v1, Lkotlin/UInt;

    .line 175
    .line 176
    invoke-direct {v1, p0}, Lkotlin/UInt;-><init>(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :goto_5
    return-object v1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v0, "Operation is not supported for read-only collection"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0

    .line 14
    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string v0, "Operation is not supported for read-only collection"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string v0, "Operation is not supported for read-only collection"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :pswitch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 31
    .line 32
    const-string v0, "Operation is not supported for read-only collection"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 39
    .line 40
    const-string v0, "Operation is not supported for read-only collection"

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :pswitch_4
    iget-object v0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    .line 50
    iget v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 51
    .line 52
    add-int/lit8 v1, v1, -0x1

    .line 53
    .line 54
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 61
    .line 62
    const-string v0, "Operation is not supported for read-only collection"

    .line 63
    .line 64
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
