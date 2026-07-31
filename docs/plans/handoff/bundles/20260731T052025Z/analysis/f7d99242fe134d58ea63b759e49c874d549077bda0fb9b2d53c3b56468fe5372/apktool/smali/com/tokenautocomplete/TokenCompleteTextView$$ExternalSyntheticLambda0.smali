.class public final synthetic Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    iget v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    invoke-static {v4, v3}, Lorg/slf4j/helpers/Util;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

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
    check-cast p0, Lcom/fsck/k9/helper/MutableBoolean;

    .line 55
    .line 56
    check-cast p1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;

    .line 57
    .line 58
    check-cast p2, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object p0, p1, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->surface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 64
    .line 65
    iget-object p0, p0, Landroidx/camera/core/impl/DeferrableSurface;->mContainerClass:Ljava/lang/Class;

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    const-class v0, Landroidx/camera/core/streamsharing/StreamSharing;

    .line 69
    .line 70
    const-class v2, Landroidx/camera/core/Preview;

    .line 71
    .line 72
    const/4 v3, 0x2

    .line 73
    const-class v4, Landroid/media/MediaCodec;

    .line 74
    .line 75
    if-ne p0, v4, :cond_2

    .line 76
    .line 77
    move p0, v3

    .line 78
    goto :goto_3

    .line 79
    :cond_2
    if-eq p0, v2, :cond_4

    .line 80
    .line 81
    if-ne p0, v0, :cond_3

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_3
    move p0, p1

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    :goto_2
    move p0, v1

    .line 87
    :goto_3
    iget-object p2, p2, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;->surface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 88
    .line 89
    iget-object p2, p2, Landroidx/camera/core/impl/DeferrableSurface;->mContainerClass:Ljava/lang/Class;

    .line 90
    .line 91
    if-ne p2, v4, :cond_5

    .line 92
    .line 93
    move v1, v3

    .line 94
    goto :goto_4

    .line 95
    :cond_5
    if-eq p2, v2, :cond_7

    .line 96
    .line 97
    if-ne p2, v0, :cond_6

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_6
    move v1, p1

    .line 101
    :cond_7
    :goto_4
    sub-int/2addr p0, v1

    .line 102
    return p0

    .line 103
    :pswitch_2
    check-cast p0, Landroid/text/Editable;

    .line 104
    .line 105
    check-cast p1, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 106
    .line 107
    check-cast p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 108
    .line 109
    sget v0, Lcom/tokenautocomplete/TokenCompleteTextView;->$r8$clinit:I

    .line 110
    .line 111
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-interface {p0, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    return p0

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
