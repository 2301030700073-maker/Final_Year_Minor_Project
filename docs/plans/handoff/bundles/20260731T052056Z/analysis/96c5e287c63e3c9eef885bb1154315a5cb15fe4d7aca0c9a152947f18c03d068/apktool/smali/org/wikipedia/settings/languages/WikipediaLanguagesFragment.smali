.class public final Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/core/view/MenuProvider;
.implements Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0006\u0006\u0007\u0008\t\n\u000bB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/core/view/MenuProvider;",
        "Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView$Callback;",
        "<init>",
        "()V",
        "WikipediaLanguageItemAdapter",
        "RearrangeableItemTouchHelperCallback",
        "DescriptionViewHolder",
        "WikipediaLanguageItemHolder",
        "FooterViewHolder",
        "MultiSelectCallback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lokhttp3/MultipartBody$Builder;

.field public actionMode:Landroidx/appcompat/view/ActionMode;

.field public adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

.field public final app:Lorg/wikipedia/WikipediaApp;

.field public isLanguageSearched:Z

.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public final multiSelectCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

.field public final selectedCodes:Ljava/util/ArrayList;

.field public final wikipediaLanguages:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 5
    .line 6
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->multiSelectCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3b

    .line 5
    .line 6
    if-ne p1, v0, :cond_3

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string p1, "add_language_interactions"

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    iget-boolean p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->isLanguageSearched:Z

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const-string p1, "language_searched"

    .line 25
    .line 26
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    :cond_0
    const/4 p2, 0x1

    .line 33
    :cond_1
    iput-boolean p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->isLanguageSearched:Z

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->prepareWikipediaLanguagesList()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const-string p0, "adapter"

    .line 54
    .line 55
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x0

    .line 59
    throw p0

    .line 60
    :cond_3
    return-void
.end method

.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0e002d

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    const/4 p2, 0x1

    .line 30
    if-gt p0, p2, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    invoke-interface {p1, p0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c01b6

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f0906cb

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    const p2, 0x7f09077b

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    new-instance p2, Lokhttp3/MultipartBody$Builder;

    .line 36
    .line 37
    check-cast p1, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    invoke-direct {p2, p1, p3, v1}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object p2, p2, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p2, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "invokeSource"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    check-cast p1, Lorg/wikipedia/Constants$InvokeSource;

    .line 78
    .line 79
    sget-object p1, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 80
    .line 81
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 82
    .line 83
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 p2, 0x1

    .line 92
    :try_start_0
    sget-object p3, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance v1, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 98
    .line 99
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    .line 100
    .line 101
    invoke-direct {v1, v2, p2}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, v1, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 121
    .line 122
    invoke-virtual {p1, p0, p3, v1}, Landroidx/activity/ComponentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/fragment/app/FragmentViewLifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->prepareWikipediaLanguagesList()V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 141
    .line 142
    invoke-direct {p1, p0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V

    .line 143
    .line 144
    .line 145
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 146
    .line 147
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    .line 156
    iget-object p3, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 157
    .line 158
    const-string v1, "adapter"

    .line 159
    .line 160
    if-eqz p3, :cond_1

    .line 161
    .line 162
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object p1, p1, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 173
    .line 174
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 175
    .line 176
    invoke-direct {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 180
    .line 181
    .line 182
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 183
    .line 184
    new-instance p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;

    .line 185
    .line 186
    iget-object p3, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 187
    .line 188
    if-eqz p3, :cond_0

    .line 189
    .line 190
    invoke-direct {p2, p0, p3}, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RearrangeableItemTouchHelperCallback;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 197
    .line 198
    iget-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    iget-object p2, p2, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 206
    .line 207
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 208
    .line 209
    .line 210
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p0, Landroid/widget/LinearLayout;

    .line 218
    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    return-object p0

    .line 223
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v0

    .line 227
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw v0

    .line 231
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const-string p1, "Missing required view with ID: "

    .line 240
    .line 241
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-object v0
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->parts:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->_binding:Lokhttp3/MultipartBody$Builder;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 18
    .line 19
    return-void
.end method

.method public final onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f090406

    .line 9
    .line 10
    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->multiSelectCallback:Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->adapter:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->checkboxEnabled:Z

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 37
    .line 38
    .line 39
    return v0

    .line 40
    :cond_0
    const-string p0, "adapter"

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    throw p0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final prepareWikipediaLanguagesList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->wikipediaLanguages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final toggleSelectedLanguage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->selectedCodes:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
