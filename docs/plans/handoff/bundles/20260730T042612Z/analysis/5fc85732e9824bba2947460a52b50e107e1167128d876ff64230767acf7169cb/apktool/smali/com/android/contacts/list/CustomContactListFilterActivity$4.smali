.class Lcom/android/contacts/list/CustomContactListFilterActivity$4;
.super Ljava/lang/Object;
.source "CustomContactListFilterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;->handleRemoveSync(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

.field final synthetic val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

.field final synthetic val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/CustomContactListFilterActivity;Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    iput-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iput-object p3, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 800
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object p2, p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 801
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$account:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object p2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->val$child:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->setShouldSync(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Z)V

    .line 802
    iget-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$4;->this$0:Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-static {p1}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$500(Lcom/android/contacts/list/CustomContactListFilterActivity;)Lcom/android/contacts/list/CustomContactListFilterActivity$DisplayAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
