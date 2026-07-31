.class public final synthetic Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lnet/newpipe/app/navigation/Navigator;


# direct methods
.method public synthetic constructor <init>(Lnet/newpipe/app/navigation/Navigator;I)V
    .locals 0

    .line 1
    iput p2, p0, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;->f$0:Lnet/newpipe/app/navigation/Navigator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/newpipe/app/navigation/NavDisplayKt$$ExternalSyntheticLambda1;->f$0:Lnet/newpipe/app/navigation/Navigator;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lnet/newpipe/app/navigation/Navigator;->navigateUp()V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Lnet/newpipe/app/navigation/Navigator;->navigateUp()V

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :pswitch_1
    invoke-virtual {p0}, Lnet/newpipe/app/navigation/Navigator;->navigateUp()V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_2
    iget-object p0, p0, Lnet/newpipe/app/navigation/Navigator;->backstack:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
