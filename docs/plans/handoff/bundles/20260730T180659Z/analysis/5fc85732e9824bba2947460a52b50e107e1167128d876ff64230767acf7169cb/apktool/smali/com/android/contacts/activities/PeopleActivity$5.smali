.class Lcom/android/contacts/activities/PeopleActivity$5;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$5;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 542
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$5;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$5;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    .line 543
    invoke-static {v1}, Lcom/android/contacts/activities/PeopleActivity;->access$200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 542
    invoke-static {p1, v0, v1}, Lcom/android/contacts/util/AccountFilterUtil;->startEditorIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method
