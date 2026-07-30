.class public Lcom/android/contacts/drawer/DrawerAdapter;
.super Landroid/widget/BaseAdapter;
.source "DrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;,
        Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;,
        Lcom/android/contacts/drawer/DrawerAdapter$DividerItem;,
        Lcom/android/contacts/drawer/DrawerAdapter$NavSpacerItem;,
        Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;,
        Lcom/android/contacts/drawer/DrawerAdapter$MiscItem;,
        Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;,
        Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;
    }
.end annotation


# instance fields
.field private mAccountDisplayFactory:Lcom/android/contacts/model/account/AccountDisplayInfoFactory;

.field private mAccountEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountHeader:Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

.field private final mActivity:Landroid/app/Activity;

.field private mAreGroupWritableAccountsAvailable:Z

.field private mCreateLabelButton:Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

.field private mGroupEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupHeader:Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMiscItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNavSpacerItem:Lcom/android/contacts/drawer/DrawerAdapter$NavSpacerItem;

.field private mPrimaryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedAccount:Lcom/android/contacts/list/ContactListFilter;

.field private mSelectedGroupId:J

.field private mSelectedView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mNavSpacerItem:Lcom/android/contacts/drawer/DrawerAdapter$NavSpacerItem;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mPrimaryItems:Ljava/util/List;

    .line 80
    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mGroupHeader:Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mGroupEntries:Ljava/util/List;

    .line 82
    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mCreateLabelButton:Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

    .line 83
    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountHeader:Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountEntries:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mMiscItems:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    .line 92
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mActivity:Landroid/app/Activity;

    .line 94
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerAdapter;->initializeDrawerMenuItems()V

    return-void
.end method

