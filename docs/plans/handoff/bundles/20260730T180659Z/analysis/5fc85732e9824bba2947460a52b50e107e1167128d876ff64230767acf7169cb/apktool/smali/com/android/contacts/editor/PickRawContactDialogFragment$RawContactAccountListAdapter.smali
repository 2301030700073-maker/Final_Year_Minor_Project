.class final Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PickRawContactDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/PickRawContactDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawContactAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;
    }
.end annotation


# instance fields
.field private final mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field private final mRawContactsMetadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

.field final synthetic this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/PickRawContactDialogFragment;Landroid/content/Context;Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    invoke-static {p2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 64
    new-instance p1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {p1, p2}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 65
    iput-object p3, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mRawContactsMetadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mRawContactsMetadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-object v0, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mRawContactsMetadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-object v0, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mRawContactsMetadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-object v0, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;

    iget-wide v0, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_0

    .line 88
    iget-object p2, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c009b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;

    invoke-direct {p3, p0}, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;-><init>(Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;)V

    const v0, 0x7f0900c5

    .line 90
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;->displayName:Landroid/widget/TextView;

    const v0, 0x7f090032

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;->accountName:Landroid/widget/TextView;

    const v0, 0x7f090030

    .line 92
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;->accountIcon:Landroid/widget/ImageView;

    const v0, 0x7f09016f

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;->photo:Landroid/widget/ImageView;

    .line 94
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mRawContactsMetadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-object v0, v0, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->rawContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;

    .line 100
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v1, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 105
    iget-object v1, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->displayName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->displayNameAlt:Ljava/lang/String;

    .line 107
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    iget-object v1, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f1001a6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_2
    iget-object v3, p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;->displayName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mRawContactsMetadata:Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    iget-boolean v3, v3, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;->isUserProfile:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->this$0:Lcom/android/contacts/editor/PickRawContactDialogFragment;

    .line 117
    invoke-virtual {v3}, Lcom/android/contacts/editor/PickRawContactDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v5, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountType:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountDataSet:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountInfoForAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/contacts/editor/EditorUiUtils;->getAccountHeaderLabelForMyProfile(Landroid/content/Context;Lcom/android/contacts/model/account/AccountInfo;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 122
    :cond_3
    iget-object v3, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountType:Ljava/lang/String;

    const-string v4, "com.google"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 125
    iget-object v3, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->accountName:Ljava/lang/String;

    goto :goto_2

    .line 127
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    :goto_2
    iget-object v4, p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;->accountName:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;->accountIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    new-instance v10, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;

    iget-wide v3, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->id:J

    .line 134
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v1, v0, v2}, Lcom/android/contacts/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    iget-object v0, p0, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v4

    iget-object v5, p3, Lcom/android/contacts/editor/PickRawContactDialogFragment$RawContactAccountListAdapter$RawContactViewHolder;->photo:Landroid/widget/ImageView;

    iget-wide v6, p1, Lcom/android/contacts/editor/PickRawContactLoader$RawContact;->photoId:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/ContactPhotoManager$DefaultImageRequest;)V

    return-object p2
.end method
