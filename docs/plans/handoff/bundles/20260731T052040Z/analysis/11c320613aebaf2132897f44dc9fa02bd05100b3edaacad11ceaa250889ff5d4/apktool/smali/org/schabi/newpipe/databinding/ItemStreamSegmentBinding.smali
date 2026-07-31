.class public final Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final previewImage:Landroid/widget/ImageView;

.field public final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textViewChannel:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final textViewStartSeconds:Lorg/schabi/newpipe/views/NewPipeTextView;

.field public final textViewTitle:Lorg/schabi/newpipe/views/NewPipeTextView;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;Lorg/schabi/newpipe/views/NewPipeTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->previewImage:Landroid/widget/ImageView;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->textViewChannel:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->textViewStartSeconds:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->textViewTitle:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ItemStreamSegmentBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object p0
.end method
