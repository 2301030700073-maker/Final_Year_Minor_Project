.class Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$5;
.super Ljava/lang/Object;
.source "ContactEditorAccountsChangedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->updateDisplayedAccounts(Ljava/util/List;)V
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

    .line 208
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$5;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$5;->this$0:Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
