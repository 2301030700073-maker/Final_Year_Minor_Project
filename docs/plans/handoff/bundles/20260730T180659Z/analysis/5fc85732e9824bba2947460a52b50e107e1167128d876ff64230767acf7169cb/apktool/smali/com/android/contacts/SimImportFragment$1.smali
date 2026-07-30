.class Lcom/android/contacts/SimImportFragment$1;
.super Ljava/lang/Object;
.source "SimImportFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/AccountHeaderPresenter$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/SimImportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/SimImportFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/SimImportFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/contacts/SimImportFragment$1;->this$0:Lcom/android/contacts/SimImportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/android/contacts/editor/AccountHeaderPresenter;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment$1;->this$0:Lcom/android/contacts/SimImportFragment;

    invoke-static {v0}, Lcom/android/contacts/SimImportFragment;->access$000(Lcom/android/contacts/SimImportFragment;)V

    .line 138
    iget-object v0, p0, Lcom/android/contacts/SimImportFragment$1;->this$0:Lcom/android/contacts/SimImportFragment;

    invoke-static {v0}, Lcom/android/contacts/SimImportFragment;->access$100(Lcom/android/contacts/SimImportFragment;)Lcom/android/contacts/SimImportFragment$SimContactAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/editor/AccountHeaderPresenter;->getCurrentAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/contacts/SimImportFragment$SimContactAdapter;->setAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 139
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment$1;->this$0:Lcom/android/contacts/SimImportFragment;

    invoke-static {p1}, Lcom/android/contacts/SimImportFragment;->access$200(Lcom/android/contacts/SimImportFragment;)V

    .line 140
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment$1;->this$0:Lcom/android/contacts/SimImportFragment;

    invoke-static {p1}, Lcom/android/contacts/SimImportFragment;->access$300(Lcom/android/contacts/SimImportFragment;)V

    return-void
.end method
