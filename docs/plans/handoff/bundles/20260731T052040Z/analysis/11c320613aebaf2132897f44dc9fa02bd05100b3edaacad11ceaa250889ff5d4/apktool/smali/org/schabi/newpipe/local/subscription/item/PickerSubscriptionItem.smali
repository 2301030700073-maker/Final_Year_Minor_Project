.class public final Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public isSelected:Z

.field public final subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 5

    .line 1
    check-cast p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->thumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 9
    .line 10
    iget-object v2, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->avatarUrl:Ljava/lang/String;

    .line 11
    .line 12
    const v3, 0x7f0801b6

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-static {v0, v2, v3, v4}, Lokhttp3/Cookie$Companion;->loadImageDefault(Landroid/widget/ImageView;Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->titleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 20
    .line 21
    iget-object v1, v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->selectedHighlight:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    iget-boolean p0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    .line 29
    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/16 p0, 0x8

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

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
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-boolean p0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    .line 25
    .line 26
    iget-boolean p1, p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    .line 27
    .line 28
    if-eq p0, p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 2
    .line 3
    iget-wide v0, p0, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->uid:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final getLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d00d6

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final getSpanSize(I)I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean p0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/16 p0, 0x4cf

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 p0, 0x4d5

    .line 17
    .line 18
    :goto_0
    add-int/2addr v0, p0

    .line 19
    return v0
.end method

.method public final initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->isSelected:Z

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "PickerSubscriptionItem(subscriptionEntity="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->subscriptionEntity:Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, ", isSelected="

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")"

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final unbind(Lcom/xwray/groupie/GroupieViewHolder;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/xwray/groupie/Item;->unbind(Lcom/xwray/groupie/GroupieViewHolder;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p1, Lcom/xwray/groupie/viewbinding/GroupieViewHolder;->binding:Landroidx/viewbinding/ViewBinding;

    .line 10
    .line 11
    check-cast p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->selectedHighlight:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    const/16 p1, 0x8

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    const/high16 p1, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
