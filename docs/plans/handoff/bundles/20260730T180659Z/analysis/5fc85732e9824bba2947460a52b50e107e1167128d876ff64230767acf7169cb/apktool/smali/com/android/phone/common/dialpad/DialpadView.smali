.class public Lcom/android/phone/common/dialpad/DialpadView;
.super Landroid/widget/LinearLayout;
.source "DialpadView.java"


# instance fields
.field private final mButtonIds:[I

.field private mDigits:Landroid/widget/EditText;

.field private mRateContainer:Landroid/view/ViewGroup;

.field private mRippleColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/phone/common/dialpad/DialpadView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xc

    new-array p3, p3, [I

    .line 80
    sget v0, Lcom/android/phone/common/R$id;->zero:I

    const/4 v1, 0x0

    aput v0, p3, v1

    sget v0, Lcom/android/phone/common/R$id;->one:I

    const/4 v1, 0x1

    aput v0, p3, v1

    sget v0, Lcom/android/phone/common/R$id;->two:I

    const/4 v2, 0x2

    aput v0, p3, v2

    sget v0, Lcom/android/phone/common/R$id;->three:I

    const/4 v3, 0x3

    aput v0, p3, v3

    sget v0, Lcom/android/phone/common/R$id;->four:I

    const/4 v3, 0x4

    aput v0, p3, v3

    sget v0, Lcom/android/phone/common/R$id;->five:I

    const/4 v3, 0x5

    aput v0, p3, v3

    sget v0, Lcom/android/phone/common/R$id;->six:I

    const/4 v3, 0x6

    aput v0, p3, v3

    sget v0, Lcom/android/phone/common/R$id;->seven:I

    const/4 v3, 0x7

    aput v0, p3, v3

    sget v0, Lcom/android/phone/common/R$id;->eight:I

    const/16 v3, 0x8

    aput v0, p3, v3

    sget v0, Lcom/android/phone/common/R$id;->nine:I

    const/16 v3, 0x9

    aput v0, p3, v3

    sget v0, Lcom/android/phone/common/R$id;->star:I

    const/16 v3, 0xa

    aput v0, p3, v3

    sget v0, Lcom/android/phone/common/R$id;->pound:I

    const/16 v3, 0xb

    aput v0, p3, v3

    iput-object p3, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    .line 100
    sget-object p3, Lcom/android/phone/common/R$styleable;->Dialpad:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 101
    sget p2, Lcom/android/phone/common/R$styleable;->Dialpad_dialpad_key_button_touch_tint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/phone/common/R$dimen;->dialpad_key_button_translate_y:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    return-void
.end method

.method private getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 220
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private setupKeypad()V
    .locals 15

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 132
    sget v1, Lcom/android/phone/common/R$string;->dialpad_0_letters:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/phone/common/R$string;->dialpad_1_letters:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/android/phone/common/R$string;->dialpad_2_letters:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcom/android/phone/common/R$string;->dialpad_3_letters:I

    const/4 v4, 0x3

    aput v1, v0, v4

    sget v1, Lcom/android/phone/common/R$string;->dialpad_4_letters:I

    const/4 v4, 0x4

    aput v1, v0, v4

    sget v1, Lcom/android/phone/common/R$string;->dialpad_5_letters:I

    const/4 v4, 0x5

    aput v1, v0, v4

    sget v1, Lcom/android/phone/common/R$string;->dialpad_6_letters:I

    const/4 v4, 0x6

    aput v1, v0, v4

    sget v1, Lcom/android/phone/common/R$string;->dialpad_7_letters:I

    const/4 v4, 0x7

    aput v1, v0, v4

    sget v1, Lcom/android/phone/common/R$string;->dialpad_8_letters:I

    const/16 v4, 0x8

    aput v1, v0, v4

    sget v1, Lcom/android/phone/common/R$string;->dialpad_9_letters:I

    const/16 v4, 0x9

    aput v1, v0, v4

    sget v1, Lcom/android/phone/common/R$string;->dialpad_star_letters:I

    const/16 v4, 0xa

    aput v1, v0, v4

    sget v1, Lcom/android/phone/common/R$string;->dialpad_pound_letters:I

    const/16 v4, 0xb

    aput v1, v0, v4

    .line 147
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 157
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fa"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    goto :goto_0

    .line 160
    :cond_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    .line 163
    :goto_1
    iget-object v6, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    array-length v7, v6

    if-ge v5, v7, :cond_5

    .line 164
    aget v6, v6, v5

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 165
    sget v7, Lcom/android/phone/common/R$id;->dialpad_key_number:I

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 166
    sget v8, Lcom/android/phone/common/R$id;->dialpad_key_letters:I

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 170
    iget-object v9, p0, Lcom/android/phone/common/dialpad/DialpadView;->mButtonIds:[I

    aget v10, v9, v5

    sget v11, Lcom/android/phone/common/R$id;->pound:I

    if-ne v10, v11, :cond_1

    .line 171
    sget v9, Lcom/android/phone/common/R$string;->dialpad_pound_number:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    move-object v11, v9

    goto :goto_3

    .line 173
    :cond_1
    aget v9, v9, v5

    sget v10, Lcom/android/phone/common/R$id;->star:I

    if-ne v9, v10, :cond_2

    .line 174
    sget v9, Lcom/android/phone/common/R$string;->dialpad_star_number:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_2
    int-to-long v9, v5

    .line 177
    invoke-virtual {v4, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    .line 181
    aget v10, v0, v5

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 183
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v11

    .line 184
    new-instance v12, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v12, v10}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v12}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v12

    .line 186
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v3

    .line 187
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v14, v10

    const/16 v10, 0x21

    .line 184
    invoke-interface {v11, v12, v13, v14, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 193
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v12, Lcom/android/phone/common/R$drawable;->btn_dialpad_key:I

    invoke-direct {p0, v10, v12}, Lcom/android/phone/common/dialpad/DialpadView;->getDrawableCompat(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/RippleDrawable;

    .line 194
    iget-object v12, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_3

    .line 195
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 198
    :cond_3
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    .line 200
    invoke-virtual {v6, v11}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_4

    .line 204
    aget v6, v0, v5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 208
    :cond_5
    sget v0, Lcom/android/phone/common/R$id;->one:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 209
    sget v2, Lcom/android/phone/common/R$string;->description_voicemail_button:I

    .line 210
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 209
    invoke-virtual {v0, v2}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    sget v0, Lcom/android/phone/common/R$id;->zero:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    .line 213
    sget v2, Lcom/android/phone/common/R$string;->description_image_button_plus:I

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setLongHoverContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lcom/android/phone/common/dialpad/DialpadView;->setupKeypad()V

    .line 116
    sget v0, Lcom/android/phone/common/R$id;->digits:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    .line 117
    sget v0, Lcom/android/phone/common/R$id;->deleteButton:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 118
    sget v0, Lcom/android/phone/common/R$id;->dialpad_overflow:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 119
    sget v0, Lcom/android/phone/common/R$id;->rate_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    .line 120
    sget v1, Lcom/android/phone/common/R$id;->ild_country:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mRateContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/phone/common/R$id;->ild_rate:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 125
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/phone/common/dialpad/DialpadView;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
