.class public final synthetic Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, [Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    array-length v0, p0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    if-ge v2, v0, :cond_1

    .line 14
    .line 15
    aget-object v3, p0, v2

    .line 16
    .line 17
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Ljava/lang/Comparable;

    .line 22
    .line 23
    invoke-interface {v3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Comparable;

    .line 28
    .line 29
    invoke-static {v4, v3}, Landroidx/room/Room;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    move v1, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    return v1

    .line 41
    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 42
    .line 43
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0

    .line 54
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 55
    .line 56
    check-cast p1, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 57
    .line 58
    check-cast p2, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 59
    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    if-ne p1, p0, :cond_2

    .line 64
    .line 65
    move p1, v0

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move p1, v1

    .line 68
    :goto_2
    if-ne p2, p0, :cond_3

    .line 69
    .line 70
    move v1, v0

    .line 71
    :cond_3
    invoke-static {p1, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :cond_4
    return v1

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
