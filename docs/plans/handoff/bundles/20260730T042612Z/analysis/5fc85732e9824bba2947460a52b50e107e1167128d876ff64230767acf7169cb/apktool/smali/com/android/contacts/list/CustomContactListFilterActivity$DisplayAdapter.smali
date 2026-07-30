.class public Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 562
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 563
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 564
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 565
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    return-object p0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    if-ltz p2, :cond_0

    .line 649
    iget-object v0, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    .line 650
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    .line 651
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->getGroup(I)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildId(II)J
    .locals 2

    .line 661
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    const-wide/high16 v0, -0x8000000000000000L

    if-eqz p1, :cond_0

    .line 663
    invoke-virtual {p1}, Lcom/android/contacts/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 664
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 613
    iget-object p4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0032

    invoke-virtual {p4, v1, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    :cond_0
    const p5, 0x1020014

    .line 617
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    const v1, 0x1020015

    .line 618
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x1020001

    .line 619
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 621
    iget-object v3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 622
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    const/16 p2, 0x8

    if-eqz p1, :cond_1

    .line 625
    invoke-virtual {p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getVisible()Z

    move-result v3

    .line 626
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 627
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 629
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 630
    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 634
    :cond_1
    invoke-virtual {v2, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    const p1, 0x7f1000f5

    .line 635
    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(I)V

    .line 636
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const p1, 0x7f09004b

    .line 640
    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    .line 641
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 674
    iget-object v0, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mSyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p1, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 687
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 585
    iget-object p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0031

    invoke-virtual {p3, v1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p4, 0x1020014

    .line 589
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v1, 0x1020015

    .line 590
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 594
    iget-object v2, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mAccountInfo:Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountInfo;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v2, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mAccountInfo:Lcom/android/contacts/model/account/AccountInfo;

    .line 595
    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountInfo;->isDeviceAccount()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mAccountInfo:Lcom/android/contacts/model/account/AccountInfo;

    .line 596
    invoke-virtual {v2}, Lcom/android/contacts/model/account/AccountInfo;->hasDistinctName()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 595
    :cond_2
    :goto_0
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object p1, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mAccountInfo:Lcom/android/contacts/model/account/AccountInfo;

    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getTypeLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_3

    const p2, 0x7f06007c

    goto :goto_1

    :cond_3
    const p2, 0x7f06001b

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 603
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 604
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->mAccounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 570
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
