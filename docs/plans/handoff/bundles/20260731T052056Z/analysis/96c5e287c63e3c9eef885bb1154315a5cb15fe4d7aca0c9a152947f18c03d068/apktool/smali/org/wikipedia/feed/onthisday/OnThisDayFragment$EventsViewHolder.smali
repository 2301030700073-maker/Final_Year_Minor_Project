.class public final Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final otdEventLayout:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public final synthetic this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

.field public final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/onthisday/OnThisDayFragment;Lretrofit2/OkHttpCall$1;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->this$0:Lorg/wikipedia/feed/onthisday/OnThisDayFragment;

    .line 5
    .line 6
    iget-object p1, p2, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 14
    .line 15
    iget-object p1, p2, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 18
    .line 19
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayFragment$EventsViewHolder;->otdEventLayout:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 20
    .line 21
    iget-object p0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lorg/wikipedia/views/AppTextView;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
