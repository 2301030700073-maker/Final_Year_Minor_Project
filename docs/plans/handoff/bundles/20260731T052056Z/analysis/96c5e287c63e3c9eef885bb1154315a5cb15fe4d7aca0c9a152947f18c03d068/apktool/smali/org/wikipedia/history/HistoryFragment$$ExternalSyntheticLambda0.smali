.class public final synthetic Lorg/wikipedia/history/HistoryFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/history/HistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/history/HistoryFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/history/HistoryFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/history/HistoryFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lorg/wikipedia/history/HistoryFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/history/HistoryFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/history/HistoryFragment;

    .line 6
    .line 7
    check-cast p1, Lorg/wikipedia/util/Resource;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    instance-of p1, p1, Lorg/wikipedia/util/Resource$Success;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lorg/wikipedia/history/HistoryFragment;->selectedEntries:Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lorg/wikipedia/history/HistoryEntry;

    .line 38
    .line 39
    invoke-virtual {v2}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v2, v3, v4

    .line 50
    .line 51
    const v2, 0x7f12026b

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-array v3, v3, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v2, v3, v4

    .line 70
    .line 71
    const v2, 0x7f12026c

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/16 v5, 0xc

    .line 86
    .line 87
    invoke-static {v3, v2, v4, v5}, Lorg/wikipedia/util/ShareUtil;->makeSnackbar$default(Landroid/app/Activity;Ljava/lang/CharSequence;II)Lcom/google/android/material/snackbar/Snackbar;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    new-instance v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 92
    .line 93
    const/16 v4, 0xf

    .line 94
    .line 95
    invoke-direct {v3, v4, p0, v0}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const v0, 0x7f12026a

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0, v3}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryFragment;->getViewModel()Lorg/wikipedia/history/HistoryViewModel;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryViewModel;->reloadHistoryItems()V

    .line 115
    .line 116
    .line 117
    :cond_1
    return-object v1

    .line 118
    :pswitch_0
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Success;

    .line 119
    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    check-cast p1, Lorg/wikipedia/util/Resource$Success;

    .line 123
    .line 124
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Success;->data:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p1, Ljava/util/List;

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment;->onLoadItemsFinished(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    instance-of v0, p1, Lorg/wikipedia/util/Resource$Error;

    .line 133
    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    check-cast p1, Lorg/wikipedia/util/Resource$Error;

    .line 137
    .line 138
    iget-object p1, p1, Lorg/wikipedia/util/Resource$Error;->throwable:Ljava/lang/Throwable;

    .line 139
    .line 140
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 144
    .line 145
    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryFragment;->onLoadItemsFinished(Ljava/util/List;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_1
    return-object v1

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
