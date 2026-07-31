.class public final Lorg/jsoup/select/Evaluator$AttributeWithValue;
.super Lorg/jsoup/select/Evaluator;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    iput p3, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/room/Room;->notEmpty(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->key:Ljava/lang/String;

    .line 14
    .line 15
    const-string p1, "\'"

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :cond_0
    const-string p1, "\""

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_3

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/4 p3, 0x1

    .line 48
    if-le p1, p3, :cond_2

    .line 49
    .line 50
    move p1, p3

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    :goto_0
    const-string v0, "Quoted value must have content"

    .line 54
    .line 55
    invoke-static {v0, p1}, Landroidx/room/Room;->isTrue(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    sub-int/2addr p1, p3

    .line 63
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :cond_3
    invoke-static {p2}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->value:Ljava/lang/String;

    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final cost()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x4

    .line 7
    return p0

    .line 8
    :pswitch_0
    const/4 p0, 0x3

    .line 9
    return p0

    .line 10
    :pswitch_1
    const/4 p0, 0x4

    .line 11
    return p0

    .line 12
    :pswitch_2
    const/4 p0, 0x6

    .line 13
    return p0

    .line 14
    :pswitch_3
    const/4 p0, 0x3

    .line 15
    return p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 3

    .line 1
    iget p1, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object v2, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->value:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->key:Ljava/lang/String;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    move v0, v1

    .line 33
    :cond_0
    return v0

    .line 34
    :pswitch_0
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    xor-int/2addr p0, v1

    .line 43
    return p0

    .line 44
    :pswitch_1
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    move v0, v1

    .line 65
    :cond_1
    return v0

    .line 66
    :pswitch_2
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_2

    .line 85
    .line 86
    move v0, v1

    .line 87
    :cond_2
    return v0

    .line 88
    :pswitch_3
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    move v0, v1

    .line 105
    :cond_3
    return v0

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "^="

    .line 7
    .line 8
    const-string v1, "]"

    .line 9
    .line 10
    const-string v2, "["

    .line 11
    .line 12
    iget-object v3, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->key:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->value:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2, v3, v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    const-string v0, "!="

    .line 22
    .line 23
    const-string v1, "]"

    .line 24
    .line 25
    const-string v2, "["

    .line 26
    .line 27
    iget-object v3, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->key:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->value:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2, v3, v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_1
    const-string v0, "$="

    .line 37
    .line 38
    const-string v1, "]"

    .line 39
    .line 40
    const-string v2, "["

    .line 41
    .line 42
    iget-object v3, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->key:Ljava/lang/String;

    .line 43
    .line 44
    iget-object p0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->value:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2, v3, v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_2
    const-string v0, "*="

    .line 52
    .line 53
    const-string v1, "]"

    .line 54
    .line 55
    const-string v2, "["

    .line 56
    .line 57
    iget-object v3, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->key:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->value:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2, v3, v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :pswitch_3
    const-string v0, "="

    .line 67
    .line 68
    const-string v1, "]"

    .line 69
    .line 70
    const-string v2, "["

    .line 71
    .line 72
    iget-object v3, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->key:Ljava/lang/String;

    .line 73
    .line 74
    iget-object p0, p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;->value:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v2, v3, v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
