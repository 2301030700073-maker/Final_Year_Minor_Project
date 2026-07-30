.class public Lcom/android/contacts/list/LegacyPhoneNumberPickerFragment;
.super Lcom/android/contacts/list/PhoneNumberPickerFragment;
.source "LegacyPhoneNumberPickerFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 2

    .line 48
    new-instance v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    return-object v0
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    .line 37
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected getVisibleScrollbarEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setPhotoPosition(Lcom/android/contacts/list/ContactEntryListAdapter;)V
    .locals 0

    return-void
.end method

.method protected startPhoneNumberShortcutIntent(Landroid/net/Uri;Z)V
    .locals 0

    .line 60
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
