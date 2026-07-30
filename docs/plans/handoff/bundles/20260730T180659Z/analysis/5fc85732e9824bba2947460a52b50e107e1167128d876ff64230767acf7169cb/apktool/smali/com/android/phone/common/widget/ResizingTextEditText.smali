.class public Lcom/android/phone/common/widget/ResizingTextEditText;
.super Landroid/widget/EditText;
.source "ResizingTextEditText.java"


# instance fields
.field private mIsResizeEnabled:Z

.field private final mMinTextSize:I

.field private final mOriginalTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mIsResizeEnabled:Z

    .line 37
    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    .line 38
    sget-object v0, Lcom/android/phone/common/R$styleable;->ResizingText:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lcom/android/phone/common/R$styleable;->ResizingText_resizing_text_min_size:I

    iget v0, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mMinTextSize:I

    .line 41
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    .line 55
    iget-boolean p1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mIsResizeEnabled:Z

    if-eqz p1, :cond_0

    .line 56
    iget p1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    iget p2, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mMinTextSize:I

    invoke-static {p0, p1, p2}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 47
    iget-boolean p1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mIsResizeEnabled:Z

    if-eqz p1, :cond_0

    .line 48
    iget p1, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mOriginalTextSize:I

    iget p2, p0, Lcom/android/phone/common/widget/ResizingTextEditText;->mMinTextSize:I

    invoke-static {p0, p1, p2}, Lcom/android/phone/common/util/ViewUtil;->resizeText(Landroid/widget/TextView;II)V

    :cond_0
    return-void
.end method
