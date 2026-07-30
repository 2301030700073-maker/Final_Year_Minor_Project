.class Lcom/android/contacts/activities/PeopleActivity$2;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
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

    .line 245
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$2;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactListFilterChanged()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$2;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$200(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$2;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->access$300(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/list/ContactListFilter;)V

    .line 250
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$2;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v1, v0}, Lcom/android/contacts/activities/PeopleActivity;->access$400(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/list/ContactListFilter;)V

    return-void
.end method
