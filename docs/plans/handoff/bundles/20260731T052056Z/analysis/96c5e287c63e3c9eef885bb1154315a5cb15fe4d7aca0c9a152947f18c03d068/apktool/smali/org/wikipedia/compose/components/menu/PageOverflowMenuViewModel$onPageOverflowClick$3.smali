.class public final Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $menuKey:Ljava/lang/String;

.field public final synthetic $onAddRequest:Lkotlin/jvm/functions/Function2;

.field public final synthetic $onLinkCopyRequest:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onMoveRequest:Lkotlin/jvm/functions/Function2;

.field public final synthetic $onOpenInNewTab:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onOpenPage:Lkotlin/jvm/functions/Function1;

.field public final synthetic $onRemoveRequest:Lkotlin/jvm/functions/Function2;

.field public final synthetic $onShareRequest:Lkotlin/jvm/functions/Function1;

.field public final synthetic $pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

.field public final synthetic $source:I

.field public final synthetic $wikiSite:Lorg/wikipedia/dataclient/WikiSite;

.field public L$0:Lorg/wikipedia/history/HistoryEntry;

.field public L$1:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 4
    .line 5
    iput p3, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$source:I

    .line 6
    .line 7
    iput-object p4, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->this$0:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;

    .line 8
    .line 9
    iput-object p5, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$context:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p6, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onOpenPage:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput-object p7, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onOpenInNewTab:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    iput-object p8, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onAddRequest:Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    iput-object p9, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onMoveRequest:Lkotlin/jvm/functions/Function2;

    .line 18
    .line 19
    iput-object p10, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onRemoveRequest:Lkotlin/jvm/functions/Function2;

    .line 20
    .line 21
    iput-object p11, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onShareRequest:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    iput-object p12, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onLinkCopyRequest:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iput-object p13, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$menuKey:Ljava/lang/String;

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    invoke-direct {p0, p1, p14}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 15

    .line 1
    new-instance v0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;

    .line 2
    .line 3
    iget-object v12, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onLinkCopyRequest:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v13, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$menuKey:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 10
    .line 11
    iget v3, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$source:I

    .line 12
    .line 13
    iget-object v4, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->this$0:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;

    .line 14
    .line 15
    iget-object v5, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$context:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v6, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onOpenPage:Lkotlin/jvm/functions/Function1;

    .line 18
    .line 19
    iget-object v7, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onOpenInNewTab:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iget-object v8, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onAddRequest:Lkotlin/jvm/functions/Function2;

    .line 22
    .line 23
    iget-object v9, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onMoveRequest:Lkotlin/jvm/functions/Function2;

    .line 24
    .line 25
    iget-object v10, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onRemoveRequest:Lkotlin/jvm/functions/Function2;

    .line 26
    .line 27
    iget-object v11, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onShareRequest:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    move-object/from16 v14, p2

    .line 30
    .line 31
    invoke-direct/range {v0 .. v14}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;-><init>(Lorg/wikipedia/dataclient/page/PageSummary;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->label:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-eq v1, v4, :cond_1

    .line 11
    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->L$0:Lorg/wikipedia/history/HistoryEntry;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    iget-object v1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->L$1:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 27
    .line 28
    iget-object v5, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->L$0:Lorg/wikipedia/history/HistoryEntry;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 38
    .line 39
    iget v1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$source:I

    .line 40
    .line 41
    iget-object v5, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$pageSummary:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 42
    .line 43
    invoke-virtual {v5, p1, v1}, Lorg/wikipedia/dataclient/page/PageSummary;->getHistoryEntry(Lorg/wikipedia/dataclient/WikiSite;I)Lorg/wikipedia/history/HistoryEntry;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 48
    .line 49
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {p1}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iput-object p1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->L$0:Lorg/wikipedia/history/HistoryEntry;

    .line 70
    .line 71
    iput-object v1, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->L$1:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 72
    .line 73
    iput v4, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->label:I

    .line 74
    .line 75
    invoke-virtual {v5, v6, p0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getAllPageOccurrences(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    if-ne v5, v0, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move-object v10, v5

    .line 83
    move-object v5, p1

    .line 84
    move-object p1, v10

    .line 85
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 86
    .line 87
    iput-object v5, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->L$0:Lorg/wikipedia/history/HistoryEntry;

    .line 88
    .line 89
    iput-object v2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->L$1:Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 90
    .line 91
    iput v3, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->label:I

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v1, p1, p0}, Lorg/wikipedia/dataclient/Service$-CC;->getListsFromPageOccurrences$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-ne p1, v0, :cond_4

    .line 101
    .line 102
    :goto_1
    return-object v0

    .line 103
    :cond_4
    move-object v0, v5

    .line 104
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 105
    .line 106
    new-instance v1, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;

    .line 107
    .line 108
    invoke-static {}, Landroidx/room/Room;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const v5, 0x7f1203e2

    .line 113
    .line 114
    .line 115
    iget-object v6, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$context:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    new-instance v7, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    iget-object v8, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onOpenPage:Lkotlin/jvm/functions/Function1;

    .line 124
    .line 125
    const/4 v9, 0x0

    .line 126
    invoke-direct {v7, v8, v0, v9}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 127
    .line 128
    .line 129
    new-instance v8, Lkotlin/Pair;

    .line 130
    .line 131
    invoke-direct {v8, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v8}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    const v5, 0x7f1203e0

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    new-instance v7, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda0;

    .line 145
    .line 146
    iget-object v8, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onOpenInNewTab:Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    invoke-direct {v7, v8, v0, v4}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 149
    .line 150
    .line 151
    new-instance v8, Lkotlin/Pair;

    .line 152
    .line 153
    invoke-direct {v8, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v8}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    iget-object v7, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onAddRequest:Lkotlin/jvm/functions/Function2;

    .line 164
    .line 165
    if-eqz v5, :cond_5

    .line 166
    .line 167
    const p1, 0x7f120220

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    new-instance v4, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;

    .line 175
    .line 176
    invoke-direct {v4, v7, v0, v9}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 177
    .line 178
    .line 179
    new-instance v5, Lkotlin/Pair;

    .line 180
    .line 181
    invoke-direct {v5, p1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_5
    const v5, 0x7f120753

    .line 189
    .line 190
    .line 191
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    new-instance v8, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;

    .line 196
    .line 197
    invoke-direct {v8, v7, v0, v4}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 198
    .line 199
    .line 200
    new-instance v7, Lkotlin/Pair;

    .line 201
    .line 202
    invoke-direct {v7, v5, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-ne v5, v4, :cond_6

    .line 213
    .line 214
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 219
    .line 220
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    new-array v7, v4, [Ljava/lang/Object;

    .line 225
    .line 226
    aput-object v5, v7, v9

    .line 227
    .line 228
    const v5, 0x7f120794

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    goto :goto_3

    .line 236
    :cond_6
    const v5, 0x7f120796

    .line 237
    .line 238
    .line 239
    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    new-instance v7, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;

    .line 247
    .line 248
    iget-object v8, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onRemoveRequest:Lkotlin/jvm/functions/Function2;

    .line 249
    .line 250
    invoke-direct {v7, v8, v0, p1}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function2;Lorg/wikipedia/history/HistoryEntry;Ljava/util/List;)V

    .line 251
    .line 252
    .line 253
    new-instance v8, Lkotlin/Pair;

    .line 254
    .line 255
    invoke-direct {v8, v5, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v8}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-ne v5, v4, :cond_7

    .line 266
    .line 267
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 272
    .line 273
    invoke-virtual {v5}, Lorg/wikipedia/readinglist/database/ReadingList;->getTitle()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    new-array v4, v4, [Ljava/lang/Object;

    .line 278
    .line 279
    aput-object v5, v4, v9

    .line 280
    .line 281
    const v5, 0x7f120781

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    new-instance v5, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;

    .line 289
    .line 290
    iget-object v7, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onMoveRequest:Lkotlin/jvm/functions/Function2;

    .line 291
    .line 292
    invoke-direct {v5, v7, p1, v0}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;Lorg/wikipedia/history/HistoryEntry;)V

    .line 293
    .line 294
    .line 295
    new-instance p1, Lkotlin/Pair;

    .line 296
    .line 297
    invoke-direct {p1, v4, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2, p1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    :cond_7
    :goto_4
    const p1, 0x7f1203fd

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    new-instance v4, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda0;

    .line 311
    .line 312
    iget-object v5, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onShareRequest:Lkotlin/jvm/functions/Function1;

    .line 313
    .line 314
    invoke-direct {v4, v5, v0, v3}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 315
    .line 316
    .line 317
    new-instance v3, Lkotlin/Pair;

    .line 318
    .line 319
    invoke-direct {v3, p1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    const p1, 0x7f1203df

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    new-instance v3, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda0;

    .line 333
    .line 334
    const/4 v4, 0x3

    .line 335
    iget-object v5, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$onLinkCopyRequest:Lkotlin/jvm/functions/Function1;

    .line 336
    .line 337
    invoke-direct {v3, v5, v0, v4}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lorg/wikipedia/history/HistoryEntry;I)V

    .line 338
    .line 339
    .line 340
    new-instance v4, Lkotlin/Pair;

    .line 341
    .line 342
    invoke-direct {v4, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    invoke-static {v2}, Landroidx/room/Room;->build(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    iget-object v2, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->$menuKey:Ljava/lang/String;

    .line 353
    .line 354
    invoke-direct {v1, v0, p1, v2}, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$PageOverflowMenuState;-><init>(Lorg/wikipedia/history/HistoryEntry;Lkotlin/collections/builders/ListBuilder;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    iget-object p0, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel$onPageOverflowClick$3;->this$0:Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;

    .line 358
    .line 359
    iget-object p0, p0, Lorg/wikipedia/compose/components/menu/PageOverflowMenuViewModel;->pageOverflowMenuState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 360
    .line 361
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 365
    .line 366
    return-object p0
.end method
