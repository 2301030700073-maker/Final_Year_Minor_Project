.class final Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;
.super Ljava/lang/Object;
.source "ContactSelectionActivity.java"

# interfaces
.implements Lcom/android/contacts/list/OnContactPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0

    .line 508
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateNewContactAction()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/ContactSelectionActivity;->access$800(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/contacts/editor/EditorIntents;->createEditContactIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/android/contacts/util/MaterialColorMapUtils$MaterialPalette;J)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->startActivityAndForwardResult(Landroid/content/Intent;)V

    return-void
.end method

.method public onPickContactAction(Landroid/net/Uri;)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/net/Uri;)V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/contacts/activities/ContactSelectionActivity$ContactPickerActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity;->returnPickerResult(Landroid/content/Intent;)V

    return-void
.end method
