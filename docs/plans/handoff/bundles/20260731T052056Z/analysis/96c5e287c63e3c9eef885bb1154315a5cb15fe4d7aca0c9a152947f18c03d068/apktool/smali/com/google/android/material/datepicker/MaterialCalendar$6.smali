.class public final Lcom/google/android/material/datepicker/MaterialCalendar$6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final endItem:Ljava/util/Calendar;

.field public final startItem:Ljava/util/Calendar;

.field public final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->startItem:Ljava/util/Calendar;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->endItem:Ljava/util/Calendar;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    instance-of v1, v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 8
    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    .line 26
    .line 27
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 32
    .line 33
    iget-object v3, v0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 34
    .line 35
    iget-object v4, v3, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance v4, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_5

    .line 54
    .line 55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Landroidx/core/util/Pair;

    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/Long;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    iget-object v8, v0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->startItem:Ljava/util/Calendar;

    .line 76
    .line 77
    invoke-virtual {v8, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 78
    .line 79
    .line 80
    const v6, -0xffff01

    .line 81
    .line 82
    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    iget-object v9, v0, Lcom/google/android/material/datepicker/MaterialCalendar$6;->endItem:Ljava/util/Calendar;

    .line 94
    .line 95
    invoke-virtual {v9, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 96
    .line 97
    .line 98
    const/4 v6, 0x1

    .line 99
    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    iget-object v8, v1, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 104
    .line 105
    iget-object v8, v8, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 106
    .line 107
    iget-object v8, v8, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 108
    .line 109
    iget v8, v8, Lcom/google/android/material/datepicker/Month;->year:I

    .line 110
    .line 111
    sub-int/2addr v7, v8

    .line 112
    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    iget-object v8, v1, Lcom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 117
    .line 118
    iget-object v8, v8, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 119
    .line 120
    iget-object v8, v8, Lcom/google/android/material/datepicker/CalendarConstraints;->start:Lcom/google/android/material/datepicker/Month;

    .line 121
    .line 122
    iget v8, v8, Lcom/google/android/material/datepicker/Month;->year:I

    .line 123
    .line 124
    sub-int/2addr v6, v8

    .line 125
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    iget v10, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 134
    .line 135
    div-int/2addr v7, v10

    .line 136
    div-int/2addr v6, v10

    .line 137
    move v10, v7

    .line 138
    :goto_0
    if-gt v10, v6, :cond_1

    .line 139
    .line 140
    iget v11, v2, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 141
    .line 142
    mul-int/2addr v11, v10

    .line 143
    invoke-virtual {v2, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    if-nez v11, :cond_2

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 151
    .line 152
    .line 153
    move-result v12

    .line 154
    iget-object v13, v3, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 155
    .line 156
    iget-object v13, v13, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v13, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 159
    .line 160
    iget-object v13, v13, Landroidx/compose/ui/node/RulerTrackingMap;->rulers:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v13, Landroid/graphics/Rect;

    .line 163
    .line 164
    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 165
    .line 166
    add-int/2addr v12, v13

    .line 167
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    iget-object v13, v3, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 172
    .line 173
    iget-object v13, v13, Lorg/wikipedia/databinding/FragmentNewsBinding;->headerImageView:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v13, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 176
    .line 177
    iget-object v13, v13, Landroidx/compose/ui/node/RulerTrackingMap;->rulers:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v13, Landroid/graphics/Rect;

    .line 180
    .line 181
    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    .line 182
    .line 183
    sub-int/2addr v11, v13

    .line 184
    if-ne v10, v7, :cond_3

    .line 185
    .line 186
    if-eqz v8, :cond_3

    .line 187
    .line 188
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    div-int/lit8 v14, v14, 0x2

    .line 197
    .line 198
    add-int/2addr v14, v13

    .line 199
    goto :goto_1

    .line 200
    :cond_3
    move v14, v5

    .line 201
    :goto_1
    if-ne v10, v6, :cond_4

    .line 202
    .line 203
    if-eqz v9, :cond_4

    .line 204
    .line 205
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 210
    .line 211
    .line 212
    move-result v15

    .line 213
    div-int/lit8 v15, v15, 0x2

    .line 214
    .line 215
    add-int/2addr v15, v13

    .line 216
    goto :goto_2

    .line 217
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    :goto_2
    int-to-float v13, v14

    .line 222
    int-to-float v12, v12

    .line 223
    int-to-float v14, v15

    .line 224
    int-to-float v11, v11

    .line 225
    iget-object v15, v3, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 226
    .line 227
    iget-object v15, v15, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 228
    .line 229
    move-object/from16 v21, v15

    .line 230
    .line 231
    check-cast v21, Landroid/graphics/Paint;

    .line 232
    .line 233
    move-object/from16 v16, p1

    .line 234
    .line 235
    move/from16 v20, v11

    .line 236
    .line 237
    move/from16 v18, v12

    .line 238
    .line 239
    move/from16 v17, v13

    .line 240
    .line 241
    move/from16 v19, v14

    .line 242
    .line 243
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 244
    .line 245
    .line 246
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_5
    :goto_4
    return-void
.end method
