.class public final Lorg/wikipedia/diff/ArticleEditDetailsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public canGoForward:Z

.field public final diffText:Landroidx/lifecycle/MutableLiveData;

.field public final fromRecentEdits:Z

.field public hasRollbackRights:Z

.field public isWatched:Z

.field public ns:I

.field public pageId:I

.field public pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final revisionDetails:Landroidx/lifecycle/MutableLiveData;

.field public revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

.field public revisionFromId:J

.field public revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

.field public revisionToId:J

.field public final rollbackResponse:Lorg/wikipedia/util/SingleLiveData;

.field public final rollbackRights:Landroidx/lifecycle/MutableLiveData;

.field public final singleRevisionText:Landroidx/lifecycle/MutableLiveData;

.field public final thankStatus:Lorg/wikipedia/util/SingleLiveData;

.field public final undoEditResponse:Lorg/wikipedia/util/SingleLiveData;

.field public final watchResponse:Lorg/wikipedia/util/SingleLiveData;

.field public final watchedStatus:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "invokeSource"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/wikipedia/Constants$InvokeSource;

    .line 14
    .line 15
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->watchedStatus:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->rollbackRights:Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionDetails:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->diffText:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->singleRevisionText:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    new-instance v1, Lorg/wikipedia/util/SingleLiveData;

    .line 51
    .line 52
    invoke-direct {v1}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->thankStatus:Lorg/wikipedia/util/SingleLiveData;

    .line 56
    .line 57
    new-instance v1, Lorg/wikipedia/util/SingleLiveData;

    .line 58
    .line 59
    invoke-direct {v1}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->watchResponse:Lorg/wikipedia/util/SingleLiveData;

    .line 63
    .line 64
    new-instance v1, Lorg/wikipedia/util/SingleLiveData;

    .line 65
    .line 66
    invoke-direct {v1}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->undoEditResponse:Lorg/wikipedia/util/SingleLiveData;

    .line 70
    .line 71
    new-instance v1, Lorg/wikipedia/util/SingleLiveData;

    .line 72
    .line 73
    invoke-direct {v1}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->rollbackResponse:Lorg/wikipedia/util/SingleLiveData;

    .line 77
    .line 78
    sget-object v1, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS_RECENT_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    if-ne v0, v1, :cond_0

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    move v0, v2

    .line 86
    :goto_0
    iput-boolean v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 87
    .line 88
    const-string v1, "articleTitle"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 98
    .line 99
    iput-object v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 100
    .line 101
    const-string v1, "pageId"

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Ljava/lang/Integer;

    .line 108
    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    goto :goto_1

    .line 116
    :cond_1
    const/4 v1, -0x1

    .line 117
    :goto_1
    iput v1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 118
    .line 119
    const-string v1, "revisionTo"

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Long;

    .line 126
    .line 127
    const-wide/16 v3, -0x1

    .line 128
    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    goto :goto_2

    .line 136
    :cond_2
    move-wide v5, v3

    .line 137
    :goto_2
    iput-wide v5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 138
    .line 139
    const-string v1, "revisionFrom"

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Ljava/lang/Long;

    .line 146
    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 150
    .line 151
    .line 152
    move-result-wide v3

    .line 153
    :cond_3
    move-wide v9, v3

    .line 154
    iput-wide v9, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 155
    .line 156
    const/4 p1, 0x2

    .line 157
    const/4 v1, 0x0

    .line 158
    if-nez v0, :cond_4

    .line 159
    .line 160
    iget-wide v7, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 161
    .line 162
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 167
    .line 168
    const/4 v3, 0x3

    .line 169
    invoke-direct {v2, p0, v3}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 170
    .line 171
    .line 172
    new-instance v5, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;

    .line 173
    .line 174
    const/4 v11, 0x0

    .line 175
    move-object v6, p0

    .line 176
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getRevisionDetails$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JJLkotlin/coroutines/Continuation;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v0, v2, v1, v5, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_4
    move-object v6, p0

    .line 184
    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    new-instance v0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 189
    .line 190
    invoke-direct {v0, v6, p1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 191
    .line 192
    .line 193
    new-instance v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;

    .line 194
    .line 195
    invoke-direct {v3, v6, v1, v2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 196
    .line 197
    .line 198
    invoke-static {p0, v0, v1, v3, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 199
    .line 200
    .line 201
    return-void
.end method


# virtual methods
.method public final getDiffText(JJ)V
    .locals 10

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$undoEdit$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;I)V

    .line 9
    .line 10
    .line 11
    new-instance v3, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    move-object v4, p0

    .line 15
    move-wide v5, p1

    .line 16
    move-wide v7, p3

    .line 17
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getDiffText$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;JJLkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {v0, v1, p1, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final getEditTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->fromRecentEdits:Z

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string p0, "app-suggestededit"

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/16 v5, 0x3e

    .line 20
    .line 21
    const-string v1, ","

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method
