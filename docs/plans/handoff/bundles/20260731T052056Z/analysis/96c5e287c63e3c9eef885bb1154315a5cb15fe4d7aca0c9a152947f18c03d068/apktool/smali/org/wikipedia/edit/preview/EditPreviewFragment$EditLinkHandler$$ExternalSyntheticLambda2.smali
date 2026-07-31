.class public final synthetic Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

.field public final synthetic f$1:Lorg/wikipedia/page/PageTitle;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Lorg/wikipedia/page/PageTitle;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2;->f$1:Lorg/wikipedia/page/PageTitle;

    .line 7
    .line 8
    iput-wide p3, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    sget-object v0, Lorg/wikipedia/diff/ArticleEditDetailsActivity;->Companion:Lokio/ByteString$Companion;

    .line 2
    .line 3
    iget-object v10, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/edit/preview/EditPreviewFragment;

    .line 4
    .line 5
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v8, 0x0

    .line 10
    const/16 v9, 0x20

    .line 11
    .line 12
    iget-object v2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2;->f$1:Lorg/wikipedia/page/PageTitle;

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    iget-wide v6, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler$$ExternalSyntheticLambda2;->f$2:J

    .line 18
    .line 19
    invoke-static/range {v0 .. v9}, Lokio/ByteString$Companion;->newIntent$default(Lokio/ByteString$Companion;Landroid/content/Context;Lorg/wikipedia/page/PageTitle;IJJLorg/wikipedia/Constants$InvokeSource;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {v10, p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
