.class public final Lorg/schabi/newpipe/local/subscription/item/Header;
.super Lcom/xwray/groupie/viewbinding/BindableItem;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xwray/groupie/Item;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/Header;->title:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;->rootView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/Header;->title:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final getLayout()I
    .locals 0

    .line 1
    const p0, 0x7f0d0105

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
    new-instance p0, Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;

    .line 5
    .line 6
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;-><init>(Lorg/schabi/newpipe/views/NewPipeTextView;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
