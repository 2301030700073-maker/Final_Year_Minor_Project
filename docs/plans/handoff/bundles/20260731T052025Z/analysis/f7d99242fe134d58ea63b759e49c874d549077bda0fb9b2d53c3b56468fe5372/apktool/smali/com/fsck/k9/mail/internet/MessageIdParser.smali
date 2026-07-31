.class public final Lcom/fsck/k9/mail/internet/MessageIdParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public currentIndex:I

.field public final endIndex:I

.field public final input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->input:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->endIndex:I

    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->input:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->endIndex:I

    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static final parseList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/internet/MessageIdParser;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/mail/internet/MessageIdParser;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipCfws()V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x3c

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readDotAtom()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/16 v3, 0x40

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    const/16 v4, 0x5b

    .line 46
    .line 47
    if-ne v3, v4, :cond_2

    .line 48
    .line 49
    iget v3, v0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    const/16 v6, 0x21

    .line 59
    .line 60
    if-gt v6, v5, :cond_0

    .line 61
    .line 62
    if-ge v5, v4, :cond_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    const/16 v6, 0x5e

    .line 66
    .line 67
    if-gt v6, v5, :cond_1

    .line 68
    .line 69
    const/16 v6, 0x7f

    .line 70
    .line 71
    if-ge v5, v6, :cond_1

    .line 72
    .line 73
    :goto_2
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/16 v4, 0x5d

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 80
    .line 81
    .line 82
    iget v4, v0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 83
    .line 84
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readDotAtom()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :goto_3
    const/16 v4, 0x3e

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipCfws()V

    .line 99
    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v5, "<"

    .line 104
    .line 105
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, "@"

    .line 112
    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, ">"

    .line 120
    .line 121
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    return-object v1

    .line 133
    :cond_4
    new-instance p0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 134
    .line 135
    const-string v0, "Expected message identifier"

    .line 136
    .line 137
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    throw p0
.end method


