.class Lcom/android/contacts/editor/ContactEditorFragment$3;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
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
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 2

    .line 442
    new-instance p1, Lcom/android/contacts/GroupMetaDataLoader;

    iget-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object p2, p2, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "account_type NOT NULL AND account_name NOT NULL AND deleted=0"

    invoke-direct {p1, p2, v0, v1}, Lcom/android/contacts/GroupMetaDataLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 0

    .line 438
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$3;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object p1

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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

    .line 448
    iget-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$3;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object p2, p1, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    .line 449
    invoke-virtual {p1}, Lcom/android/contacts/editor/ContactEditorFragment;->setGroupMetaData()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 438
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$3;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