.method private getAccountItemView(Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 269
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/list/ContactListFilter;

    if-nez v1, :cond_1

    .line 270
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0054

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 271
    iget p3, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->id:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    .line 273
    :cond_1
    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;->access$100(Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p3

    .line 274
    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountDisplayFactory:Lcom/android/contacts/model/account/AccountDisplayInfoFactory;

    .line 275
    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;->access$100(Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->getAccountDisplayInfoFor(Lcom/android/contacts/list/ContactListFilter;)Lcom/android/contacts/model/account/AccountDisplayInfo;

    move-result-object v1

    const v2, 0x7f0901e6

    .line 276
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 277
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountDisplayInfo;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v3, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedAccount:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p3, v3}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    sget-object v4, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ACCOUNT_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 280
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    const v4, 0x7f110104

    goto :goto_0

    :cond_3
    const v4, 0x7f110105

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v2, 0x7f090105

    .line 283
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 284
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 285
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountDisplayInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 288
    invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V

    .line 289
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountDisplayInfo;->getTypeLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;->access$100(Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object p1

    iget-object p1, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private getBaseItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 213
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private getDrawerItemView(Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 296
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0054

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0901e6

    .line 299
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 300
    iget v1, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->text:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090105

    .line 301
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 302
    iget v2, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 303
    iget p1, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->id:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 304
    invoke-direct {p0, p3, v1, v0}, Lcom/android/contacts/drawer/DrawerAdapter;->updateSelectedStatus(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    return-object p2
.end method

.method private getGroupEntryView(Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 247
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;

    if-nez v1, :cond_1

    .line 248
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0054

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 249
    iget p3, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->id:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    .line 252
    :cond_1
    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;->access$000(Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;)Lcom/android/contacts/group/GroupListItem;

    move-result-object p1

    const p3, 0x7f0901e6

    .line 253
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 254
    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090105

    .line 255
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0800bc

    .line 256
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedGroupId:J

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_2

    iget-object v2, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    sget-object v3, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->GROUP_VIEW:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 259
    :goto_0
    invoke-direct {p0, p3, v1, v2}, Lcom/android/contacts/drawer/DrawerAdapter;->updateSelectedStatus(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 260
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    .line 262
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 263
    iget-object p3, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1001bc

    new-array v2, v6, [Ljava/lang/Object;

    .line 264
    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private getHeaderItemView(Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 238
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0052

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0901e6

    .line 240
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 241
    iget v0, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->text:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget p1, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->id:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    return-object p2
.end method

.method private getPrimaryItemView(Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 220
    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0055

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f0901e6

    .line 222
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 223
    iget v1, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->text:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090105

    .line 224
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 225
    iget v2, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f09005d

    .line 226
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 227
    iget-object v3, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/contacts/util/SharedPreferenceUtil;->isWelcomeCardDismissed(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 228
    iget-object v5, p1, Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;->contactsView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    sget-object v6, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v5, v6, :cond_1

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v2, p1, Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;->contactsView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    iget-object v3, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V

    .line 231
    iget-object v2, p1, Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;->contactsView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    iget-object v3, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-direct {p0, p3, v1, v0}, Lcom/android/contacts/drawer/DrawerAdapter;->updateSelectedStatus(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 232
    iget p1, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->id:I

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    return-object p2
.end method

.method private initializeDrawerMenuItems()V
    .locals 6

    .line 99
    new-instance v0, Lcom/android/contacts/drawer/DrawerAdapter$NavSpacerItem;

    const v1, 0x7f090150

    invoke-direct {v0, v1}, Lcom/android/contacts/drawer/DrawerAdapter$NavSpacerItem;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mNavSpacerItem:Lcom/android/contacts/drawer/DrawerAdapter$NavSpacerItem;

    .line 101
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mPrimaryItems:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;

    sget-object v2, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ALL_CONTACTS:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    const v3, 0x7f09014d

    const v4, 0x7f1000b7

    const v5, 0x7f0800a1

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;-><init>(IIILcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/android/contactsbind/ObjectFactory;->getAssistantFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mPrimaryItems:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;

    const v2, 0x7f09014e

    const v3, 0x7f100183

    const v4, 0x7f0800a5

    sget-object v5, Lcom/android/contacts/activities/PeopleActivity$ContactsView;->ASSISTANT:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;-><init>(IIILcom/android/contacts/activities/PeopleActivity$ContactsView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    new-instance v0, Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

    const v1, 0x7f090154

    const v2, 0x7f1001a3

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;-><init>(II)V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mGroupHeader:Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

    .line 110
    new-instance v0, Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

    const v1, 0x7f090152

    const v2, 0x7f1001a2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;-><init>(II)V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountHeader:Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

    .line 112
    new-instance v0, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

    const/4 v1, 0x5

    const v2, 0x7f09014f

    const v3, 0x7f100194

    const v4, 0x7f0800a2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mCreateLabelButton:Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

    .line 115
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mMiscItems:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/drawer/DrawerAdapter$DividerItem;

    invoke-direct {v1}, Lcom/android/contacts/drawer/DrawerAdapter$DividerItem;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mMiscItems:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/drawer/DrawerAdapter$MiscItem;

    const v2, 0x7f090157

    const v3, 0x7f10019e

    const v4, 0x7f0800c9

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/drawer/DrawerAdapter$MiscItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {}, Lcom/android/contactsbind/HelpUtils;->isHelpAndFeedbackAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mMiscItems:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/drawer/DrawerAdapter$MiscItem;

    const v2, 0x7f090155

    const v3, 0x7f100190

    const v4, 0x7f0800b9

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/drawer/DrawerAdapter$MiscItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerAdapter;->rebuildItemsList()V

    return-void
.end method

.method private notifyChangeAndRebuildList()V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerAdapter;->rebuildItemsList()V

    .line 326
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private rebuildItemsList()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mNavSpacerItem:Lcom/android/contacts/drawer/DrawerAdapter$NavSpacerItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mPrimaryItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAreGroupWritableAccountsAvailable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mGroupEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mGroupHeader:Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mGroupEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-boolean v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAreGroupWritableAccountsAvailable:Z

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mCreateLabelButton:Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountHeader:Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountEntries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mMiscItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mNavSpacerItem:Lcom/android/contacts/drawer/DrawerAdapter$NavSpacerItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateSelectedStatus(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mActivity:Landroid/app/Activity;

    if-eqz p3, :cond_0

    const v1, 0x7f110104

    goto :goto_0

    :cond_0
    const v1, 0x7f110105

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    if-eqz p3, :cond_1

    .line 317
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0600e5

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p1, p3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/drawer/DrawerAdapter;->getItem(I)Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/contacts/drawer/DrawerAdapter;->getItem(I)Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

    move-result-object p1

    iget p1, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/contacts/drawer/DrawerAdapter;->getItem(I)Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

    move-result-object p1

    iget p1, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->viewType:I

    return p1
.end method

.method public getSelectedAccount()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedAccount:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getSelectedGroupId()J
    .locals 2

    .line 347
    iget-wide v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedGroupId:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/contacts/drawer/DrawerAdapter;->getItem(I)Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;

    move-result-object p1

    .line 190
    iget v0, p1, Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;->viewType:I

    packed-switch v0, :pswitch_data_0

    .line 208
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown drawer item "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const p1, 0x7f0c0053

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/drawer/DrawerAdapter;->getBaseItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :pswitch_1
    const p1, 0x7f0c007f

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/drawer/DrawerAdapter;->getBaseItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 196
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/drawer/DrawerAdapter;->getDrawerItemView(Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 200
    :pswitch_3
    check-cast p1, Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/drawer/DrawerAdapter;->getAccountItemView(Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 198
    :pswitch_4
    check-cast p1, Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/drawer/DrawerAdapter;->getGroupEntryView(Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 194
    :pswitch_5
    check-cast p1, Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/drawer/DrawerAdapter;->getHeaderItemView(Lcom/android/contacts/drawer/DrawerAdapter$HeaderItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 202
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/drawer/DrawerAdapter;->getDrawerItemView(Lcom/android/contacts/drawer/DrawerAdapter$BaseDrawerItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 192
    :pswitch_7
    check-cast p1, Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/drawer/DrawerAdapter;->getPrimaryItemView(Lcom/android/contacts/drawer/DrawerAdapter$PrimaryItem;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public setAccounts(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListFilter;

    .line 158
    new-instance v3, Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;

    const v4, 0x7f090151

    invoke-direct {v3, v4, v2}, Lcom/android/contacts/drawer/DrawerAdapter$AccountEntryItem;-><init>(ILcom/android/contacts/list/ContactListFilter;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/android/contacts/model/account/AccountDisplayInfoFactory;->fromListFilters(Landroid/content/Context;Ljava/util/List;)Lcom/android/contacts/model/account/AccountDisplayInfoFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountDisplayFactory:Lcom/android/contacts/model/account/AccountDisplayInfoFactory;

    .line 162
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 163
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAccountEntries:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerAdapter;->notifyChangeAndRebuildList()V

    return-void
.end method

.method public setGroups(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/group/GroupListItem;",
            ">;Z)V"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupListItem;

    .line 147
    new-instance v2, Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;

    const v3, 0x7f090153

    invoke-direct {v2, v3, v1}, Lcom/android/contacts/drawer/DrawerAdapter$GroupEntryItem;-><init>(ILcom/android/contacts/group/GroupListItem;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mGroupEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 150
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mGroupEntries:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iput-boolean p2, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mAreGroupWritableAccountsAvailable:Z

    .line 152
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerAdapter;->notifyChangeAndRebuildList()V

    return-void
.end method

.method public setSelectedAccount(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedAccount:Lcom/android/contacts/list/ContactListFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 354
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedAccount:Lcom/android/contacts/list/ContactListFilter;

    .line 355
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerAdapter;->notifyChangeAndRebuildList()V

    return-void
.end method

.method public setSelectedContactsView(Lcom/android/contacts/activities/PeopleActivity$ContactsView;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    if-ne v0, p1, :cond_0

    return-void

    .line 333
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedView:Lcom/android/contacts/activities/PeopleActivity$ContactsView;

    .line 334
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerAdapter;->notifyChangeAndRebuildList()V

    return-void
.end method

.method public setSelectedGroupId(J)V
    .locals 3

    .line 339
    iget-wide v0, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedGroupId:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 342
    :cond_0
    iput-wide p1, p0, Lcom/android/contacts/drawer/DrawerAdapter;->mSelectedGroupId:J

    .line 343
    invoke-direct {p0}, Lcom/android/contacts/drawer/DrawerAdapter;->notifyChangeAndRebuildList()V

    return-void
.end method
