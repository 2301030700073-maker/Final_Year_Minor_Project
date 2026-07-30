.class Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DisplayOptionsPreferenceFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;
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
.field final synthetic this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$000(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object p1

    .line 152
    sget-object p2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 153
    iget-object p2, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {p2}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$100(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 0

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

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

    .line 159
    iget-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-static {p1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$200(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->this$0:Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-static {p1}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;->access$200(Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;)Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$ProfileListener;->onProfileLoaded(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment$1;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
