.class public final synthetic Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkReplyActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkReplyActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p2, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/talk/TalkReplyActivity$$ExternalSyntheticLambda15;->f$0:Lorg/wikipedia/talk/TalkReplyActivity;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object p1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 11
    .line 12
    const-string p1, "publish_exit_cancel"

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget-object p1, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 19
    .line 20
    const-string p1, "publish_exit"

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lorg/wikipedia/talk/TalkReplyActivity;->sendPatrollerExperienceEvent$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    sget-object p2, Lorg/wikipedia/talk/TalkReplyActivity;->draftReplies:Lorg/wikipedia/talk/TalkReplyActivity$special$$inlined$lruCache$default$1;

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p0, p2}, Lorg/wikipedia/talk/TalkReplyActivity;->launchLogin$1(Z)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
