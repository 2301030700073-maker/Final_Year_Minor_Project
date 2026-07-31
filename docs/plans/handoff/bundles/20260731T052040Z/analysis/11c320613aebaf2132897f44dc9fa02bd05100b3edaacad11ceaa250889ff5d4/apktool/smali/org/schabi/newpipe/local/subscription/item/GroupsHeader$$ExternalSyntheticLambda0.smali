.class public final synthetic Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

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
    iget p1, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->onToggleListViewModeClicked:Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$closeBarrier$1;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/item/GroupsHeader;->onSortClicked:Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/room/RoomDatabase$closeBarrier$1;->invoke()Ljava/lang/Object;

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
