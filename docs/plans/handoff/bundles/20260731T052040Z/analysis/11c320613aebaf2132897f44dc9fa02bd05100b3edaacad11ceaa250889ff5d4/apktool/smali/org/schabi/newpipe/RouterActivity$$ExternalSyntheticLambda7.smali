.class public final synthetic Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v2, p1

    .line 9
    check-cast v2, Ljava/lang/Throwable;

    .line 10
    .line 11
    sget p1, Lorg/schabi/newpipe/RouterActivity;->$r8$clinit:I

    .line 12
    .line 13
    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "Starting info activity: "

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x0

    .line 32
    iget-object v6, p0, Lorg/schabi/newpipe/RouterActivity;->currentUrl:Ljava/lang/String;

    .line 33
    .line 34
    sget-object v3, Lorg/schabi/newpipe/error/UserAction;->SHARE_TO_NEWPIPE:Lorg/schabi/newpipe/error/UserAction;

    .line 35
    .line 36
    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v1}, Lorg/schabi/newpipe/RouterActivity;->handleError(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    check-cast p1, Landroid/content/Intent;

    .line 44
    .line 45
    sget v0, Lorg/schabi/newpipe/RouterActivity;->$r8$clinit:I

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/schabi/newpipe/RouterActivity;->finish()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
