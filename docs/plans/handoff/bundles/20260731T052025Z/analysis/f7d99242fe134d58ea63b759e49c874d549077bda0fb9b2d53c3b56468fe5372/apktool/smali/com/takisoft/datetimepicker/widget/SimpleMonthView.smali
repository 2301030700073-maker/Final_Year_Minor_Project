.class public Lcom/takisoft/datetimepicker/widget/SimpleMonthView;
.super Landroid/view/View;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActivatedDay:I

.field public mCalendar:Ljava/util/Calendar;

.field public mCellWidth:I

.field public mDayFormatter:Ljava/text/NumberFormat;

.field public mDayHeight:I

.field public final mDayHighlightPaint:Landroid/graphics/Paint;

.field public final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field public mDayOfWeekHeight:I

.field public final mDayOfWeekLabels:[Ljava/lang/String;

.field public final mDayOfWeekPaint:Landroid/text/TextPaint;

.field public mDayOfWeekStart:I

.field public final mDayPaint:Landroid/text/TextPaint;

.field public final mDaySelectorPaint:Landroid/graphics/Paint;

.field public mDaySelectorRadius:I

.field public mDayTextColor:Landroid/content/res/ColorStateList;

.field public mDaysInMonth:I

.field public mDesiredCellWidth:I

.field public mDesiredDayHeight:I

.field public mDesiredDayOfWeekHeight:I

.field public mDesiredDaySelectorRadius:I

.field public mDesiredMonthHeight:I

.field public mEnabledDayEnd:I

.field public mEnabledDayStart:I

.field public mHighlightedDay:I

.field public mLocale:Ljava/util/Locale;

.field public mMonth:I

.field public mMonthHeight:I

.field public final mMonthPaint:Landroid/text/TextPaint;

.field public mMonthYearLabel:Ljava/lang/String;

.field public mOnDayClickListener:Lokhttp3/ConnectionPool;

.field public mPaddedHeight:I

.field public mPaddedWidth:I

.field public mPreviouslyHighlightedDay:I

.field public mToday:I

.field public mTouchHelper:Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

.field public mWeekStart:I

.field public mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0401b7

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/text/TextPaint;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 10
    .line 11
    new-instance p2, Landroid/text/TextPaint;

    .line 12
    .line 13
    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 17
    .line 18
    new-instance p2, Landroid/text/TextPaint;

    .line 19
    .line 20
    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 24
    .line 25
    new-instance p2, Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 31
    .line 32
    new-instance p2, Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    new-instance p2, Landroid/graphics/Paint;

    .line 40
    .line 41
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 45
    .line 46
    const/4 p2, 0x7

    .line 47
    new-array p2, p2, [Ljava/lang/String;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 50
    .line 51
    const/4 p2, -0x1

    .line 52
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mActivatedDay:I

    .line 53
    .line 54
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mToday:I

    .line 55
    .line 56
    const/4 p3, 0x1

    .line 57
    iput p3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mWeekStart:I

    .line 58
    .line 59
    iput p3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 60
    .line 61
    const/16 p3, 0x1f

    .line 62
    .line 63
    iput p3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 64
    .line 65
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 66
    .line 67
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->attrHandler(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 77
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 78
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 79
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 80
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 p2, 0x7

    .line 82
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    const/4 p2, -0x1

    .line 83
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mActivatedDay:I

    .line 84
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mToday:I

    const/4 p3, 0x1

    .line 85
    iput p3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mWeekStart:I

    .line 86
    iput p3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayStart:I

    const/16 p3, 0x1f

    .line 87
    iput p3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 88
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 89
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 90
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->attrHandler(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final applyTextAppearance(Landroid/text/TextPaint;I)Landroid/content/res/ColorStateList;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcom/takisoft/datetimepicker/R$styleable;->TextAppearance:[I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/16 v0, 0xc

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    float-to-int v0, v0

    .line 33
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x3

    .line 45
    invoke-virtual {p2, p0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    sget-object v0, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 52
    .line 53
    invoke-virtual {p0, v0, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    .line 62
    .line 63
    return-object p0
.end method

.method public final attrHandler(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f07006e

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 13
    .line 14
    const v0, 0x7f070069

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 22
    .line 23
    const v0, 0x7f070068

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 31
    .line 32
    const v0, 0x7f07006d

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 40
    .line 41
    const v0, 0x7f07006b

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 49
    .line 50
    new-instance v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 51
    .line 52
    invoke-direct {v0, p0, p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/takisoft/datetimepicker/widget/SimpleMonthView;Lcom/takisoft/datetimepicker/widget/SimpleMonthView;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 56
    .line 57
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 71
    .line 72
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 79
    .line 80
    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->updateMonthYearLabel()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 90
    .line 91
    .line 92
    const v1, 0x7f12024b

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const v2, 0x7f120249

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const v3, 0x7f12024a

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const v4, 0x7f07006f

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    const v5, 0x7f07006a

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    const v6, 0x7f07006c

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iget-object v6, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 135
    .line 136
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    .line 138
    .line 139
    int-to-float v4, v4

    .line 140
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    .line 142
    .line 143
    const/4 v4, 0x0

    .line 144
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 149
    .line 150
    .line 151
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 152
    .line 153
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 154
    .line 155
    .line 156
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 157
    .line 158
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    .line 160
    .line 161
    iget-object v6, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 162
    .line 163
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    .line 165
    .line 166
    int-to-float v5, v5

    .line 167
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    .line 169
    .line 170
    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    .line 190
    .line 191
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 192
    .line 193
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    .line 198
    .line 199
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 200
    .line 201
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 208
    .line 209
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    .line 211
    .line 212
    int-to-float p1, p1

    .line 213
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    .line 215
    .line 216
    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final ensureFocusedDay()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mActivatedDay:I

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 23
    .line 24
    return-void
.end method

.method public final findClosestColumn(Landroid/graphics/Rect;)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x3

    .line 4
    return p0

    .line 5
    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sub-int/2addr p1, v0

    .line 16
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCellWidth:I

    .line 17
    .line 18
    div-int/2addr p1, v0

    .line 19
    const/4 v0, 0x6

    .line 20
    if-gez p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-le p1, v0, :cond_2

    .line 25
    .line 26
    move p1, v0

    .line 27
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isLayoutRtl()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    sub-int/2addr v0, p1

    .line 34
    return v0

    .line 35
    :cond_3
    return p1
.end method

.method public final findClosestRow(Landroid/graphics/Rect;)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x3

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthHeight:I

    .line 10
    .line 11
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 12
    .line 13
    add-int/2addr v0, v1

    .line 14
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHeight:I

    .line 15
    .line 16
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    add-float/2addr v2, v3

    .line 27
    const/high16 v3, 0x40000000    # 2.0f

    .line 28
    .line 29
    div-float/2addr v2, v3

    .line 30
    div-int/lit8 v3, v1, 0x2

    .line 31
    .line 32
    add-int/2addr v3, v0

    .line 33
    int-to-float p1, p1

    .line 34
    int-to-float v0, v3

    .line 35
    sub-float/2addr v0, v2

    .line 36
    sub-float/2addr p1, v0

    .line 37
    float-to-int p1, p1

    .line 38
    int-to-float p1, p1

    .line 39
    int-to-float v0, v1

    .line 40
    div-float/2addr p1, v0

    .line 41
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findDayOffset()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 50
    .line 51
    add-int/2addr v0, p0

    .line 52
    div-int/lit8 p0, v0, 0x7

    .line 53
    .line 54
    rem-int/lit8 v0, v0, 0x7

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v0, v1

    .line 62
    :goto_0
    sub-int/2addr p0, v0

    .line 63
    if-gez p1, :cond_2

    .line 64
    .line 65
    return v1

    .line 66
    :cond_2
    if-le p1, p0, :cond_3

    .line 67
    .line 68
    return p0

    .line 69
    :cond_3
    return p1
.end method

.method public final findDayOffset()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekStart:I

    .line 2
    .line 3
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mWeekStart:I

    .line 4
    .line 5
    sub-int v1, v0, p0

    .line 6
    .line 7
    if-ge v0, p0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x7

    .line 10
    .line 11
    :cond_0
    return v1
.end method

.method public final getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    sub-int/2addr p1, v0

    .line 11
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findDayOffset()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, p1

    .line 16
    rem-int/lit8 p1, v1, 0x7

    .line 17
    .line 18
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCellWidth:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isLayoutRtl()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    sub-int/2addr v3, v4

    .line 35
    add-int/2addr p1, v0

    .line 36
    mul-int/2addr p1, v2

    .line 37
    sub-int/2addr v3, p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    mul-int/2addr p1, v2

    .line 44
    add-int/2addr v3, p1

    .line 45
    :goto_0
    div-int/lit8 v1, v1, 0x7

    .line 46
    .line 47
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHeight:I

    .line 48
    .line 49
    iget v4, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthHeight:I

    .line 50
    .line 51
    iget v5, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 52
    .line 53
    add-int/2addr v4, v5

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    add-int/2addr p0, v4

    .line 59
    mul-int/2addr v1, p1

    .line 60
    add-int/2addr v1, p0

    .line 61
    add-int/2addr v2, v3

    .line 62
    add-int/2addr p1, v1

    .line 63
    invoke-virtual {p2, v3, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 64
    .line 65
    .line 66
    return v0
.end method

.method public final getDayAtLocation(II)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    const/4 v0, -0x1

    .line 7
    if-ltz p1, :cond_4

    .line 8
    .line 9
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedWidth:I

    .line 10
    .line 11
    if-lt p1, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthHeight:I

    .line 15
    .line 16
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 17
    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sub-int/2addr p2, v2

    .line 24
    if-lt p2, v1, :cond_4

    .line 25
    .line 26
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedHeight:I

    .line 27
    .line 28
    if-lt p2, v2, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isLayoutRtl()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedWidth:I

    .line 38
    .line 39
    sub-int p1, v2, p1

    .line 40
    .line 41
    :cond_2
    sub-int/2addr p2, v1

    .line 42
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHeight:I

    .line 43
    .line 44
    div-int/2addr p2, v1

    .line 45
    mul-int/lit8 p1, p1, 0x7

    .line 46
    .line 47
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedWidth:I

    .line 48
    .line 49
    div-int/2addr p1, v1

    .line 50
    mul-int/lit8 p2, p2, 0x7

    .line 51
    .line 52
    add-int/2addr p2, p1

    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findDayOffset()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    sub-int/2addr p2, p1

    .line 60
    invoke-virtual {p0, p2}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_3

    .line 65
    .line 66
    return v0

    .line 67
    :cond_3
    return p2

    .line 68
    :cond_4
    :goto_0
    return v0
.end method

.method public final getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->getBoundsForDay(ILandroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final isLayoutRtl()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final isValidDayOfMonth(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 5
    .line 6
    if-gt p1, p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final moveOneDay(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findDayOffset()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    add-int/2addr p1, v0

    .line 15
    rem-int/lit8 p1, p1, 0x7

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 21
    .line 22
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 23
    .line 24
    if-ge p1, v0, :cond_3

    .line 25
    .line 26
    add-int/2addr p1, v1

    .line 27
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findDayOffset()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    add-int/2addr p1, v0

    .line 35
    sub-int/2addr p1, v1

    .line 36
    rem-int/lit8 p1, p1, 0x7

    .line 37
    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 42
    .line 43
    if-le p1, v1, :cond_3

    .line 44
    .line 45
    sub-int/2addr p1, v1

    .line 46
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 47
    .line 48
    return v1

    .line 49
    :cond_3
    :goto_0
    return v2
.end method

.method public final onDayClicked(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isValidDayOfMonth(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 8
    .line 9
    if-lt p1, v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 12
    .line 13
    if-gt p1, v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mOnDayClickListener:Lokhttp3/ConnectionPool;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mYear:I

    .line 24
    .line 25
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonth:I

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mOnDayClickListener:Lokhttp3/ConnectionPool;

    .line 31
    .line 32
    iget-object v1, v1, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v1, v1, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;->this$0:Lcom/takisoft/datetimepicker/widget/DayPickerView;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mOnDaySelectedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$OnDaySelectedListener;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-interface {v1, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerView$OnDaySelectedListener;->onDaySelected(Ljava/util/Calendar;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    .line 56
    .line 57
    .line 58
    return v0

    .line 59
    :cond_1
    const/4 p0, 0x0

    .line 60
    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    int-to-float v4, v2

    .line 14
    int-to-float v5, v3

    .line 15
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    .line 17
    .line 18
    iget v4, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedWidth:I

    .line 19
    .line 20
    int-to-float v4, v4

    .line 21
    const/high16 v5, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr v4, v5

    .line 24
    iget-object v6, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthPaint:Landroid/text/TextPaint;

    .line 25
    .line 26
    invoke-virtual {v6}, Landroid/graphics/Paint;->ascent()F

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    add-float/2addr v8, v7

    .line 35
    iget v7, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthHeight:I

    .line 36
    .line 37
    int-to-float v7, v7

    .line 38
    sub-float/2addr v7, v8

    .line 39
    div-float/2addr v7, v5

    .line 40
    iget-object v8, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v8, v4, v7, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    iget v4, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthHeight:I

    .line 46
    .line 47
    iget v6, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 48
    .line 49
    iget v7, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCellWidth:I

    .line 50
    .line 51
    iget-object v8, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekPaint:Landroid/text/TextPaint;

    .line 52
    .line 53
    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    add-float/2addr v10, v9

    .line 62
    div-float/2addr v10, v5

    .line 63
    div-int/lit8 v6, v6, 0x2

    .line 64
    .line 65
    add-int/2addr v6, v4

    .line 66
    const/4 v9, 0x0

    .line 67
    :goto_0
    const/4 v11, 0x7

    .line 68
    if-ge v9, v11, :cond_1

    .line 69
    .line 70
    mul-int v11, v7, v9

    .line 71
    .line 72
    div-int/lit8 v12, v7, 0x2

    .line 73
    .line 74
    add-int/2addr v12, v11

    .line 75
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isLayoutRtl()Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_0

    .line 80
    .line 81
    iget v11, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedWidth:I

    .line 82
    .line 83
    sub-int v12, v11, v12

    .line 84
    .line 85
    :cond_0
    iget-object v11, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 86
    .line 87
    aget-object v11, v11, v9

    .line 88
    .line 89
    int-to-float v12, v12

    .line 90
    int-to-float v13, v6

    .line 91
    sub-float/2addr v13, v10

    .line 92
    invoke-virtual {v1, v11, v12, v13, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v9, v9, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget v6, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthHeight:I

    .line 99
    .line 100
    iget v7, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 101
    .line 102
    add-int/2addr v6, v7

    .line 103
    iget v7, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHeight:I

    .line 104
    .line 105
    iget v8, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCellWidth:I

    .line 106
    .line 107
    iget-object v9, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayPaint:Landroid/text/TextPaint;

    .line 108
    .line 109
    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    .line 110
    .line 111
    .line 112
    move-result v10

    .line 113
    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    .line 114
    .line 115
    .line 116
    move-result v12

    .line 117
    add-float/2addr v12, v10

    .line 118
    div-float/2addr v12, v5

    .line 119
    div-int/lit8 v5, v7, 0x2

    .line 120
    .line 121
    add-int/2addr v5, v6

    .line 122
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findDayOffset()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    const/4 v13, 0x1

    .line 127
    :goto_1
    iget v14, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 128
    .line 129
    if-gt v13, v14, :cond_c

    .line 130
    .line 131
    mul-int v14, v8, v6

    .line 132
    .line 133
    div-int/lit8 v15, v8, 0x2

    .line 134
    .line 135
    add-int/2addr v15, v14

    .line 136
    invoke-virtual {v0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isLayoutRtl()Z

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    if-eqz v14, :cond_2

    .line 141
    .line 142
    iget v14, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedWidth:I

    .line 143
    .line 144
    sub-int v15, v14, v15

    .line 145
    .line 146
    :cond_2
    iget v14, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayStart:I

    .line 147
    .line 148
    if-lt v13, v14, :cond_3

    .line 149
    .line 150
    iget v14, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mEnabledDayEnd:I

    .line 151
    .line 152
    if-gt v13, v14, :cond_3

    .line 153
    .line 154
    const/4 v14, 0x1

    .line 155
    goto :goto_2

    .line 156
    :cond_3
    const/4 v14, 0x0

    .line 157
    :goto_2
    if-eqz v14, :cond_4

    .line 158
    .line 159
    const/16 v16, 0x8

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_4
    const/16 v16, 0x0

    .line 163
    .line 164
    :goto_3
    iget v10, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mActivatedDay:I

    .line 165
    .line 166
    if-ne v10, v13, :cond_5

    .line 167
    .line 168
    const/4 v10, 0x1

    .line 169
    goto :goto_4

    .line 170
    :cond_5
    const/4 v10, 0x0

    .line 171
    :goto_4
    iget v11, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 172
    .line 173
    if-ne v11, v13, :cond_6

    .line 174
    .line 175
    const/4 v11, 0x1

    .line 176
    goto :goto_5

    .line 177
    :cond_6
    const/4 v11, 0x0

    .line 178
    :goto_5
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaySelectorPaint:Landroid/graphics/Paint;

    .line 179
    .line 180
    if-eqz v10, :cond_8

    .line 181
    .line 182
    or-int/lit8 v16, v16, 0x20

    .line 183
    .line 184
    if-eqz v11, :cond_7

    .line 185
    .line 186
    iget-object v11, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_7
    move-object v11, v4

    .line 190
    :goto_6
    int-to-float v14, v15

    .line 191
    move-object/from16 v17, v4

    .line 192
    .line 193
    int-to-float v4, v5

    .line 194
    move/from16 v18, v6

    .line 195
    .line 196
    iget v6, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 197
    .line 198
    int-to-float v6, v6

    .line 199
    invoke-virtual {v1, v14, v4, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 200
    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_8
    move-object/from16 v17, v4

    .line 204
    .line 205
    move/from16 v18, v6

    .line 206
    .line 207
    if-eqz v11, :cond_9

    .line 208
    .line 209
    or-int/lit8 v16, v16, 0x10

    .line 210
    .line 211
    if-eqz v14, :cond_9

    .line 212
    .line 213
    int-to-float v4, v15

    .line 214
    int-to-float v6, v5

    .line 215
    iget v11, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 216
    .line 217
    int-to-float v11, v11

    .line 218
    iget-object v14, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHighlightPaint:Landroid/graphics/Paint;

    .line 219
    .line 220
    invoke-virtual {v1, v4, v6, v11, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 221
    .line 222
    .line 223
    :cond_9
    :goto_7
    iget v4, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mToday:I

    .line 224
    .line 225
    if-ne v4, v13, :cond_a

    .line 226
    .line 227
    if-nez v10, :cond_a

    .line 228
    .line 229
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getColor()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    const/4 v10, 0x0

    .line 234
    goto :goto_8

    .line 235
    :cond_a
    invoke-static/range {v16 .. v16}, Lcom/takisoft/datetimepicker/util/StateSet;->get(I)[I

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    iget-object v6, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayTextColor:Landroid/content/res/ColorStateList;

    .line 240
    .line 241
    const/4 v10, 0x0

    .line 242
    invoke-virtual {v6, v4, v10}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    :goto_8
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    .line 248
    .line 249
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayFormatter:Ljava/text/NumberFormat;

    .line 250
    .line 251
    int-to-long v10, v13

    .line 252
    invoke-virtual {v4, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    int-to-float v6, v15

    .line 257
    int-to-float v10, v5

    .line 258
    sub-float/2addr v10, v12

    .line 259
    invoke-virtual {v1, v4, v6, v10, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    .line 261
    .line 262
    add-int/lit8 v6, v18, 0x1

    .line 263
    .line 264
    const/4 v4, 0x7

    .line 265
    if-ne v6, v4, :cond_b

    .line 266
    .line 267
    add-int/2addr v5, v7

    .line 268
    const/4 v6, 0x0

    .line 269
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 270
    .line 271
    move v11, v4

    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_c
    neg-int v0, v2

    .line 275
    int-to-float v0, v0

    .line 276
    neg-int v2, v3

    .line 277
    int-to-float v2, v2

    .line 278
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findDayOffset()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x11

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p2, v1, :cond_6

    .line 11
    .line 12
    const/16 v1, 0x21

    .line 13
    .line 14
    if-eq p2, v1, :cond_4

    .line 15
    .line 16
    const/16 v1, 0x42

    .line 17
    .line 18
    if-eq p2, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x82

    .line 21
    .line 22
    if-eq p2, v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {p0, p3}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sub-int/2addr v1, v0

    .line 30
    add-int/lit8 v0, v1, 0x1

    .line 31
    .line 32
    if-ge v0, v2, :cond_1

    .line 33
    .line 34
    add-int/lit8 v0, v1, 0x8

    .line 35
    .line 36
    :cond_1
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p0, p3}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    mul-int/lit8 v1, v1, 0x7

    .line 47
    .line 48
    sub-int/2addr v1, v0

    .line 49
    add-int/2addr v2, v1

    .line 50
    :goto_0
    iput v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {p0, p3}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findClosestColumn(Landroid/graphics/Rect;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 58
    .line 59
    add-int v3, v0, v2

    .line 60
    .line 61
    div-int/lit8 v3, v3, 0x7

    .line 62
    .line 63
    sub-int/2addr v1, v0

    .line 64
    mul-int/lit8 v3, v3, 0x7

    .line 65
    .line 66
    add-int/2addr v3, v1

    .line 67
    add-int/lit8 v0, v3, 0x1

    .line 68
    .line 69
    if-le v0, v2, :cond_5

    .line 70
    .line 71
    add-int/lit8 v0, v3, -0x6

    .line 72
    .line 73
    :cond_5
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    invoke-virtual {p0, p3}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->findClosestRow(Landroid/graphics/Rect;)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    add-int/2addr v1, v2

    .line 81
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 82
    .line 83
    mul-int/lit8 v1, v1, 0x7

    .line 84
    .line 85
    sub-int/2addr v1, v0

    .line 86
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 91
    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3d

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x42

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x7

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isLayoutRtl()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    xor-int/2addr v0, v2

    .line 32
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->moveOneDay(Z)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->isLayoutRtl()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->moveOneDay(Z)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    goto :goto_2

    .line 53
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 60
    .line 61
    .line 62
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 63
    .line 64
    iget v4, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaysInMonth:I

    .line 65
    .line 66
    sub-int/2addr v4, v1

    .line 67
    if-gt v0, v4, :cond_6

    .line 68
    .line 69
    add-int/2addr v0, v1

    .line 70
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 71
    .line 72
    :goto_0
    move v3, v2

    .line 73
    goto :goto_2

    .line 74
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->ensureFocusedDay()V

    .line 81
    .line 82
    .line 83
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 84
    .line 85
    if-le v0, v1, :cond_6

    .line 86
    .line 87
    sub-int/2addr v0, v1

    .line 88
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    :pswitch_4
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 92
    .line 93
    const/4 v1, -0x1

    .line 94
    if-eq v0, v1, :cond_6

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 97
    .line 98
    .line 99
    return v2

    .line 100
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    const/4 v0, 0x2

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    move v0, v2

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    move v0, v3

    .line 117
    :goto_1
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    move-object v4, p0

    .line 124
    :cond_4
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    if-eqz v4, :cond_5

    .line 129
    .line 130
    if-eq v4, p0, :cond_5

    .line 131
    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    if-eq v5, v1, :cond_4

    .line 137
    .line 138
    :cond_5
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 141
    .line 142
    .line 143
    return v2

    .line 144
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 147
    .line 148
    .line 149
    return v2

    .line 150
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    return p0

    .line 155
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sub-int/2addr p4, p2

    .line 5
    sub-int/2addr p5, p3

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sub-int/2addr p4, p3

    .line 23
    sub-int/2addr p5, v0

    .line 24
    sub-int/2addr p4, p1

    .line 25
    sub-int/2addr p5, p2

    .line 26
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedWidth:I

    .line 27
    .line 28
    if-eq p4, v1, :cond_2

    .line 29
    .line 30
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedHeight:I

    .line 31
    .line 32
    if-ne p5, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput p4, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedWidth:I

    .line 36
    .line 37
    iput p5, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedHeight:I

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    sub-int/2addr p4, p2

    .line 44
    sub-int/2addr p4, v0

    .line 45
    int-to-float p2, p5

    .line 46
    int-to-float p4, p4

    .line 47
    div-float/2addr p2, p4

    .line 48
    iget p4, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 49
    .line 50
    int-to-float p4, p4

    .line 51
    mul-float/2addr p4, p2

    .line 52
    float-to-int p4, p4

    .line 53
    iget p5, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPaddedWidth:I

    .line 54
    .line 55
    div-int/lit8 p5, p5, 0x7

    .line 56
    .line 57
    iput p4, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthHeight:I

    .line 58
    .line 59
    iget p4, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 60
    .line 61
    int-to-float p4, p4

    .line 62
    mul-float/2addr p4, p2

    .line 63
    float-to-int p4, p4

    .line 64
    iput p4, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekHeight:I

    .line 65
    .line 66
    iget p4, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 67
    .line 68
    int-to-float p4, p4

    .line 69
    mul-float/2addr p4, p2

    .line 70
    float-to-int p2, p4

    .line 71
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHeight:I

    .line 72
    .line 73
    iput p5, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCellWidth:I

    .line 74
    .line 75
    div-int/lit8 p5, p5, 0x2

    .line 76
    .line 77
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    add-int/2addr p1, p5

    .line 82
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayHeight:I

    .line 83
    .line 84
    div-int/lit8 p2, p2, 0x2

    .line 85
    .line 86
    add-int/2addr p2, v0

    .line 87
    iget p3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredDaySelectorRadius:I

    .line 88
    .line 89
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDaySelectorRadius:I

    .line 98
    .line 99
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredDayHeight:I

    .line 12
    .line 13
    mul-int/lit8 v2, v2, 0x6

    .line 14
    .line 15
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredDayOfWeekHeight:I

    .line 16
    .line 17
    add-int/2addr v2, v3

    .line 18
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredMonthHeight:I

    .line 19
    .line 20
    add-int/2addr v2, v3

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/2addr v3, v2

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v2, v3

    .line 31
    iget v3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDesiredCellWidth:I

    .line 32
    .line 33
    mul-int/lit8 v3, v3, 0x7

    .line 34
    .line 35
    add-int/2addr v3, v0

    .line 36
    add-int/2addr v3, v1

    .line 37
    invoke-static {v3, p1}, Landroid/view/View;->resolveSize(II)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {v2, p2}, Landroid/view/View;->resolveSize(II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    .line 7
    add-float/2addr v0, v1

    .line 8
    float-to-int v0, v0

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-float/2addr v2, v1

    .line 14
    float-to-int v1, v2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    if-eq p1, v2, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq p1, v3, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->getDayAtLocation(II)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->onDayClicked(I)Z

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->getDayAtLocation(II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 50
    .line 51
    if-eq v1, v0, :cond_3

    .line 52
    .line 53
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mHighlightedDay:I

    .line 54
    .line 55
    iput v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mPreviouslyHighlightedDay:I

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 58
    .line 59
    .line 60
    :cond_3
    if-nez p1, :cond_4

    .line 61
    .line 62
    if-gez v0, :cond_4

    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return p0

    .line 66
    :cond_4
    :goto_0
    return v2
.end method

.method public final updateDayOfWeekLabels()V
    .locals 9

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    const/4 v5, 0x1

    .line 11
    if-ge v4, v0, :cond_0

    .line 12
    .line 13
    add-int/lit8 v6, v4, 0x1

    .line 14
    .line 15
    invoke-virtual {v2, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 16
    .line 17
    .line 18
    iget-object v7, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {v2, v0, v5, v7}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    iget-object v8, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 25
    .line 26
    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v7, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    aput-object v5, v1, v4

    .line 35
    .line 36
    move v4, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    .line 39
    .line 40
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mWeekStart:I

    .line 41
    .line 42
    add-int/2addr v2, v3

    .line 43
    sub-int/2addr v2, v5

    .line 44
    rem-int/2addr v2, v0

    .line 45
    aget-object v2, v1, v2

    .line 46
    .line 47
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mDayOfWeekLabels:[Ljava/lang/String;

    .line 48
    .line 49
    aput-object v2, v4, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    return-void
.end method

.method public final updateMonthYearLabel()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 5
    .line 6
    const-string v1, "MMMMy"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v2, 0x18

    .line 15
    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 21
    .line 22
    new-instance v2, Landroid/icu/text/SimpleDateFormat;

    .line 23
    .line 24
    invoke-direct {v2, v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m()Landroid/icu/text/DisplayContext;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v2, v0}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mLocale:Ljava/util/Locale;

    .line 50
    .line 51
    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthYearLabel:Ljava/lang/String;

    .line 65
    .line 66
    return-void
.end method
