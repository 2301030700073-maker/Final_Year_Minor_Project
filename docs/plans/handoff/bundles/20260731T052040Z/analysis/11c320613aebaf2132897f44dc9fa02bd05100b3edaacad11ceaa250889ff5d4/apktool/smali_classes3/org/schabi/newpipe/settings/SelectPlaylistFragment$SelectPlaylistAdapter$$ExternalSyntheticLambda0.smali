.class public final synthetic Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;II)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;

    .line 4
    .line 5
    iput p2, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget v0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment$SelectPlaylistAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Landroidx/fragment/app/DialogFragment;

    .line 11
    .line 12
    check-cast p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    .line 13
    .line 14
    invoke-static {p0, v0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->-$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;->this$0:Landroidx/fragment/app/DialogFragment;

    .line 19
    .line 20
    check-cast p0, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;

    .line 21
    .line 22
    invoke-static {p0, v0}, Lorg/schabi/newpipe/settings/SelectPlaylistFragment;->-$$Nest$mclickedItem(Lorg/schabi/newpipe/settings/SelectPlaylistFragment;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
