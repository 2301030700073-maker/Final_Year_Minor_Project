.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->stack:Ljava/util/LinkedList;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 4
    .line 5
    iget-object v1, v0, Lorg/schabi/newpipe/BaseFragment;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 17
    .line 18
    iget-object v3, v3, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailVideoTitleView:Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->showLoading()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->initTabs()V

    .line 39
    .line 40
    .line 41
    iget-boolean p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda1;->f$2:Z

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 46
    .line 47
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-virtual {p0, v2, v2, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZZ)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->handleResult(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, v0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->binding:Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;

    .line 60
    .line 61
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/FragmentVideoDetailBinding;->detailContentRootHiding:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
