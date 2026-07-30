.class public Lcom/android/contacts/editor/AccountHeaderPresenter;
.super Ljava/lang/Object;
.source "AccountHeaderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;
    }
.end annotation


# instance fields
.field private final mAccountHeaderContainer:Landroid/view/View;

.field private mAccountHeaderExpanderIcon:Landroid/widget/ImageView;

.field private mAccountHeaderIcon:Landroid/widget/ImageView;

.field private mAccountHeaderName:Landroid/widget/TextView;

.field private mAccountHeaderType:Landroid/widget/TextView;

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

.field private mObserver:Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;

.field private mSelectorTitle:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f100102

    .line 69
    iput v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mSelectorTitle:I

    .line 72
    sget-object v0, Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;->NONE:Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;

    iput-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mObserver:Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mContext:Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderContainer:Landroid/view/View;

    const v0, 0x7f090033

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderType:Landroid/widget/TextView;

    const v0, 0x7f090032

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderName:Landroid/widget/TextView;

    const v0, 0x7f090034

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderIcon:Landroid/widget/ImageView;

    const v0, 0x7f09002b

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderExpanderIcon:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/AccountHeaderPresenter;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/contacts/editor/AccountHeaderPresenter;->showPopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/AccountHeaderPresenter;)Landroid/view/View;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderContainer:Landroid/view/View;

    return-object p0
.end method

.method private addAccountHeader(Ljava/lang/String;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mSelectorTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderType:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccounts:Ljava/util/List;

    iget-object v2, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-static {v1, v2}, Lcom/android/contacts/model/account/AccountInfo;->getAccount(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderContainer:Landroid/view/View;

    .line 161
    invoke-static {p1, v0}, Lcom/android/contacts/editor/EditorUiUtils;->getAccountInfoContentDescription(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addAccountSelector(Ljava/lang/CharSequence;)V
    .locals 1

    .line 166
    new-instance v0, Lcom/android/contacts/editor/AccountHeaderPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/AccountHeaderPresenter$1;-><init>(Lcom/android/contacts/editor/AccountHeaderPresenter;)V

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/AccountHeaderPresenter;->setUpAccountSelector(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getAccountLabel(Lcom/android/contacts/model/account/AccountWithDataSet;)Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccounts:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private setUpAccountSelector(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 205
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/AccountHeaderPresenter;->addAccountHeader(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderExpanderIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderExpanderIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderContainer:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showPopup()V
    .locals 5

    .line 176
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 177
    new-instance v1, Lcom/android/contacts/util/AccountsListAdapter;

    iget-object v2, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccounts:Ljava/util/List;

    iget-object v4, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 179
    iget-object v2, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 180
    iget-object v2, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x1

    .line 182
    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    const/4 v2, 0x2

    .line 183
    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 184
    new-instance v2, Lcom/android/contacts/editor/AccountHeaderPresenter$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/contacts/editor/AccountHeaderPresenter$2;-><init>(Lcom/android/contacts/editor/AccountHeaderPresenter;Landroid/widget/ListPopupWindow;Lcom/android/contacts/util/AccountsListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderContainer:Landroid/view/View;

    new-instance v2, Lcom/android/contacts/editor/AccountHeaderPresenter$3;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/editor/AccountHeaderPresenter$3;-><init>(Lcom/android/contacts/editor/AccountHeaderPresenter;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDisplayedAccount()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccountHeaderContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccounts:Ljava/util/List;

    if-nez v1, :cond_1

    return-void

    .line 132
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/AccountHeaderPresenter;->getAccountLabel(Lcom/android/contacts/model/account/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 135
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/AccountHeaderPresenter;->addAccountSelector(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/AccountHeaderPresenter;->addAccountHeader(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentAccount()Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-nez v0, :cond_1

    const-string v0, "accountHeaderSelectedAccount"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iput-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/AccountHeaderPresenter;->updateDisplayedAccount()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    const-string v1, "accountHeaderSelectedAccount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setAccounts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccounts:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/android/contacts/model/account/AccountInfo;->contains(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 106
    iget-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mObserver:Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;

    invoke-interface {p1, p0}, Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;->onChange(Lcom/android/contacts/editor/AccountHeaderPresenter;)V

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/editor/AccountHeaderPresenter;->updateDisplayedAccount()V

    return-void
.end method

.method public setCurrentAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mCurrentAccount:Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 94
    iget-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mObserver:Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;

    if-eqz p1, :cond_1

    .line 95
    invoke-interface {p1, p0}, Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;->onChange(Lcom/android/contacts/editor/AccountHeaderPresenter;)V

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/editor/AccountHeaderPresenter;->updateDisplayedAccount()V

    return-void
.end method

.method public setObserver(Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/contacts/editor/AccountHeaderPresenter;->mObserver:Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;

    return-void
.end method
