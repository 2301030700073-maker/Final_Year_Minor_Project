.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final dayCompute:Ljava/util/Calendar;

.field public final nestedScrollable:Z

.field public onMonthNavigationListener:Lcom/google/android/material/datepicker/MaterialCalendar$3;


# direct methods
.method public static $r8$lambda$PqZsnkFZF7YntKmtXySyj_K1Prk(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Lcom/google/android/material/focus/FocusRingDrawable;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lcom/google/android/material/focus/FocusRingDrawable;->EMPTY_DRAWABLE:Landroid/graphics/drawable/ColorDrawable;

    .line 21
    .line 22
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v4, 0x18

    .line 25
    .line 26
    if-lt v3, v4, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const v4, 0x7f04027d

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-static {v3, v4, v5}, Landroidx/work/Operation$State;->resolveBoolean(Landroid/content/res/Resources$Theme;IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Lcom/google/android/material/focus/FocusRingDrawable;

    .line 43
    .line 44
    invoke-direct {v3, v2, v1}, Lcom/google/android/material/focus/FocusRingDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    move-object v1, v3

    .line 48
    :cond_1
    instance-of v2, v1, Lcom/google/android/material/focus/FocusRingDrawable;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    check-cast v1, Lcom/google/android/material/focus/FocusRingDrawable;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, v0, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 61
    .line 62
    iget-object v0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->newRulers:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 65
    .line 66
    iget-object v2, v1, Lcom/google/android/material/focus/FocusRingDrawable;->state:Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;

    .line 67
    .line 68
    iput-object v0, v2, Lcom/google/android/material/focus/FocusRingDrawable$FocusRingState;->ringShapeAppearance:Lcom/google/android/material/shape/ShapeAppearance;

    .line 69
    .line 70
    :cond_2
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendarOf(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p2, 0x101020d

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const p1, 0x7f0900c5

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 29
    .line 30
    .line 31
    const p1, 0x7f090168

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const p2, 0x7f0404c4

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->readMaterialCalendarStyleBoolean(Landroid/content/Context;I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/material/textfield/TextInputLayout$2;

    .line 51
    .line 52
    const/4 p2, 0x5

    .line 53
    invoke-direct {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$2;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final getAdapter()Landroid/widget/Adapter;
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 8
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object p0
.end method

.method public final getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;
    .locals 0

    .line 9
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object p0
.end method

.method public final getChildAtPosition(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final handleHorizontalNavigation(IZ)Z
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->findNextValidDayPosition(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->findPreviousValidDayPosition(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    :goto_0
    const/4 v0, -0x1

    .line 25
    const/4 v1, 0x1

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    if-nez p2, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->onMonthNavigationListener:Lcom/google/android/material/datepicker/MaterialCalendar$3;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p0, p1, Lcom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->handleNavigateToMonthForKeyboard(Z)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_2
    if-eqz p2, :cond_3

    .line 47
    .line 48
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->onMonthNavigationListener:Lcom/google/android/material/datepicker/MaterialCalendar$3;

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->handleNavigateToMonthForKeyboard(Z)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    return p0

    .line 59
    :cond_3
    return v1
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-super {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 15
    .line 16
    iget v3, v3, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 17
    .line 18
    iget-object v4, v1, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lorg/wikipedia/databinding/FragmentNewsBinding;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    new-instance v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-eqz v9, :cond_f

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    check-cast v9, Landroidx/core/util/Pair;

    .line 75
    .line 76
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    const/4 v9, 0x0

    .line 80
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v11

    .line 90
    const v13, -0xffff01

    .line 91
    .line 92
    .line 93
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    check-cast v13, Ljava/lang/Long;

    .line 98
    .line 99
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v14

    .line 103
    if-eqz v7, :cond_0

    .line 104
    .line 105
    if-eqz v8, :cond_0

    .line 106
    .line 107
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v16

    .line 111
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v18

    .line 115
    cmp-long v10, v16, v18

    .line 116
    .line 117
    if-gtz v10, :cond_0

    .line 118
    .line 119
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 120
    .line 121
    .line 122
    move-result-wide v16

    .line 123
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 124
    .line 125
    .line 126
    move-result-wide v18

    .line 127
    cmp-long v10, v16, v18

    .line 128
    .line 129
    if-gez v10, :cond_1

    .line 130
    .line 131
    :cond_0
    move-object/from16 v20, v1

    .line 132
    .line 133
    move-object/from16 v16, v2

    .line 134
    .line 135
    move v15, v3

    .line 136
    goto/16 :goto_b

    .line 137
    .line 138
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    const/4 v13, 0x1

    .line 143
    if-ne v10, v13, :cond_2

    .line 144
    .line 145
    move v10, v13

    .line 146
    goto :goto_1

    .line 147
    :cond_2
    move v10, v9

    .line 148
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v16

    .line 152
    cmp-long v16, v11, v16

    .line 153
    .line 154
    const/4 v9, 0x5

    .line 155
    move/from16 v18, v13

    .line 156
    .line 157
    iget-object v13, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 158
    .line 159
    if-gez v16, :cond_5

    .line 160
    .line 161
    rem-int v11, v5, v3

    .line 162
    .line 163
    if-nez v11, :cond_3

    .line 164
    .line 165
    const/4 v11, 0x0

    .line 166
    goto :goto_2

    .line 167
    :cond_3
    if-nez v10, :cond_4

    .line 168
    .line 169
    add-int/lit8 v11, v5, -0x1

    .line 170
    .line 171
    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v11

    .line 175
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    goto :goto_2

    .line 180
    :cond_4
    add-int/lit8 v11, v5, -0x1

    .line 181
    .line 182
    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    :goto_2
    move v12, v5

    .line 191
    goto :goto_3

    .line 192
    :cond_5
    invoke-virtual {v13, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v13, v9}, Ljava/util/Calendar;->get(I)I

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    add-int/lit8 v11, v11, -0x1

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    add-int/2addr v12, v11

    .line 206
    invoke-virtual {v0, v12}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 211
    .line 212
    .line 213
    move-result v16

    .line 214
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    .line 215
    .line 216
    .line 217
    move-result v11

    .line 218
    div-int/lit8 v11, v11, 0x2

    .line 219
    .line 220
    add-int v11, v11, v16

    .line 221
    .line 222
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 223
    .line 224
    .line 225
    move-result-wide v19

    .line 226
    cmp-long v16, v14, v19

    .line 227
    .line 228
    if-lez v16, :cond_8

    .line 229
    .line 230
    add-int/lit8 v9, v6, 0x1

    .line 231
    .line 232
    rem-int/2addr v9, v3

    .line 233
    if-nez v9, :cond_6

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 236
    .line 237
    .line 238
    move-result v9

    .line 239
    goto :goto_4

    .line 240
    :cond_6
    if-nez v10, :cond_7

    .line 241
    .line 242
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v9

    .line 246
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    goto :goto_4

    .line 251
    :cond_7
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v9

    .line 255
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 256
    .line 257
    .line 258
    move-result v9

    .line 259
    :goto_4
    move v13, v6

    .line 260
    goto :goto_5

    .line 261
    :cond_8
    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v13, v9}, Ljava/util/Calendar;->get(I)I

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    add-int/lit8 v9, v9, -0x1

    .line 269
    .line 270
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    add-int/2addr v13, v9

    .line 275
    invoke-virtual {v0, v13}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 280
    .line 281
    .line 282
    move-result v14

    .line 283
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 284
    .line 285
    .line 286
    move-result v9

    .line 287
    div-int/lit8 v9, v9, 0x2

    .line 288
    .line 289
    add-int/2addr v9, v14

    .line 290
    :goto_5
    invoke-virtual {v1, v12}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    .line 291
    .line 292
    .line 293
    move-result-wide v14

    .line 294
    long-to-int v14, v14

    .line 295
    move-object/from16 v16, v2

    .line 296
    .line 297
    move v15, v3

    .line 298
    invoke-virtual {v1, v13}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    .line 299
    .line 300
    .line 301
    move-result-wide v2

    .line 302
    long-to-int v2, v2

    .line 303
    :goto_6
    if-gt v14, v2, :cond_e

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    mul-int/2addr v3, v14

    .line 310
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    .line 311
    .line 312
    .line 313
    move-result v19

    .line 314
    add-int v19, v19, v3

    .line 315
    .line 316
    move-object/from16 v20, v1

    .line 317
    .line 318
    add-int/lit8 v1, v19, -0x1

    .line 319
    .line 320
    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v19

    .line 324
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    .line 325
    .line 326
    .line 327
    move-result v21

    .line 328
    iget-object v0, v4, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v0, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 331
    .line 332
    iget-object v0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->rulers:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Landroid/graphics/Rect;

    .line 335
    .line 336
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 337
    .line 338
    add-int v0, v21, v0

    .line 339
    .line 340
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    .line 341
    .line 342
    .line 343
    move-result v19

    .line 344
    move/from16 v21, v2

    .line 345
    .line 346
    iget-object v2, v4, Lorg/wikipedia/databinding/FragmentNewsBinding;->rootView:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast v2, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 349
    .line 350
    iget-object v2, v2, Landroidx/compose/ui/node/RulerTrackingMap;->rulers:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v2, Landroid/graphics/Rect;

    .line 353
    .line 354
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 355
    .line 356
    sub-int v2, v19, v2

    .line 357
    .line 358
    if-nez v10, :cond_b

    .line 359
    .line 360
    if-le v3, v12, :cond_9

    .line 361
    .line 362
    const/4 v3, 0x0

    .line 363
    goto :goto_7

    .line 364
    :cond_9
    move v3, v11

    .line 365
    :goto_7
    if-le v13, v1, :cond_a

    .line 366
    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    goto :goto_a

    .line 372
    :cond_a
    move v1, v9

    .line 373
    goto :goto_a

    .line 374
    :cond_b
    if-le v13, v1, :cond_c

    .line 375
    .line 376
    const/4 v1, 0x0

    .line 377
    goto :goto_8

    .line 378
    :cond_c
    move v1, v9

    .line 379
    :goto_8
    if-le v3, v12, :cond_d

    .line 380
    .line 381
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    goto :goto_9

    .line 386
    :cond_d
    move v3, v11

    .line 387
    :goto_9
    move/from16 v28, v3

    .line 388
    .line 389
    move v3, v1

    .line 390
    move/from16 v1, v28

    .line 391
    .line 392
    :goto_a
    int-to-float v3, v3

    .line 393
    int-to-float v0, v0

    .line 394
    int-to-float v1, v1

    .line 395
    int-to-float v2, v2

    .line 396
    move/from16 v24, v0

    .line 397
    .line 398
    iget-object v0, v4, Lorg/wikipedia/databinding/FragmentNewsBinding;->toolbarContainer:Ljava/lang/Object;

    .line 399
    .line 400
    move-object/from16 v27, v0

    .line 401
    .line 402
    check-cast v27, Landroid/graphics/Paint;

    .line 403
    .line 404
    move-object/from16 v22, p1

    .line 405
    .line 406
    move/from16 v25, v1

    .line 407
    .line 408
    move/from16 v26, v2

    .line 409
    .line 410
    move/from16 v23, v3

    .line 411
    .line 412
    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 413
    .line 414
    .line 415
    add-int/lit8 v14, v14, 0x1

    .line 416
    .line 417
    move-object/from16 v0, p0

    .line 418
    .line 419
    move-object/from16 v1, v20

    .line 420
    .line 421
    move/from16 v2, v21

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_e
    move-object/from16 v0, p0

    .line 425
    .line 426
    move v3, v15

    .line 427
    move-object/from16 v2, v16

    .line 428
    .line 429
    goto/16 :goto_0

    .line 430
    .line 431
    :goto_b
    move-object/from16 v0, p0

    .line 432
    .line 433
    move v3, v15

    .line 434
    move-object/from16 v2, v16

    .line 435
    .line 436
    move-object/from16 v1, v20

    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :cond_f
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    const/16 p1, 0x21

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq p2, p1, :cond_3

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/16 p1, 0x82

    .line 13
    .line 14
    if-eq p2, p1, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    if-ne p2, p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move p1, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    :goto_0
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v2, v0

    .line 33
    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->findNextValidDayPosition(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/2addr v2, v0

    .line 49
    invoke-virtual {p1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->findPreviousValidDayPosition(I)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    :goto_2
    if-eq p1, v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    invoke-super {p0, v0, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    const/4 p1, 0x0

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v2, v4, :cond_1

    .line 20
    .line 21
    move v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v2, v3

    .line 24
    :goto_0
    const/16 v5, 0x15

    .line 25
    .line 26
    if-eq p1, v5, :cond_d

    .line 27
    .line 28
    const/16 v5, 0x16

    .line 29
    .line 30
    if-eq p1, v5, :cond_c

    .line 31
    .line 32
    const/16 v2, 0x3d

    .line 33
    .line 34
    if-eq p1, v2, :cond_9

    .line 35
    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    return v3

    .line 43
    :cond_2
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eq v0, v1, :cond_8

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->isDayPositionValid(I)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_8

    .line 60
    .line 61
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->trySelectNearestValidDayPosition(I)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    const/16 v1, 0x13

    .line 75
    .line 76
    if-ne v1, p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    :goto_1
    sub-int/2addr v0, p1

    .line 83
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-lt v0, p1, :cond_7

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->trySelectNearestValidDayPosition(I)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    const/16 v1, 0x14

    .line 102
    .line 103
    if-ne p1, v1, :cond_7

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    add-int/2addr p1, v0

    .line 110
    :goto_2
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-gt p1, v0, :cond_7

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->trySelectNearestValidDayPosition(I)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    :goto_3
    return v4

    .line 123
    :cond_6
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    add-int/2addr p1, v0

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    return v3

    .line 130
    :cond_8
    return v4

    .line 131
    :cond_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_a

    .line 136
    .line 137
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->findPreviousValidDayPosition(I)I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    goto :goto_4

    .line 148
    :cond_a
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->findNextValidDayPosition(I)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    :goto_4
    if-ne p1, v1, :cond_b

    .line 159
    .line 160
    return v3

    .line 161
    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 162
    .line 163
    .line 164
    return v4

    .line 165
    :cond_c
    xor-int/lit8 p1, v2, 0x1

    .line 166
    .line 167
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->handleHorizontalNavigation(IZ)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    return p0

    .line 172
    :cond_d
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->handleHorizontalNavigation(IZ)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    return p0
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const p2, 0xffffff

    .line 6
    .line 7
    .line 8
    const/high16 v0, -0x80000000

    .line 9
    .line 10
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-class p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-class p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    aput-object p0, v0, v1

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    aput-object p1, v0, p0

    .line 29
    .line 30
    const-string p0, "%1$s must have its Adapter set to a %2$s"

    .line 31
    .line 32
    invoke-static {p0, v0}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setSelection(I)V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/lit8 v1, v1, -0x1

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MonthAdapter;->findNextValidDayPosition(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final trySelectNearestValidDayPosition(I)Z
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->isDayPositionValid(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    move v1, v3

    .line 21
    :goto_0
    iget-object v6, v0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 22
    .line 23
    iget v6, v6, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    .line 24
    .line 25
    if-ge v1, v6, :cond_3

    .line 26
    .line 27
    add-int v6, p1, v1

    .line 28
    .line 29
    sget v7, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_GRID_CELLS:I

    .line 30
    .line 31
    if-ge v6, v7, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    cmp-long v7, v7, v4

    .line 38
    .line 39
    if-nez v7, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->isDayPositionValid(I)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    :goto_1
    move p1, v6

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    sub-int v6, p1, v1

    .line 50
    .line 51
    if-ltz v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    cmp-long v7, v7, v4

    .line 58
    .line 59
    if-nez v7, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->isDayPositionValid(I)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    move p1, v2

    .line 72
    :goto_2
    if-eq p1, v2, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 75
    .line 76
    .line 77
    return v3

    .line 78
    :cond_4
    const/4 p0, 0x0

    .line 79
    return p0
.end method
