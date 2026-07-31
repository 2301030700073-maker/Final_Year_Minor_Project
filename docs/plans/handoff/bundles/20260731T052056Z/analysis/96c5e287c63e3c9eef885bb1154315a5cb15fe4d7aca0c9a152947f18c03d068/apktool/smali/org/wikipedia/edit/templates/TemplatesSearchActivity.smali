.class public final Lorg/wikipedia/edit/templates/TemplatesSearchActivity;
.super Lorg/wikipedia/activity/BaseActivity;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/wikipedia/edit/templates/TemplatesSearchActivity;",
        "Lorg/wikipedia/activity/BaseActivity;",
        "<init>",
        "()V",
        "CategoryMemberDiffCallback",
        "CategoryMembersAdapter",
        "TemplatesSearchItemHolder",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public binding:Lcom/google/gson/GsonBuilder;

.field public insertTemplateFragment:Lorg/wikipedia/edit/templates/InsertTemplateFragment;

.field public final onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public final searchCloseListener:Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;

.field public final searchQueryListener:Lorg/wikipedia/media/AvPlayer;

.field public templatesSearchAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

.field public final viewModel$delegate:Lokhttp3/Request$Builder;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/Request$Builder;

    .line 11
    .line 12
    const-class v2, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 13
    .line 14
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$special$$inlined$viewModels$default$1;

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v3, p0, v4}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;I)V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$special$$inlined$viewModels$default$1;

    .line 27
    .line 28
    const/4 v6, 0x2

    .line 29
    invoke-direct {v5, p0, v6}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$special$$inlined$viewModels$default$1;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v2, v3, v0, v5}, Lokhttp3/Request$Builder;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 36
    .line 37
    new-instance v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-direct {v0, p0, v4}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;I)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->searchCloseListener:Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/media/AvPlayer;-><init>(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->searchQueryListener:Lorg/wikipedia/media/AvPlayer;

    .line 51
    .line 52
    new-instance v0, Landroidx/fragment/app/FragmentManager$1;

    .line 53
    .line 54
    const/4 v1, 0x6

    .line 55
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$1;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 59
    .line 60
    return-void
.end method

.method public static sendPatrollerExperienceEvent$default(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-boolean p0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;->isFromDiff:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 13
    .line 14
    new-instance v0, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 15
    .line 16
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 17
    .line 18
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 23
    .line 24
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v6, "app_patroller_experience"

    .line 29
    .line 30
    const-string v2, "pt_templates"

    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    move-object v1, p1

    .line 35
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final getViewModel()Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/edit/templates/TemplatesSearchViewModel;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Lorg/wikipedia/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0c0038

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f090212

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v6, v3

    .line 25
    check-cast v6, Landroid/widget/TextView;

    .line 26
    .line 27
    if-eqz v6, :cond_c

    .line 28
    .line 29
    const v0, 0x7f0902f6

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v7, v3

    .line 37
    check-cast v7, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v7, :cond_c

    .line 40
    .line 41
    const v0, 0x7f0902f7

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Landroidx/fragment/app/FragmentContainerView;

    .line 49
    .line 50
    if-eqz v3, :cond_c

    .line 51
    .line 52
    const v3, 0x7f0905b4

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    move-object v8, v4

    .line 60
    check-cast v8, Lorg/wikipedia/views/CabSearchView;

    .line 61
    .line 62
    if-eqz v8, :cond_b

    .line 63
    .line 64
    const v3, 0x7f0905b8

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    move-object v9, v4

    .line 72
    check-cast v9, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 73
    .line 74
    if-eqz v9, :cond_b

    .line 75
    .line 76
    const v3, 0x7f090695

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    move-object v10, v4

    .line 84
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    if-eqz v10, :cond_b

    .line 87
    .line 88
    const v3, 0x7f0906cb

    .line 89
    .line 90
    .line 91
    invoke-static {p1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    move-object v11, v4

    .line 96
    check-cast v11, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 97
    .line 98
    if-eqz v11, :cond_b

    .line 99
    .line 100
    const v3, 0x7f0906cc

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v3}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    move-object v12, v4

    .line 108
    check-cast v12, Landroid/widget/FrameLayout;

    .line 109
    .line 110
    if-eqz v12, :cond_b

    .line 111
    .line 112
    new-instance v4, Lcom/google/gson/GsonBuilder;

    .line 113
    .line 114
    move-object v5, p1

    .line 115
    check-cast v5, Landroid/widget/LinearLayout;

    .line 116
    .line 117
    const/4 v13, 0x7

    .line 118
    invoke-direct/range {v4 .. v13}, Lcom/google/gson/GsonBuilder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;I)V

    .line 119
    .line 120
    .line 121
    iput-object v4, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 122
    .line 123
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 127
    .line 128
    const-string v3, "binding"

    .line 129
    .line 130
    if-eqz p1, :cond_a

    .line 131
    .line 132
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast p1, Lcom/google/android/material/appbar/MaterialToolbar;

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 137
    .line 138
    .line 139
    const-string p1, "search_init"

    .line 140
    .line 141
    invoke-static {p0, p1}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->sendPatrollerExperienceEvent$default(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 145
    .line 146
    if-eqz p1, :cond_9

    .line 147
    .line 148
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p1, Lorg/wikipedia/views/CabSearchView;

    .line 151
    .line 152
    iget-object v4, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->searchQueryListener:Lorg/wikipedia/media/AvPlayer;

    .line 153
    .line 154
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 158
    .line 159
    if-eqz p1, :cond_8

    .line 160
    .line 161
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p1, Lorg/wikipedia/views/CabSearchView;

    .line 164
    .line 165
    iget-object v4, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->searchCloseListener:Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-virtual {p1, v4}, Lorg/wikipedia/views/CabSearchView;->setCloseButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 171
    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p1, Lorg/wikipedia/views/CabSearchView;

    .line 177
    .line 178
    new-instance v4, Landroid/util/TypedValue;

    .line 179
    .line 180
    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    const v6, 0x7f04054f

    .line 188
    .line 189
    .line 190
    const/4 v7, 0x1

    .line 191
    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_0

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_0
    move-object v4, v1

    .line 199
    :goto_0
    if-eqz v4, :cond_6

    .line 200
    .line 201
    iget v4, v4, Landroid/util/TypedValue;->data:I

    .line 202
    .line 203
    invoke-virtual {p1, v4}, Lorg/wikipedia/views/CabSearchView;->setSearchHintTextColor(I)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 207
    .line 208
    if-eqz p1, :cond_5

    .line 209
    .line 210
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast p1, Lorg/wikipedia/views/CabSearchView;

    .line 213
    .line 214
    const v4, 0x7f1209a8

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 225
    .line 226
    if-eqz p1, :cond_4

    .line 227
    .line 228
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast p1, Lorg/wikipedia/views/CabSearchView;

    .line 231
    .line 232
    const v4, 0x7f0905d0

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iget-object v4, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->onBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    .line 247
    .line 248
    invoke-virtual {p1, v4, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/fragment/app/FragmentManager$1;Landroidx/lifecycle/LifecycleOwner;)V

    .line 249
    .line 250
    .line 251
    new-instance p1, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 252
    .line 253
    invoke-direct {p1, p0}, Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;)V

    .line 254
    .line 255
    .line 256
    iput-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->templatesSearchAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 257
    .line 258
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 259
    .line 260
    if-eqz p1, :cond_3

    .line 261
    .line 262
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 265
    .line 266
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 267
    .line 268
    invoke-direct {v4, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 275
    .line 276
    if-eqz p1, :cond_2

    .line 277
    .line 278
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->factories:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 281
    .line 282
    iget-object v4, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->templatesSearchAdapter:Lorg/wikipedia/categories/CategoryActivity$CategoryMembersAdapter;

    .line 283
    .line 284
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    check-cast p1, Lorg/wikipedia/edit/templates/InsertTemplateFragment;

    .line 299
    .line 300
    iput-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->insertTemplateFragment:Lorg/wikipedia/edit/templates/InsertTemplateFragment;

    .line 301
    .line 302
    iget-object p1, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 303
    .line 304
    if-eqz p1, :cond_1

    .line 305
    .line 306
    iget-object p1, p1, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast p1, Landroid/widget/TextView;

    .line 309
    .line 310
    new-instance v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    .line 317
    .line 318
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    new-instance v0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;

    .line 323
    .line 324
    invoke-direct {v0, p0, v1, v2}, Lorg/wikipedia/edit/templates/TemplatesSearchActivity$onCreate$2;-><init>(Lorg/wikipedia/edit/templates/TemplatesSearchActivity;Lkotlin/coroutines/Continuation;I)V

    .line 325
    .line 326
    .line 327
    const/4 p0, 0x3

    .line 328
    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v1

    .line 336
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v1

    .line 340
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw v1

    .line 344
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v1

    .line 348
    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v1

    .line 352
    :cond_6
    const-string p0, "Attribute not found; ID=2130969935"

    .line 353
    .line 354
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    throw v1

    .line 362
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    throw v1

    .line 366
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    throw v1

    .line 370
    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v1

    .line 374
    :cond_b
    move v0, v3

    .line 375
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p0

    .line 383
    const-string p1, "Missing required view with ID: "

    .line 384
    .line 385
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    return-void
.end method

.method public final updateInsertButton(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    const-string v1, "binding"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const p1, 0x7f040520

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const p1, 0x7f0402dd

    .line 30
    .line 31
    .line 32
    :goto_0
    new-instance v1, Landroid/util/TypedValue;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {p0, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    move-object v2, v1

    .line 49
    :cond_1
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget p0, v2, Landroid/util/TypedValue;->data:I

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    const-string p0, "Attribute not found; ID="

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2

    .line 71
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v2
.end method

.method public final updateToolbarElevation$1(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/templates/TemplatesSearchActivity;->binding:Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/gson/GsonBuilder;->reflectionFilters:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {p1}, Lokio/Okio__OkioKt;->dpToPx(F)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string p0, "binding"

    .line 24
    .line 25
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0
.end method
