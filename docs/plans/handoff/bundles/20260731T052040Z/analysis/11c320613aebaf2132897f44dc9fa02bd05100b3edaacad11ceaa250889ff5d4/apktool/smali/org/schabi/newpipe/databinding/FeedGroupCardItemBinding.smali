.class public final Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field public final rootView:Landroidx/cardview/widget/CardView;

.field public final title:Lorg/schabi/newpipe/views/NewPipeTextView;


# direct methods
.method public constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->icon:Landroid/widget/ImageView;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->title:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FeedGroupCardItemBinding;->rootView:Landroidx/cardview/widget/CardView;

    .line 2
    .line 3
    return-object p0
.end method
