.class public final Lio/noties/markwon/core/factory/CodeSpanFactory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/noties/markwon/core/factory/CodeSpanFactory;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSpans(Lcoil3/ComponentRegistry$Builder;Lio/noties/markwon/RenderPropsImpl;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget p0, p0, Lio/noties/markwon/core/factory/CodeSpanFactory;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;

    .line 9
    .line 10
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lio/noties/markwon/core/MarkwonTheme;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lio/noties/markwon/core/spans/BlockQuoteSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;I)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance p0, Lio/noties/markwon/core/spans/EmphasisSpan;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lio/noties/markwon/core/spans/EmphasisSpan;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_1
    iget-object p0, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lio/noties/markwon/core/MarkwonTheme;

    .line 27
    .line 28
    sget-object p1, Lio/noties/markwon/core/CoreProps;->LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lio/noties/markwon/Prop;->require(Lio/noties/markwon/RenderPropsImpl;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v0, Lio/noties/markwon/core/CoreProps$ListItemType;->BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

    .line 35
    .line 36
    if-ne v0, p1, :cond_0

    .line 37
    .line 38
    new-instance p1, Lio/noties/markwon/core/spans/BulletListItemSpan;

    .line 39
    .line 40
    sget-object v0, Lio/noties/markwon/core/CoreProps;->BULLET_LIST_ITEM_LEVEL:Lio/noties/markwon/Prop;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Lio/noties/markwon/Prop;->require(Lio/noties/markwon/RenderPropsImpl;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-direct {p1, p0, p2}, Lio/noties/markwon/core/spans/BulletListItemSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    sget-object p1, Lio/noties/markwon/core/CoreProps;->ORDERED_LIST_ITEM_NUMBER:Lio/noties/markwon/Prop;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lio/noties/markwon/Prop;->require(Lio/noties/markwon/RenderPropsImpl;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p2, ".\u00a0"

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Lio/noties/markwon/core/spans/OrderedListItemSpan;

    .line 73
    .line 74
    invoke-direct {p2, p0, p1}, Lio/noties/markwon/core/spans/OrderedListItemSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move-object p1, p2

    .line 78
    :goto_0
    return-object p1

    .line 79
    :pswitch_2
    new-instance p0, Lio/noties/markwon/core/spans/LinkSpan;

    .line 80
    .line 81
    iget-object v0, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lio/noties/markwon/core/MarkwonTheme;

    .line 84
    .line 85
    sget-object v1, Lio/noties/markwon/core/CoreProps;->LINK_DESTINATION:Lio/noties/markwon/Prop;

    .line 86
    .line 87
    invoke-virtual {v1, p2}, Lio/noties/markwon/Prop;->require(Lio/noties/markwon/RenderPropsImpl;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Ljava/lang/String;

    .line 92
    .line 93
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Landroidx/transition/Transition$1;

    .line 96
    .line 97
    invoke-direct {p0, v0, p2, p1}, Lio/noties/markwon/core/spans/LinkSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;Ljava/lang/String;Landroidx/transition/Transition$1;)V

    .line 98
    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_3
    new-instance p0, Lio/noties/markwon/core/spans/HeadingSpan;

    .line 102
    .line 103
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Lio/noties/markwon/core/MarkwonTheme;

    .line 106
    .line 107
    sget-object v0, Lio/noties/markwon/core/CoreProps;->HEADING_LEVEL:Lio/noties/markwon/Prop;

    .line 108
    .line 109
    invoke-virtual {v0, p2}, Lio/noties/markwon/Prop;->require(Lio/noties/markwon/RenderPropsImpl;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-direct {p0, p1, p2}, Lio/noties/markwon/core/spans/HeadingSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;I)V

    .line 120
    .line 121
    .line 122
    return-object p0

    .line 123
    :pswitch_4
    new-instance p0, Lio/noties/markwon/core/spans/EmphasisSpan;

    .line 124
    .line 125
    invoke-direct {p0, v1}, Lio/noties/markwon/core/spans/EmphasisSpan;-><init>(I)V

    .line 126
    .line 127
    .line 128
    return-object p0

    .line 129
    :pswitch_5
    new-instance p0, Lio/noties/markwon/core/spans/CodeBlockSpan;

    .line 130
    .line 131
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast p1, Lio/noties/markwon/core/MarkwonTheme;

    .line 134
    .line 135
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/CodeBlockSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;)V

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :pswitch_6
    new-instance p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;

    .line 140
    .line 141
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast p1, Lio/noties/markwon/core/MarkwonTheme;

    .line 144
    .line 145
    invoke-direct {p0, p1, v1}, Lio/noties/markwon/core/spans/BlockQuoteSpan;-><init>(Lio/noties/markwon/core/MarkwonTheme;I)V

    .line 146
    .line 147
    .line 148
    return-object p0

    .line 149
    :pswitch_7
    new-instance p0, Lio/noties/markwon/core/spans/CodeSpan;

    .line 150
    .line 151
    iget-object p1, p1, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p1, Lio/noties/markwon/core/MarkwonTheme;

    .line 154
    .line 155
    invoke-direct {p0, p1, v1}, Lio/noties/markwon/core/spans/CodeSpan;-><init>(Ljava/lang/Object;I)V

    .line 156
    .line 157
    .line 158
    return-object p0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
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
