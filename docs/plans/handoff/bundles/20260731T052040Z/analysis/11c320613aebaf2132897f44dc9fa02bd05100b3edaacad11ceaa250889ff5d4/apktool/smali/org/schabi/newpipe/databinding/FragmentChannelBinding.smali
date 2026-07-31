.class public final Lorg/schabi/newpipe/databinding/FragmentChannelBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public channelAvatarView:Ljava/lang/Object;

.field public channelBannerImage:Ljava/lang/Object;

.field public channelKaomoji:Ljava/lang/Object;

.field public channelSubscribeButton:Ljava/lang/Object;

.field public channelSubscriberView:Ljava/lang/Object;

.field public channelTitleView:Ljava/lang/Object;

.field public errorContentNotSupported:Ljava/lang/Object;

.field public rootView:Ljava/lang/Object;

.field public subChannelAvatarView:Ljava/lang/Object;

.field public subChannelTitleView:Ljava/lang/Object;

.field public tabLayout:Ljava/lang/Object;

.field public viewPager:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 5
    .line 6
    const/16 v1, 0xd

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/jsoup/Jsoup;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->rootView:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lorg/jsoup/Jsoup;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelAvatarView:Ljava/lang/Object;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lorg/jsoup/Jsoup;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v0, Lcom/google/android/material/shape/RoundedCornerTreatment;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lorg/jsoup/Jsoup;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Ljava/lang/Object;

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelKaomoji:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Ljava/lang/Object;

    .line 48
    .line 49
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelTitleView:Ljava/lang/Object;

    .line 55
    .line 56
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->errorContentNotSupported:Ljava/lang/Object;

    .line 62
    .line 63
    new-instance v0, Lio/noties/markwon/BlockHandlerDef;

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-direct {v0, v1}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelTitleView:Ljava/lang/Object;

    .line 70
    .line 71
    new-instance v0, Lio/noties/markwon/BlockHandlerDef;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 77
    .line 78
    new-instance v0, Lio/noties/markwon/BlockHandlerDef;

    .line 79
    .line 80
    invoke-direct {v0, v1}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Ljava/lang/Object;

    .line 84
    .line 85
    new-instance v0, Lio/noties/markwon/BlockHandlerDef;

    .line 86
    .line 87
    invoke-direct {v0, v1}, Lio/noties/markwon/BlockHandlerDef;-><init>(I)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->viewPager:Ljava/lang/Object;

    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->rootView:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lorg/jsoup/Jsoup;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lorg/jsoup/Jsoup;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelAvatarView:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lorg/jsoup/Jsoup;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lorg/jsoup/Jsoup;

    .line 17
    .line 18
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelAvatarView:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lorg/jsoup/Jsoup;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lorg/jsoup/Jsoup;

    .line 23
    .line 24
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelBannerImage:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lorg/jsoup/Jsoup;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lorg/jsoup/Jsoup;

    .line 29
    .line 30
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelKaomoji:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lcom/google/android/material/shape/CornerSize;

    .line 33
    .line 34
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 35
    .line 36
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscriberView:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/google/android/material/shape/CornerSize;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 41
    .line 42
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelTitleView:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lcom/google/android/material/shape/CornerSize;

    .line 45
    .line 46
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 47
    .line 48
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->errorContentNotSupported:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lcom/google/android/material/shape/CornerSize;

    .line 51
    .line 52
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    .line 53
    .line 54
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->subChannelTitleView:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lio/noties/markwon/BlockHandlerDef;

    .line 57
    .line 58
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lio/noties/markwon/BlockHandlerDef;

    .line 59
    .line 60
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->channelSubscribeButton:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lio/noties/markwon/BlockHandlerDef;

    .line 63
    .line 64
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lio/noties/markwon/BlockHandlerDef;

    .line 65
    .line 66
    iget-object v1, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->tabLayout:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lio/noties/markwon/BlockHandlerDef;

    .line 69
    .line 70
    iput-object v1, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lio/noties/markwon/BlockHandlerDef;

    .line 71
    .line 72
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->viewPager:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lio/noties/markwon/BlockHandlerDef;

    .line 75
    .line 76
    iput-object p0, v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lio/noties/markwon/BlockHandlerDef;

    .line 77
    .line 78
    return-object v0
.end method

.method public getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentChannelBinding;->rootView:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 4
    .line 5
    return-object p0
.end method
