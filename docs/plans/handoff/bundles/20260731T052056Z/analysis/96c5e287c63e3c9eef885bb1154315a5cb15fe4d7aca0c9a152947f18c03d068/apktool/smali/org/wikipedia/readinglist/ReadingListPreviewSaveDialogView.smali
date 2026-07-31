.class public final Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;
.super Landroid/widget/FrameLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lokhttp3/MultipartBody$Builder;

.field public callback:Lretrofit2/OkHttpCall$1;

.field public currentReadingLists:Ljava/util/List;

.field public readingList:Lorg/wikipedia/readinglist/database/ReadingList;

.field public readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

.field public savedReadingListPages:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0c05e9

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    const v2, 0x7f090539

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lorg/wikipedia/views/PlainPasteEditText;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    const v2, 0x7f09053a

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    const v2, 0x7f090569

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    .line 54
    .line 55
    check-cast v1, Landroid/widget/LinearLayout;

    .line 56
    .line 57
    invoke-direct {v2, v3, v4, v5}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 61
    .line 62
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 63
    .line 64
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->currentReadingLists:Ljava/util/List;

    .line 65
    .line 66
    sget-object v1, Lorg/wikipedia/readinglist/ReadingListMode;->PREVIEW:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 67
    .line 68
    iput-object v1, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 69
    .line 70
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    const/4 v2, -0x1

    .line 73
    const/4 v4, -0x2

    .line 74
    invoke-direct {v1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lorg/wikipedia/views/DrawableItemDecoration;

    .line 90
    .line 91
    invoke-direct {v1, p1, v2, v2, v2}, Lorg/wikipedia/views/DrawableItemDecoration;-><init>(Landroid/content/Context;ZZZ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lcoil3/util/BitmapsKt;->coroutineScope$default(Landroid/view/View;)Lkotlinx/coroutines/CoroutineScope;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    sget-object v1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 102
    .line 103
    new-instance v2, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 104
    .line 105
    const/4 v4, 0x3

    .line 106
    invoke-direct {v2, v1, v4}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 110
    .line 111
    const/16 v4, 0x19

    .line 112
    .line 113
    invoke-direct {v1, v4, p0, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 114
    .line 115
    .line 116
    const/4 v4, 0x2

    .line 117
    invoke-static {p1, v2, v0, v1, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 118
    .line 119
    .line 120
    new-instance p1, Landroidx/appcompat/widget/SearchView$10;

    .line 121
    .line 122
    const/16 v0, 0x8

    .line 123
    .line 124
    invoke-direct {p1, v0, p0}, Landroidx/appcompat/widget/SearchView$10;-><init>(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    const-string p1, "Missing required view with ID: "

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0
.end method


# virtual methods
.method public final getReadingListMode()Lorg/wikipedia/readinglist/ReadingListMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setReadingListMode(Lorg/wikipedia/readinglist/ReadingListMode;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->readingListMode:Lorg/wikipedia/readinglist/ReadingListMode;

    .line 5
    .line 6
    return-void
.end method

.method public final validateTitleAndList()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->binding:Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    iget-object v1, v0, Lokhttp3/MultipartBody$Builder;->boundary:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 6
    .line 7
    iget-object v0, v0, Lokhttp3/MultipartBody$Builder;->type:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->currentReadingLists:Ljava/util/List;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const-string v4, "callback"

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_3

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    check-cast v6, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 49
    .line 50
    invoke-virtual {v6}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    aput-object v1, v3, v6

    .line 68
    .line 69
    const v1, 0x7f1207a8

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->callback:Lretrofit2/OkHttpCall$1;

    .line 80
    .line 81
    if-eqz p0, :cond_2

    .line 82
    .line 83
    invoke-virtual {p0}, Lretrofit2/OkHttpCall$1;->onError()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v5

    .line 91
    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_5

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->callback:Lretrofit2/OkHttpCall$1;

    .line 101
    .line 102
    if-eqz p0, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0}, Lretrofit2/OkHttpCall$1;->onError()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v5

    .line 112
    :cond_5
    iget-object v2, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->savedReadingListPages:Ljava/util/ArrayList;

    .line 113
    .line 114
    if-eqz v2, :cond_a

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->callback:Lretrofit2/OkHttpCall$1;

    .line 126
    .line 127
    if-eqz p0, :cond_6

    .line 128
    .line 129
    invoke-virtual {p0}, Lretrofit2/OkHttpCall$1;->onError()V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw v5

    .line 137
    :cond_7
    invoke-virtual {v0, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lorg/wikipedia/readinglist/ReadingListPreviewSaveDialogView;->callback:Lretrofit2/OkHttpCall$1;

    .line 141
    .line 142
    if-eqz p0, :cond_9

    .line 143
    .line 144
    iget-object v0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v0, Lorg/wikipedia/readinglist/ReadingListFragment;

    .line 147
    .line 148
    iget-object v0, v0, Lorg/wikipedia/readinglist/ReadingListFragment;->previewSaveDialog:Landroidx/appcompat/app/AlertDialog;

    .line 149
    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    iget-object v0, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 153
    .line 154
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 155
    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    .line 160
    .line 161
    :cond_8
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 164
    .line 165
    iput-object v1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 166
    .line 167
    return-void

    .line 168
    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v5

    .line 172
    :cond_a
    const-string p0, "savedReadingListPages"

    .line 173
    .line 174
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v5
.end method
