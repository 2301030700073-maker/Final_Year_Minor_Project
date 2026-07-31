.class public final Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final articleTitleView:Landroid/widget/TextView;

.field public final editCountsView:Landroid/widget/TextView;

.field public final statsGraphView:Lorg/wikipedia/views/GraphView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/views/EditHistoryStatsView;Landroid/widget/TextView;Landroid/widget/TextView;Lorg/wikipedia/views/GraphView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;->articleTitleView:Landroid/widget/TextView;

    .line 5
    .line 6
    iput-object p3, p0, Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;->editCountsView:Landroid/widget/TextView;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/wikipedia/databinding/ViewEditHistoryStatsBinding;->statsGraphView:Lorg/wikipedia/views/GraphView;

    .line 9
    .line 10
    return-void
.end method
