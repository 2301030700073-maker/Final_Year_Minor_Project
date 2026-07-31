.class public final synthetic Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/16 p0, 0x40

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const/4 p0, 0x2

    .line 15
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    const/16 p0, 0x8

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_2
    const/4 p0, 0x0

    .line 26
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    const/16 p0, 0x100

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_4
    const/4 p0, 0x0

    .line 37
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_5
    const/4 p0, 0x4

    .line 42
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_6
    const/4 p0, 0x0

    .line 47
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_7
    const/4 p0, 0x4

    .line 52
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_8
    const/16 p0, 0x400

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_9
    const/16 p0, 0x200

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_a
    const/16 p0, 0x100

    .line 69
    .line 70
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_b
    const/16 p0, 0x80

    .line 75
    .line 76
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_c
    const/4 p0, 0x4

    .line 81
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tag;->set(I)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/TagSet$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
