.class public final synthetic Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p2, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget p1, Lorg/schabi/newpipe/RouterActivity;->$r8$clinit:I

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    invoke-static {p0, p1, p2, p1}, Landroidx/transition/Transition$Impl26;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget p1, Lorg/schabi/newpipe/RouterActivity;->$r8$clinit:I

    .line 19
    .line 20
    invoke-static {p0, p2}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
