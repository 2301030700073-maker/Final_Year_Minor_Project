.class public final enum Lorg/jsoup/parser/TokeniserState$53;
.super Lorg/jsoup/parser/TokeniserState;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "BeforeDoctypeName"

    .line 2
    .line 3
    const/16 v1, 0x34

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
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->matchesAsciiAlpha()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Doctype;->reset()V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    const/16 v0, 0x20

    .line 25
    .line 26
    if-eq p2, v0, :cond_2

    .line 27
    .line 28
    const v0, 0xffff

    .line 29
    .line 30
    .line 31
    if-eq p2, v0, :cond_1

    .line 32
    .line 33
    const/16 p0, 0x9

    .line 34
    .line 35
    if-eq p2, p0, :cond_2

    .line 36
    .line 37
    const/16 p0, 0xa

    .line 38
    .line 39
    if-eq p2, p0, :cond_2

    .line 40
    .line 41
    const/16 p0, 0xc

    .line 42
    .line 43
    if-eq p2, p0, :cond_2

    .line 44
    .line 45
    const/16 p0, 0xd

    .line 46
    .line 47
    if-eq p2, p0, :cond_2

    .line 48
    .line 49
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Doctype;->reset()V

    .line 52
    .line 53
    .line 54
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 55
    .line 56
    iget-object p0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lokhttp3/FormBody$Builder;

    .line 57
    .line 58
    invoke-virtual {p0, p2}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->eofError(Lorg/jsoup/parser/TokeniserState;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 71
    .line 72
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Doctype;->reset()V

    .line 73
    .line 74
    .line 75
    const/4 p2, 0x1

    .line 76
    iput-boolean p2, p0, Lorg/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 77
    .line 78
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void

    .line 87
    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p1, Lorg/jsoup/parser/Tokeniser;->doctypePending:Lorg/jsoup/parser/Token$Doctype;

    .line 91
    .line 92
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Doctype;->reset()V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lorg/jsoup/parser/Token$Doctype;->name:Lokhttp3/FormBody$Builder;

    .line 96
    .line 97
    const p2, 0xfffd

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p2}, Lokhttp3/FormBody$Builder;->append(C)V

    .line 101
    .line 102
    .line 103
    sget-object p0, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 104
    .line 105
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
