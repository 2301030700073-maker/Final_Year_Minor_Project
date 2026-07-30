.class public Lcom/android/contacts/editor/StructuredNameEditorView;
.super Lcom/android/contacts/editor/TextFieldsEditorView;
.source "StructuredNameEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mChanged:Z

.field private mPhoneticView:Lcom/android/contacts/editor/TextFieldsEditorView;

.field private mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/TextFieldsEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getPhonetic(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mPhoneticView:Lcom/android/contacts/editor/TextFieldsEditorView;

    if-eqz v0, :cond_3

    const v1, 0x7f0900cd

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "data3"

    .line 130
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 131
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const-string v1, "data2"

    .line 132
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x2

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    const-string v1, "data5"

    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->isFieldChanged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->notifyEditorListener()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onFinishInflate()V

    .line 64
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100095

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mCollapseButtonDescription:Ljava/lang/String;

    const v1, 0x7f10011a

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpandButtonDescription:Ljava/lang/String;

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 167
    check-cast p1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    .line 168
    iget-object v0, p1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 170
    iget-boolean v0, p1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    iput-boolean v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 171
    iget-object p1, p1, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/android/contacts/model/dataitem/DataItem;->createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/model/dataitem/DataItem;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    iput-object p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 159
    new-instance v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;

    invoke-super {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 160
    iget-boolean v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    iput-boolean v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mChanged:Z

    .line 161
    iget-object v1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-virtual {v1}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/editor/StructuredNameEditorView$SavedState;->mSnapshot:Landroid/content/ContentValues;

    return-object v0
.end method

.method public setPhoneticView(Lcom/android/contacts/editor/TextFieldsEditorView;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mPhoneticView:Lcom/android/contacts/editor/TextFieldsEditorView;

    return-void
.end method

.method public setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 0

    .line 74
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/TextFieldsEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 75
    iget-object p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Landroid/content/ContentValues;

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/ValuesDelta;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/contacts/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 76
    invoke-static {p1}, Lcom/android/contacts/model/dataitem/DataItem;->createFrom(Landroid/content/ContentValues;)Lcom/android/contacts/model/dataitem/DataItem;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    iput-object p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mSnapshot:Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    .line 78
    invoke-virtual {p2}, Lcom/android/contacts/model/ValuesDelta;->isInsert()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    iput-boolean p1, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mChanged:Z

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/LabeledEditorView;->updateEmptiness()V

    .line 85
    iget-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView;->mDeleteContainer:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updatePhonetic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/contacts/editor/StructuredNameEditorView;->mPhoneticView:Lcom/android/contacts/editor/TextFieldsEditorView;

    if-eqz v0, :cond_3

    const v1, 0x7f0900cd

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string v1, "data3"

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 109
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    const-string v1, "data2"

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x2

    .line 111
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    const-string v1, "data5"

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 113
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
