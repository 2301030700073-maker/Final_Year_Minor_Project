.class public final Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$Companion;


# instance fields
.field public listViewMode:Z

.field public final onSortClicked:Landroidx/room/RoomDatabase$closeBarrier$1;

.field public final onToggleListViewModeClicked:Landroidx/room/RoomDatabase$closeBarrier$1;

.field public showSortButton:Z

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->Companion:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/room/RoomDatabase$closeBarrier$1;Landroidx/room/RoomDatabase$closeBarrier$1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->title:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->onSortClicked:Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->onToggleListViewModeClicked:Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->showSortButton:Z

    .line 12
    .line 13
    iput-boolean p4, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->listViewMode:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 3

    .line 1
    check-cast p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerTitle:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 7
    .line 8
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->title:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerSort:Landroid/widget/ImageButton;

    .line 14
    .line 15
    new-instance v1, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerToggleViewMode:Landroid/widget/ImageButton;

    .line 25
    .line 26
    new-instance v1, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->updateIcons(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final bind(Landroidx/viewbinding/ViewBinding;ILjava/util/List;)V
    .locals 0

    .line 39
    check-cast p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->updateIcons(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;)V

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->bind(Landroidx/viewbinding/ViewBinding;)V

    return-void
.end method

.method public final getLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d0104

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p0, 0x7f0a01bc

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageButton;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const p0, 0x7f0a01bd

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
    const p0, 0x7f0a01be

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroid/widget/ImageButton;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    new-instance p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;

    .line 38
    .line 39
    check-cast p1, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageButton;)V

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

.method public final updateIcons(Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerToggleViewMode:Landroid/widget/ImageButton;

    .line 2
    .line 3
    iget-boolean v1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->listViewMode:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const v1, 0x7f0800e0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const v1, 0x7f08011e

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerSort:Landroid/widget/ImageButton;

    .line 18
    .line 19
    iget-boolean p0, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->showSortButton:Z

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/16 p0, 0x8

    .line 26
    .line 27
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
