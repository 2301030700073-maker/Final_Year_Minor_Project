.class public final Landroidx/cursoradapter/widget/CursorFilter;
.super Landroid/widget/Filter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public mClient:Landroid/widget/BaseAdapter;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/activity/compose/RecipientAdapter;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    .line 12
    .line 13
    check-cast p0, Landroidx/cursoradapter/widget/CursorAdapter;

    .line 14
    .line 15
    check-cast p1, Landroid/database/Cursor;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/cursoradapter/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;->recipients:Ljava/util/List;

    .line 22
    .line 23
    iput-object p0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    iput p0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 30
    .line 31
    :goto_0
    return-object v1

    .line 32
    :pswitch_0
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    .line 33
    .line 34
    check-cast p0, Landroidx/cursoradapter/widget/CursorAdapter;

    .line 35
    .line 36
    check-cast p0, Landroidx/appcompat/widget/SuggestionsAdapter;

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    const-string p1, ""

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 63
    .line 64
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :catch_0
    move-exception p0

    .line 75
    const-string p1, "SuggestionsAdapter"

    .line 76
    .line 77
    const-string v0, "Search suggestions query threw an exception."

    .line 78
    .line 79
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_2
    move-object p0, v1

    .line 83
    :goto_3
    new-instance p1, Landroid/widget/Filter$FilterResults;

    .line 84
    .line 85
    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 86
    .line 87
    .line 88
    if-eqz p0, :cond_4

    .line 89
    .line 90
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    .line 95
    .line 96
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    const/4 p0, 0x0

    .line 100
    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    .line 101
    .line 102
    iput-object v1, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 103
    .line 104
    :goto_4
    return-object p1

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/cursoradapter/widget/CursorFilter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p0, p0, Landroidx/cursoradapter/widget/CursorFilter;->mClient:Landroid/widget/BaseAdapter;

    .line 15
    .line 16
    check-cast p0, Landroidx/cursoradapter/widget/CursorAdapter;

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 19
    .line 20
    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    if-eq p2, p1, :cond_0

    .line 25
    .line 26
    check-cast p2, Landroid/database/Cursor;

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
