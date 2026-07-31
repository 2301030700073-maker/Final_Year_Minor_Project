.class public final Lcom/mikepenz/fastadapter/adapters/ItemAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final active:Z

.field public fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

.field public final idDistributor:Lokhttp3/ConnectionPool;

.field public final interceptor:Lkotlin/jvm/functions/Function1;

.field public final isUseIdDistributor:Z

.field public final itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

.field public final itemList:Lcom/google/zxing/BinaryBitmap;

.field public order:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;->INSTANCE:Lcom/mikepenz/fastadapter/utils/InterceptorUtil$Companion$DEFAULT$1;

    .line 3
    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 8
    .line 9
    new-instance v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v4, 0x15

    .line 15
    .line 16
    invoke-direct {v2, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v3, v2, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    iput v3, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->order:I

    .line 26
    .line 27
    iput-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->interceptor:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->active:Z

    .line 32
    .line 33
    sget-object v1, Lcom/mikepenz/fastadapter/IIdDistributor;->DEFAULT:Lokhttp3/ConnectionPool;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->idDistributor:Lokhttp3/ConnectionPool;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->isUseIdDistributor:Z

    .line 41
    .line 42
    new-instance v0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;-><init>(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final intercept(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->interceptor:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-object v0
.end method

.method public final move(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget v2, v0, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/mikepenz/fastadapter/FastAdapter;->adapterSizes:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gez v1, :cond_1

    .line 18
    .line 19
    not-int v1, v1

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    sub-int v2, p1, v1

    .line 33
    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v3, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v2, Ljava/util/List;

    .line 50
    .line 51
    sub-int v1, p2, v1

    .line 52
    .line 53
    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 59
    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroidx/collection/ArrayMap$ValueCollection;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroidx/collection/ArrayMap$KeyIterator;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 83
    .line 84
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    invoke-virtual {v0}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final setInternal(Ljava/util/List;Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->isUseIdDistributor:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->idDistributor:Lokhttp3/ConnectionPool;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lokhttp3/ConnectionPool;->checkIds(Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemFilter:Lcom/mikepenz/fastadapter/adapters/ItemFilter;

    .line 13
    .line 14
    iget-object v0, p2, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, v0}, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 23
    .line 24
    if-eqz p2, :cond_3

    .line 25
    .line 26
    iget-object p2, p2, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    check-cast p2, Landroidx/collection/ArrayMap$ValueCollection;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-static {p2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    throw p0

    .line 50
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    if-eqz p2, :cond_7

    .line 54
    .line 55
    iget v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->order:I

    .line 56
    .line 57
    iget-object v2, p2, Lcom/mikepenz/fastadapter/FastAdapter;->adapters:Ljava/util/ArrayList;

    .line 58
    .line 59
    iget p2, p2, Lcom/mikepenz/fastadapter/FastAdapter;->globalSize:I

    .line 60
    .line 61
    if-nez p2, :cond_4

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    move v1, v0

    .line 73
    move v3, v1

    .line 74
    :goto_1
    if-ge v1, p2, :cond_6

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 81
    .line 82
    iget-boolean v5, v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->active:Z

    .line 83
    .line 84
    if-eqz v5, :cond_5

    .line 85
    .line 86
    iget-object v4, v4, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 87
    .line 88
    iget-object v4, v4, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    goto :goto_2

    .line 97
    :cond_5
    move v4, v0

    .line 98
    :goto_2
    add-int/2addr v3, v4

    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_6
    move v0, v3

    .line 103
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    iget-object v1, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v1, Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v2, Ljava/util/List;

    .line 123
    .line 124
    if-eq p1, v2, :cond_9

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_8

    .line 131
    .line 132
    iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Ljava/util/List;

    .line 135
    .line 136
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 137
    .line 138
    .line 139
    :cond_8
    iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v2, Ljava/util/List;

    .line 142
    .line 143
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    .line 145
    .line 146
    :cond_9
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Lcom/mikepenz/fastadapter/FastAdapter;

    .line 149
    .line 150
    if-eqz p0, :cond_f

    .line 151
    .line 152
    if-le p2, v1, :cond_c

    .line 153
    .line 154
    if-lez v1, :cond_a

    .line 155
    .line 156
    invoke-static {p0, v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;II)V

    .line 157
    .line 158
    .line 159
    :cond_a
    add-int/2addr v0, v1

    .line 160
    sub-int/2addr p2, v1

    .line 161
    iget-object p1, p0, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Landroidx/collection/ArrayMap$ValueCollection;

    .line 168
    .line 169
    invoke-virtual {p1}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroidx/collection/ArrayMap$KeyIterator;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_b

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->cacheSizes()V

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    .line 185
    .line 186
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_b
    invoke-virtual {p1}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m()V

    .line 198
    .line 199
    .line 200
    :goto_4
    return-void

    .line 201
    :cond_c
    if-lez p2, :cond_d

    .line 202
    .line 203
    invoke-static {p0, v0, p2}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeChanged$default(Lcom/mikepenz/fastadapter/FastAdapter;II)V

    .line 204
    .line 205
    .line 206
    if-ge p2, v1, :cond_f

    .line 207
    .line 208
    add-int/2addr v0, p2

    .line 209
    sub-int/2addr v1, p2

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_d
    if-nez p2, :cond_e

    .line 215
    .line 216
    invoke-virtual {p0, v0, v1}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterItemRangeRemoved(II)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_e
    invoke-virtual {p0}, Lcom/mikepenz/fastadapter/FastAdapter;->notifyAdapterDataSetChanged()V

    .line 221
    .line 222
    .line 223
    :cond_f
    return-void
.end method
