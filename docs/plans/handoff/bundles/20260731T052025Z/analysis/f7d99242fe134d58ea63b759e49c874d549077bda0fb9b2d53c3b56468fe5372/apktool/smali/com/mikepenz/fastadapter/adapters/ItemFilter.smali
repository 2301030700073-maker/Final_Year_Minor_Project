.class public final Lcom/mikepenz/fastadapter/adapters/ItemFilter;
.super Landroid/widget/Filter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public constraint:Ljava/lang/CharSequence;

.field public filterPredicate:Lkotlin/jvm/functions/Function2;

.field public final itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

.field public originalItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mikepenz/fastadapter/adapters/ItemAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/Filter$FilterResults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :cond_0
    return-object v0

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->fastAdapter:Lcom/mikepenz/fastadapter/FastAdapter;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->itemList:Lcom/google/zxing/BinaryBitmap;

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget-object v2, v2, Lcom/mikepenz/fastadapter/FastAdapter;->extensionsCache:Landroidx/collection/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/collection/ArrayMap$ValueCollection;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/collection/ArrayMap$ValueCollection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    throw p0

    .line 51
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->constraint:Ljava/lang/CharSequence;

    .line 52
    .line 53
    iget-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/ArrayList;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    new-instance v2, Ljava/util/ArrayList;

    .line 58
    .line 59
    iget-object v3, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Ljava/util/List;

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/ArrayList;

    .line 67
    .line 68
    :cond_4
    if-eqz p1, :cond_9

    .line 69
    .line 70
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->filterPredicate:Lkotlin/jvm/functions/Function2;

    .line 78
    .line 79
    if-eqz p0, :cond_7

    .line 80
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_8

    .line 95
    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    move-object v4, v3

    .line 101
    check-cast v4, Lcom/mikepenz/fastadapter/items/AbstractItem;

    .line 102
    .line 103
    invoke-interface {p0, v4, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Ljava/lang/Boolean;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_6

    .line 114
    .line 115
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    iget-object p0, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Ljava/lang/Object;

    .line 120
    .line 121
    move-object v1, p0

    .line 122
    check-cast v1, Ljava/util/List;

    .line 123
    .line 124
    :cond_8
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    iput p0, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_9
    :goto_2
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 140
    .line 141
    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->originalItems:Ljava/util/ArrayList;

    .line 143
    .line 144
    return-object v0
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    check-cast p1, Ljava/util/List;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iget-object p0, p0, Lcom/mikepenz/fastadapter/adapters/ItemFilter;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->setInternal(Ljava/util/List;Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
