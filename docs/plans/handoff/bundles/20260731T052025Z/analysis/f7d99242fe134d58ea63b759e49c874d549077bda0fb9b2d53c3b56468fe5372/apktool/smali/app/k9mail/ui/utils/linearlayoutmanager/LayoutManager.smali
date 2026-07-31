.class public abstract Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mHorizontalBoundCheck:Lcom/beetstra/jutf7/Base64Util;

.field public final mVerticalBoundCheck:Lcom/beetstra/jutf7/Base64Util;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;-><init>(Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p0, v2}, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;-><init>(Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;I)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/beetstra/jutf7/Base64Util;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lcom/beetstra/jutf7/Base64Util;-><init>(Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;->mHorizontalBoundCheck:Lcom/beetstra/jutf7/Base64Util;

    .line 22
    .line 23
    new-instance v0, Lcom/beetstra/jutf7/Base64Util;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lcom/beetstra/jutf7/Base64Util;-><init>(Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager$1;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lapp/k9mail/ui/utils/linearlayoutmanager/LayoutManager;->mVerticalBoundCheck:Lcom/beetstra/jutf7/Base64Util;

    .line 29
    .line 30
    return-void
.end method
