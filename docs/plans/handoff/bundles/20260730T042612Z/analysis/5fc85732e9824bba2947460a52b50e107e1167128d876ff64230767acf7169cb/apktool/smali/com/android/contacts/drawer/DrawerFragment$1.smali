.class Lcom/android/contacts/drawer/DrawerFragment$1;
.super Ljava/lang/Object;
.source "DrawerFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/drawer/DrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/drawer/DrawerFragment;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$1;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;"
        }
    .end annotation

    .line 94
    new-instance p1, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;

    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment$1;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/contacts/util/AccountFilterUtil$FilterLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/drawer/DrawerFragment$1;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p2, :cond_1

    .line 101
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$1;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$000(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/contacts/drawer/DrawerAdapter;->setAccounts(Ljava/util/List;)V

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$1;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$000(Lcom/android/contacts/drawer/DrawerFragment;)Lcom/android/contacts/drawer/DrawerAdapter;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/contacts/drawer/DrawerAdapter;->setAccounts(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
