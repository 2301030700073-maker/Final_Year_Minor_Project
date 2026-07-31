.class public final Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final icon1:Landroidx/appcompat/widget/AppCompatImageView;

.field public final icon2:Landroidx/appcompat/widget/AppCompatImageView;

.field public final icon3:Landroidx/appcompat/widget/AppCompatImageView;

.field public final rootView:Lorg/schabi/newpipe/views/player/SecondsView;

.field public final triangleContainer:Landroid/widget/LinearLayout;

.field public final tvSeconds:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/views/player/SecondsView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->rootView:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon1:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon2:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->icon3:Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->triangleContainer:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->tvSeconds:Landroid/widget/TextView;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/PlayerFastSeekSecondsViewBinding;->rootView:Lorg/schabi/newpipe/views/player/SecondsView;

    .line 2
    .line 3
    return-object p0
.end method
