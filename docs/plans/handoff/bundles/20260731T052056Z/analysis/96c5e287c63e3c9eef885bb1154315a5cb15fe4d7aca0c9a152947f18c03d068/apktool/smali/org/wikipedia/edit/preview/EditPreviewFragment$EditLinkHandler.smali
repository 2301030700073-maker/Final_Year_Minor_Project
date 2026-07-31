.class public final Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;
.super Lorg/wikipedia/page/LinkHandler;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lorg/wikipedia/page/LinkHandler;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 13
    .line 14
    return-object p0
.end method

.method public final onDiffLinkClicked(Lorg/wikipedia/page/PageTitle;J)V
    .locals 2

    .line 1
    new-instance v0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Lorg/wikipedia/page/PageTitle;J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->showLeavingEditDialog(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onExternalLinkClicked(Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->showLeavingEditDialog(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 6
    .line 7
    invoke-direct {v0, v2, p0, p1, v1}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->showLeavingEditDialog(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final showLeavingEditDialog(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;->this$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    const p0, 0x7f12014c

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)V

    .line 17
    .line 18
    .line 19
    new-instance p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-direct {p0, v1, p1}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda28;-><init>(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f12014d

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    const p0, 0x7f12014e

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 39
    .line 40
    .line 41
    return-void
.end method
