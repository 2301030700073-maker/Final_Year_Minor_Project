.class Lcom/android/contacts/activities/ContactEditorActivity$1;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/editor/ContactEditorFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onContactSplit(Landroid/net/Uri;)V
    .locals 2

    .line 293
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 294
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    return-void
.end method

.method public onEditOtherRawContactRequested(Landroid/net/Uri;JLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "J",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/contacts/editor/EditorIntents;->createEditOtherRawContactIntent(Landroid/content/Context;Landroid/net/Uri;JLjava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    .line 307
    iget-object p2, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {p2, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 309
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onReverted()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSaveFinished(Landroid/content/Intent;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$400(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-static {v0, p1}, Lcom/android/contacts/util/ImplicitIntentsUtil;->startActivityInApp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 288
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
