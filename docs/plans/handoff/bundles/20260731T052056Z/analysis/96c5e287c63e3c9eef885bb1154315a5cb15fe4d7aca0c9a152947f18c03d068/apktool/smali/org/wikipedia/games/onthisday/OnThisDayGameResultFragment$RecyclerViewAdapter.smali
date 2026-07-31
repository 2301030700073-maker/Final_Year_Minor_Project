.class public final Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final pages:Ljava/util/ArrayList;

.field public final synthetic this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;->pages:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;->pages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    check-cast p1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;->pages:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iput-object p0, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;->page:Lorg/wikipedia/dataclient/page/PageSummary;

    .line 15
    .line 16
    iget-object p2, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;->binding:Lokhttp3/Request$Builder;

    .line 17
    .line 18
    iget-object v0, p2, Lokhttp3/Request$Builder;->tags:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v1, p2, Lokhttp3/Request$Builder;->body:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 25
    .line 26
    sget-object v2, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p2, Lokhttp3/Request$Builder;->method:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 42
    .line 43
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 53
    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    move v2, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    move v2, v3

    .line 69
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p2, Lokhttp3/Request$Builder;->headers:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p2, Landroid/widget/ImageView;

    .line 75
    .line 76
    iget-object p1, p1, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 77
    .line 78
    new-instance v0, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;

    .line 79
    .line 80
    const/16 v2, 0xe

    .line 81
    .line 82
    invoke-direct {v0, v2, p0, p1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    const/16 p2, 0x1c

    .line 99
    .line 100
    invoke-static {v1, p0, p1, p2}, Lorg/wikipedia/views/ViewUtil;->loadImage$default(Landroid/widget/ImageView;Ljava/lang/String;Lorg/wikipedia/views/imageservice/ImageLoadListener;I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 1
    new-instance p2, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewAdapter;->this$0:Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0c030d

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const v0, 0x7f090344

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v4, v1

    .line 25
    check-cast v4, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    const v0, 0x7f090346

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move-object v5, v1

    .line 37
    check-cast v5, Landroid/widget/ImageView;

    .line 38
    .line 39
    if-eqz v5, :cond_0

    .line 40
    .line 41
    const v0, 0x7f090347

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/widget/LinearLayout;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    const v0, 0x7f090348

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v6, v1

    .line 60
    check-cast v6, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 61
    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    const v0, 0x7f090349

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move-object v7, v1

    .line 72
    check-cast v7, Landroid/widget/TextView;

    .line 73
    .line 74
    if-eqz v7, :cond_0

    .line 75
    .line 76
    new-instance v2, Lokhttp3/Request$Builder;

    .line 77
    .line 78
    move-object v3, p1

    .line 79
    check-cast v3, Lorg/wikipedia/views/WikiCardView;

    .line 80
    .line 81
    invoke-direct/range {v2 .. v7}, Lokhttp3/Request$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p0, v2}, Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment$RecyclerViewItemHolder;-><init>(Lorg/wikipedia/games/onthisday/OnThisDayGameResultFragment;Lokhttp3/Request$Builder;)V

    .line 85
    .line 86
    .line 87
    return-object p2

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string p1, "Missing required view with ID: "

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 p0, 0x0

    .line 106
    return-object p0
.end method
