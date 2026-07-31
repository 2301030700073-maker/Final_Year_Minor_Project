.class public final synthetic Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/talk/TalkTopicActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicActivity$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/wikipedia/talk/TalkTopicActivity;->loadTopics()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget p1, Lorg/wikipedia/talk/TalkTopicActivity;->$r8$clinit:I

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
