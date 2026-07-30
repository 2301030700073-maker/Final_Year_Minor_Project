.class final Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;
.super Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.source "ContactEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditorPhotoActionListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;Lcom/android/contacts/activities/ContactEditorActivity$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;-><init>(Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoUri()Landroid/net/Uri;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onPhotoSelected(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->access$102(Lcom/android/contacts/activities/ContactEditorActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 213
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->updatePhoto(Landroid/net/Uri;)V

    .line 218
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    iget-object p1, p1, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$202(Lcom/android/contacts/activities/ContactEditorActivity;Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;)Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    return-void
.end method

.method public onPhotoSelectionDismissed()V
    .locals 0

    return-void
.end method

.method public onRemovePictureChosen()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$000(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->removePhoto()V

    return-void
.end method
