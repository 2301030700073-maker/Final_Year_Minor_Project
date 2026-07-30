.class Lcom/android/contacts/interactions/ExportDialogFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "ExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/contacts/interactions/ExportDialogFragment$AdapterEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/contacts/interactions/ExportDialogFragment$1;->this$0:Lcom/android/contacts/interactions/ExportDialogFragment;

    iput-object p4, p0, Lcom/android/contacts/interactions/ExportDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p2, p0, Lcom/android/contacts/interactions/ExportDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c009f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    const p3, 0x7f090178

    .line 103
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0901a0

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/contacts/interactions/ExportDialogFragment$AdapterEntry;

    iget-object p1, p1, Lcom/android/contacts/interactions/ExportDialogFragment$AdapterEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
