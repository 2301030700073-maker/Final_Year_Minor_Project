.class public final Lorg/wikipedia/talk/template/TalkTemplatesViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final savedMessagesBodyList:Ljava/util/List;

.field public static final savedMessagesSubjectList:Ljava/util/List;

.field public static final savedMessagesTitleList:Ljava/util/List;


# instance fields
.field public final _actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final actionExceptionHandler:Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

.field public final actionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final exceptionHandler:Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

.field public final fromRevisionId:J

.field public final pageTitle:Lorg/wikipedia/page/PageTitle;

.field public final savedTemplatesList:Ljava/util/ArrayList;

.field public final talkTemplatesList:Ljava/util/ArrayList;

.field public final talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

.field public final templateManagementMode:Z

.field public final toRevisionId:J

.field public final uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    const-string v9, "no_censor"

    .line 2
    .line 3
    const-string v10, "improvement"

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    const-string/jumbo v1, "vandalism"

    .line 8
    .line 9
    .line 10
    const-string v2, "edit_tests"

    .line 11
    .line 12
    const-string v3, "neutral"

    .line 13
    .line 14
    const-string/jumbo v4, "translation"

    .line 15
    .line 16
    .line 17
    const-string v5, "conflict_interest"

    .line 18
    .line 19
    const-string v6, "final"

    .line 20
    .line 21
    const-string v7, "copyright"

    .line 22
    .line 23
    const-string v8, "leave_summary"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->savedMessagesTitleList:Ljava/util/List;

    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f120568

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const v2, 0x7f120565

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const v3, 0x7f120567

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const v4, 0x7f120560

    .line 62
    .line 63
    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const v5, 0x7f120561

    .line 69
    .line 70
    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const v6, 0x7f120566

    .line 76
    .line 77
    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    const v7, 0x7f120562

    .line 83
    .line 84
    .line 85
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const v8, 0x7f120564

    .line 90
    .line 91
    .line 92
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    const v9, 0x7f120563

    .line 97
    .line 98
    .line 99
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    const v10, 0x7f12055f

    .line 104
    .line 105
    .line 106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    const/16 v11, 0xb

    .line 111
    .line 112
    new-array v12, v11, [Ljava/lang/Integer;

    .line 113
    .line 114
    const/4 v13, 0x0

    .line 115
    aput-object v0, v12, v13

    .line 116
    .line 117
    const/4 v0, 0x1

    .line 118
    aput-object v1, v12, v0

    .line 119
    .line 120
    const/4 v1, 0x2

    .line 121
    aput-object v2, v12, v1

    .line 122
    .line 123
    const/4 v2, 0x3

    .line 124
    aput-object v3, v12, v2

    .line 125
    .line 126
    const/4 v3, 0x4

    .line 127
    aput-object v4, v12, v3

    .line 128
    .line 129
    const/4 v4, 0x5

    .line 130
    aput-object v5, v12, v4

    .line 131
    .line 132
    const/4 v5, 0x6

    .line 133
    aput-object v6, v12, v5

    .line 134
    .line 135
    const/4 v6, 0x7

    .line 136
    aput-object v7, v12, v6

    .line 137
    .line 138
    const/16 v7, 0x8

    .line 139
    .line 140
    aput-object v8, v12, v7

    .line 141
    .line 142
    const/16 v8, 0x9

    .line 143
    .line 144
    aput-object v9, v12, v8

    .line 145
    .line 146
    const/16 v9, 0xa

    .line 147
    .line 148
    aput-object v10, v12, v9

    .line 149
    .line 150
    invoke-static {v12}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v10

    .line 154
    sput-object v10, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->savedMessagesSubjectList:Ljava/util/List;

    .line 155
    .line 156
    const v10, 0x7f12098b

    .line 157
    .line 158
    .line 159
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    const v12, 0x7f12055e

    .line 164
    .line 165
    .line 166
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    const v14, 0x7f12055b

    .line 171
    .line 172
    .line 173
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    const v15, 0x7f12055d

    .line 178
    .line 179
    .line 180
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v15

    .line 184
    const v16, 0x7f120556

    .line 185
    .line 186
    .line 187
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v16

    .line 191
    const v17, 0x7f120557

    .line 192
    .line 193
    .line 194
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v17

    .line 198
    const v18, 0x7f12055c

    .line 199
    .line 200
    .line 201
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v18

    .line 205
    const v19, 0x7f120558

    .line 206
    .line 207
    .line 208
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v19

    .line 212
    const v20, 0x7f12055a

    .line 213
    .line 214
    .line 215
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v20

    .line 219
    const v21, 0x7f120559

    .line 220
    .line 221
    .line 222
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v21

    .line 226
    const v22, 0x7f120555

    .line 227
    .line 228
    .line 229
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v22

    .line 233
    new-array v11, v11, [Ljava/lang/Integer;

    .line 234
    .line 235
    aput-object v10, v11, v13

    .line 236
    .line 237
    aput-object v12, v11, v0

    .line 238
    .line 239
    aput-object v14, v11, v1

    .line 240
    .line 241
    aput-object v15, v11, v2

    .line 242
    .line 243
    aput-object v16, v11, v3

    .line 244
    .line 245
    aput-object v17, v11, v4

    .line 246
    .line 247
    aput-object v18, v11, v5

    .line 248
    .line 249
    aput-object v19, v11, v6

    .line 250
    .line 251
    aput-object v20, v11, v7

    .line 252
    .line 253
    aput-object v21, v11, v8

    .line 254
    .line 255
    aput-object v22, v11, v9

    .line 256
    .line 257
    invoke-static {v11}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    sput-object v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->savedMessagesBodyList:Ljava/util/List;

    .line 262
    .line 263
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lorg/wikipedia/media/AvPlayer;

    .line 8
    .line 9
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 10
    .line 11
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->talkTemplateDao()Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lorg/wikipedia/media/AvPlayer;-><init>(Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

    .line 23
    .line 24
    new-instance v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesViewModel;I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->exceptionHandler:Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 31
    .line 32
    new-instance v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v0, p0, v2}, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/talk/template/TalkTemplatesViewModel;I)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->actionExceptionHandler:Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->savedTemplatesList:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 59
    .line 60
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->uiState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 66
    .line 67
    new-instance v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel$ActionState;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->_actionState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 77
    .line 78
    new-instance v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 79
    .line 80
    invoke-direct {v2, v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlowImpl;)V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->actionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 84
    .line 85
    const-string v0, "templateManagement"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/Boolean;

    .line 92
    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    goto :goto_0

    .line 100
    :cond_0
    move v0, v1

    .line 101
    :goto_0
    iput-boolean v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->templateManagementMode:Z

    .line 102
    .line 103
    const-string v0, "title"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 113
    .line 114
    iput-object v0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 115
    .line 116
    const-string v2, "fromRevisionId"

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Ljava/lang/Long;

    .line 123
    .line 124
    const-wide/16 v3, 0x0

    .line 125
    .line 126
    if-eqz v2, :cond_1

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v5

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    move-wide v5, v3

    .line 134
    :goto_1
    iput-wide v5, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->fromRevisionId:J

    .line 135
    .line 136
    const-string v2, "toRevisionId"

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Ljava/lang/Long;

    .line 143
    .line 144
    if-eqz p1, :cond_2

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    :cond_2
    iput-wide v3, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->toRevisionId:J

    .line 151
    .line 152
    invoke-virtual {p0}, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->loadTalkTemplates()V

    .line 153
    .line 154
    .line 155
    iget-object p1, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 156
    .line 157
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 158
    .line 159
    sget-object v0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->savedMessagesSubjectList:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    :goto_2
    if-ge v1, v2, :cond_4

    .line 166
    .line 167
    if-nez v1, :cond_3

    .line 168
    .line 169
    const-string v3, ""

    .line 170
    .line 171
    :goto_3
    move-object v9, v3

    .line 172
    goto :goto_4

    .line 173
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Ljava/lang/Number;

    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    invoke-static {v3, p1}, Lorg/jsoup/nodes/NodeUtils;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    goto :goto_3

    .line 188
    :goto_4
    sget-object v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->savedMessagesBodyList:Ljava/util/List;

    .line 189
    .line 190
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Ljava/lang/Number;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-static {v3, p1}, Lorg/jsoup/nodes/NodeUtils;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    new-instance v4, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 205
    .line 206
    sget-object v3, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->savedMessagesTitleList:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    move-object v8, v3

    .line 213
    check-cast v8, Ljava/lang/String;

    .line 214
    .line 215
    const/4 v5, 0x0

    .line 216
    const/4 v6, 0x0

    .line 217
    const/4 v7, -0x1

    .line 218
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/talk/db/TalkTemplate;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v3, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->savedTemplatesList:Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    add-int/lit8 v1, v1, 0x1

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_4
    return-void
.end method


# virtual methods
.method public final loadTalkTemplates()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;

    .line 6
    .line 7
    const/16 v2, 0x9

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, v2, p0, v3}, Lorg/wikipedia/talk/TalkReplyViewModel$loadTemplates$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    iget-object p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesViewModel;->exceptionHandler:Lorg/wikipedia/talk/template/TalkTemplatesViewModel$special$$inlined$CoroutineExceptionHandler$1;

    .line 15
    .line 16
    invoke-static {v0, p0, v3, v1, v2}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 17
    .line 18
    .line 19
    return-void
.end method
