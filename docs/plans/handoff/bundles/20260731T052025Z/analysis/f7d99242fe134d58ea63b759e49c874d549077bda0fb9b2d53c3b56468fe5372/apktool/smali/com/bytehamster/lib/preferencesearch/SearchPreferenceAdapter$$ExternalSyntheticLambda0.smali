.class public final synthetic Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;

.field public final synthetic f$1:Lcom/bytehamster/lib/preferencesearch/ListItem;

.field public final synthetic f$2:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;Lcom/bytehamster/lib/preferencesearch/ListItem;Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$ViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/bytehamster/lib/preferencesearch/ListItem;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$ViewHolder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter;->onItemClickListener:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 4
    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$ViewHolder;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/bytehamster/lib/preferencesearch/ListItem;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/ListItem;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    check-cast p0, Lcom/bytehamster/lib/preferencesearch/HistoryItem;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/bytehamster/lib/preferencesearch/HistoryItem;->term:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Landroid/widget/EditText;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Landroid/widget/EditText;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->historyClickListener:Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    iget-object p1, p1, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;

    .line 59
    .line 60
    sget v0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceActionView;->$r8$clinit:I

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SearchView;->setQuery$1(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->hideKeyboard$2()V

    .line 67
    .line 68
    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;

    .line 74
    .line 75
    iget-object v1, p1, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->results:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;

    .line 82
    .line 83
    iget-object v1, v0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->title:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->addHistoryEntry(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v1, v0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->keyBreadcrumbs:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_2

    .line 97
    .line 98
    iget-object v1, v0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->keyBreadcrumbs:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    sub-int/2addr v3, v2

    .line 105
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const/4 v1, 0x0

    .line 113
    :goto_0
    new-instance v3, Lorg/jsoup/parser/ParseError;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/bytehamster/lib/preferencesearch/PreferenceItem;->key:Ljava/lang/String;

    .line 116
    .line 117
    invoke-direct {v3, v2, v0, v1}, Lorg/jsoup/parser/ParseError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v3}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsActivity;->onSearchResultClicked(Lorg/jsoup/parser/ParseError;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :catch_0
    new-instance p0, Ljava/lang/ClassCastException;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p1, " must implement SearchPreferenceResultListener"

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :cond_3
    return-void
.end method
