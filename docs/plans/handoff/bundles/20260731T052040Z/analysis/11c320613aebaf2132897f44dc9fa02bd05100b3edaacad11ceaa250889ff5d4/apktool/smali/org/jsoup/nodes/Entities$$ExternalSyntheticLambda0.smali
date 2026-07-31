.class public final synthetic Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :pswitch_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 9
    .line 10
    const-string v0, "Could not get \"Now\" or \"Videos\" trending tab"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 17
    .line 18
    const-string v0, "Could not get playlist info"

    .line 19
    .line 20
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 25
    .line 26
    const-string v0, "Could not get uploader info"

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 33
    .line 34
    const-string v0, "Could not get thumbnailBadgeViewModel"

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :pswitch_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 41
    .line 42
    const-string v0, "Could not get thumbnailOverlayBadgeViewModel"

    .line 43
    .line 44
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_5
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 49
    .line 50
    const-string v0, "Could not get comment entity payload mutation"

    .line 51
    .line 52
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :pswitch_6
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 57
    .line 58
    const-string v0, "Could not get comment replies continuation"

    .line 59
    .line 60
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :pswitch_7
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 65
    .line 66
    const-string v0, "Could not get avatars"

    .line 67
    .line 68
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_8
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 73
    .line 74
    const-string v0, "Could not get avatars"

    .line 75
    .line 76
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :pswitch_9
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 81
    .line 82
    const-string v0, "Could not get channel name"

    .line 83
    .line 84
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :pswitch_a
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 89
    .line 90
    const-string v0, "no id found for this url"

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object p0

    .line 96
    :pswitch_b
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 97
    .line 98
    const-string v0, "Could not get uploader name"

    .line 99
    .line 100
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object p0

    .line 104
    :pswitch_c
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 105
    .line 106
    const-string v0, "Could not get token"

    .line 107
    .line 108
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-object p0

    .line 112
    :pswitch_d
    new-instance p0, Lorg/jsoup/nodes/NodeIterator;

    .line 113
    .line 114
    new-instance v0, Lorg/jsoup/nodes/TextNode;

    .line 115
    .line 116
    const-string v1, ""

    .line 117
    .line 118
    invoke-direct {v0, v1}, Lorg/jsoup/nodes/LeafNode;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-class v1, Lorg/jsoup/nodes/Node;

    .line 122
    .line 123
    invoke-direct {p0, v0, v1}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/Class;)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :pswitch_e
    new-instance p0, Ljava/util/WeakHashMap;

    .line 128
    .line 129
    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    return-object p0

    .line 133
    :pswitch_f
    new-instance p0, Lorg/jsoup/select/Elements;

    .line 134
    .line 135
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    return-object p0

    .line 139
    :pswitch_10
    const/16 p0, 0x800

    .line 140
    .line 141
    new-array p0, p0, [C

    .line 142
    .line 143
    return-object p0

    .line 144
    :pswitch_11
    const/16 p0, 0x200

    .line 145
    .line 146
    new-array p0, p0, [Ljava/lang/String;

    .line 147
    .line 148
    return-object p0

    .line 149
    :pswitch_12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const/16 v0, 0x400

    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :pswitch_13
    new-instance p0, Ljava/lang/ref/SoftReference;

    .line 158
    .line 159
    new-instance v0, Ljava/util/ArrayDeque;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    return-object p0

    .line 168
    :pswitch_14
    const/16 p0, 0x2000

    .line 169
    .line 170
    new-array p0, p0, [B

    .line 171
    .line 172
    return-object p0

    .line 173
    :pswitch_15
    const/4 p0, 0x2

    .line 174
    new-array p0, p0, [C

    .line 175
    .line 176
    return-object p0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
