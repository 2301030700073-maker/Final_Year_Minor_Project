.class Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LabeledEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/LabeledEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/contacts/model/account/AccountType$EditType;",
        ">;"
    }
.end annotation


# instance fields
.field private mHasCustomSelection:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mSelectedIndex:I

.field private mTextColorDark:I

.field private mTextColorHintUnfocused:I

.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/content/Context;)V
    .locals 6

    .line 584
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    const/4 v0, 0x0

    .line 585
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "layout_inflater"

    .line 586
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 587
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColorHintUnfocused:I

    .line 589
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600eb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColorDark:I

    .line 592
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p2

    iget-object p2, p2, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 595
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p2

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 597
    sget-object p2, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/account/AccountType$EditType;

    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 p2, 0x1

    .line 598
    iput-boolean p2, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    .line 602
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v0

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/widget/TextView;
    .locals 1

    if-nez p2, :cond_0

    .line 641
    iget-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 642
    iget-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0700ea

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 644
    iget p3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColorDark:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 646
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    .line 649
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 651
    sget-object p3, Lcom/android/contacts/editor/LabeledEditorView;->CUSTOM_SELECTION:Lcom/android/contacts/model/account/AccountType$EditType;

    if-ne p1, p3, :cond_1

    .line 652
    iget-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {p1}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/ValuesDelta;

    move-result-object p1

    iget-object p3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-static {p3}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object p3

    iget-object p3, p3, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/android/contacts/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 654
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget p1, p1, Lcom/android/contacts/model/account/AccountType$EditType;->labelRes:I

    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 656
    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x1090009

    .line 629
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/widget/TextView;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckedTextView;

    .line 631
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f080070

    invoke-virtual {p3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 632
    iget p3, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mSelectedIndex:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0c005a

    .line 611
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    .line 615
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-interface {p2}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 620
    iget p2, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColorDark:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 622
    :cond_0
    iget p2, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mTextColorHintUnfocused:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-object p1
.end method

.method public hasCustomSelection()Z
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mHasCustomSelection:Z

    return v0
.end method

.method public setSelectedIndex(I)V
    .locals 0

    .line 661
    iput p1, p0, Lcom/android/contacts/editor/LabeledEditorView$EditTypeAdapter;->mSelectedIndex:I

    return-void
.end method
