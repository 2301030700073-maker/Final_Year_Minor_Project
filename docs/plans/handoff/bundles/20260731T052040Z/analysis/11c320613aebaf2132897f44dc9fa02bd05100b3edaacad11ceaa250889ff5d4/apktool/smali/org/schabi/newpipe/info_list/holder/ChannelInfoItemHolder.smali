.class public final Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;
.super Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;->$r8$classId:I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;-><init>(Lcoil3/ComponentRegistry$Builder;ILandroid/view/ViewGroup;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getDescriptionMaxLineCount(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/info_list/holder/ChannelInfoItemHolder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lorg/schabi/newpipe/info_list/holder/ChannelMiniInfoItemHolder;->getDescriptionMaxLineCount(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :pswitch_0
    const/16 p0, 0x8

    .line 12
    .line 13
    return p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
