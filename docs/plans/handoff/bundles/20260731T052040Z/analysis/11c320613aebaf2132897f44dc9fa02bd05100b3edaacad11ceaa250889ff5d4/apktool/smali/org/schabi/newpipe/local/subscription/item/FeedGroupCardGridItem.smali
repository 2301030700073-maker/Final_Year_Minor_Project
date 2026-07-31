.class public final Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final groupId:J

.field public final icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-wide p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->groupId:J

    .line 11
    .line 12
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->name:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedGroupCardGridItemBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/FeedGroupCardGridItemBinding;->title:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->name:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FeedGroupCardGridItemBinding;->icon:Landroid/widget/ImageView;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->groupId:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->groupId:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->name:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->name:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 34
    .line 35
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 36
    .line 37
    if-eq p0, p1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    return v0
.end method

.method public final getId()J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->groupId:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/xwray/groupie/Item;->id:J

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    return-wide v2
.end method

.method public final getLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d004e

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->groupId:J

    .line 4
    .line 5
    ushr-long v3, v1, v0

    .line 6
    .line 7
    xor-long/2addr v1, v3

    .line 8
    long-to-int v0, v1

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v0

    .line 25
    return p0
.end method

.method public final initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0a01ca

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const p0, 0x7f0a03f7

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    new-instance p0, Lorg/schabi/newpipe/databinding/FeedGroupCardGridItemBinding;

    .line 27
    .line 28
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 29
    .line 30
    invoke-direct {p0, p1, v0, v1}, Lorg/schabi/newpipe/databinding/FeedGroupCardGridItemBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "Missing required view with ID: "

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FeedGroupCardGridItem(groupId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->groupId:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->name:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", icon="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupCardGridItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method