# virtual methods
.method public final endReached()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 7
    .line 8
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->endIndex:I

    .line 9
    .line 10
    if-lt v0, p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0

    .line 16
    :pswitch_0
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 17
    .line 18
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->endIndex:I

    .line 19
    .line 20
    if-lt v0, p0, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_1
    return p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final expect(C)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, p1, :cond_0

    .line 17
    .line 18
    iget p1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    iput p1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "Expected \'"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "\' ("

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, ")"

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 55
    .line 56
    invoke-direct {v0, p1, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "\'"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-ne v1, p1, :cond_1

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_1
    new-instance p1, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 94
    .line 95
    const-string v1, "Expected "

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 102
    .line 103
    invoke-direct {p1, v0, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public expect(CLjava/lang/String;)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    move-result v0

    if-ne v0, p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    return-void

    .line 109
    :cond_0
    new-instance p1, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    const-string v0, "Expected "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    invoke-direct {p1, p2, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final peek()C
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "End of input reached unexpectedly"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->input:Ljava/lang/String;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 17
    .line 18
    if-ge v0, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 26
    .line 27
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :pswitch_0
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 38
    .line 39
    if-ge v0, v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :cond_1
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 47
    .line 48
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public read()C
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->input:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 10
    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iput v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    new-instance p0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 25
    .line 26
    const-string v0, "End of input reached unexpectedly"

    .line 27
    .line 28
    invoke-direct {p0, v0, v3}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    throw p0
.end method

.method public readDotAtom()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "Expected atext"

    .line 8
    .line 9
    if-nez v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isAText(C)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v3, 0x2e

    .line 29
    .line 30
    if-ne v1, v3, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isAText(C)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 56
    .line 57
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 58
    .line 59
    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isAText(C)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->input:Ljava/lang/String;

    .line 74
    .line 75
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 76
    .line 77
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_3
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 83
    .line 84
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 85
    .line 86
    invoke-direct {v0, v2, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method public readExtendedParameterValueInto(Lokio/Buffer;)V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x3b

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->read()C

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x25

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readHexDigit()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->readHexDigit()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    shl-int/lit8 v0, v0, 0x4

    .line 32
    .line 33
    add-int/2addr v0, v1

    .line 34
    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isAttributeChar(C)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public readHeaderValue()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    move v2, v1

    .line 8
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_6

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/16 v4, 0x3b

    .line 19
    .line 20
    if-eq v3, v4, :cond_6

    .line 21
    .line 22
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/16 v5, 0xa

    .line 27
    .line 28
    const/16 v6, 0xd

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    if-nez v4, :cond_3

    .line 32
    .line 33
    if-eq v3, v6, :cond_3

    .line 34
    .line 35
    if-ne v3, v5, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const/16 v4, 0x28

    .line 39
    .line 40
    if-ne v3, v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipComment()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-lez v4, :cond_2

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    const/16 v2, 0x20

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v2, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 63
    .line 64
    add-int/2addr v2, v7

    .line 65
    iput v2, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-nez v2, :cond_5

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_4

    .line 83
    .line 84
    if-eq v2, v6, :cond_4

    .line 85
    .line 86
    if-ne v2, v5, :cond_5

    .line 87
    .line 88
    :cond_4
    iget v2, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 89
    .line 90
    add-int/2addr v2, v7

    .line 91
    iput v2, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    move v2, v7

    .line 95
    goto :goto_1

    .line 96
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0
.end method

.method public readHexDigit()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->read()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x30

    .line 6
    .line 7
    if-gt v1, v0, :cond_0

    .line 8
    .line 9
    const/16 v2, 0x3a

    .line 10
    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0

    .line 15
    :cond_0
    const/16 v1, 0x61

    .line 16
    .line 17
    if-gt v1, v0, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x67

    .line 20
    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, -0x57

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    const/16 v1, 0x41

    .line 27
    .line 28
    if-gt v1, v0, :cond_2

    .line 29
    .line 30
    const/16 v1, 0x47

    .line 31
    .line 32
    if-ge v0, v1, :cond_2

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x37

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 38
    .line 39
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 40
    .line 41
    add-int/lit8 p0, p0, -0x1

    .line 42
    .line 43
    const-string v1, "Expected hex character"

    .line 44
    .line 45
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public readToken()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipCFWS()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lcom/fsck/k9/mail/internet/JisSupport;->TSPECIALS:[C

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([CC)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    iput v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 38
    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->input:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_1
    new-instance p0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 49
    .line 50
    const-string v0, "At least one character expected in token"

    .line 51
    .line 52
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    throw p0
.end method

.method public readUntil()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x27

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iput v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->input:Ljava/lang/String;

    .line 25
    .line 26
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 27
    .line 28
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public skip()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 6
    .line 7
    return-void
.end method

.method public skipCFWS()V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0xd

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/16 v1, 0x28

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipComment()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public skipCfws()V
    .locals 6

    .line 1
    :cond_0
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipFws()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_9

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x28

    .line 17
    .line 18
    if-ne v1, v2, :cond_9

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skipFws()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v3, v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/16 v4, 0x5c

    .line 40
    .line 41
    if-ne v3, v4, :cond_5

    .line 42
    .line 43
    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 73
    .line 74
    const-string v1, "Expected VCHAR or WSP"

    .line 75
    .line 76
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 77
    .line 78
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_5
    const/16 v5, 0x21

    .line 83
    .line 84
    if-gt v5, v3, :cond_6

    .line 85
    .line 86
    if-ge v3, v2, :cond_6

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    const/16 v5, 0x2a

    .line 90
    .line 91
    if-gt v5, v3, :cond_7

    .line 92
    .line 93
    if-ge v3, v4, :cond_7

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_7
    const/16 v4, 0x5d

    .line 97
    .line 98
    if-gt v4, v3, :cond_8

    .line 99
    .line 100
    const/16 v4, 0x7f

    .line 101
    .line 102
    if-ge v3, v4, :cond_8

    .line 103
    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_8
    const/16 v3, 0x29

    .line 109
    .line 110
    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v1, v1, -0x1

    .line 114
    .line 115
    :goto_1
    if-gtz v1, :cond_1

    .line 116
    .line 117
    :cond_9
    iget v1, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 118
    .line 119
    if-eq v1, v0, :cond_a

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    .line 127
    :cond_a
    return-void
.end method

.method public skipComment()V
    .locals 5

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(C)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    move v2, v1

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_5

    .line 13
    .line 14
    if-lez v2, :cond_5

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->read()C

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ne v3, v0, :cond_1

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v4, 0x29

    .line 26
    .line 27
    if-ne v3, v4, :cond_2

    .line 28
    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 v4, 0x5c

    .line 33
    .line 34
    if-ne v3, v4, :cond_3

    .line 35
    .line 36
    iget v3, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 37
    .line 38
    add-int/2addr v3, v1

    .line 39
    iput v3, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const/16 v4, 0xd

    .line 43
    .line 44
    if-eq v3, v4, :cond_0

    .line 45
    .line 46
    const/16 v4, 0xa

    .line 47
    .line 48
    if-eq v3, v4, :cond_0

    .line 49
    .line 50
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_0

    .line 55
    .line 56
    invoke-static {v3}, Lcom/fsck/k9/mail/internet/JisSupport;->isVChar(C)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 64
    .line 65
    add-int/lit8 v0, v0, -0x1

    .line 66
    .line 67
    iput v0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 68
    .line 69
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Unexpected \'"

    .line 74
    .line 75
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, "\' ("

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ") in comment"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 99
    .line 100
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_5
    return-void
.end method

.method public skipFws()V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v1, 0xd

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    const-string v0, "CR"

    .line 36
    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(CLjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "LF"

    .line 41
    .line 42
    const/16 v1, 0xa

    .line 43
    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->expect(CLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->endReached()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->peek()C

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Lcom/fsck/k9/mail/internet/JisSupport;->isWsp(C)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MessageIdParser;->skip()V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;

    .line 87
    .line 88
    const-string v1, "Expected WSP"

    .line 89
    .line 90
    iget p0, p0, Lcom/fsck/k9/mail/internet/MessageIdParser;->currentIndex:I

    .line 91
    .line 92
    invoke-direct {v0, v1, p0}, Lcom/fsck/k9/mail/internet/MimeHeaderParserException;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_2
    return-void
.end method
