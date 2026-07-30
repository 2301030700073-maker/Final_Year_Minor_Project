.class Lcom/android/contacts/activities/PeopleActivity$6;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity;->onGroupDeleted(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Landroid/content/Intent;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$6;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iput-object p2, p0, Lcom/android/contacts/activities/PeopleActivity$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 923
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$6;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$6;->val$intent:Landroid/content/Intent;

    .line 924
    invoke-static {p1, v0}, Lcom/android/contacts/ContactSaveService;->createUndoIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 923
    invoke-static {p1, v0}, Lcom/android/contacts/ContactSaveService;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
