.class final Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;
.super Lcom/android/contacts/detail/PhotoSelectionHandler;
.source "ContactEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EditorPhotoSelectionHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;
    }
.end annotation


# instance fields
.field private final mPhotoActionListener:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;

.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;I)V
    .locals 6

    .line 233
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    .line 239
    new-instance v5, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {v5}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/PhotoSelectionHandler;-><init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/RawContactDeltaList;)V

    .line 241
    new-instance p1, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;-><init>(Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;Lcom/android/contacts/activities/ContactEditorActivity$1;)V

    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->mPhotoActionListener:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;

    return-void
.end method


# virtual methods
.method public getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->mPhotoActionListener:Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler$EditorPhotoActionListener;

    return-object v0
.end method

.method protected startPhotoActivity(Landroid/content/Intent;ILandroid/net/Uri;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0, p3}, Lcom/android/contacts/activities/ContactEditorActivity;->access$102(Lcom/android/contacts/activities/ContactEditorActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 252
    iget-object p3, p0, Lcom/android/contacts/activities/ContactEditorActivity$EditorPhotoSelectionHandler;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {p3, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
