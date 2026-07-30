.class public Lcom/android/contacts/list/EmailAddressPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "EmailAddressPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setQuickContactEnabled(Z)V

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v0, 0x3

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectorySearchMode(I)V

    return-void
.end method

.method private pickEmailAddress(Landroid/net/Uri;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnEmailAddressPickerActionListener;->onPickEmailAddressAction(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 2

    .line 53
    new-instance v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/EmailAddressListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0028

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/EmailAddressListAdapter;

    .line 45
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->pickEmailAddress(Landroid/net/Uri;)V

    return-void
.end method

.method public setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    return-void
.end method
