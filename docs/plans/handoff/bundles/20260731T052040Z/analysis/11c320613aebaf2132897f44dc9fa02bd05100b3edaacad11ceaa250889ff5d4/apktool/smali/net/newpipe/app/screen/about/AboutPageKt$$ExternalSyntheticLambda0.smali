.class public final synthetic Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/newpipe/app/platform/ShareHandler;


# direct methods
.method public synthetic constructor <init>(Lnet/newpipe/app/platform/ShareHandler;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda0;->f$0:Lnet/newpipe/app/platform/ShareHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/newpipe/app/screen/about/AboutPageKt$$ExternalSyntheticLambda0;->f$0:Lnet/newpipe/app/platform/ShareHandler;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    check-cast p0, Lnet/newpipe/app/platform/AndroidShareHandler;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lnet/newpipe/app/platform/AndroidShareHandler;->openUrlInBrowser(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p0, Lnet/newpipe/app/platform/AndroidShareHandler;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lnet/newpipe/app/platform/AndroidShareHandler;->openUrlInBrowser(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
