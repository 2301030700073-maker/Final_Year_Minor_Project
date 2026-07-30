.class public abstract Lcom/android/contacts/list/MultiSelectContactsListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "MultiSelectContactsListFragment.java"

# interfaces
.implements Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;",
        ">",
        "Lcom/android/contacts/list/ContactEntryListFragment<",
        "TT;>;",
        "Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;"
    }
.end annotation


# instance fields
.field protected mAnimateOnLoad:Z

.field private mCheckBoxListListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    return-void
.end method

.method private bindListHeaderCommon(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 412
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setListViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method private createSearchState(I)Lcom/android/contacts/logging/SearchState;
    .locals 7

    .line 222
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 226
    :cond_0
    new-instance v1, Lcom/android/contacts/logging/SearchState;

    invoke-direct {v1}, Lcom/android/contacts/logging/SearchState;-><init>()V

    .line 227
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    iput v2, v1, Lcom/android/contacts/logging/SearchState;->queryLength:I

    .line 229
    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v2

    iput v2, v1, Lcom/android/contacts/logging/SearchState;->numPartitions:I

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 235
    :goto_1
    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 236
    invoke-virtual {v0, v4}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 237
    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 242
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 244
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 246
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 247
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 249
    :cond_5
    iput v5, v1, Lcom/android/contacts/logging/SearchState;->numResults:I

    :cond_6
    if-ltz p1, :cond_a

    .line 254
    invoke-virtual {v0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result v4

    iput v4, v1, Lcom/android/contacts/logging/SearchState;->selectedPartition:I

    .line 255
    invoke-virtual {v0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getOffsetInPartition(I)I

    move-result p1

    iput p1, v1, Lcom/android/contacts/logging/SearchState;->selectedIndexInPartition:I

    .line 256
    iget p1, v1, Lcom/android/contacts/logging/SearchState;->selectedPartition:I

    invoke-virtual {v0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 258
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p1, -0x1

    :goto_5
    iput p1, v1, Lcom/android/contacts/logging/SearchState;->numResultsInSelectedPartition:I

    .line 261
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    .line 263
    :goto_6
    iget v0, v1, Lcom/android/contacts/logging/SearchState;->selectedPartition:I

    if-ge v3, v0, :cond_9

    .line 264
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 266
    :cond_9
    iget v0, v1, Lcom/android/contacts/logging/SearchState;->selectedIndexInPartition:I

    add-int/2addr p1, v0

    .line 267
    iput p1, v1, Lcom/android/contacts/logging/SearchState;->selectedIndex:I

    :cond_a
    return-object v1
.end method

.method private getContactId(I)J
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getContactColumnIdIndex()I

    move-result v0

    .line 195
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    .line 197
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get contact ID from cursor column "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MultiContactsList"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private setListViewPaddingTop(Landroid/view/View;I)V
    .locals 3

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 427
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private setMargins(Landroid/view/View;II)V
    .locals 1

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 402
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 403
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 404
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private shouldShowAccountName(Lcom/android/contacts/model/account/AccountType;)Z
    .locals 1

    .line 395
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/android/contacts/group/GroupMembersFragment;

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    const-string v0, "com.google"

    .line 396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected bindListHeader(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/contacts/model/account/AccountWithDataSet;I)V
    .locals 5

    if-gez p5, :cond_0

    .line 335
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->hideHeaderAndAddPadding(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    return-void

    .line 339
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->bindListHeaderCommon(Landroid/view/View;Landroid/view/View;)V

    .line 341
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object p2

    .line 342
    iget-object v0, p4, Lcom/android/contacts/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    iget-object v1, p4, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object p2

    const v0, 0x7f09002c

    .line 346
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 348
    invoke-direct {p0, p2}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->shouldShowAccountName(Lcom/android/contacts/model/account/AccountType;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f0001

    invoke-virtual {v1, v4, p5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 351
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v4, v3

    iget-object p4, p4, Lcom/android/contacts/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    aput-object p4, v4, v2

    .line 349
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const/high16 v1, 0x7f0f0000

    new-array v2, v2, [Ljava/lang/Object;

    .line 353
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 352
    invoke-virtual {p4, v1, p5, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 354
    :goto_0
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    if-eqz p2, :cond_2

    .line 358
    invoke-virtual {p2, p1}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const p4, 0x7f09002e

    .line 360
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 365
    instance-of p2, p2, Lcom/android/contacts/model/account/GoogleAccountType;

    if-eqz p2, :cond_3

    .line 366
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070066

    .line 367
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 368
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 369
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 372
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070062

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 374
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070064

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 371
    invoke-direct {p0, p3, p2, p4}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setMargins(Landroid/view/View;II)V

    goto :goto_2

    .line 377
    :cond_3
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070067

    .line 378
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 379
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    .line 380
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    iput p4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 383
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070063

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 385
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070065

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    .line 382
    invoke-direct {p0, p3, p2, p4}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setMargins(Landroid/view/View;II)V

    .line 388
    :goto_2
    invoke-virtual {p3}, Landroid/widget/ImageView;->requestLayout()V

    .line 390
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bindListHeaderCustom(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->bindListHeaderCommon(Landroid/view/View;Landroid/view/View;)V

    const p1, 0x7f09002c

    .line 319
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f10016f

    .line 321
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    const p1, 0x7f09002e

    .line 325
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 p2, 0x8

    .line 326
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public clearCheckBoxes()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->setSelectedContactIds(Ljava/util/TreeSet;)V

    return-void
.end method

.method protected configureAdapter()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->setSelectedContactsListener(Lcom/android/contacts/list/MultiSelectEntryContactListAdapter$SelectedContactsListener;)V

    return-void
.end method

.method public createSearchState()Lcom/android/contacts/logging/SearchState;
    .locals 1

    const/4 v0, -0x1

    .line 210
    invoke-direct {p0, v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->createSearchState(I)Lcom/android/contacts/logging/SearchState;

    move-result-object v0

    return-object v0
.end method

.method public createSearchStateForSearchResultClick(I)Lcom/android/contacts/logging/SearchState;
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->createSearchState(I)Lcom/android/contacts/logging/SearchState;

    move-result-object p1

    return-object p1
.end method

.method public displayCheckBoxes(Z)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->setDisplayCheckBoxes(Z)V

    if-nez p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->clearCheckBoxes()V

    :cond_0
    return-void
.end method

.method public getActionBarAdapter()Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedContactIds()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedContactIdsArray()[J
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIdsArray()[J

    move-result-object v0

    return-object v0
.end method

.method protected hideHeaderAndAddPadding(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 420
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07006e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 421
    invoke-direct {p0, p2, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setListViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "selected_contacts"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->setSelectedContactIds(Ljava/util/TreeSet;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    if-nez p3, :cond_0

    .line 90
    iget-boolean p1, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment;->mAnimateOnLoad:Z

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const p2, 0x7f01002d

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->setLayoutAnimation(Landroid/view/ViewGroup;I)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onItemClick(IJ)V
    .locals 2

    .line 180
    invoke-direct {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getContactId(I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p3

    check-cast p3, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {p3}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->isDisplayingCheckBoxes()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p3

    check-cast p3, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->toggleSelectionOfContactId(J)V

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment;->mCheckBoxListListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 188
    iget-object p1, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment;->mCheckBoxListListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    invoke-interface {p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;->onStopDisplayingCheckBoxes()V

    :cond_2
    return-void
.end method

.method protected onItemLongClick(IJ)Z
    .locals 7

    .line 149
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {p2}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p2

    .line 150
    invoke-direct {p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getContactId(I)J

    move-result-wide v0

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p3

    check-cast p3, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {p3, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionForPosition(I)I

    move-result p3

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    int-to-long v5, p3

    cmp-long p3, v5, v2

    if-nez p3, :cond_1

    .line 153
    iget-object p3, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment;->mCheckBoxListListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    if-eqz p3, :cond_0

    .line 154
    invoke-interface {p3}, Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;->onStartDisplayingCheckBoxes()V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p3

    check-cast p3, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {p3, v0, v1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->toggleSelectionOfContactId(J)V

    const/4 p3, 0x3

    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListType()I

    move-result v0

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v1

    .line 157
    invoke-static {p3, v0, v1, p1, v4}, Lcom/android/contacts/logging/Logger;->logListEvent(IIIII)V

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p3

    add-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p3

    .line 163
    invoke-virtual {p3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p3

    sub-int/2addr p1, p3

    if-ltz p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/ListView;->getChildCount()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/list/MultiSelectEntryContactListAdapter;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result p1

    .line 170
    iget-object p3, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment;->mCheckBoxListListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 173
    invoke-interface {p3}, Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;->onStopDisplayingCheckBoxes()V

    :cond_2
    return v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/list/MultiSelectContactsListFragment;->getSelectedContactIds()Ljava/util/TreeSet;

    move-result-object v0

    const-string v1, "selected_contacts"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object p3

    const p4, 0x7f09002d

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p4, 0x0

    .line 304
    invoke-virtual {p1, p4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gez p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 309
    invoke-static {p3, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07007c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 311
    invoke-static {p3, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public onSelectedContactsChanged()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment;->mCheckBoxListListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;->onSelectedContactIdsChanged()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onStart()V

    .line 109
    iget-object v0, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment;->mCheckBoxListListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;->onSelectedContactIdsChanged()V

    :cond_0
    return-void
.end method

.method public setAnimateOnLoad(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment;->mAnimateOnLoad:Z

    return-void
.end method

.method public setCheckBoxListListener(Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/contacts/list/MultiSelectContactsListFragment;->mCheckBoxListListener:Lcom/android/contacts/list/MultiSelectContactsListFragment$OnCheckBoxListActionListener;

    return-void
.end method

.method protected setLayoutAnimation(Landroid/view/ViewGroup;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 277
    :cond_0
    new-instance v0, Lcom/android/contacts/list/MultiSelectContactsListFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/list/MultiSelectContactsListFragment$1;-><init>(Lcom/android/contacts/list/MultiSelectContactsListFragment;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 291
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method
