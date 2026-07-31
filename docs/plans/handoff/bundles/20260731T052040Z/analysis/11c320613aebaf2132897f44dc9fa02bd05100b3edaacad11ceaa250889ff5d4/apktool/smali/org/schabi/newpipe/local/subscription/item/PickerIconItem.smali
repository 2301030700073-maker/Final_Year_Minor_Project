.class public final Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field public final iconRes:I


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V
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
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->icon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->iconRes:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;->iconView:Landroid/widget/ImageView;

    .line 7
    .line 8
    iget p0, p0, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->iconRes:I

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final getLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d00d5

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final initializeViewBinding(Landroid/view/View;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroid/widget/ImageView;

    .line 5
    .line 6
    new-instance p0, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;

    .line 7
    .line 8
    invoke-direct {p0, p1, p1}, Lorg/schabi/newpipe/databinding/PickerIconItemBinding;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
