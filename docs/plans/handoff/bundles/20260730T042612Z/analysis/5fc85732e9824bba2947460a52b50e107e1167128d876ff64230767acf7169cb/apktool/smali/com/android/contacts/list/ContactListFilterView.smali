.class public Lcom/android/contacts/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountType:Landroid/widget/TextView;

.field private mAccountUserName:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/android/contacts/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListFilterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private bindView(II)V
    .locals 2

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f090105

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f090028

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    const v0, 0x7f090029

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const v0, 0x7f09017d

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_1

    .line 95
    iget-object p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    const v0, 0x7f1000b7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, -0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/4 v1, -0x5

    if-eq v0, v1, :cond_7

    const/4 v1, -0x4

    if-eq v0, v1, :cond_6

    const/4 v1, -0x3

    if-eq v0, v1, :cond_5

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 125
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v1, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 130
    invoke-virtual {p1, v1, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const p1, 0x7f100171

    .line 102
    invoke-direct {p0, v2, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    :cond_5
    const p1, 0x7f100173

    .line 110
    invoke-direct {p0, v2, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    :cond_6
    const p1, 0x7f0800ce

    const v0, 0x7f100172

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    :cond_7
    const p1, 0x7f100174

    .line 114
    invoke-direct {p0, v2, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    goto :goto_1

    :cond_8
    const p1, 0x7f100176

    .line 118
    invoke-direct {p0, v2, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    .line 136
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method generateContentDescription()Ljava/lang/String;
    .locals 5

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " "

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f100021

    goto :goto_0

    :cond_3
    const v2, 0x7f100022

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 161
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setActivated(Z)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 76
    :cond_0
    sget-object p1, Lcom/android/contacts/list/ContactListFilterView;->TAG:Ljava/lang/String;

    const-string v0, "radio-button cannot be activated because it is null"

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterView;->generateContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0

    return-void
.end method
