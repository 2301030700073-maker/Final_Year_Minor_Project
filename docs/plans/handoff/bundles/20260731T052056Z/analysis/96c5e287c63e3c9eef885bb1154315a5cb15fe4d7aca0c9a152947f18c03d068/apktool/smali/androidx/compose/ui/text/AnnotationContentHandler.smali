.class public final Landroidx/compose/ui/text/AnnotationContentHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field public bulletIndentation:I

.field public final contentHandler:Lorg/xml/sax/ContentHandler;

.field public currentBulletSpan:Landroidx/compose/ui/text/BulletSpanWithLevel;

.field public final output:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->output:Landroid/text/Editable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final commitCurrentBulletSpan()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->currentBulletSpan:Landroidx/compose/ui/text/BulletSpanWithLevel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, v0, Landroidx/compose/ui/text/BulletSpanWithLevel;->start:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->output:Landroid/text/Editable;

    .line 8
    .line 9
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x21

    .line 14
    .line 15
    invoke-interface {v2, v0, v1, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->currentBulletSpan:Landroidx/compose/ui/text/BulletSpanWithLevel;

    .line 20
    .line 21
    return-void
.end method

.method public final endDocument()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    if-eqz p2, :cond_a

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0x5cb014d1

    .line 8
    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/16 v1, 0xd7d

    .line 13
    .line 14
    if-eq v0, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0xe97

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    const-string/jumbo v0, "ul"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotationContentHandler;->commitCurrentBulletSpan()V

    .line 33
    .line 34
    .line 35
    iget p1, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->bulletIndentation:I

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    iput p1, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->bulletIndentation:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    const-string v0, "li"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotationContentHandler;->commitCurrentBulletSpan()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    const-string v0, "annotation"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->output:Landroid/text/Editable;

    .line 65
    .line 66
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const-class p2, Landroidx/compose/ui/text/AnnotationSpan;

    .line 71
    .line 72
    const/4 p3, 0x0

    .line 73
    invoke-interface {p0, p3, p1, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance p2, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    array-length v0, p1

    .line 83
    move v1, p3

    .line 84
    :goto_0
    if-ge v1, v0, :cond_7

    .line 85
    .line 86
    aget-object v2, p1, v1

    .line 87
    .line 88
    move-object v3, v2

    .line 89
    check-cast v3, Landroidx/compose/ui/text/AnnotationSpan;

    .line 90
    .line 91
    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const/16 v4, 0x11

    .line 96
    .line 97
    if-ne v3, v4, :cond_6

    .line 98
    .line 99
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    :goto_1
    if-ge p3, p1, :cond_9

    .line 110
    .line 111
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroidx/compose/ui/text/AnnotationSpan;

    .line 116
    .line 117
    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    if-eq v1, v2, :cond_8

    .line 129
    .line 130
    const/16 v3, 0x21

    .line 131
    .line 132
    invoke-interface {p0, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 133
    .line 134
    .line 135
    :cond_8
    add-int/lit8 p3, p3, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_9
    return-void

    .line 139
    :cond_a
    :goto_2
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 140
    .line 141
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method public final endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final ignorableWhitespace([CII)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final skippedEntity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startDocument()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_a

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, -0x5cb014d1

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->output:Landroid/text/Editable;

    .line 11
    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const/16 v1, 0xd7d

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/16 v1, 0xe97

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    const-string/jumbo v0, "ul"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotationContentHandler;->commitCurrentBulletSpan()V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->bulletIndentation:I

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->bulletIndentation:I

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    const-string v0, "li"

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotationContentHandler;->commitCurrentBulletSpan()V

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroidx/compose/ui/text/BulletSpanWithLevel;

    .line 57
    .line 58
    sget-object p2, Landroidx/compose/ui/text/Bullet;->Default:Landroidx/compose/ui/text/Bullet;

    .line 59
    .line 60
    iget p3, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->bulletIndentation:I

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result p4

    .line 66
    invoke-direct {p1, p2, p3, p4}, Landroidx/compose/ui/text/BulletSpanWithLevel;-><init>(Landroidx/compose/ui/text/Bullet;II)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->currentBulletSpan:Landroidx/compose/ui/text/BulletSpanWithLevel;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    const-string v0, "annotation"

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_5

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    if-eqz p4, :cond_9

    .line 82
    .line 83
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    const/4 p1, 0x0

    .line 88
    :goto_0
    if-ge p1, p0, :cond_9

    .line 89
    .line 90
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    const-string p3, ""

    .line 95
    .line 96
    if-nez p2, :cond_6

    .line 97
    .line 98
    move-object p2, p3

    .line 99
    :cond_6
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-nez v0, :cond_7

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    move-object p3, v0

    .line 107
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-lez v0, :cond_8

    .line 112
    .line 113
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-lez v0, :cond_8

    .line 118
    .line 119
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    new-instance v1, Landroidx/compose/ui/text/AnnotationSpan;

    .line 124
    .line 125
    invoke-direct {v1, p2, p3}, Landroidx/compose/ui/text/AnnotationSpan;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/16 p2, 0x11

    .line 129
    .line 130
    invoke-interface {v2, v1, v0, v0, p2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 131
    .line 132
    .line 133
    :cond_8
    add-int/lit8 p1, p1, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_9
    return-void

    .line 137
    :cond_a
    :goto_2
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 138
    .line 139
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationContentHandler;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
