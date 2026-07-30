.class public Lcom/android/contacts/list/CustomContactListFilterActivity;
.super Landroid/app/Activity;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/CustomContactListFilterActivity$ConfirmNavigationDialogFragment;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;,
        Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/ExpandableListView$OnChildClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# static fields
.field private static sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

.field private mList:Landroid/widget/ExpandableListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 417
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$2;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$2;-><init>()V

    sput-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/CustomContactListFilterActivity;)Landroid/widget/ExpandableListView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method static synthetic access$300(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/Comparator;
    .locals 1

    .line 87
    sget-object v0, Lcom/android/contacts/list/CustomContactListFilterActivity;->sIdComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/CustomContactListFilterActivity;)Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    return-object p0
.end method

.method private static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2

    .line 409
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "caller_is_syncadapter"

    const-string v1, "true"

    .line 410
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 411
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private confirmFinish()V
    .locals 3

    .line 964
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->hasUnsavedChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$ConfirmNavigationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$ConfirmNavigationDialogFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ConfirmNavigationDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 968
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 969
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private doSaveAction()V
    .locals 4

    .line 852
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$700(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 857
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 859
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$700(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 865
    :cond_1
    new-instance v1, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$UpdateTask;-><init>(Landroid/app/Activity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 853
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getCurrentListFilterType()I
    .locals 3

    .line 974
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currentListFilterType"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private hasUnsavedChanges()Z
    .locals 4

    .line 837
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$700(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getCurrentListFilterType()I

    move-result v0

    const/4 v2, -0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    return v3

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-static {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->access$700(Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;)Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v0

    .line 844
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method protected getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I
    .locals 2

    .line 735
    iget-object v0, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mType:Ljava/lang/String;

    const-string v1, "com.google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mDataSet:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected handleRemoveSync(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
    .locals 3

    .line 787
    iget-object v0, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    if-eqz v0, :cond_0

    .line 788
    iget-object p3, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 789
    invoke-virtual {p2, p3}, Lcom/android/contacts/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 791
    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1000fe

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v1

    .line 792
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const v0, 0x7f1001a1

    .line 794
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 795
    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 p4, 0x1040000

    const/4 v0, 0x0

    .line 796
    invoke-virtual {p3, p4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p4, 0x104000a

    .line 797
    new-instance v0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$4;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V

    invoke-virtual {p3, p4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 805
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 808
    :cond_0
    invoke-virtual {p1, p2, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 809
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 958
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->confirmFinish()V

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    const p1, 0x1020001

    .line 713
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 715
    iget-object p5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {p5, p3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 716
    iget-object p5, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {p5, p3, p4}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    if-eqz p3, :cond_0

    .line 718
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    .line 719
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->putVisible(Z)V

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->openContextMenu(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x102000a

    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ExpandableListView;

    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    .line 105
    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setHeaderDividersEnabled(Z)V

    .line 107
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/android/contacts/list/CustomContactListFilterActivity$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$1;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 122
    new-instance p1, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-direct {p1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    .line 124
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p1, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 126
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 745
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 748
    instance-of p2, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-nez p2, :cond_0

    return-void

    .line 750
    :cond_0
    check-cast p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 751
    iget-wide v0, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result p2

    .line 752
    iget-wide v0, p3, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    .line 758
    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {v1, p2, p3}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 761
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->getSyncMode(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)I

    move-result p3

    if-nez p3, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 765
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V

    goto :goto_0

    .line 767
    :cond_3
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/contacts/list/CustomContactListFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V

    :goto_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance p1, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;

    invoke-direct {p1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 933
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x0

    const v1, 0x7f090138

    const v2, 0x7f100189

    .line 935
    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 937
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ")V"
        }
    .end annotation

    .line 226
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    invoke-virtual {p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
            ">;)V"
        }
    .end annotation

    .line 231
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity;->mAdapter:Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;->setAccounts(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 944
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 946
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->confirmFinish()V

    return v1

    :cond_0
    const v2, 0x7f090138

    if-ne v0, v2, :cond_1

    .line 949
    invoke-direct {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity;->doSaveAction()V

    return v1

    .line 953
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 3

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V
    .locals 4

    const v0, 0x7f1000e2

    .line 814
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 817
    iget-object v0, p2, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUnsyncedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 818
    invoke-virtual {v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getShouldSync()Z

    move-result v2

    if-nez v2, :cond_0

    .line 819
    invoke-virtual {v1, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 820
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/list/CustomContactListFilterActivity$5;

    invoke-direct {v3, p0, v1, p3, p2}, Lcom/android/contacts/list/CustomContactListFilterActivity$5;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected showRemoveSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;I)V
    .locals 7

    .line 773
    invoke-virtual {p3, p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 775
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const v0, 0x7f1001a1

    .line 776
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v6, Lcom/android/contacts/list/CustomContactListFilterActivity$3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/CustomContactListFilterActivity$3;-><init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
