.class Lcom/android/contacts/list/JoinContactListFragment$1;
.super Ljava/lang/Object;
.source "JoinContactListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/JoinContactListFragment;
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
.field final synthetic this$0:Lcom/android/contacts/list/JoinContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/JoinContactListFragment;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 p2, -0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 62
    new-instance p1, Lcom/android/contacts/list/JoinContactLoader;

    iget-object p2, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/contacts/list/JoinContactLoader;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object p2, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {p2}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object p2

    check-cast p2, Lcom/android/contacts/list/JoinContactListAdapter;

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    .line 65
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    :cond_0
    return-object p1

    .line 70
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No loader for ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 57
    :cond_2
    new-instance p1, Landroid/content/CursorLoader;

    iget-object p2, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object p2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    .line 58
    invoke-static {v0}, Lcom/android/contacts/list/JoinContactListFragment;->access$000(Lcom/android/contacts/list/JoinContactListFragment;)J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string p2, "display_name"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    .line 75
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result p1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 84
    move-object p1, p2

    check-cast p1, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;

    iget-object p1, p1, Lcom/android/contacts/list/JoinContactLoader$JoinContactLoaderResult;->suggestionCursor:Landroid/database/Cursor;

    .line 86
    iget-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-static {v0, p1, p2}, Lcom/android/contacts/list/JoinContactListFragment;->access$200(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 87
    iget-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactEntryListFragment;->maybeLogListEvent()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 77
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment$1;->this$0:Lcom/android/contacts/list/JoinContactListFragment;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/contacts/list/JoinContactListFragment;->access$100(Lcom/android/contacts/list/JoinContactListFragment;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 50
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/JoinContactListFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
