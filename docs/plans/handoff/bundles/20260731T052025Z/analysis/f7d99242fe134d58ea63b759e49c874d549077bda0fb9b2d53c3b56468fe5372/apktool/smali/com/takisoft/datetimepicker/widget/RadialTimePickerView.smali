.class public Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;
.super Landroid/view/View;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final COS_30:[F

.field public static final HOURS_NUMBERS:[I

.field public static final HOURS_NUMBERS_24:[I

.field public static final MINUTES_NUMBERS:[I

.field public static final SIN_30:[F

.field public static final SNAP_PREFER_30S_MAP:[I


# instance fields
.field public final HOURS_TO_MINUTES:Lcom/google/android/material/button/MaterialButton$1;

.field public final HOURS_TO_MINUTES_OLD:Lcom/google/android/material/animation/ImageMatrixProperty;

.field public mAmOrPm:I

.field public final mCenterDotRadius:I

.field public mChangedDuringTouch:Z

.field public mCircleRadius:I

.field public final mDisabledAlpha:F

.field public mHalfwayDist:I

.field public final mHours12Texts:[Ljava/lang/String;

.field public mHoursToMinutes:F

.field public mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

.field public final mInnerHours24Texts:[Ljava/lang/String;

.field public mInnerTextHours:[Ljava/lang/String;

.field public final mInnerTextX:[F

.field public final mInnerTextY:[F

.field public mInputEnabled:Z

.field public mIs24HourMode:Z

.field public mIsOnInnerCircle:Z

.field public mListener:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$OnValueSelectedListener;

.field public mMaxDistForOuterNumber:I

.field public mMinDistForInnerNumber:I

.field public mMinutesText:[Ljava/lang/String;

.field public final mMinutesTexts:[Ljava/lang/String;

.field public final mOuterHours24Texts:[Ljava/lang/String;

.field public mOuterTextHours:[Ljava/lang/String;

.field public final mOuterTextX:[[F

.field public final mOuterTextY:[[F

.field public final mPaint:[Landroid/graphics/Paint;

.field public final mPaintBackground:Landroid/graphics/Paint;

.field public final mPaintCenter:Landroid/graphics/Paint;

.field public final mPaintSelector:[Landroid/graphics/Paint;

.field public final mSelectionDegrees:[I

.field public mSelectorColor:I

.field public mSelectorDotColor:I

.field public final mSelectorDotRadius:I

.field public final mSelectorPath:Landroid/graphics/Path;

.field public final mSelectorRadius:I

.field public final mSelectorStroke:I

.field public mShowHours:Z

.field public final mTextColor:[Landroid/content/res/ColorStateList;

.field public final mTextInset:[I

.field public final mTextSize:[I

.field public final mTouchHelper:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

.field public final mTypeface:Landroid/graphics/Typeface;

.field public mXCenter:I

.field public mYCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    fill-array-data v1, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 16
    .line 17
    new-array v1, v0, [I

    .line 18
    .line 19
    fill-array-data v1, :array_2

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 23
    .line 24
    const/16 v1, 0x169

    .line 25
    .line 26
    new-array v2, v1, [I

    .line 27
    .line 28
    sput-object v2, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 29
    .line 30
    new-array v2, v0, [F

    .line 31
    .line 32
    sput-object v2, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->COS_30:[F

    .line 33
    .line 34
    new-array v2, v0, [F

    .line 35
    .line 36
    sput-object v2, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->SIN_30:[F

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    const/16 v3, 0x8

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    move v7, v2

    .line 43
    move v5, v4

    .line 44
    move v6, v5

    .line 45
    :goto_0
    if-ge v5, v1, :cond_3

    .line 46
    .line 47
    sget-object v8, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 48
    .line 49
    aput v6, v8, v5

    .line 50
    .line 51
    if-ne v7, v3, :cond_2

    .line 52
    .line 53
    add-int/lit8 v6, v6, 0x6

    .line 54
    .line 55
    const/16 v3, 0x168

    .line 56
    .line 57
    if-ne v6, v3, :cond_0

    .line 58
    .line 59
    const/4 v3, 0x7

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    rem-int/lit8 v3, v6, 0x1e

    .line 62
    .line 63
    if-nez v3, :cond_1

    .line 64
    .line 65
    const/16 v3, 0xe

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    const/4 v3, 0x4

    .line 69
    :goto_1
    move v7, v2

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :goto_3
    if-ge v4, v0, :cond_4

    .line 82
    .line 83
    sget-object v3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->COS_30:[F

    .line 84
    .line 85
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    double-to-float v5, v5

    .line 90
    aput v5, v3, v4

    .line 91
    .line 92
    sget-object v3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->SIN_30:[F

    .line 93
    .line 94
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    double-to-float v5, v5

    .line 99
    aput v5, v3, v4

    .line 100
    .line 101
    const-wide v5, 0x3fe0c152382d7365L    # 0.5235987755982988

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    add-double/2addr v1, v5

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    return-void

    .line 111
    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 473
    invoke-direct {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04062d

    .line 471
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 472
    invoke-static {p1}, Landroidx/work/Data$Companion;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1304ec

    goto :goto_0

    :cond_0
    const v0, 0x7f1304ee

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 12

    .line 1
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/material/button/MaterialButton$1;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/material/button/MaterialButton$1;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_TO_MINUTES:Lcom/google/android/material/button/MaterialButton$1;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/material/animation/ImageMatrixProperty;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/material/animation/ImageMatrixProperty;-><init>(Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_TO_MINUTES_OLD:Lcom/google/android/material/animation/ImageMatrixProperty;

    .line 17
    .line 18
    const/16 v0, 0xc

    .line 19
    .line 20
    new-array v1, v0, [Ljava/lang/String;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 23
    .line 24
    new-array v1, v0, [Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 27
    .line 28
    new-array v1, v0, [Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 31
    .line 32
    new-array v1, v0, [Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    new-array v2, v1, [Landroid/graphics/Paint;

    .line 38
    .line 39
    iput-object v2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 40
    .line 41
    new-instance v3, Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v3, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    new-array v5, v4, [Landroid/graphics/Paint;

    .line 50
    .line 51
    iput-object v5, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 52
    .line 53
    new-instance v6, Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v6, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 59
    .line 60
    new-array v7, v4, [Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    iput-object v7, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    new-array v7, v4, [I

    .line 65
    .line 66
    iput-object v7, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextSize:[I

    .line 67
    .line 68
    new-array v4, v4, [I

    .line 69
    .line 70
    iput-object v4, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextInset:[I

    .line 71
    .line 72
    new-array v8, v1, [I

    .line 73
    .line 74
    const/4 v9, 0x1

    .line 75
    aput v0, v8, v9

    .line 76
    .line 77
    const/4 v10, 0x0

    .line 78
    aput v1, v8, v10

    .line 79
    .line 80
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 81
    .line 82
    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    check-cast v8, [[F

    .line 87
    .line 88
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 89
    .line 90
    new-array v8, v1, [I

    .line 91
    .line 92
    aput v0, v8, v9

    .line 93
    .line 94
    aput v1, v8, v10

    .line 95
    .line 96
    invoke-static {v11, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, [[F

    .line 101
    .line 102
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 103
    .line 104
    new-array v8, v0, [F

    .line 105
    .line 106
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 107
    .line 108
    new-array v8, v0, [F

    .line 109
    .line 110
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 111
    .line 112
    new-array v8, v1, [I

    .line 113
    .line 114
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 115
    .line 116
    new-instance v8, Landroid/graphics/Path;

    .line 117
    .line 118
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v8, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 122
    .line 123
    iput-boolean v9, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 124
    .line 125
    iput-boolean v10, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 126
    .line 127
    move/from16 v11, p4

    .line 128
    .line 129
    invoke-virtual {p0, p2, p3, v11}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 130
    .line 131
    .line 132
    new-instance p2, Landroid/util/TypedValue;

    .line 133
    .line 134
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const v8, 0x1010033

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v8, p2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 152
    .line 153
    const-string p1, "sans-serif"

    .line 154
    .line 155
    invoke-static {p1, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 160
    .line 161
    new-instance p1, Landroid/graphics/Paint;

    .line 162
    .line 163
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 164
    .line 165
    .line 166
    aput-object p1, v2, v10

    .line 167
    .line 168
    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 169
    .line 170
    .line 171
    aget-object p1, v2, v10

    .line 172
    .line 173
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 176
    .line 177
    .line 178
    new-instance p1, Landroid/graphics/Paint;

    .line 179
    .line 180
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 181
    .line 182
    .line 183
    aput-object p1, v2, v9

    .line 184
    .line 185
    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    .line 187
    .line 188
    aget-object p1, v2, v9

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    .line 195
    .line 196
    new-instance p1, Landroid/graphics/Paint;

    .line 197
    .line 198
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 199
    .line 200
    .line 201
    aput-object p1, v5, v10

    .line 202
    .line 203
    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 204
    .line 205
    .line 206
    new-instance p1, Landroid/graphics/Paint;

    .line 207
    .line 208
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 209
    .line 210
    .line 211
    aput-object p1, v5, v9

    .line 212
    .line 213
    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    .line 215
    .line 216
    new-instance p1, Landroid/graphics/Paint;

    .line 217
    .line 218
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 219
    .line 220
    .line 221
    aput-object p1, v5, v1

    .line 222
    .line 223
    invoke-virtual {p1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    .line 225
    .line 226
    aget-object p1, v5, v1

    .line 227
    .line 228
    const/high16 p2, 0x40000000    # 2.0f

    .line 229
    .line 230
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    const p2, 0x7f0704b5

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 248
    .line 249
    const p2, 0x7f0704b6

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 257
    .line 258
    const p2, 0x7f0704b4

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 266
    .line 267
    const p2, 0x7f0704ad

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 271
    .line 272
    .line 273
    move-result p2

    .line 274
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 275
    .line 276
    const p2, 0x7f0704bb

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    aput v2, v7, v10

    .line 284
    .line 285
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 286
    .line 287
    .line 288
    move-result p2

    .line 289
    aput p2, v7, v9

    .line 290
    .line 291
    const p2, 0x7f0704ba

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    aput p2, v7, v1

    .line 299
    .line 300
    const p2, 0x7f0704b9

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    aput v2, v4, v10

    .line 308
    .line 309
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 310
    .line 311
    .line 312
    move-result p2

    .line 313
    aput p2, v4, v9

    .line 314
    .line 315
    const p2, 0x7f0704b8

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    aput p1, v4, v1

    .line 323
    .line 324
    iput-boolean v9, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 325
    .line 326
    const/4 p1, 0x0

    .line 327
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 328
    .line 329
    iput-boolean v10, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 330
    .line 331
    iput v10, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 332
    .line 333
    new-instance p1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 334
    .line 335
    invoke-direct {p1, p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;-><init>(Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;)V

    .line 336
    .line 337
    .line 338
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 339
    .line 340
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-nez p1, :cond_0

    .line 348
    .line 349
    invoke-virtual {p0, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 350
    .line 351
    .line 352
    :cond_0
    move p1, v10

    .line 353
    :goto_0
    if-ge p1, v0, :cond_1

    .line 354
    .line 355
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 356
    .line 357
    sget-object v1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_NUMBERS:[I

    .line 358
    .line 359
    aget v2, v1, p1

    .line 360
    .line 361
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    new-array v3, v9, [Ljava/lang/Object;

    .line 366
    .line 367
    aput-object v2, v3, v10

    .line 368
    .line 369
    const-string v2, "%d"

    .line 370
    .line 371
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    aput-object v3, p2, p1

    .line 376
    .line 377
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 378
    .line 379
    sget-object v3, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_NUMBERS_24:[I

    .line 380
    .line 381
    aget v3, v3, p1

    .line 382
    .line 383
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    new-array v4, v9, [Ljava/lang/Object;

    .line 388
    .line 389
    aput-object v3, v4, v10

    .line 390
    .line 391
    const-string v3, "%02d"

    .line 392
    .line 393
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    aput-object v4, p2, p1

    .line 398
    .line 399
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 400
    .line 401
    aget v1, v1, p1

    .line 402
    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    new-array v4, v9, [Ljava/lang/Object;

    .line 408
    .line 409
    aput-object v1, v4, v10

    .line 410
    .line 411
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    aput-object v1, p2, p1

    .line 416
    .line 417
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 418
    .line 419
    sget-object v1, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->MINUTES_NUMBERS:[I

    .line 420
    .line 421
    aget v1, v1, p1

    .line 422
    .line 423
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    new-array v2, v9, [Ljava/lang/Object;

    .line 428
    .line 429
    aput-object v1, v2, v10

    .line 430
    .line 431
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    aput-object v1, p2, p1

    .line 436
    .line 437
    add-int/lit8 p1, p1, 0x1

    .line 438
    .line 439
    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->initData()V

    .line 441
    .line 442
    .line 443
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    const/16 p2, 0xb

    .line 452
    .line 453
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 454
    .line 455
    .line 456
    move-result p2

    .line 457
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    invoke-virtual {p0, p2, v10}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentHourInternal(IZ)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p0, p1, v10}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {p0, v9}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 468
    .line 469
    .line 470
    return-void
.end method

.method public static calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/graphics/Paint;->descent()F

    .line 5
    .line 6
    .line 7
    move-result p4

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Paint;->ascent()F

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    add-float/2addr p0, p4

    .line 13
    const/high16 p4, 0x40000000    # 2.0f

    .line 14
    .line 15
    div-float/2addr p0, p4

    .line 16
    sub-float/2addr p3, p0

    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    const/16 p4, 0xc

    .line 19
    .line 20
    if-ge p0, p4, :cond_0

    .line 21
    .line 22
    sget-object p4, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->COS_30:[F

    .line 23
    .line 24
    aget p4, p4, p0

    .line 25
    .line 26
    mul-float/2addr p4, p1

    .line 27
    sub-float p4, p2, p4

    .line 28
    .line 29
    aput p4, p5, p0

    .line 30
    .line 31
    sget-object p4, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->SIN_30:[F

    .line 32
    .line 33
    aget p4, p4, p0

    .line 34
    .line 35
    mul-float/2addr p4, p1

    .line 36
    sub-float p4, p3, p4

    .line 37
    .line 38
    aput p4, p6, p0

    .line 39
    .line 40
    add-int/lit8 p0, p0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public static drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V
    .locals 13

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    .line 8
    .line 9
    move/from16 p1, p10

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    const/high16 v1, 0x41f00000    # 30.0f

    .line 13
    .line 14
    div-float/2addr p1, v1

    .line 15
    float-to-int v1, p1

    .line 16
    float-to-double v2, p1

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    double-to-int p1, v2

    .line 22
    const/16 v2, 0xc

    .line 23
    .line 24
    rem-int/2addr p1, v2

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_0
    if-ge v4, v2, :cond_4

    .line 28
    .line 29
    if-eq v1, v4, :cond_1

    .line 30
    .line 31
    if-ne p1, v4, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v5, v3

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 37
    :goto_2
    if-eqz p11, :cond_2

    .line 38
    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    move-object/from16 v6, p3

    .line 42
    .line 43
    move/from16 v5, p8

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_2
    if-eqz p9, :cond_3

    .line 47
    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    const/16 v5, 0x20

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    move v5, v3

    .line 54
    :goto_3
    const/16 v6, 0x8

    .line 55
    .line 56
    or-int/2addr v5, v6

    .line 57
    invoke-static {v5}, Lcom/takisoft/datetimepicker/util/StateSet;->get(I)[I

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object/from16 v6, p3

    .line 62
    .line 63
    invoke-virtual {v6, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    int-to-double v7, v5

    .line 75
    move/from16 v5, p8

    .line 76
    .line 77
    int-to-double v9, v5

    .line 78
    const-wide v11, 0x406fe00000000000L    # 255.0

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    div-double/2addr v9, v11

    .line 84
    mul-double/2addr v9, v7

    .line 85
    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    .line 86
    .line 87
    add-double/2addr v9, v7

    .line 88
    double-to-int v7, v9

    .line 89
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    .line 91
    .line 92
    aget-object v7, p4, v4

    .line 93
    .line 94
    aget v8, p5, v4

    .line 95
    .line 96
    aget v9, p6, v4

    .line 97
    .line 98
    invoke-virtual {p0, v7, v8, v9, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    return-void
.end method

.method public static snapOnly30s(I)I
    .locals 3

    .line 1
    div-int/lit8 v0, p0, 0x1e

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1e

    .line 4
    .line 5
    add-int/lit8 v1, v0, 0x1e

    .line 6
    .line 7
    sub-int v2, p0, v0

    .line 8
    .line 9
    sub-int p0, v1, p0

    .line 10
    .line 11
    if-ge v2, p0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    return v1
.end method


# virtual methods
.method public final animatePicker(JZ)V
    .locals 5

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    .line 7
    :goto_0
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 8
    .line 9
    cmpl-float v0, v0, p3

    .line 10
    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/animation/Animator;->isStarted()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 30
    .line 31
    :cond_1
    return-void

    .line 32
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    const/16 v3, 0x18

    .line 37
    .line 38
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->HOURS_TO_MINUTES_OLD:Lcom/google/android/material/animation/ImageMatrixProperty;

    .line 39
    .line 40
    if-lt v0, v3, :cond_3

    .line 41
    .line 42
    new-array v0, v2, [F

    .line 43
    .line 44
    aput p3, v0, v1

    .line 45
    .line 46
    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    iput-object p3, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    new-array v0, v2, [F

    .line 54
    .line 55
    aput p3, v0, v1

    .line 56
    .line 57
    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    iput-object p3, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 62
    .line 63
    :goto_1
    iget-object p3, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 64
    .line 65
    invoke-virtual {p3, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 66
    .line 67
    .line 68
    iget-object p3, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    .line 70
    invoke-virtual {p3, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final applyAttributes(Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/takisoft/datetimepicker/R$styleable;->TimePicker:[I

    .line 10
    .line 11
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 p2, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 p3, 0x6

    .line 22
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    const v1, -0xff01

    .line 27
    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    aput-object p2, v2, v3

    .line 39
    .line 40
    if-nez p3, :cond_1

    .line 41
    .line 42
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    :cond_1
    const/4 p2, 0x2

    .line 47
    aput-object p3, v2, p2

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    aget-object p3, v2, v3

    .line 51
    .line 52
    aput-object p3, v2, p2

    .line 53
    .line 54
    const/4 p2, 0x7

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const/16 p3, 0x28

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    invoke-static {p3}, Lcom/takisoft/datetimepicker/util/StateSet;->get(I)[I

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    :cond_2
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {p3}, Lcom/takisoft/datetimepicker/util/StateSet;->get(I)[I

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iput v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorColor:I

    .line 81
    .line 82
    aget-object p3, v2, v3

    .line 83
    .line 84
    invoke-virtual {p3, p2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    iput p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 89
    .line 90
    const p2, 0x7f060536

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p2}, Landroid/content/Context;->getColor(I)I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    const/4 p3, 0x5

    .line 98
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 103
    .line 104
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final drawHoursClipped(Landroid/graphics/Canvas;IZ)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextSize:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, v1, v2

    .line 7
    .line 8
    int-to-float v5, v3

    .line 9
    iget-object v3, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 10
    .line 11
    aget-object v7, v3, v2

    .line 12
    .line 13
    iget-object v8, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 16
    .line 17
    aget-object v9, v4, v2

    .line 18
    .line 19
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 20
    .line 21
    aget-object v10, v4, v2

    .line 22
    .line 23
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 24
    .line 25
    aget-object v11, v4, v2

    .line 26
    .line 27
    const/16 v16, 0x1

    .line 28
    .line 29
    if-eqz p3, :cond_0

    .line 30
    .line 31
    iget-boolean v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 32
    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    move/from16 v13, v16

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v13, v2

    .line 39
    :goto_0
    iget-object v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 40
    .line 41
    aget v14, v6, v2

    .line 42
    .line 43
    move-object v12, v6

    .line 44
    iget-object v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 45
    .line 46
    move/from16 v15, p3

    .line 47
    .line 48
    move-object/from16 v18, v4

    .line 49
    .line 50
    move-object/from16 v17, v12

    .line 51
    .line 52
    move-object/from16 v4, p1

    .line 53
    .line 54
    move/from16 v12, p2

    .line 55
    .line 56
    invoke-static/range {v4 .. v15}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 57
    .line 58
    .line 59
    iget-boolean v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    aget v1, v1, v5

    .line 69
    .line 70
    int-to-float v1, v1

    .line 71
    aget-object v22, v3, v5

    .line 72
    .line 73
    aget-object v26, v18, v2

    .line 74
    .line 75
    if-eqz p3, :cond_1

    .line 76
    .line 77
    iget-boolean v3, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 78
    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    move/from16 v28, v16

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move/from16 v28, v2

    .line 85
    .line 86
    :goto_1
    aget v29, v17, v2

    .line 87
    .line 88
    iget-object v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 89
    .line 90
    iget-object v3, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 91
    .line 92
    iget-object v0, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 93
    .line 94
    move-object/from16 v19, p1

    .line 95
    .line 96
    move/from16 v27, p2

    .line 97
    .line 98
    move/from16 v30, p3

    .line 99
    .line 100
    move-object/from16 v25, v0

    .line 101
    .line 102
    move/from16 v20, v1

    .line 103
    .line 104
    move-object/from16 v21, v2

    .line 105
    .line 106
    move-object/from16 v24, v3

    .line 107
    .line 108
    move-object/from16 v23, v4

    .line 109
    .line 110
    invoke-static/range {v19 .. v30}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-void
.end method

.method public final drawMinutesClipped(Landroid/graphics/Canvas;IZ)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextSize:[I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    int-to-float v3, v0

    .line 7
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextColor:[Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    aget-object v5, v0, v1

    .line 10
    .line 11
    iget-object v6, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 14
    .line 15
    aget-object v7, v0, v1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 18
    .line 19
    aget-object v8, v0, v1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 22
    .line 23
    aget-object v9, v0, v1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 26
    .line 27
    aget v12, v0, v1

    .line 28
    .line 29
    iget-object v4, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTypeface:Landroid/graphics/Typeface;

    .line 30
    .line 31
    move/from16 v13, p3

    .line 32
    .line 33
    move-object v2, p1

    .line 34
    move/from16 v10, p2

    .line 35
    .line 36
    move/from16 v11, p3

    .line 37
    .line 38
    invoke-static/range {v2 .. v13}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->drawTextElements(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;Landroid/content/res/ColorStateList;[Ljava/lang/String;[F[FLandroid/graphics/Paint;IZIZ)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public getAmOrPm()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 2
    .line 3
    return p0
.end method

.method public getCurrentHour()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getHourForDegrees(IZ)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public getCurrentItemShowing()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 2
    .line 3
    xor-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    return p0
.end method

.method public getCurrentMinute()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    aget p0, p0, v0

    .line 5
    .line 6
    div-int/lit8 p0, p0, 0x6

    .line 7
    .line 8
    return p0
.end method

.method public final getDegreesFromXY(FFZ)I
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 10
    .line 11
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 15
    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCircleRadius:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextInset:[I

    .line 21
    .line 22
    aget v0, v2, v0

    .line 23
    .line 24
    sub-int/2addr v1, v0

    .line 25
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 26
    .line 27
    sub-int v2, v1, v0

    .line 28
    .line 29
    add-int/2addr v1, v0

    .line 30
    move v0, v2

    .line 31
    :goto_0
    iget v2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 32
    .line 33
    int-to-float v2, v2

    .line 34
    sub-float/2addr p1, v2

    .line 35
    float-to-double v2, p1

    .line 36
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 37
    .line 38
    int-to-float p0, p0

    .line 39
    sub-float/2addr p2, p0

    .line 40
    float-to-double p0, p2

    .line 41
    mul-double v4, v2, v2

    .line 42
    .line 43
    mul-double v6, p0, p0

    .line 44
    .line 45
    add-double/2addr v6, v4

    .line 46
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    int-to-double v6, v0

    .line 51
    cmpg-double p2, v4, v6

    .line 52
    .line 53
    if-ltz p2, :cond_3

    .line 54
    .line 55
    if-eqz p3, :cond_1

    .line 56
    .line 57
    int-to-double p2, v1

    .line 58
    cmpl-double p2, v4, p2

    .line 59
    .line 60
    if-lez p2, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .line 64
    .line 65
    .line 66
    move-result-wide p0

    .line 67
    const-wide p2, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    add-double/2addr p0, p2

    .line 73
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    .line 74
    .line 75
    .line 76
    move-result-wide p0

    .line 77
    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    .line 78
    .line 79
    add-double/2addr p0, p2

    .line 80
    double-to-int p0, p0

    .line 81
    if-gez p0, :cond_2

    .line 82
    .line 83
    add-int/lit16 p0, p0, 0x168

    .line 84
    .line 85
    :cond_2
    return p0

    .line 86
    :cond_3
    :goto_1
    const/4 p0, -0x1

    .line 87
    return p0
.end method

.method public final getHourForDegrees(IZ)I
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x1e

    .line 2
    .line 3
    const/16 v0, 0xc

    .line 4
    .line 5
    rem-int/2addr p1, v0

    .line 6
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    if-eqz p2, :cond_2

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    add-int/2addr p1, v0

    .line 20
    return p1

    .line 21
    :cond_1
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    if-ne p0, p2, :cond_2

    .line 25
    .line 26
    add-int/2addr p1, v0

    .line 27
    :cond_2
    return p1
.end method

.method public final getInnerCircleFromXY(FF)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    sub-float/2addr p1, v0

    .line 13
    float-to-double v0, p1

    .line 14
    iget p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 15
    .line 16
    int-to-float p1, p1

    .line 17
    sub-float/2addr p2, p1

    .line 18
    float-to-double p1, p2

    .line 19
    mul-double/2addr v0, v0

    .line 20
    mul-double/2addr p1, p1

    .line 21
    add-double/2addr p1, v0

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    iget p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 27
    .line 28
    int-to-double v0, p0

    .line 29
    cmpg-double p0, p1, v0

    .line 30
    .line 31
    if-gtz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final initData()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterHours24Texts:[Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerHours24Texts:[Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHours12Texts:[Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextHours:[Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerTextHours:[Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mMinutesTexts:[Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mMinutesText:[Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/high16 v8, 0x3f800000    # 1.0f

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mDisabledAlpha:F

    .line 13
    .line 14
    move v8, v2

    .line 15
    :goto_0
    iget v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 16
    .line 17
    int-to-float v2, v2

    .line 18
    iget v3, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 19
    .line 20
    int-to-float v3, v3

    .line 21
    iget v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCircleRadius:I

    .line 22
    .line 23
    int-to-float v4, v4

    .line 24
    iget-object v5, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaintBackground:Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 27
    .line 28
    .line 29
    iget-boolean v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v3, 0x2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    move v2, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v2, v9

    .line 38
    :goto_1
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextInset:[I

    .line 39
    .line 40
    aget v5, v4, v2

    .line 41
    .line 42
    rem-int/2addr v2, v3

    .line 43
    iget-object v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 44
    .line 45
    aget v2, v6, v2

    .line 46
    .line 47
    rem-int/lit8 v10, v2, 0x1e

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    if-eqz v10, :cond_2

    .line 51
    .line 52
    const/high16 v10, 0x3f800000    # 1.0f

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v10, v11

    .line 56
    :goto_2
    const/4 v12, 0x1

    .line 57
    aget v4, v4, v12

    .line 58
    .line 59
    aget v6, v6, v12

    .line 60
    .line 61
    rem-int/lit8 v13, v6, 0x1e

    .line 62
    .line 63
    if-eqz v13, :cond_3

    .line 64
    .line 65
    const/high16 v13, 0x3f800000    # 1.0f

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    move v13, v11

    .line 69
    :goto_3
    iget v14, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCircleRadius:I

    .line 70
    .line 71
    int-to-float v14, v14

    .line 72
    int-to-float v5, v5

    .line 73
    int-to-float v4, v4

    .line 74
    iget v15, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 75
    .line 76
    sub-float/2addr v4, v5

    .line 77
    mul-float/2addr v4, v15

    .line 78
    add-float/2addr v4, v5

    .line 79
    sub-float/2addr v14, v4

    .line 80
    int-to-float v2, v2

    .line 81
    int-to-float v4, v6

    .line 82
    sub-float/2addr v4, v2

    .line 83
    const/high16 v5, 0x43340000    # 180.0f

    .line 84
    .line 85
    add-float/2addr v4, v5

    .line 86
    const/high16 v6, 0x43b40000    # 360.0f

    .line 87
    .line 88
    rem-float/2addr v4, v6

    .line 89
    sub-float/2addr v4, v5

    .line 90
    mul-float/2addr v4, v15

    .line 91
    add-float/2addr v4, v2

    .line 92
    float-to-double v4, v4

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    iget v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 98
    .line 99
    int-to-float v2, v2

    .line 100
    move v6, v3

    .line 101
    move-wide v15, v4

    .line 102
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    double-to-float v3, v3

    .line 107
    mul-float/2addr v3, v14

    .line 108
    add-float/2addr v3, v2

    .line 109
    iget v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 110
    .line 111
    int-to-float v2, v2

    .line 112
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    double-to-float v4, v4

    .line 117
    mul-float/2addr v4, v14

    .line 118
    sub-float/2addr v2, v4

    .line 119
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaintSelector:[Landroid/graphics/Paint;

    .line 120
    .line 121
    aget-object v5, v4, v9

    .line 122
    .line 123
    move/from16 v17, v6

    .line 124
    .line 125
    iget v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorColor:I

    .line 126
    .line 127
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    .line 129
    .line 130
    iget v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 131
    .line 132
    int-to-float v6, v6

    .line 133
    invoke-virtual {v1, v3, v2, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    .line 135
    .line 136
    iget-object v5, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorPath:Landroid/graphics/Path;

    .line 137
    .line 138
    if-eqz v5, :cond_4

    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 141
    .line 142
    .line 143
    const/high16 v18, 0x3f800000    # 1.0f

    .line 144
    .line 145
    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 146
    .line 147
    invoke-virtual {v5, v3, v2, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_4
    const/high16 v18, 0x3f800000    # 1.0f

    .line 152
    .line 153
    :goto_4
    iget v7, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 154
    .line 155
    invoke-static {v13, v10, v7, v10}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(FFFF)F

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    cmpl-float v10, v7, v11

    .line 160
    .line 161
    if-lez v10, :cond_5

    .line 162
    .line 163
    aget-object v10, v4, v12

    .line 164
    .line 165
    iget v11, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorDotColor:I

    .line 166
    .line 167
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    .line 169
    .line 170
    iget v11, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorDotRadius:I

    .line 171
    .line 172
    int-to-float v11, v11

    .line 173
    mul-float/2addr v11, v7

    .line 174
    invoke-virtual {v1, v3, v2, v11, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    .line 178
    .line 179
    .line 180
    move-result-wide v2

    .line 181
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    .line 182
    .line 183
    .line 184
    move-result-wide v10

    .line 185
    sub-float/2addr v14, v6

    .line 186
    iget v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 187
    .line 188
    iget v7, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCenterDotRadius:I

    .line 189
    .line 190
    int-to-double v12, v7

    .line 191
    move-wide/from16 v19, v10

    .line 192
    .line 193
    mul-double v9, v12, v2

    .line 194
    .line 195
    double-to-int v9, v9

    .line 196
    add-int/2addr v6, v9

    .line 197
    iget v9, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 198
    .line 199
    mul-double v12, v12, v19

    .line 200
    .line 201
    double-to-int v10, v12

    .line 202
    sub-int/2addr v9, v10

    .line 203
    float-to-double v10, v14

    .line 204
    mul-double/2addr v2, v10

    .line 205
    double-to-int v2, v2

    .line 206
    add-int/2addr v6, v2

    .line 207
    int-to-float v2, v6

    .line 208
    mul-double v10, v10, v19

    .line 209
    .line 210
    double-to-int v3, v10

    .line 211
    sub-int/2addr v9, v3

    .line 212
    int-to-float v3, v9

    .line 213
    aget-object v6, v4, v17

    .line 214
    .line 215
    iget v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorColor:I

    .line 216
    .line 217
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    .line 219
    .line 220
    iget v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorStroke:I

    .line 221
    .line 222
    int-to-float v4, v4

    .line 223
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 224
    .line 225
    .line 226
    iget v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 227
    .line 228
    int-to-float v4, v4

    .line 229
    iget v9, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 230
    .line 231
    int-to-float v9, v9

    .line 232
    move/from16 v21, v4

    .line 233
    .line 234
    move v4, v2

    .line 235
    move/from16 v2, v21

    .line 236
    .line 237
    move-object/from16 v21, v5

    .line 238
    .line 239
    move v5, v3

    .line 240
    move v3, v9

    .line 241
    move-object/from16 v9, v21

    .line 242
    .line 243
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 244
    .line 245
    .line 246
    iget v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 247
    .line 248
    sub-float v2, v18, v2

    .line 249
    .line 250
    const/high16 v3, 0x437f0000    # 255.0f

    .line 251
    .line 252
    mul-float/2addr v2, v3

    .line 253
    mul-float/2addr v2, v8

    .line 254
    const/high16 v4, 0x3f000000    # 0.5f

    .line 255
    .line 256
    add-float/2addr v2, v4

    .line 257
    float-to-int v2, v2

    .line 258
    if-lez v2, :cond_6

    .line 259
    .line 260
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 261
    .line 262
    .line 263
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 264
    .line 265
    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 266
    .line 267
    .line 268
    const/4 v5, 0x0

    .line 269
    invoke-virtual {v0, v1, v2, v5}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 276
    .line 277
    .line 278
    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 279
    .line 280
    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 281
    .line 282
    .line 283
    const/4 v15, 0x1

    .line 284
    invoke-virtual {v0, v1, v2, v15}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->drawHoursClipped(Landroid/graphics/Canvas;IZ)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 288
    .line 289
    .line 290
    :cond_6
    iget v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 291
    .line 292
    mul-float/2addr v2, v3

    .line 293
    mul-float/2addr v2, v8

    .line 294
    add-float/2addr v2, v4

    .line 295
    float-to-int v2, v2

    .line 296
    if-lez v2, :cond_7

    .line 297
    .line 298
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 299
    .line 300
    .line 301
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 302
    .line 303
    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 304
    .line 305
    .line 306
    const/4 v5, 0x0

    .line 307
    invoke-virtual {v0, v1, v2, v5}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 314
    .line 315
    .line 316
    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 317
    .line 318
    invoke-virtual {v1, v9, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 319
    .line 320
    .line 321
    const/4 v15, 0x1

    .line 322
    invoke-virtual {v0, v1, v2, v15}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->drawMinutesClipped(Landroid/graphics/Canvas;IZ)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 326
    .line 327
    .line 328
    :cond_7
    mul-float/2addr v8, v3

    .line 329
    add-float/2addr v8, v4

    .line 330
    float-to-int v2, v8

    .line 331
    iget-object v3, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaintCenter:Landroid/graphics/Paint;

    .line 332
    .line 333
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 334
    .line 335
    .line 336
    iget v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 337
    .line 338
    int-to-float v2, v2

    .line 339
    iget v0, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 340
    .line 341
    int-to-float v0, v0

    .line 342
    int-to-float v4, v7

    .line 343
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 344
    .line 345
    .line 346
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x2

    .line 11
    div-int/2addr v1, v2

    .line 12
    iput v1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    div-int/2addr v1, v2

    .line 19
    iput v1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 20
    .line 21
    iget v3, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 22
    .line 23
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCircleRadius:I

    .line 28
    .line 29
    iget-object v3, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextInset:[I

    .line 30
    .line 31
    aget v4, v3, v2

    .line 32
    .line 33
    sub-int v5, v1, v4

    .line 34
    .line 35
    iget v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectorRadius:I

    .line 36
    .line 37
    sub-int/2addr v5, v6

    .line 38
    iput v5, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mMinDistForInnerNumber:I

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    aget v7, v3, v5

    .line 42
    .line 43
    sub-int v8, v1, v7

    .line 44
    .line 45
    add-int/2addr v8, v6

    .line 46
    iput v8, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mMaxDistForOuterNumber:I

    .line 47
    .line 48
    add-int/2addr v4, v7

    .line 49
    div-int/2addr v4, v2

    .line 50
    sub-int v4, v1, v4

    .line 51
    .line 52
    iput v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHalfwayDist:I

    .line 53
    .line 54
    sub-int/2addr v1, v7

    .line 55
    int-to-float v7, v1

    .line 56
    iget-object v1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mPaint:[Landroid/graphics/Paint;

    .line 57
    .line 58
    aget-object v6, v1, v5

    .line 59
    .line 60
    iget v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 61
    .line 62
    int-to-float v8, v4

    .line 63
    iget v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 64
    .line 65
    int-to-float v9, v4

    .line 66
    iget-object v4, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTextSize:[I

    .line 67
    .line 68
    aget v10, v4, v5

    .line 69
    .line 70
    int-to-float v10, v10

    .line 71
    iget-object v13, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextX:[[F

    .line 72
    .line 73
    aget-object v11, v13, v5

    .line 74
    .line 75
    iget-object v14, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mOuterTextY:[[F

    .line 76
    .line 77
    aget-object v12, v14, v5

    .line 78
    .line 79
    invoke-static/range {v6 .. v12}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 80
    .line 81
    .line 82
    iget-boolean v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 83
    .line 84
    if-eqz v6, :cond_1

    .line 85
    .line 86
    iget v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCircleRadius:I

    .line 87
    .line 88
    aget v7, v3, v2

    .line 89
    .line 90
    sub-int/2addr v6, v7

    .line 91
    aget-object v15, v1, v5

    .line 92
    .line 93
    int-to-float v5, v6

    .line 94
    iget v6, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 95
    .line 96
    int-to-float v6, v6

    .line 97
    iget v7, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 98
    .line 99
    int-to-float v7, v7

    .line 100
    aget v2, v4, v2

    .line 101
    .line 102
    int-to-float v2, v2

    .line 103
    iget-object v8, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerTextX:[F

    .line 104
    .line 105
    iget-object v9, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInnerTextY:[F

    .line 106
    .line 107
    move/from16 v19, v2

    .line 108
    .line 109
    move/from16 v16, v5

    .line 110
    .line 111
    move/from16 v17, v6

    .line 112
    .line 113
    move/from16 v18, v7

    .line 114
    .line 115
    move-object/from16 v20, v8

    .line 116
    .line 117
    move-object/from16 v21, v9

    .line 118
    .line 119
    invoke-static/range {v15 .. v21}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 120
    .line 121
    .line 122
    :cond_1
    iget v2, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mCircleRadius:I

    .line 123
    .line 124
    const/4 v5, 0x1

    .line 125
    aget v3, v3, v5

    .line 126
    .line 127
    sub-int/2addr v2, v3

    .line 128
    int-to-float v7, v2

    .line 129
    aget-object v6, v1, v5

    .line 130
    .line 131
    iget v1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mXCenter:I

    .line 132
    .line 133
    int-to-float v8, v1

    .line 134
    iget v1, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mYCenter:I

    .line 135
    .line 136
    int-to-float v9, v1

    .line 137
    aget v1, v4, v5

    .line 138
    .line 139
    int-to-float v10, v1

    .line 140
    aget-object v11, v13, v5

    .line 141
    .line 142
    aget-object v12, v14, v5

    .line 143
    .line 144
    invoke-static/range {v6 .. v12}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->calculatePositions(Landroid/graphics/Paint;FFFF[F[F)V

    .line 145
    .line 146
    .line 147
    iget-object v0, v0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public final onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

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
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/16 p1, 0x3ea

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    return v1

    .line 20
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_3
    if-ne v0, v1, :cond_5

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 29
    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    move v0, v1

    .line 33
    :goto_2
    move v3, v0

    .line 34
    goto :goto_4

    .line 35
    :cond_4
    move v3, v1

    .line 36
    move v0, v2

    .line 37
    goto :goto_4

    .line 38
    :cond_5
    :goto_3
    move v0, v2

    .line 39
    goto :goto_2

    .line 40
    :goto_4
    iget-boolean v4, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, v5, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getInnerCircleFromXY(FF)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {p0, v5, p1, v2}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getDegreesFromXY(FFZ)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/4 v5, -0x1

    .line 59
    if-ne p1, v5, :cond_6

    .line 60
    .line 61
    goto :goto_9

    .line 62
    :cond_6
    iget-boolean v5, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 63
    .line 64
    const-wide/16 v7, 0x3c

    .line 65
    .line 66
    invoke-virtual {p0, v7, v8, v5}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->animatePicker(JZ)V

    .line 67
    .line 68
    .line 69
    iget-boolean v5, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 70
    .line 71
    iget-object v7, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 72
    .line 73
    if-eqz v5, :cond_9

    .line 74
    .line 75
    invoke-static {p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->snapOnly30s(I)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    rem-int/lit16 p1, p1, 0x168

    .line 80
    .line 81
    iget-boolean v5, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 82
    .line 83
    if-ne v5, v6, :cond_8

    .line 84
    .line 85
    aget v5, v7, v2

    .line 86
    .line 87
    if-eq v5, p1, :cond_7

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_7
    move v5, v2

    .line 91
    goto :goto_6

    .line 92
    :cond_8
    :goto_5
    move v5, v1

    .line 93
    :goto_6
    iput-boolean v6, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 94
    .line 95
    aput p1, v7, v2

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentHour()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    move v6, v2

    .line 102
    goto :goto_8

    .line 103
    :cond_9
    sget-object v5, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->SNAP_PREFER_30S_MAP:[I

    .line 104
    .line 105
    aget p1, v5, p1

    .line 106
    .line 107
    rem-int/lit16 p1, p1, 0x168

    .line 108
    .line 109
    aget v5, v7, v1

    .line 110
    .line 111
    if-eq v5, p1, :cond_a

    .line 112
    .line 113
    move v5, v1

    .line 114
    goto :goto_7

    .line 115
    :cond_a
    move v5, v2

    .line 116
    :goto_7
    aput p1, v7, v1

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->getCurrentMinute()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    move v6, v1

    .line 123
    :goto_8
    if-nez v5, :cond_b

    .line 124
    .line 125
    if-nez v0, :cond_b

    .line 126
    .line 127
    if-eqz v3, :cond_f

    .line 128
    .line 129
    :cond_b
    iget-object v2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 130
    .line 131
    if-eqz v2, :cond_c

    .line 132
    .line 133
    check-cast v2, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 134
    .line 135
    invoke-virtual {v2, v6, p1, v3}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueSelected(IIZ)V

    .line 136
    .line 137
    .line 138
    :cond_c
    if-nez v5, :cond_d

    .line 139
    .line 140
    if-eqz v0, :cond_e

    .line 141
    .line 142
    :cond_d
    const/4 p1, 0x4

    .line 143
    invoke-virtual {p0, p1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 147
    .line 148
    .line 149
    :cond_e
    move v2, v1

    .line 150
    :cond_f
    :goto_9
    or-int p1, v4, v2

    .line 151
    .line 152
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mChangedDuringTouch:Z

    .line 153
    .line 154
    return v1
.end method

.method public setCurrentHour(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentHourInternal(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setCurrentHourInternal(IZ)V
    .locals 5

    .line 1
    rem-int/lit8 v0, p1, 0xc

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1e

    .line 4
    .line 5
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput v0, v1, v2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/16 v1, 0xc

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    rem-int/lit8 v3, p1, 0x18

    .line 16
    .line 17
    if-ge v3, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v3, v2

    .line 23
    :goto_1
    iget-boolean v4, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIs24HourMode:Z

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    if-le p1, v1, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v0, v2

    .line 33
    :cond_3
    :goto_2
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 34
    .line 35
    if-ne v1, v3, :cond_4

    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 38
    .line 39
    if-eq v1, v0, :cond_5

    .line 40
    .line 41
    :cond_4
    iput v3, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mAmOrPm:I

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mIsOnInnerCircle:Z

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->initData()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 51
    .line 52
    .line 53
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_6

    .line 57
    .line 58
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 59
    .line 60
    if-eqz p0, :cond_6

    .line 61
    .line 62
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 63
    .line 64
    invoke-virtual {p0, v2, p1, v2}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueSelected(IIZ)V

    .line 65
    .line 66
    .line 67
    :cond_6
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->setCurrentMinuteInternal(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final setCurrentMinuteInternal(IZ)V
    .locals 3

    .line 1
    rem-int/lit8 v0, p1, 0x3c

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    iget-object v1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mSelectionDegrees:[I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    aput v0, v1, v2

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    check-cast p0, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;

    .line 21
    .line 22
    invoke-virtual {p0, v2, p1, p2}, Lcom/takisoft/datetimepicker/widget/TimePickerClockDelegate$2;->onValueSelected(IIZ)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mInputEnabled:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnValueSelectedListener(Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$OnValueSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mListener:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 2
    .line 3
    return-void
.end method

.method public final showPicker(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mShowHours:Z

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    const-wide/16 v0, 0x1f4

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1, p1}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->animatePicker(JZ)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/animation/Animator;->isStarted()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/animation/Animator;->cancel()V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutesAnimator:Landroid/animation/ObjectAnimator;

    .line 33
    .line 34
    :cond_2
    if-eqz p1, :cond_3

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    .line 40
    :goto_0
    iput p1, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mHoursToMinutes:F

    .line 41
    .line 42
    :goto_1
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->initData()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/RadialTimePickerView;->mTouchHelper:Lcom/takisoft/datetimepicker/widget/RadialTimePickerView$RadialPickerTouchHelper;

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
