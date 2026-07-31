.class public final Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final rootView:Landroid/widget/FrameLayout;

.field public final selectedHighlight:Landroid/widget/FrameLayout;

.field public final thumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final titleView:Lorg/schabi/newpipe/views/NewPipeTextView;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/imageview/ShapeableImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->selectedHighlight:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->thumbnailView:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->titleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 11
    .line 12
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;
    .locals 4

    .line 1
    const v0, 0x7f0a0364

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a03f3

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const v0, 0x7f0a03fb

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    new-instance v0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;

    .line 35
    .line 36
    check-cast p0, Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-direct {v0, p0, v1, v2, v3}, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/imageview/ShapeableImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V

    .line 39
    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v0, "Missing required view with ID: "

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PickerSubscriptionItemBinding;->rootView:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method
