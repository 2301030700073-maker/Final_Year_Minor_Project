.class public final Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final activity:Landroidx/appcompat/app/AppCompatActivity;

.field public final image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

.field public final imageContainer:Landroid/widget/FrameLayout;

.field public selectedPage:Lorg/wikipedia/dataclient/page/PageSummary;

.field public final wiki:Lorg/wikipedia/dataclient/WikiSite;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Lorg/wikipedia/dataclient/WikiSite;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    new-array p3, p1, [Landroid/view/View;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    aput-object p2, p3, v0

    .line 16
    .line 17
    aget-object p3, p3, v0

    .line 18
    .line 19
    new-instance v0, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 25
    .line 26
    .line 27
    new-instance p3, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/16 v0, 0xb

    .line 30
    .line 31
    invoke-direct {p3, v0, p0}, Lorg/wikipedia/diff/DiffLineView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    new-instance p3, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;

    .line 38
    .line 39
    invoke-direct {p3, p1, p0}, Lorg/wikipedia/views/PageItemView$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 43
    .line 44
    .line 45
    const p1, 0x7f0902e2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    check-cast p1, Landroid/widget/FrameLayout;

    .line 56
    .line 57
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->imageContainer:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    const p1, 0x7f0902b9

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    check-cast p1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 70
    .line 71
    iput-object p1, p0, Lorg/wikipedia/feed/onthisday/OnThisDayPagesViewHolder;->image:Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 72
    .line 73
    return-void
.end method
