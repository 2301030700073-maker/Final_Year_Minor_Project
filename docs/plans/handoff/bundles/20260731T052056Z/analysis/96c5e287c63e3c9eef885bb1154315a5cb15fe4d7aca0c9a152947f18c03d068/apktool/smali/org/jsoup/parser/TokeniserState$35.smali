.class public final enum Lorg/jsoup/parser/TokeniserState$35;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AttributeName"

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    .line 5
    .line 6
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/CharacterReader;->consumeToAnySorted([C)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const v3, 0xfffd

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, v1, Lorg/jsoup/parser/Token$Tag;->attrName:Lokhttp3/FormBody$Builder;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lokhttp3/FormBody$Builder;->append(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/16 v0, 0x9

    .line 30
    .line 31
    if-eq p2, v0, :cond_4

    .line 32
    .line 33
    const/16 v0, 0xa

    .line 34
    .line 35
    if-eq p2, v0, :cond_4

    .line 36
    .line 37
    const/16 v0, 0xc

    .line 38
    .line 39
    if-eq p2, v0, :cond_4

    .line 40
    .line 41
    const/16 v0, 0xd

    .line 42
    .line 43
    if-eq p2, v0, :cond_4

    .line 44
    .line 45
    const/16 v0, 0x20

    .line 46
    .line 47
    if-eq p2, v0, :cond_4

    .line 48
    .line 49
    const/16 v0, 0x22

    .line 50
    .line 51
    if-eq p2, v0, :cond_3

    .line 52
    .line 53
    const/16 v0, 0x27

    .line 54
    .line 55
    if-eq p2, v0, :cond_3

    .line 56
    .line 57
    const/16 v0, 0x2f

    .line 58
    .line 59
    if-eq p2, v0, :cond_2

    .line 60
    .line 61
    const v0, 0xffff

    .line 62
    .line 63
    .line 64
    if-eq p2, v0, :cond_1

    .line 65
    .line 66
    packed-switch p2, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_0
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 71
    .line 72
    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 73
    .line 74
    if-ne p0, v0, :cond_0

    .line 75
    .line 76
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 77
    .line 78
    instance-of p0, p0, Lorg/jsoup/parser/Token$XmlDecl;

    .line 79
    .line 80
    if-eqz p0, :cond_0

    .line 81
    .line 82
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_0
    :goto_0
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 89
    .line 90
    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lokhttp3/FormBody$Builder;

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 97
    .line 98
    .line 99
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 100
    .line 101
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_2
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 112
    .line 113
    .line 114
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 115
    .line 116
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_2
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    :pswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 127
    .line 128
    .line 129
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    .line 130
    .line 131
    iget-object p0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Lokhttp3/FormBody$Builder;

    .line 132
    .line 133
    invoke-virtual {p0, p2}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_4
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 138
    .line 139
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
