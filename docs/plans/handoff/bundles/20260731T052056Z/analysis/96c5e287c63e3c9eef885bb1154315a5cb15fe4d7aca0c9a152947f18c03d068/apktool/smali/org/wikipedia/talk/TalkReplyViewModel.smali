.class public final Lorg/wikipedia/talk/TalkReplyViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public doesPageExist:Z

.field public final fromRevisionId:J

.field public final isExampleTemplate:Z

.field public final isFromDiff:Z

.field public final isNewTopic:Z

.field public final pageExistsData:Landroidx/lifecycle/MutableLiveData;

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final postReplyData:Lorg/wikipedia/util/SingleLiveData;

.field public final saveTemplateData:Lorg/wikipedia/util/SingleLiveData;

.field public final selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

.field public talkTemplateSaved:Z

.field public final talkTemplatesList:Ljava/util/ArrayList;

.field public final talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

.field public tempAccountsEnabled:Z

.field public final templateManagementMode:Z

.field public final toRevisionId:J

.field public final topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 9

    .line 1
    sget-object v0, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/wikipedia/media/AvPlayer;

    .line 10
    .line 11
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 12
    .line 13
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->talkTemplateDao()Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Lorg/wikipedia/media/AvPlayer;-><init>(Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 32
    .line 33
    const-string v1, "title"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    check-cast v1, Lorg/wikipedia/page/PageTitle;

    .line 43
    .line 44
    iput-object v1, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 45
    .line 46
    const-string/jumbo v1, "topic"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 54
    .line 55
    iput-object v1, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->topic:Lorg/wikipedia/dataclient/discussiontools/ThreadItem;

    .line 56
    .line 57
    const-string v2, "fromDiff"

    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Ljava/lang/Boolean;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move v2, v3

    .line 74
    :goto_0
    iput-boolean v2, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->isFromDiff:Z

    .line 75
    .line 76
    const-string v4, "selectedTemplate"

    .line 77
    .line 78
    invoke-virtual {p1, v4}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 83
    .line 84
    iput-object v4, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->selectedTemplate:Lorg/wikipedia/talk/db/TalkTemplate;

    .line 85
    .line 86
    const-string v4, "exampleTemplate"

    .line 87
    .line 88
    invoke-virtual {p1, v4}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/Boolean;

    .line 93
    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move v4, v3

    .line 102
    :goto_1
    iput-boolean v4, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->isExampleTemplate:Z

    .line 103
    .line 104
    const-string v4, "templateManagement"

    .line 105
    .line 106
    invoke-virtual {p1, v4}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Ljava/lang/Boolean;

    .line 111
    .line 112
    if-eqz v4, :cond_2

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    goto :goto_2

    .line 119
    :cond_2
    move v4, v3

    .line 120
    :goto_2
    iput-boolean v4, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->templateManagementMode:Z

    .line 121
    .line 122
    const-string v4, "fromRevisionId"

    .line 123
    .line 124
    invoke-virtual {p1, v4}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Ljava/lang/Long;

    .line 129
    .line 130
    const-wide/16 v5, -0x1

    .line 131
    .line 132
    if-eqz v4, :cond_3

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 135
    .line 136
    .line 137
    move-result-wide v7

    .line 138
    goto :goto_3

    .line 139
    :cond_3
    move-wide v7, v5

    .line 140
    :goto_3
    iput-wide v7, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->fromRevisionId:J

    .line 141
    .line 142
    const-string v4, "toRevisionId"

    .line 143
    .line 144
    invoke-virtual {p1, v4}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Ljava/lang/Long;

    .line 149
    .line 150
    if-eqz p1, :cond_4

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 153
    .line 154
    .line 155
    move-result-wide v5

    .line 156
    :cond_4
    iput-wide v5, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->toRevisionId:J

    .line 157
    .line 158
    const/4 p1, 0x1

    .line 159
    if-nez v1, :cond_5

    .line 160
    .line 161
    if-nez v2, :cond_5

    .line 162
    .line 163
    move v1, p1

    .line 164
    goto :goto_4

    .line 165
    :cond_5
    move v1, v3

    .line 166
    :goto_4
    iput-boolean v1, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->isNewTopic:Z

    .line 167
    .line 168
    new-instance v1, Lorg/wikipedia/util/SingleLiveData;

    .line 169
    .line 170
    invoke-direct {v1}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v1, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->postReplyData:Lorg/wikipedia/util/SingleLiveData;

    .line 174
    .line 175
    new-instance v1, Lorg/wikipedia/util/SingleLiveData;

    .line 176
    .line 177
    invoke-direct {v1}, Lorg/wikipedia/util/SingleLiveData;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-object v1, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->saveTemplateData:Lorg/wikipedia/util/SingleLiveData;

    .line 181
    .line 182
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 183
    .line 184
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v1, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->pageExistsData:Landroidx/lifecycle/MutableLiveData;

    .line 188
    .line 189
    iput-boolean p1, p0, Lorg/wikipedia/talk/TalkReplyViewModel;->tempAccountsEnabled:Z

    .line 190
    .line 191
    const/4 p1, 0x2

    .line 192
    const/4 v1, 0x0

    .line 193
    if-eqz v2, :cond_6

    .line 194
    .line 195
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    new-instance v4, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 200
    .line 201
    const/16 v5, 0x12

    .line 202
    .line 203
    invoke-direct {v4, v0, v5}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 204
    .line 205
    .line 206
    new-instance v5, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 207
    .line 208
    invoke-direct {v5, v3, p0, v1}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 209
    .line 210
    .line 211
    invoke-static {v2, v4, v1, v5, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 212
    .line 213
    .line 214
    :cond_6
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    new-instance v3, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 219
    .line 220
    const/16 v4, 0x11

    .line 221
    .line 222
    invoke-direct {v3, v0, v4}, Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 223
    .line 224
    .line 225
    new-instance v0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 226
    .line 227
    const/16 v4, 0x10

    .line 228
    .line 229
    invoke-direct {v0, v4, p0, v1}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v2, v3, v1, v0, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 233
    .line 234
    .line 235
    return-void
.end method


# virtual methods
.method public final saveTemplate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lorg/wikipedia/talk/TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/talk/TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkReplyViewModel;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 18
    .line 19
    const/16 v8, 0xa

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    move-object v4, p0

    .line 23
    move-object v5, p1

    .line 24
    move-object v6, p2

    .line 25
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x2

    .line 29
    invoke-static {v0, v1, v7, v3, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final updateTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/talk/db/TalkTemplate;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lorg/wikipedia/talk/TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, p0, v2}, Lorg/wikipedia/talk/TalkReplyViewModel$postReply$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/TalkReplyViewModel;I)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const/16 v10, 0x14

    .line 24
    .line 25
    move-object v5, p0

    .line 26
    move-object v6, p1

    .line 27
    move-object v7, p2

    .line 28
    move-object v8, p3

    .line 29
    move-object v4, p4

    .line 30
    invoke-direct/range {v3 .. v10}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    invoke-static {v0, v1, p0, v3, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 35
    .line 36
    .line 37
    return-void
.end method
