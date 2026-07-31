.class public final synthetic Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance p0, Lorg/jsoup/nodes/NodeIterator;

    .line 7
    .line 8
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-class v1, Lorg/jsoup/nodes/Node;

    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_0
    new-instance p0, Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_1
    new-instance p0, Lorg/jsoup/select/Elements;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_2
    const/16 p0, 0x800

    .line 34
    .line 35
    new-array p0, p0, [C

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_3
    const/16 p0, 0x200

    .line 39
    .line 40
    new-array p0, p0, [Ljava/lang/String;

    .line 41
    .line 42
    return-object p0

    .line 43
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const/16 v0, 0x400

    .line 46
    .line 47
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_5
    new-instance p0, Ljava/lang/ref/SoftReference;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :pswitch_6
    const/4 p0, 0x2

    .line 63
    new-array p0, p0, [C

    .line 64
    .line 65
    return-object p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
