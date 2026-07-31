.class public Lcom/takisoft/datetimepicker/widget/DayPickerView;
.super Landroid/view/ViewGroup;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final ATTRS_TEXT_COLOR:[I


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

.field public final mMaxDate:Ljava/util/Calendar;

.field public final mMinDate:Ljava/util/Calendar;

.field public mNextButton:Landroid/widget/ImageButton;

.field public final mOnClickListener:Landroidx/preference/Preference$1;

.field public mOnDaySelectedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$OnDaySelectedListener;

.field public final mOnPageChangedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

.field public mPrevButton:Landroid/widget/ImageButton;

.field public final mSelectedDay:Ljava/util/Calendar;

.field public mTempCalendar:Ljava/util/Calendar;

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x1010098

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400b4

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 21
    .line 22
    new-instance v0, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;-><init>(Lcom/takisoft/datetimepicker/widget/DayPickerView;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mOnPageChangedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 28
    .line 29
    new-instance v0, Landroidx/preference/Preference$1;

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    invoke-direct {v0, v1, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mOnClickListener:Landroidx/preference/Preference$1;

    .line 37
    .line 38
    invoke-static {p1}, Landroidx/work/Data$Companion;->isLightTheme(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    const v0, 0x7f1304e9

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const v0, 0x7f1304e3

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 61
    new-instance v0, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    invoke-direct {v0, p0}, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;-><init>(Lcom/takisoft/datetimepicker/widget/DayPickerView;)V

    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mOnPageChangedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 62
    new-instance v0, Landroidx/preference/Preference$1;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroidx/preference/Preference$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mOnClickListener:Landroidx/preference/Preference$1;

    .line 63
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final attrHandler(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 1
    const-string v0, "accessibility"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 10
    .line 11
    sget-object v0, Lcom/takisoft/datetimepicker/R$styleable;->CalendarView:[I

    .line 12
    .line 13
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    const/4 p4, 0x5

    .line 30
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    const/4 p4, 0x7

    .line 35
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    const/4 v0, 0x6

    .line 40
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x4

    .line 45
    const v2, 0x7f1302be

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/16 v2, 0x8

    .line 53
    .line 54
    const v3, 0x7f1302bd

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const v3, 0x7f1302bc

    .line 62
    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const/4 v5, 0x3

    .line 70
    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const/4 v6, 0x2

    .line 75
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    .line 81
    .line 82
    new-instance p2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 88
    .line 89
    iput v1, p2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mMonthTextAppearance:I

    .line 90
    .line 91
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 95
    .line 96
    iput v2, p2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayOfWeekTextAppearance:I

    .line 97
    .line 98
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 102
    .line 103
    iput v3, p2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayTextAppearance:I

    .line 104
    .line 105
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 109
    .line 110
    iput-object v5, p2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 111
    .line 112
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 113
    .line 114
    .line 115
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 116
    .line 117
    iput-object v6, p2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    const v2, 0x7f0c015b

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Landroid/view/ViewGroup;

    .line 134
    .line 135
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-lez v2, :cond_0

    .line 140
    .line 141
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_0
    const p2, 0x7f09034b

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Landroid/widget/ImageButton;

    .line 160
    .line 161
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mOnClickListener:Landroidx/preference/Preference$1;

    .line 164
    .line 165
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    .line 167
    .line 168
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    const v6, 0x7f0800d0

    .line 179
    .line 180
    .line 181
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-static {v3, v5}, Landroidx/work/Data$Companion;->tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    .line 190
    .line 191
    const p2, 0x7f0902f9

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Landroid/widget/ImageButton;

    .line 199
    .line 200
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 201
    .line 202
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    const v5, 0x7f0800ce

    .line 216
    .line 217
    .line 218
    invoke-static {v3, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-static {v2, v3}, Landroidx/work/Data$Companion;->tintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    .line 227
    .line 228
    const p2, 0x7f090184

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    .line 236
    .line 237
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 238
    .line 239
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 240
    .line 241
    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 242
    .line 243
    .line 244
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 245
    .line 246
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mOnPageChangedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 247
    .line 248
    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 249
    .line 250
    .line 251
    if-eqz v1, :cond_2

    .line 252
    .line 253
    const/4 p2, 0x0

    .line 254
    sget-object v2, Lcom/takisoft/datetimepicker/widget/DayPickerView;->ATTRS_TEXT_COLOR:[I

    .line 255
    .line 256
    invoke-virtual {p1, p2, v2, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    if-eqz p2, :cond_1

    .line 265
    .line 266
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 267
    .line 268
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 269
    .line 270
    .line 271
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 272
    .line 273
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 274
    .line 275
    .line 276
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    .line 278
    .line 279
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-static {p4, p1}, Lcom/takisoft/datetimepicker/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 284
    .line 285
    .line 286
    move-result p2

    .line 287
    const/4 p4, 0x1

    .line 288
    if-nez p2, :cond_3

    .line 289
    .line 290
    const/16 p2, 0x76c

    .line 291
    .line 292
    invoke-virtual {p1, p2, v4, p4}, Ljava/util/Calendar;->set(III)V

    .line 293
    .line 294
    .line 295
    :cond_3
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 296
    .line 297
    .line 298
    move-result-wide v1

    .line 299
    invoke-static {v0, p1}, Lcom/takisoft/datetimepicker/widget/CalendarView;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    if-nez p2, :cond_4

    .line 304
    .line 305
    const/16 p2, 0xb

    .line 306
    .line 307
    const/16 v0, 0x1f

    .line 308
    .line 309
    const/16 v3, 0x834

    .line 310
    .line 311
    invoke-virtual {p1, v3, p2, v0}, Ljava/util/Calendar;->set(III)V

    .line 312
    .line 313
    .line 314
    :cond_4
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 315
    .line 316
    .line 317
    move-result-wide p1

    .line 318
    cmp-long v0, p1, v1

    .line 319
    .line 320
    if-ltz v0, :cond_5

    .line 321
    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 323
    .line 324
    .line 325
    move-result-wide v5

    .line 326
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 327
    .line 328
    .line 329
    move-result-wide v5

    .line 330
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 331
    .line 332
    .line 333
    move-result-wide v5

    .line 334
    invoke-virtual {p0, p3}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 335
    .line 336
    .line 337
    iget-object p3, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 338
    .line 339
    invoke-virtual {p3, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->onRangeChanged()V

    .line 343
    .line 344
    .line 345
    iget-object p3, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 346
    .line 347
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->onRangeChanged()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, v5, v6, v4, p4}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setDate(JZZ)V

    .line 354
    .line 355
    .line 356
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 357
    .line 358
    new-instance p2, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 359
    .line 360
    invoke-direct {p2, p0}, Lcom/takisoft/datetimepicker/widget/DayPickerView$1;-><init>(Lcom/takisoft/datetimepicker/widget/DayPickerView;)V

    .line 361
    .line 362
    .line 363
    iput-object p2, p1, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Lcom/takisoft/datetimepicker/widget/DayPickerView$1;

    .line 364
    .line 365
    return-void

    .line 366
    :cond_5
    const-string p0, "maxDate must be >= minDate"

    .line 367
    .line 368
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 18
    .line 19
    :goto_0
    sub-int/2addr p4, p2

    .line 20
    sub-int/2addr p5, p3

    .line 21
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-virtual {p2, p3, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 28
    .line 29
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 34
    .line 35
    iget p2, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mMonthHeight:I

    .line 36
    .line 37
    iget p3, p0, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCellWidth:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 40
    .line 41
    .line 42
    move-result p5

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    sub-int v3, p2, v1

    .line 52
    .line 53
    div-int/lit8 v3, v3, 0x2

    .line 54
    .line 55
    add-int/2addr v3, v2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    sub-int v4, p3, p5

    .line 61
    .line 62
    div-int/lit8 v4, v4, 0x2

    .line 63
    .line 64
    add-int/2addr v4, v2

    .line 65
    add-int/2addr p5, v4

    .line 66
    add-int/2addr v1, v3

    .line 67
    invoke-virtual {p1, v4, v3, p5, v1}, Landroid/view/View;->layout(IIII)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 75
    .line 76
    .line 77
    move-result p5

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    sub-int/2addr p2, p5

    .line 83
    div-int/lit8 p2, p2, 0x2

    .line 84
    .line 85
    add-int/2addr p2, v1

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    sub-int/2addr p4, p0

    .line 91
    sub-int/2addr p3, p1

    .line 92
    div-int/lit8 p3, p3, 0x2

    .line 93
    .line 94
    sub-int/2addr p4, p3

    .line 95
    sub-int p0, p4, p1

    .line 96
    .line 97
    add-int/2addr p5, p2

    .line 98
    invoke-virtual {v0, p0, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidthAndState()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeightAndState()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/high16 v0, -0x80000000

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 36
    .line 37
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onRangeChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mMinDate:Ljava/util/Calendar;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mMaxDate:Ljava/util/Calendar;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sub-int/2addr v4, v5

    .line 35
    const/4 v5, 0x2

    .line 36
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr v2, v1

    .line 45
    mul-int/lit8 v4, v4, 0xc

    .line 46
    .line 47
    add-int/2addr v4, v2

    .line 48
    add-int/2addr v4, v3

    .line 49
    iput v4, v0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->setDate(JZZ)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/takisoft/datetimepicker/widget/DayPickerView;->updateButtonVisibility(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setDate(JZZ)V
    .locals 5

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    iget-object p4, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mSelectedDay:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-virtual {p4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p4, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMaxDate:Ljava/util/Calendar;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mMinDate:Ljava/util/Calendar;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sub-int/2addr v1, v3

    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    sub-int/2addr p4, v4

    .line 32
    mul-int/lit8 v1, v1, 0xc

    .line 33
    .line 34
    add-int/2addr v1, p4

    .line 35
    iget-object p4, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    .line 36
    .line 37
    if-nez p4, :cond_1

    .line 38
    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    iput-object p4, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    .line 44
    .line 45
    :cond_1
    iget-object p4, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    .line 46
    .line 47
    invoke-virtual {p4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    .line 49
    .line 50
    iget-object p4, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    .line 51
    .line 52
    invoke-virtual {p4, v0}, Ljava/util/Calendar;->get(I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    sub-int/2addr v4, v0

    .line 61
    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    .line 62
    .line 63
    .line 64
    move-result p4

    .line 65
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    sub-int/2addr p4, v0

    .line 70
    mul-int/lit8 v4, v4, 0xc

    .line 71
    .line 72
    add-int/2addr v4, p4

    .line 73
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eq p4, v1, :cond_2

    .line 89
    .line 90
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 91
    .line 92
    iput-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 93
    .line 94
    invoke-virtual {v1, p4, v0, p3, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IIZZ)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object p3, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    .line 98
    .line 99
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mTempCalendar:Ljava/util/Calendar;

    .line 105
    .line 106
    invoke-virtual {p1, p0}, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final setFirstDayOfWeek(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 2
    .line 3
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mFirstDayOfWeek:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mItems:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Lcom/takisoft/datetimepicker/widget/SimpleMonthView;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-lt p1, v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x7

    .line 26
    if-gt p1, v3, :cond_0

    .line 27
    .line 28
    iput p1, v2, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mWeekStart:I

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object v3, v2, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iput v3, v2, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mWeekStart:I

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v2}, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->updateDayOfWeekLabels()V

    .line 40
    .line 41
    .line 42
    iget-object v3, v2, Lcom/takisoft/datetimepicker/widget/SimpleMonthView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/SimpleMonthView$MonthViewTouchHelper;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public final updateButtonVisibility(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    move v2, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mAdapter:Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;

    .line 9
    .line 10
    iget v3, v3, Lcom/takisoft/datetimepicker/widget/DayPickerPagerAdapter;->mCount:I

    .line 11
    .line 12
    sub-int/2addr v3, v0

    .line 13
    if-ge p1, v3, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move v0, v1

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mPrevButton:Landroid/widget/ImageButton;

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    move v2, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move v2, v3

    .line 25
    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/DayPickerView;->mNextButton:Landroid/widget/ImageButton;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move v1, v3

    .line 34
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
