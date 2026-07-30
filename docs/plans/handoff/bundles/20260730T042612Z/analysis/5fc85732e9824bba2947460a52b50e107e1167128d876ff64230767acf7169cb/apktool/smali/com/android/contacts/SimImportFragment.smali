.class public Lcom/android/contacts/SimImportFragment;
.super Landroid/app/Fragment;
.source "SimImportFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/SimImportFragment$LoaderResult;,
        Lcom/android/contacts/SimImportFragment$SimContactLoader;,
        Lcom/android/contacts/SimImportFragment$SimContactAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/contacts/SimImportFragment$LoaderResult;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mAccountHeaderContainer:Landroid/view/View;

.field private mAccountHeaderPresenter:Lcom/android/contacts/editor/AccountHeaderPresenter;

.field private mAccountScrolledElevationPixels:F

.field private mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

.field private mImportButton:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingIndicator:Landroidx/core/widget/ContentLoadingProgressBar;

.field private final mPerAccountCheckedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "[J>;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSubscriptionId:I

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 92
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/SimImportFragment;->mPerAccountCheckedIds:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/SimImportFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment;->rememberSelectionsForCurrentAccount()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/SimImportFragment;)Lcom/android/contacts/SimImportFragment$SimContactAdapter;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/contacts/SimImportFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment;->showSelectionsForCurrentAccount()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/SimImportFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment;->updateToolbarWithCurrentSelections()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/SimImportFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment;->importCurrentSelections()V

    return-void
.end method

