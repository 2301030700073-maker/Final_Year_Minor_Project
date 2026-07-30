.class Lcom/android/contacts/list/CustomContactListFilterActivity$5;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;->showAddSync(Landroid/view/ContextMenu;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

.field final synthetic val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

.field final synthetic val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

.field final synthetic val$syncMode:I


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    iput-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    iput p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->val$syncMode:I

    iput-object p4, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 823
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-static {p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->access$600(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->val$syncMode:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 824
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Z)V

    goto :goto_0

    .line 826
    :cond_0
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p1, v1, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 828
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$5;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-static {p1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$500(Lcom/android/contacts/list/CustomContactListFilterActivity;)Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return v0
.end method
