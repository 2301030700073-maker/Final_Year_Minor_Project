.class final Lcom/android/contacts/activities/ContactSelectionActivity$JoinContactActionListener;
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
    name = "JoinContactActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$JoinContactActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/ContactSelectionActivity;Lcom/android/contacts/activities/ContactSelectionActivity$1;)V
    .locals 0

    .line 556
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactSelectionActivity$JoinContactActionListener;-><init>(Lcom/android/contacts/activities/ContactSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateNewContactAction()V
    .locals 0

    return-void
.end method

.method public onEditContactAction(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onPickContactAction(Landroid/net/Uri;)V
    .locals 2

    .line 559
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 560
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$JoinContactActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 561
    iget-object p1, p0, Lcom/android/contacts/activities/ContactSelectionActivity$JoinContactActionListener;->this$0:Lcom/android/contacts/activities/ContactSelectionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
