.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# instance fields
.field protected mCollapseButtonDescription:Ljava/lang/String;

.field protected mCollapsedAnnouncement:Ljava/lang/String;

.field protected mExpandButtonDescription:Ljava/lang/String;

.field protected mExpandedAnnouncement:Ljava/lang/String;

.field protected mExpansionView:Landroid/widget/ImageView;

.field protected mExpansionViewContainer:Landroid/view/View;

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mFixedDisplayName:Ljava/lang/String;

.field private mFixedPhonetic:Ljava/lang/String;

.field private mHideOptional:Z

.field private mHintTextColorUnfocused:I

.field private mMinFieldHeight:I

.field private mPreviousViewHeight:I

.field private mTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private needInputInitialize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/android/contacts/editor/TextFieldsEditorView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 62
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    const-string p1, ""

    .line 74
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedPhonetic:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedDisplayName:Ljava/lang/String;

    .line 175
    new-instance p1, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    invoke-direct {p1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 62
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    const-string p1, ""

    .line 74
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedPhonetic:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedDisplayName:Ljava/lang/String;

    .line 175
    new-instance p1, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    invoke-direct {p1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 62
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    const-string p1, ""

    .line 74
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedPhonetic:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedDisplayName:Ljava/lang/String;

    .line 175
    new-instance p1, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    invoke-direct {p1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPreviousViewHeight:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mPreviousViewHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/TextFieldsEditorView;)Landroid/view/ViewGroup;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->needInputInitialize:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->needInputInitialize:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/text/Editable;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->isUnFixed(Landroid/text/Editable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/TextFieldsEditorView;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedPhonetic:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFixedPhonetic:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->getNameField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNameField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "data3"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const-string v0, "data2"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    const-string v0, "data5"

    .line 248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 253
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private isUnFixed(Landroid/text/Editable;)Z
    .locals 6

    .line 229
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 232
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    const/16 v5, 0x100

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    return v2
.end method

.method private setupExpansionView(ZZ)V
    .locals 2

    .line 194
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f0800b6

    goto :goto_0

    :cond_0
    const v1, 0x7f0800b5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpandButtonDescription:Ljava/lang/String;

    goto :goto_1

    .line 199
    :cond_1
    iget-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCollapseButtonDescription:Ljava/lang/String;

    .line 198
    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    iget-object p2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/4 p1, 0x4

    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearAllFields()V
    .locals 5

    .line 520
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 521
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const-string v4, ""

    .line 523
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 409
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 411
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    const v0, 0x7f0900cd

    .line 101
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHintTextColorUnfocused:I

    const v0, 0x7f0900e8

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100094

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCollapseButtonDescription:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100031

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCollapsedAnnouncement:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100119

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpandButtonDescription:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100032

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpandedAnnouncement:Ljava/lang/String;

    const v0, 0x7f0900e9

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 469
    check-cast p1, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    .line 470
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 472
    iget-boolean v0, p1, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 474
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 475
    :goto_0
    iget-object v2, p1, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    array-length v2, v2

    .line 474
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 477
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->rebuildValues()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 450
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 451
    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 453
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    .line 455
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 456
    :goto_0
    new-array v3, v0, [I

    iput-object v3, v1, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    :goto_1
    if-ge v2, v0, :cond_1

    .line 458
    iget-object v3, v1, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 208
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    move-object v1, v5

    .line 212
    :cond_0
    invoke-virtual {v5}, Landroid/widget/EditText;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 218
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    .line 163
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 166
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 167
    aget-object v3, v3, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 262
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 264
    iget-object v3, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 265
    array-length v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v3, v6

    .line 266
    iget-object v8, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 271
    :cond_0
    iget-object v3, v1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 272
    :goto_1
    new-array v5, v3, [Landroid/widget/EditText;

    iput-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x1

    if-ge v5, v3, :cond_10

    .line 274
    iget-object v8, v1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 275
    new-instance v9, Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 276
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0700ea

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 278
    invoke-virtual {v9, v4, v10}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 280
    iget v10, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHintTextColorUnfocused:I

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 281
    iget-object v10, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aput-object v9, v10, v5

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    .line 282
    invoke-virtual {v11, v10, v1, v2, v5}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setId(I)V

    .line 283
    iget v12, v8, Lcom/android/contacts/model/account/AccountType$EditField;->titleRes:I

    if-lez v12, :cond_2

    .line 284
    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setHint(I)V

    .line 286
    :cond_2
    iget v12, v8, Lcom/android/contacts/model/account/AccountType$EditField;->inputType:I

    .line 287
    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3

    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 291
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v14

    .line 289
    invoke-static {v12, v9, v14}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 292
    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setTextDirection(I)V

    :cond_3
    const/4 v12, 0x5

    .line 294
    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 298
    iget v12, v8, Lcom/android/contacts/model/account/AccountType$EditField;->minLines:I

    if-le v12, v7, :cond_4

    .line 299
    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setMinLines(I)V

    goto :goto_3

    .line 303
    :cond_4
    iget v12, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setMinHeight(I)V

    :goto_3
    const v12, 0x2000005

    .line 309
    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 312
    iget-object v12, v8, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 313
    invoke-virtual {v2, v12}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 314
    iget-object v14, v1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v15, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 315
    invoke-static {v13}, Lcom/android/contacts/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 317
    :cond_5
    invoke-virtual {v9, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :goto_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    xor-int/2addr v14, v7

    invoke-virtual {v0, v14}, Lcom/android/contacts/editor/LabeledEditorView;->setDeleteButtonVisible(Z)V

    .line 324
    new-instance v14, Lcom/android/contacts/editor/TextFieldsEditorView$3;

    invoke-direct {v14, v0, v12}, Lcom/android/contacts/editor/TextFieldsEditorView$3;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_6

    if-nez p4, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 378
    iget-object v12, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v9, v12}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 380
    iget-boolean v12, v8, Lcom/android/contacts/model/account/AccountType$EditField;->shortForm:Z

    const/16 v14, 0x8

    if-eqz v12, :cond_8

    .line 383
    iget-boolean v6, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v6, :cond_7

    const/4 v14, 0x0

    :cond_7
    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_6
    const/4 v6, 0x1

    goto :goto_c

    .line 384
    :cond_8
    iget-boolean v12, v8, Lcom/android/contacts/model/account/AccountType$EditField;->longForm:Z

    if-eqz v12, :cond_a

    .line 387
    iget-boolean v6, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v6, :cond_9

    goto :goto_7

    :cond_9
    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_6

    .line 390
    :cond_a
    invoke-static {v13}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    iget-boolean v8, v8, Lcom/android/contacts/model/account/AccountType$EditField;->optional:Z

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    .line 391
    :goto_8
    iget-boolean v12, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-eqz v12, :cond_c

    if-eqz v8, :cond_c

    const/4 v12, 0x1

    goto :goto_9

    :cond_c
    const/4 v12, 0x0

    :goto_9
    if-eqz v12, :cond_d

    goto :goto_a

    :cond_d
    const/4 v14, 0x0

    .line 392
    :goto_a
    invoke-virtual {v9, v14}, Landroid/widget/EditText;->setVisibility(I)V

    if-nez v6, :cond_f

    if-eqz v8, :cond_e

    goto :goto_b

    :cond_e
    const/4 v7, 0x0

    :cond_f
    :goto_b
    move v6, v7

    .line 396
    :goto_c
    iget-object v7, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 399
    :cond_10
    iget-object v1, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz v1, :cond_12

    .line 401
    iget-boolean v1, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    invoke-direct {v0, v6, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    .line 402
    iget-object v1, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-nez p4, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v4, 0x1

    :cond_11
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 404
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/LabeledEditorView;->updateEmptiness()V

    return-void
.end method
