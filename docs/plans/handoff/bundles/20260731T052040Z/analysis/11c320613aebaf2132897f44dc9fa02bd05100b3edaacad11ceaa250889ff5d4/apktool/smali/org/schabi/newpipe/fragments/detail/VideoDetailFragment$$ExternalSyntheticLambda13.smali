.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOffsetChanged(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    .line 2
    .line 3
    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastAppBarVerticalOffset:I

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->lastAppBarVerticalOffset:I

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->updateTabLayoutVisibility()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
