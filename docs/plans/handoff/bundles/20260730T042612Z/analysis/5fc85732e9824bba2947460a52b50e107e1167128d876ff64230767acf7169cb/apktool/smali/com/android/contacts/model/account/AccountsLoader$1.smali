.class Lcom/android/contacts/model/account/AccountsLoader$1;
.super Ljava/lang/Object;
.source "AccountsLoader.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/model/account/AccountsLoader;->loadAccounts(Landroid/content/Context;Landroid/app/LoaderManager;ILcom/google/common/base/Predicate;Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;)V
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
        "Lcom/android/contacts/model/account/AccountInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filter:Lcom/google/common/base/Predicate;

.field final synthetic val$listener:Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/common/base/Predicate;Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/contacts/model/account/AccountsLoader$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/contacts/model/account/AccountsLoader$1;->val$filter:Lcom/google/common/base/Predicate;

    iput-object p3, p0, Lcom/android/contacts/model/account/AccountsLoader$1;->val$listener:Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;"
        }
    .end annotation

    .line 97
    new-instance p1, Lcom/android/contacts/model/account/AccountsLoader;

    iget-object p2, p0, Lcom/android/contacts/model/account/AccountsLoader$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/contacts/model/account/AccountsLoader$1;->val$filter:Lcom/google/common/base/Predicate;

    invoke-direct {p1, p2, v0}, Lcom/android/contacts/model/account/AccountsLoader;-><init>(Landroid/content/Context;Lcom/google/common/base/Predicate;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/account/AccountsLoader$1;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 103
    iget-object p1, p0, Lcom/android/contacts/model/account/AccountsLoader$1;->val$listener:Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;

    invoke-interface {p1, p2}, Lcom/android/contacts/model/account/AccountsLoader$AccountsListener;->onAccountsLoaded(Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
