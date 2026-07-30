.class Lcom/android/contacts/SimImportFragment$2;
.super Ljava/lang/Object;
.source "SimImportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 151
    iput-object p1, p0, Lcom/android/contacts/SimImportFragment$2;->this$0:Lcom/android/contacts/SimImportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment$2;->this$0:Lcom/android/contacts/SimImportFragment;

    invoke-static {p1}, Lcom/android/contacts/SimImportFragment;->access$400(Lcom/android/contacts/SimImportFragment;)V

    .line 156
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment$2;->this$0:Lcom/android/contacts/SimImportFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 157
    iget-object p1, p0, Lcom/android/contacts/SimImportFragment$2;->this$0:Lcom/android/contacts/SimImportFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
