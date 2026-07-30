.class Lcom/android/contacts/drawer/DrawerFragment$2;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/drawer/DrawerFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$2;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 0

    .line 117
    new-instance p1, Lcom/android/contacts/GroupListLoader;

    iget-object p2, p0, Lcom/android/contacts/drawer/DrawerFragment$2;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/contacts/GroupListLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/drawer/DrawerFragment$2;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object p1

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$2;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$100(Lcom/android/contacts/drawer/DrawerFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, -0x1

    .line 131
    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 p1, 0x0

    .line 132
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 133
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/contacts/drawer/DrawerFragment$2;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/android/contacts/drawer/DrawerFragment;->access$100(Lcom/android/contacts/drawer/DrawerFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/android/contacts/group/GroupUtil;->getGroupListItem(Landroid/database/Cursor;I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$2;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/contacts/drawer/DrawerFragment;->access$202(Lcom/android/contacts/drawer/DrawerFragment;Z)Z

    .line 138
    iget-object p1, p0, Lcom/android/contacts/drawer/DrawerFragment$2;->this$0:Lcom/android/contacts/drawer/DrawerFragment;

    invoke-static {p1}, Lcom/android/contacts/drawer/DrawerFragment;->access$300(Lcom/android/contacts/drawer/DrawerFragment;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/drawer/DrawerFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
