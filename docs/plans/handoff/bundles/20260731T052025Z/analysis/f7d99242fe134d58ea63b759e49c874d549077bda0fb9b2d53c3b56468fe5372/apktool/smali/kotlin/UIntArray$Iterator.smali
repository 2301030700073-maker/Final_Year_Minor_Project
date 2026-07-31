.class public Lkotlin/UIntArray$Iterator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final array:Ljava/lang/Object;

.field public index:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 16
    iput p1, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    iput-object p2, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/internal/EnumDescriptor;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    .line 9
    .line 10
    iget p1, p1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    .line 11
    .line 12
    iput p1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 1
    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 11
    .line 12
    if-lez p0, :cond_0

    .line 13
    .line 14
    move v2, v3

    .line 15
    :cond_0
    return v2

    .line 16
    :pswitch_0
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 17
    .line 18
    check-cast v1, [Ljava/lang/Object;

    .line 19
    .line 20
    array-length v0, v1

    .line 21
    if-ge p0, v0, :cond_1

    .line 22
    .line 23
    move v2, v3

    .line 24
    :cond_1
    return v2

    .line 25
    :pswitch_1
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 26
    .line 27
    check-cast v1, Lkotlin/collections/AbstractList;

    .line 28
    .line 29
    invoke-virtual {v1}, Lkotlin/collections/AbstractCollection;->getSize()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-ge p0, v0, :cond_2

    .line 34
    .line 35
    move v2, v3

    .line 36
    :cond_2
    return v2

    .line 37
    :pswitch_2
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 38
    .line 39
    check-cast v1, [S

    .line 40
    .line 41
    array-length v0, v1

    .line 42
    if-ge p0, v0, :cond_3

    .line 43
    .line 44
    move v2, v3

    .line 45
    :cond_3
    return v2

    .line 46
    :pswitch_3
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 47
    .line 48
    check-cast v1, [J

    .line 49
    .line 50
    array-length v0, v1

    .line 51
    if-ge p0, v0, :cond_4

    .line 52
    .line 53
    move v2, v3

    .line 54
    :cond_4
    return v2

    .line 55
    :pswitch_4
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 56
    .line 57
    check-cast v1, [B

    .line 58
    .line 59
    array-length v0, v1

    .line 60
    if-ge p0, v0, :cond_5

    .line 61
    .line 62
    move v2, v3

    .line 63
    :cond_5
    return v2

    .line 64
    :pswitch_5
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 65
    .line 66
    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-ge p0, v0, :cond_6

    .line 73
    .line 74
    move v2, v3

    .line 75
    :cond_6
    return v2

    .line 76
    :pswitch_6
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 77
    .line 78
    check-cast v1, Landroidx/collection/SparseArrayCompat;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ge p0, v0, :cond_7

    .line 85
    .line 86
    move v2, v3

    .line 87
    :cond_7
    return v2

    .line 88
    :pswitch_7
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 89
    .line 90
    check-cast v1, [I

    .line 91
    .line 92
    array-length v0, v1

    .line 93
    if-ge p0, v0, :cond_8

    .line 94
    .line 95
    move v2, v3

    .line 96
    :cond_8
    return v2

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
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
    check-cast v2, Lkotlinx/serialization/internal/EnumDescriptor;

    .line 10
    .line 11
    iget v0, v2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    .line 12
    .line 13
    iget v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 14
    .line 15
    add-int/lit8 v3, v1, -0x1

    .line 16
    .line 17
    iput v3, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 18
    .line 19
    sub-int/2addr v0, v1

    .line 20
    iget-object p0, v2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    .line 21
    .line 22
    aget-object p0, p0, v0

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_0
    :try_start_0
    check-cast v2, [Ljava/lang/Object;

    .line 26
    .line 27
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 28
    .line 29
    add-int/lit8 v3, v0, 0x1

    .line 30
    .line 31
    iput v3, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 32
    .line 33
    aget-object v1, v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    iget v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 38
    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-object v1

    .line 51
    :pswitch_1
    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    check-cast v2, Lkotlin/collections/AbstractList;

    .line 58
    .line 59
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 60
    .line 61
    add-int/lit8 v1, v0, 0x1

    .line 62
    .line 63
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 64
    .line 65
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-object v1

    .line 74
    :pswitch_2
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 75
    .line 76
    check-cast v2, [S

    .line 77
    .line 78
    array-length v3, v2

    .line 79
    if-ge v0, v3, :cond_1

    .line 80
    .line 81
    add-int/lit8 v1, v0, 0x1

    .line 82
    .line 83
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 84
    .line 85
    aget-short p0, v2, v0

    .line 86
    .line 87
    new-instance v1, Lkotlin/UShort;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lkotlin/UShort;-><init>(S)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    return-object v1

    .line 101
    :pswitch_3
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 102
    .line 103
    check-cast v2, [J

    .line 104
    .line 105
    array-length v3, v2

    .line 106
    if-ge v0, v3, :cond_2

    .line 107
    .line 108
    add-int/lit8 v1, v0, 0x1

    .line 109
    .line 110
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 111
    .line 112
    aget-wide v0, v2, v0

    .line 113
    .line 114
    new-instance p0, Lkotlin/ULong;

    .line 115
    .line 116
    invoke-direct {p0, v0, v1}, Lkotlin/ULong;-><init>(J)V

    .line 117
    .line 118
    .line 119
    move-object v1, p0

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_3
    return-object v1

    .line 129
    :pswitch_4
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 130
    .line 131
    check-cast v2, [B

    .line 132
    .line 133
    array-length v3, v2

    .line 134
    if-ge v0, v3, :cond_3

    .line 135
    .line 136
    add-int/lit8 v1, v0, 0x1

    .line 137
    .line 138
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 139
    .line 140
    aget-byte p0, v2, v0

    .line 141
    .line 142
    new-instance v1, Lkotlin/UByte;

    .line 143
    .line 144
    invoke-direct {v1, p0}, Lkotlin/UByte;-><init>(B)V

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :goto_4
    return-object v1

    .line 156
    :pswitch_5
    check-cast v2, Landroid/view/ViewGroup;

    .line 157
    .line 158
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 159
    .line 160
    add-int/lit8 v1, v0, 0x1

    .line 161
    .line 162
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 163
    .line 164
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    if-eqz p0, :cond_4

    .line 169
    .line 170
    return-object p0

    .line 171
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 172
    .line 173
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :pswitch_6
    check-cast v2, Landroidx/collection/SparseArrayCompat;

    .line 178
    .line 179
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 180
    .line 181
    add-int/lit8 v1, v0, 0x1

    .line 182
    .line 183
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0

    .line 190
    :pswitch_7
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 191
    .line 192
    check-cast v2, [I

    .line 193
    .line 194
    array-length v3, v2

    .line 195
    if-ge v0, v3, :cond_5

    .line 196
    .line 197
    add-int/lit8 v1, v0, 0x1

    .line 198
    .line 199
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 200
    .line 201
    aget p0, v2, v0

    .line 202
    .line 203
    new-instance v1, Lkotlin/UInt;

    .line 204
    .line 205
    invoke-direct {v1, p0}, Lkotlin/UInt;-><init>(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_5
    return-object v1

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
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
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 47
    .line 48
    const-string v0, "Operation is not supported for read-only collection"

    .line 49
    .line 50
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :pswitch_5
    iget-object v0, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    .line 58
    iget v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 59
    .line 60
    add-int/lit8 v1, v1, -0x1

    .line 61
    .line 62
    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 69
    .line 70
    const-string v0, "Operation is not supported for read-only collection"

    .line 71
    .line 72
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :pswitch_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 77
    .line 78
    const-string v0, "Operation is not supported for read-only collection"

    .line 79
    .line 80
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
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
