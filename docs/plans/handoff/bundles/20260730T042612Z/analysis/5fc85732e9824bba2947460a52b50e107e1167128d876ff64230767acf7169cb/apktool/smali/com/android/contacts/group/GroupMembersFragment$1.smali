.class Lcom/android/contacts/group/GroupMembersFragment$1;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupMembersFragment;
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
.field final synthetic this$0:Lcom/android/contacts/group/GroupMembersFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupMembersFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$1;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 1

    .line 199
    new-instance p1, Lcom/android/contacts/GroupMetaDataLoader;

    iget-object p2, p0, Lcom/android/contacts/group/GroupMembersFragment$1;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p2}, Lcom/android/contacts/group/GroupMembersFragment;->access$100(Lcom/android/contacts/group/GroupMembersFragment;)Lcom/android/contacts/activities/PeopleActivity;

    move-result-object p2

    iget-object v0, p0, Lcom/android/contacts/group/GroupMembersFragment$1;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {v0}, Lcom/android/contacts/group/GroupMembersFragment;->access$200(Lcom/android/contacts/group/GroupMembersFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/contacts/GroupMetaDataLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object p1
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 0

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupMembersFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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

    if-eqz p2, :cond_1

    .line 204
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$1;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    new-instance v0, Lcom/android/contacts/group/GroupMetaData;

    iget-object v1, p0, Lcom/android/contacts/group/GroupMembersFragment$1;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/contacts/group/GroupMetaData;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-static {p1, v0}, Lcom/android/contacts/group/GroupMembersFragment;->access$402(Lcom/android/contacts/group/GroupMembersFragment;Lcom/android/contacts/group/GroupMetaData;)Lcom/android/contacts/group/GroupMetaData;

    .line 212
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$1;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$500(Lcom/android/contacts/group/GroupMembersFragment;)V

    return-void

    .line 205
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to load group metadata for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/contacts/group/GroupMembersFragment$1;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p2}, Lcom/android/contacts/group/GroupMembersFragment;->access$200(Lcom/android/contacts/group/GroupMembersFragment;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GroupMembers"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$1;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f10013b

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 208
    iget-object p1, p0, Lcom/android/contacts/group/GroupMembersFragment$1;->this$0:Lcom/android/contacts/group/GroupMembersFragment;

    invoke-static {p1}, Lcom/android/contacts/group/GroupMembersFragment;->access$300(Lcom/android/contacts/group/GroupMembersFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupMembersFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
