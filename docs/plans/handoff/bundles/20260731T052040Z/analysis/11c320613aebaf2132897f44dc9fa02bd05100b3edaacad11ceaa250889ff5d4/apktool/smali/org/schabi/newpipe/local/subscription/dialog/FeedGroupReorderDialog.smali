.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public _binding:Lorg/jsoup/nodes/Printer;

.field public final groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

.field public groupOrderedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

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
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/xwray/groupie/GroupieAdapter;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/xwray/groupie/GroupAdapter;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 17
    .line 18
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 19
    .line 20
    new-instance v1, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$2;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lokio/Options$Companion;->isLightThemeSelected(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const p1, 0x7f140178

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const p1, 0x7f140145

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0d0037

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/jsoup/nodes/Printer;

    .line 3
    .line 4
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p2, 0x7f0a00c4

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/Button;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const p2, 0x7f0a0194

    .line 16
    .line 17
    .line 18
    invoke-static {p2, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance p2, Lorg/jsoup/nodes/Printer;

    .line 27
    .line 28
    check-cast p1, Landroid/widget/LinearLayout;

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    invoke-direct {p2, v2, p1, v0, v1}, Lorg/jsoup/nodes/Printer;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/jsoup/nodes/Printer;

    .line 35
    .line 36
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelProviderFactory(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelCreationExtras(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    new-instance v1, Lokhttp3/Dispatcher;

    .line 58
    .line 59
    invoke-direct {v1, p1, p2, v0}, Lokhttp3/Dispatcher;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 60
    .line 61
    .line 62
    const-class p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    const-string v0, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 75
    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {v1, p2, p1}, Lokhttp3/Dispatcher;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    .line 85
    .line 86
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    .line 87
    .line 88
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->groupsLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;

    .line 95
    .line 96
    const/4 v1, 0x2

    .line 97
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;-><init>(Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;

    .line 104
    .line 105
    if-eqz p1, :cond_0

    .line 106
    .line 107
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel;->dialogEventLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    new-instance v0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 114
    .line 115
    const/16 v1, 0xe

    .line 116
    .line 117
    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;

    .line 121
    .line 122
    const/4 v2, 0x3

    .line 123
    invoke-direct {v1, v0, v2}, Lorg/schabi/newpipe/local/feed/FeedFragment$sam$androidx_lifecycle_Observer$0;-><init>(Ljava/lang/Object;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/jsoup/nodes/Printer;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    .line 138
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/jsoup/nodes/Printer;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    .line 159
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/jsoup/nodes/Printer;

    .line 165
    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->settings:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 172
    .line 173
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 174
    .line 175
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/jsoup/nodes/Printer;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p1, Landroid/widget/Button;

    .line 186
    .line 187
    new-instance p2, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;

    .line 188
    .line 189
    const/4 v0, 0x7

    .line 190
    invoke-direct {p2, p0, v0}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_0
    const-string/jumbo p0, "viewModel"

    .line 198
    .line 199
    .line 200
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const/4 p0, 0x0

    .line 204
    throw p0

    .line 205
    :cond_1
    const-string p0, "Local and anonymous classes can not be ViewModels"

    .line 206
    .line 207
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    const-string p1, "Missing required view with ID: "

    .line 220
    .line 221
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method
