.class public Lcom/android/contacts/list/ContactsUnavailableFragment;
.super Landroid/app/Fragment;
.source "ContactsUnavailableFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAddAccountButton:Landroid/widget/Button;

.field private mButtonsContainer:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mImportContactsButton:Landroid/widget/Button;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProviderStatus:Ljava/lang/Integer;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mButtonsContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateViewsForBusyStatus()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateButtonVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private updateViewsForEmptyStatus()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateButtonVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 156
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09004d

    if-ne p1, v0, :cond_0

    .line 134
    invoke-static {}, Lcom/android/contacts/util/ImplicitIntentsUtil;->getIntentForAddingGoogleAccount()Landroid/content/Intent;

    move-result-object p1

    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityOutsideApp(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f090110

    if-ne p1, v0, :cond_1

    .line 138
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/interactions/ImportDialogFragment;->show(Landroid/app/FragmentManager;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c002f

    const/4 p3, 0x0

    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const p2, 0x7f0900d9

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImageView:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 67
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0a000b

    .line 68
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    div-int/2addr p2, p3

    .line 69
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070082

    .line 70
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 p2, 0x1

    .line 72
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73
    iget-object p2, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const p2, 0x7f090141

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mMessageView:Landroid/widget/TextView;

    .line 76
    iget-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const p2, 0x7f09004d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    .line 77
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mAddAccountButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0600e5

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    iget-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const p2, 0x7f090110

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    .line 81
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mImportContactsButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 84
    iget-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const p2, 0x7f090179

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 87
    iget-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    const p2, 0x7f090064

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mButtonsContainer:Landroid/view/View;

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(I)V

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public updateStatus(I)V
    .locals 1

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mProviderStatus:Ljava/lang/Integer;

    .line 99
    iget-object v0, p0, Lcom/android/contacts/list/ContactsUnavailableFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    sget v0, Lcom/android/contacts/compat/ProviderStatusCompat;->STATUS_EMPTY:I

    if-ne p1, v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateViewsForEmptyStatus()V

    goto :goto_0

    .line 105
    :cond_1
    sget v0, Lcom/android/contacts/compat/ProviderStatusCompat;->STATUS_BUSY:I

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateViewsForBusyStatus()V

    :cond_3
    :goto_0
    return-void
.end method
