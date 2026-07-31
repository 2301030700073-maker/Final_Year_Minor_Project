.class public final Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final headerSort:Landroid/widget/ImageButton;

.field public final headerTitle:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final headerToggleViewMode:Landroid/widget/ImageButton;

.field public final rootView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lorg/schabi/newpipe/views/NewPipeTextView;Landroid/widget/ImageButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerSort:Landroid/widget/ImageButton;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerTitle:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->headerToggleViewMode:Landroid/widget/ImageButton;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/SubscriptionGroupsHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method
