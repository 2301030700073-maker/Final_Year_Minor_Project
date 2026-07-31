.class public final Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final rootView:Lorg/schabi/newpipe/views/NewPipeTextView;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;->rootView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/SubscriptionHeaderBinding;->rootView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 2
    .line 3
    return-object p0
.end method
