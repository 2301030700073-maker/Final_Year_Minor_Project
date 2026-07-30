.class public Lcom/android/contacts/widget/CompositeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeListAdapter.java"


# static fields
.field private static final INITIAL_CAPACITY:I = 0x2


# instance fields
.field private mAdapters:[Landroid/widget/ListAdapter;

.field private mAllItemsEnabled:Z

.field private mCacheValid:Z

.field private mCount:I

.field private mCounts:[I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mSize:I

.field private mViewTypeCount:I

.field private mViewTypeCounts:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    .line 60
    invoke-direct {p0, v0}, Lcom/android/contacts/widget/CompositeListAdapter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    .line 39
    iput p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 40
    iput p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 42
    iput-boolean p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    .line 44
    new-instance p1, Lcom/android/contacts/widget/CompositeListAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/contacts/widget/CompositeListAdapter$1;-><init>(Lcom/android/contacts/widget/CompositeListAdapter;)V

    iput-object p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/widget/ListAdapter;

    .line 64
    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    new-array v0, p1, [I

    .line 65
    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    new-array p1, p1, [I

    .line 66
    iput-object p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    return-void
.end method


# virtual methods
.method addAdapter(Landroid/widget/ListAdapter;)V
    .locals 5

    .line 71
    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    iget-object v1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    .line 73
    new-array v3, v2, [Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    .line 74
    invoke-static {v1, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    .line 77
    new-array v0, v2, [I

    .line 78
    iget-object v1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    .line 81
    new-array v0, v2, [I

    .line 82
    iget-object v1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    iget v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 88
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 89
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput-object p1, v2, v3

    .line 92
    iget-object v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aput v0, v2, v3

    .line 93
    iget v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 94
    iget-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p1

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 95
    iget-object p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput v1, p1, v0

    .line 96
    iget p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/lit8 v0, v0, 0x1

    .line 97
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 207
    iget-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    return v0
.end method

.method protected ensureCacheValid()V
    .locals 5

    .line 115
    iget-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 121
    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    .line 122
    :goto_0
    iget v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    if-ge v0, v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 124
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v0

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 125
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aput v2, v4, v0

    .line 126
    iget v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    .line 127
    iget-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v4, v4, v0

    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v4

    and-int/2addr v2, v4

    iput-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    .line 128
    iget v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    iput-boolean v1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 136
    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 143
    aget v2, v2, v0

    add-int/2addr v2, v1

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v0, v2, v0

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getItemId(I)J
    .locals 4

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 157
    aget v2, v2, v0

    add-int/2addr v2, v1

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v0, v2, v0

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 175
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 178
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 179
    aget v3, v3, v0

    add-int/2addr v3, v1

    if-lt p1, v1, :cond_0

    if-ge p1, v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    add-int/2addr v2, p1

    return v2

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    aget v1, v1, v0

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 194
    aget v2, v2, v0

    add-int/2addr v2, v1

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v0, v2, v0

    sub-int/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 201
    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    .line 170
    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    return v0
.end method

.method protected invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    return-void
.end method

.method public isEnabled(I)Z
    .locals 5

    .line 212
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 214
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 215
    aget v3, v3, v1

    add-int/2addr v3, v2

    if-lt p1, v2, :cond_2

    if-ge p1, v3, :cond_2

    .line 217
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v1, v3, v1

    sub-int/2addr p1, v2

    .line 218
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    .line 223
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected notifyDataChanged()V
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    :goto_0
    return-void
.end method
