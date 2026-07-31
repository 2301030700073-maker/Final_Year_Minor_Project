.class public final Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic this$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

.field public final synthetic val$image:Lorg/schabi/newpipe/extractor/Image;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Lorg/schabi/newpipe/extractor/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;->this$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;->val$image:Lorg/schabi/newpipe/extractor/Image;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;->this$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$1;->val$image:Lorg/schabi/newpipe/extractor/Image;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Image;->getUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p1, p0}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
