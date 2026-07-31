.class public final Lorg/commonmark/node/Document;
.super Lorg/commonmark/node/Block;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/commonmark/node/Document;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Lokhttp3/Dispatcher;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/commonmark/node/Document;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lokhttp3/Dispatcher;->visit(Lorg/commonmark/node/Node;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1, p0}, Lokhttp3/Dispatcher;->visit(Lorg/commonmark/node/Node;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