.method private importCurrentSelections()V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 294
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 297
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->existsInCurrentAccount(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/SimContact;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/SimImportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/contacts/SimImportFragment;->mSubscriptionId:I

    iget-object v3, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderPresenter:Lcom/android/contacts/editor/AccountHeaderPresenter;

    .line 302
    invoke-virtual {v3}, Lcom/android/contacts/editor/AccountHeaderPresenter;->getCurrentAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v3

    .line 301
    invoke-static {v0, v2, v1, v3}, Lcom/android/contacts/SimImportService;->startImport(Landroid/content/Context;ILjava/util/ArrayList;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method public static newInstance(I)Lcom/android/contacts/SimImportFragment;
    .locals 3

    .line 351
    new-instance v0, Lcom/android/contacts/SimImportFragment;

    invoke-direct {v0}, Lcom/android/contacts/SimImportFragment;-><init>()V

    .line 352
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "subscriptionId"

    .line 353
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private rememberSelectionsForCurrentAccount()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v1

    .line 181
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 182
    iget-object v2, p0, Lcom/android/contacts/SimImportFragment;->mPerAccountCheckedIds:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private restoreAdapterSelectedStates(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountInfo;

    .line 272
    iget-object v1, p0, Lcom/android/contacts/SimImportFragment;->mSavedInstanceState:Landroid/os/Bundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/account/AccountWithDataSet;->stringify()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_selectedIds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/android/contacts/SimImportFragment;->mPerAccountCheckedIds:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 276
    iput-object p1, p0, Lcom/android/contacts/SimImportFragment;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method private saveAdapterSelectedStates(Landroid/os/Bundle;)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mPerAccountCheckedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {v3}, Lcom/android/contacts/model/account/AccountWithDataSet;->stringify()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_selectedIds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 286
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private selectAll()V
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 199
    iget-object v2, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showSelectionsForCurrentAccount()V
    .locals 7

    .line 186
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mPerAccountCheckedIds:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment;->selectAll()V

    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 192
    iget-object v4, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    .line 193
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 192
    :goto_1
    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateToolbarWithCurrentSelections()V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 208
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 209
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->existsInCurrentAccount(I)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 215
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mImportButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f10020e

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    goto :goto_1

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mImportButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 315
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-super {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iput-object p1, p0, Lcom/android/contacts/SimImportFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 101
    new-instance p1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/SimImportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/SimImportFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    .line 103
    new-instance p1, Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "subscriptionId"

    .line 107
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/contacts/SimImportFragment;->mSubscriptionId:I

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/SimImportFragment$LoaderResult;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance p1, Lcom/android/contacts/SimImportFragment$SimContactLoader;

    invoke-virtual {p0}, Lcom/android/contacts/SimImportFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p0, Lcom/android/contacts/SimImportFragment;->mSubscriptionId:I

    invoke-direct {p1, p2, v0}, Lcom/android/contacts/SimImportFragment$SimContactLoader;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0065

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09002f

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderContainer:Landroid/view/View;

    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07007c

    .line 124
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/contacts/SimImportFragment;->mAccountScrolledElevationPixels:F

    .line 125
    new-instance p2, Lcom/android/contacts/editor/AccountHeaderPresenter;

    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderContainer:Landroid/view/View;

    invoke-direct {p2, v0}, Lcom/android/contacts/editor/AccountHeaderPresenter;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderPresenter:Lcom/android/contacts/editor/AccountHeaderPresenter;

    if-eqz p3, :cond_0

    .line 128
    invoke-virtual {p2, p3}, Lcom/android/contacts/editor/AccountHeaderPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p3, p0, Lcom/android/contacts/SimImportFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p3}, Lcom/android/contacts/preference/ContactsPreferences;->getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/contacts/editor/AccountHeaderPresenter;->setCurrentAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 134
    :goto_0
    iget-object p2, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderPresenter:Lcom/android/contacts/editor/AccountHeaderPresenter;

    new-instance p3, Lcom/android/contacts/SimImportFragment$1;

    invoke-direct {p3, p0}, Lcom/android/contacts/SimImportFragment$1;-><init>(Lcom/android/contacts/SimImportFragment;)V

    invoke-virtual {p2, p3}, Lcom/android/contacts/editor/AccountHeaderPresenter;->setObserver(Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;)V

    .line 143
    iget-object p2, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    iget-object p3, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderPresenter:Lcom/android/contacts/editor/AccountHeaderPresenter;

    invoke-virtual {p3}, Lcom/android/contacts/editor/AccountHeaderPresenter;->getCurrentAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->setAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    const p2, 0x7f090122

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    .line 146
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 147
    iget-object p2, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    iget-object p2, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 149
    iget-object p2, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p2, 0x7f09010f

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/contacts/SimImportFragment;->mImportButton:Landroid/view/View;

    .line 151
    new-instance p3, Lcom/android/contacts/SimImportFragment$2;

    invoke-direct {p3, p0}, Lcom/android/contacts/SimImportFragment$2;-><init>(Lcom/android/contacts/SimImportFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0901ec

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/android/contacts/SimImportFragment;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 162
    new-instance p3, Lcom/android/contacts/SimImportFragment$3;

    invoke-direct {p3, p0}, Lcom/android/contacts/SimImportFragment$3;-><init>(Lcom/android/contacts/SimImportFragment;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090127

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/ContentLoadingProgressBar;

    iput-object p2, p0, Lcom/android/contacts/SimImportFragment;->mLoadingIndicator:Landroidx/core/widget/ContentLoadingProgressBar;

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 306
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {p1, p3}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->existsInCurrentAccount(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f10020a

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment;->updateToolbarWithCurrentSelections()V

    :goto_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/SimImportFragment$LoaderResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/SimImportFragment$LoaderResult;",
            ">;",
            "Lcom/android/contacts/SimImportFragment$LoaderResult;",
            ")V"
        }
    .end annotation

    .line 249
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment;->mLoadingIndicator:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {p1}, Landroidx/core/widget/ContentLoadingProgressBar;->hide()V

    if-nez p2, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderPresenter:Lcom/android/contacts/editor/AccountHeaderPresenter;

    iget-object v0, p2, Lcom/android/contacts/SimImportFragment$LoaderResult;->accounts:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/contacts/editor/AccountHeaderPresenter;->setAccounts(Ljava/util/List;)V

    .line 254
    iget-object p1, p2, Lcom/android/contacts/SimImportFragment$LoaderResult;->accounts:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/contacts/SimImportFragment;->restoreAdapterSelectedStates(Ljava/util/List;)V

    .line 255
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {p1, p2}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->setData(Lcom/android/contacts/SimImportFragment$LoaderResult;)V

    .line 256
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 258
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment;->showSelectionsForCurrentAccount()V

    .line 259
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment;->updateToolbarWithCurrentSelections()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p2, Lcom/android/contacts/SimImportFragment$LoaderResult;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/SimImportFragment;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/SimImportFragment$LoaderResult;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/SimImportFragment$LoaderResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 233
    invoke-direct {p0}, Lcom/android/contacts/SimImportFragment;->rememberSelectionsForCurrentAccount()V

    .line 235
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 236
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 237
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderPresenter:Lcom/android/contacts/editor/AccountHeaderPresenter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/AccountHeaderPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/android/contacts/SimImportFragment;->saveAdapterSelectedStates(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 328
    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gez p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    if-nez p2, :cond_1

    .line 333
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 335
    :cond_1
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment;->mAccountHeaderContainer:Landroid/view/View;

    iget p2, p0, Lcom/android/contacts/SimImportFragment;->mAccountScrolledElevationPixels:F

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 225
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 226
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mAdapter:Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment;->mLoadingIndicator:Landroidx/core/widget/ContentLoadingProgressBar;

    invoke-virtual {v0}, Landroidx/core/widget/ContentLoadingProgressBar;->show()V

    :cond_0
    return-void
.end method
