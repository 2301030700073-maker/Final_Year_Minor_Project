.class public final Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public final groupId:J

.field public final icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-wide v0, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->uid:J

    .line 8
    .line 9
    iget-object v2, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->name:Ljava/lang/String;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-wide v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

    .line 23
    .line 24
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 27
    .line 28
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 2

    .line 27
    check-cast p1, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->groupName:Lorg/schabi/newpipe/views/NewPipeTextView;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->groupIcon:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    invoke-virtual {p0}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public final bridge synthetic bind(Lcom/xwray/groupie/GroupieViewHolder;ILjava/util/List;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public final bind(Lcom/xwray/groupie/viewbinding/GroupieViewHolder;ILjava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p2, p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;->binding:Landroidx/viewbinding/ViewBinding;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->bind(Landroidx/viewbinding/ViewBinding;)V

    .line 10
    .line 11
    .line 12
    check-cast p2, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;

    .line 13
    .line 14
    iget-object p2, p2, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;->handle:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    new-instance p3, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    invoke-direct {p3, p0, p1, v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemBuilder$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    .line 24
    .line 25
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
    instance-of v1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

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
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 34
    .line 35
    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 36
    .line 37
    if-eq v1, v3, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 41
    .line 42
    iget-object p1, p1, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 43
    .line 44
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    return v0
.end method

.method public final getDragDirs()I
    .locals 0

    .line 1
    const/4 p0, 0x3

    .line 2
    return p0
.end method

.method public final getId()J
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

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
    const p0, 0x7f0d0050

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
    iget-wide v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

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
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/2addr v2, v0

    .line 25
    mul-int/2addr v2, v1

    .line 26
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    add-int/2addr p0, v2

    .line 33
    return p0
.end method

.method public final initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0a01b5

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const p0, 0x7f0a01b6

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
    const p0, 0x7f0a01bb

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    new-instance p0, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;

    .line 38
    .line 39
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 40
    .line 41
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/schabi/newpipe/databinding/FeedGroupReorderItemBinding;-><init>(Landroidx/cardview/widget/CardView;Landroidx/appcompat/widget/AppCompatImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "Missing required view with ID: "

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FeedGroupReorderItem(groupId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->groupId:J

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
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->name:Ljava/lang/String;

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
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", dragCallback="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->dragCallback:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
