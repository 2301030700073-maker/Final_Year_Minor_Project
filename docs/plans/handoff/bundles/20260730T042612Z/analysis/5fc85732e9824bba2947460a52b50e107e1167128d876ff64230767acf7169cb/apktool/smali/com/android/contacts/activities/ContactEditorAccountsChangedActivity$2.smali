.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;
.super Ljava/lang/Object;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    invoke-static {}, Lcom/android/contacts/util/ImplicitIntentsUtil;->getIntentForAddingGoogleAccount()Landroid/content/Intent;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
