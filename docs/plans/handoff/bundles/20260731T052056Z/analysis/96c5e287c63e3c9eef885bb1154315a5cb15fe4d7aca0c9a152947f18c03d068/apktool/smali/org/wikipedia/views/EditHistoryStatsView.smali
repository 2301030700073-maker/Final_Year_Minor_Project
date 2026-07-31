.class public final Lorg/wikipedia/views/EditHistoryStatsView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const v1, 0x7f0c05c8

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const p1, 0x7f090083

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const p1, 0x7f0901eb

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/widget/TextView;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const p1, 0x7f090630

    .line 38
    .line 39
    .line 40
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lorg/wikipedia/views/GraphView;

    .line 45
    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    new-instance p1, Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;

    .line 49
    .line 50
    invoke-direct {p1, p0, v1, v2, v3}, Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;-><init>(Lorg/wikipedia/views/EditHistoryStatsView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/wikipedia/views/GraphView;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lorg/wikipedia/views/EditHistoryStatsView;->binding:Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;

    .line 54
    .line 55
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    const/4 v0, -0x1

    .line 58
    const/4 v1, -0x2

    .line 59
    invoke-direct {p1, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    const/high16 p1, 0x41800000    # 16.0f

    .line 66
    .line 67
    invoke-static {p1}, Lokio/Okio__OkioKt;->roundedDpToPx(F)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string p1, "Missing required view with ID: "

    .line 85
    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0
.end method


# virtual methods
.method public final getBinding()Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/views/EditHistoryStatsView;->binding:Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setup(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/wikipedia/views/EditHistoryStatsView;->binding:Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;

    .line 5
    .line 6
    iget-object v1, v0, Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;->articleTitleView:Landroid/widget/TextView;

    .line 7
    .line 8
    iget-object v2, v0, Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;->statsGraphView:Lorg/wikipedia/views/GraphView;

    .line 9
    .line 10
    sget-object v3, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const-string v5, "<a href=\"#\">"

    .line 21
    .line 22
    const-string v6, "</a>"

    .line 23
    .line 24
    invoke-static {v5, v4, v6}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x1

    .line 29
    new-array v6, v5, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    aput-object v4, v6, v7

    .line 33
    .line 34
    const v4, 0x7f12051d

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    iget-object v1, p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->revision:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 51
    .line 52
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    sget-object v3, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string/jumbo v3, "yyyy"

    .line 67
    .line 68
    .line 69
    invoke-static {v3, v1}, Lorg/wikipedia/util/DateUtil;->getDateStringWithSkeletonPattern(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-static {v4}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const-wide/16 v8, 0x1

    .line 89
    .line 90
    invoke-virtual {v3, v8, v9}, Lj$/time/LocalDateTime;->minusYears(J)Lj$/time/LocalDateTime;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lj$/time/LocalDateTime;->toLocalDate()Lj$/time/LocalDate;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {v3}, Lorg/wikipedia/util/DateUtil;->getShortDateString(Lj$/time/LocalDate;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iget-object v6, v0, Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;->editCountsView:Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    iget-object v9, p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->allEdits:Lorg/wikipedia/dataclient/restbase/EditCount;

    .line 116
    .line 117
    iget v9, v9, Lorg/wikipedia/dataclient/restbase/EditCount;->count:I

    .line 118
    .line 119
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    const/4 v11, 0x2

    .line 124
    new-array v12, v11, [Ljava/lang/Object;

    .line 125
    .line 126
    aput-object v10, v12, v7

    .line 127
    .line 128
    aput-object v1, v12, v5

    .line 129
    .line 130
    const v1, 0x7f10001c

    .line 131
    .line 132
    .line 133
    invoke-virtual {v8, v1, v9, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p2, Lorg/wikipedia/page/edithistory/EditHistoryListViewModel$EditHistoryStats;->metrics:Ljava/util/List;

    .line 141
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    .line 143
    .line 144
    const/16 v6, 0xa

    .line 145
    .line 146
    invoke-static {p2, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-eqz v6, :cond_0

    .line 162
    .line 163
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    check-cast v6, Lorg/wikipedia/dataclient/restbase/Metrics$Results;

    .line 168
    .line 169
    iget v6, v6, Lorg/wikipedia/dataclient/restbase/Metrics$Results;->edits:I

    .line 170
    .line 171
    int-to-float v6, v6

    .line 172
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v2, v1}, Lorg/wikipedia/views/GraphView;->setData(Ljava/util/List;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    new-array v1, v11, [Ljava/lang/Object;

    .line 188
    .line 189
    aput-object v3, v1, v7

    .line 190
    .line 191
    aput-object v4, v1, v5

    .line 192
    .line 193
    const v3, 0x7f120526

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {v2, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    new-array p2, v5, [Landroid/view/View;

    .line 204
    .line 205
    aput-object v2, p2, v7

    .line 206
    .line 207
    aget-object p2, p2, v7

    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {p2, v1}, Lkotlin/text/RegexKt;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    :cond_1
    iget-object p2, v0, Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;->articleTitleView:Landroid/widget/TextView;

    .line 217
    .line 218
    new-instance v0, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 219
    .line 220
    new-instance v1, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;

    .line 221
    .line 222
    const/16 v2, 0xf

    .line 223
    .line 224
    invoke-direct {v1, v2, p0, p1}, Landroidx/compose/foundation/text/TextLinkScope$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-direct {v0, v1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 231
    .line 232
    .line 233
    return-void
.end method
