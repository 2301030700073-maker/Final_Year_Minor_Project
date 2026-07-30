.class Lcom/android/contacts/activities/ContactEditorSpringBoardActivity$1;
.super Ljava/lang/Object;
.source "ContactEditorSpringBoardActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;

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
            "Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance p1, Lcom/android/contacts/editor/PickRawContactLoader;

    iget-object p2, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;

    invoke-static {p2}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->access$000(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/contacts/editor/PickRawContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object p1
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;",
            ">;",
            "Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;

    invoke-static {p1}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->access$100(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;)V

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;

    invoke-static {p1, p2}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->access$202(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    .line 74
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;

    invoke-static {p1}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;->access$300(Lcom/android/contacts/activities/ContactEditorSpringBoardActivity;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p2, Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/activities/ContactEditorSpringBoardActivity$1;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/contacts/editor/PickRawContactLoader$RawContactsMetadata;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
