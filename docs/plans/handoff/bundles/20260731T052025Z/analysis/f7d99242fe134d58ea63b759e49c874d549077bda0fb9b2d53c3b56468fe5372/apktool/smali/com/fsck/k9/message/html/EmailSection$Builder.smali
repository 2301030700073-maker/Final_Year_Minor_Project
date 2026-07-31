.class public final Lcom/fsck/k9/message/html/EmailSection$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public indent:I

.field public quoteDepth:I

.field public segments:Ljava/lang/Object;

.field public text:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;Landroidx/core/view/MenuHostHelper;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->$r8$classId:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 77
    iput-object p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 78
    iget-object p1, p2, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast p1, Landroid/content/res/TypedArray;

    const/16 p2, 0x1c

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 80
    iput p2, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    const/16 p2, 0x35

    .line 81
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 82
    iput p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/util/Locale;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "input start index is outside the CharSequence"

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    if-ltz p2, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-gt p2, v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-string v0, "input end index is outside the CharSequence"

    .line 31
    .line 32
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    invoke-static {p3}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    iput-object p3, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 40
    .line 41
    const/16 v0, -0x32

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    add-int/lit8 v1, p2, 0x32

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 61
    .line 62
    new-instance p0, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    .line 63
    .line 64
    invoke-direct {p0, p2, p1}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(ILjava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->$r8$classId:I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    iput p2, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    const p1, 0x7fffffff

    .line 74
    iput p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    return-void
.end method


# virtual methods
.method public addSegment(III)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Lcom/fsck/k9/message/html/EmailSection$Segment;

    .line 14
    .line 15
    invoke-direct {p1, p2, p3}, Lcom/fsck/k9/message/html/EmailSection$Segment;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public build()Lcom/fsck/k9/message/html/EmailSection;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/fsck/k9/message/html/EmailSection;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/fsck/k9/message/html/EmailSection;-><init>(Lcom/fsck/k9/message/html/EmailSection$Builder;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public checkOffsetIsValid(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 2
    .line 3
    iget p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-gt p1, p0, :cond_0

    .line 7
    .line 8
    if-gt v0, p1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :cond_0
    if-nez v1, :cond_1

    .line 12
    .line 13
    const-string v1, ". Valid range is ["

    .line 14
    .line 15
    const-string v2, " , "

    .line 16
    .line 17
    const-string v3, "Invalid offset: "

    .line 18
    .line 19
    invoke-static {v3, p1, v1, v0, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 p0, 0x5d

    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public clearNodeScope()V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->popNode()Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 27
    .line 28
    return-void
.end method

.method public closeNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 6
    .line 7
    iget v2, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v2, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 22
    .line 23
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .line 24
    .line 25
    if-lez v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->popNode()Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v4, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 39
    .line 40
    iput-object v1, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    array-length v5, v4

    .line 44
    if-lt v0, v5, :cond_1

    .line 45
    .line 46
    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 47
    .line 48
    array-length v5, v4

    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 54
    .line 55
    :cond_1
    :goto_1
    iget-object v1, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 56
    .line 57
    aput-object v3, v1, v0

    .line 58
    .line 59
    move v1, v0

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    iget p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 69
    .line 70
    add-int/2addr p1, v2

    .line 71
    iput p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 72
    .line 73
    return-void
.end method

.method public getLength()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/collection/CircularArray;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 21
    .line 22
    iget p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 23
    .line 24
    sub-int/2addr v2, p0

    .line 25
    sub-int/2addr v1, v2

    .line 26
    iget p0, v0, Landroidx/collection/CircularArray;->head:I

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->gapLength()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    sub-int/2addr p0, v0

    .line 33
    add-int/2addr p0, v1

    .line 34
    return p0
.end method

.method public isAfterLetterOrDigitOrEmoji(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iget p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 10
    .line 11
    if-gt p1, p0, :cond_2

    .line 12
    .line 13
    if-gt v1, p1, :cond_2

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sub-int/2addr p1, v2

    .line 27
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_2

    .line 43
    .line 44
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ne v1, v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/EmojiCompat;->getEmojiStart(ILjava/lang/CharSequence;)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    const/4 p1, -0x1

    .line 59
    if-eq p0, p1, :cond_2

    .line 60
    .line 61
    :goto_0
    return v2

    .line 62
    :cond_2
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method public isAfterPunctuation(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 6
    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    if-gt v0, p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/CharSequence;

    .line 14
    .line 15
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->isPunctuation$ui_text(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public isBoundary(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->checkOffsetIsValid(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/text/BreakIterator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isOnLetterOrDigitOrEmoji(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    add-int/lit8 v0, p1, -0x1

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isOnLetterOrDigitOrEmoji(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, p1, 0x1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isOnLetterOrDigitOrEmoji(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/lang/CharSequence;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr v1, v0

    .line 48
    if-ge p1, v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isHiraganaKatakanaBoundary(I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    add-int/2addr p1, v0

    .line 57
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isHiraganaKatakanaBoundary(I)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_2

    .line 62
    .line 63
    :cond_1
    return v0

    .line 64
    :cond_2
    const/4 p0, 0x0

    .line 65
    return p0
.end method

.method public isHiraganaKatakanaBoundary(I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    add-int/lit8 v0, p1, -0x1

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v3, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object p1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    .line 62
    .line 63
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    :cond_1
    const/4 p0, 0x1

    .line 70
    return p0

    .line 71
    :cond_2
    const/4 p0, 0x0

    .line 72
    return p0
.end method

.method public isOnLetterOrDigitOrEmoji(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 6
    .line 7
    iget p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 8
    .line 9
    if-ge p1, p0, :cond_2

    .line 10
    .line 11
    if-gt v1, p1, :cond_2

    .line 12
    .line 13
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-static {p0}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ne v2, v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/EmojiCompat;->getEmojiStart(ILjava/lang/CharSequence;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    const/4 p1, -0x1

    .line 57
    if-eq p0, p1, :cond_2

    .line 58
    .line 59
    :goto_0
    return v1

    .line 60
    :cond_2
    const/4 p0, 0x0

    .line 61
    return p0
.end method

.method public isOnPunctuation(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 4
    .line 5
    if-ge p1, v1, :cond_0

    .line 6
    .line 7
    if-gt v0, p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-static {p0}, Landroidx/compose/ui/unit/IntRectKt;->isPunctuation$ui_text(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public nextBoundary(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->checkOffsetIsValid(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/text/BreakIterator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    add-int/lit8 v0, p1, -0x1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isOnLetterOrDigitOrEmoji(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isOnLetterOrDigitOrEmoji(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isHiraganaKatakanaBoundary(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->nextBoundary(I)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_0
    return p1
.end method

.method public openNodeScope(Lorg/apache/james/mime4j/field/address/SimpleNode;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 15
    .line 16
    iput p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 17
    .line 18
    return-void
.end method

.method public popNode()Lorg/apache/james/mime4j/field/address/SimpleNode;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 6
    .line 7
    iget v2, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 8
    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 36
    .line 37
    return-object p0
.end method

.method public prevBoundary(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->checkOffsetIsValid(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/text/BreakIterator;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isOnLetterOrDigitOrEmoji(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isAfterLetterOrDigitOrEmoji(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->isHiraganaKatakanaBoundary(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/fsck/k9/message/html/EmailSection$Builder;->prevBoundary(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_0
    return p1
.end method

.method public replace(ILjava/lang/String;I)V
    .locals 7

    .line 1
    if-gt p1, p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "start index must be less than or equal to end index: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " > "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    if-ltz p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, "start must be non-negative, but was "

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroidx/collection/CircularArray;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    add-int/lit16 v0, v0, 0x80

    .line 61
    .line 62
    const/16 v2, 0xff

    .line 63
    .line 64
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    new-array v2, v0, [C

    .line 69
    .line 70
    const/16 v3, 0x40

    .line 71
    .line 72
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iget-object v5, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    sub-int/2addr v5, p3

    .line 85
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    iget-object v5, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v5, Ljava/lang/String;

    .line 92
    .line 93
    sub-int v6, p1, v4

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6, p1, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Ljava/lang/String;

    .line 104
    .line 105
    sub-int v5, v0, v3

    .line 106
    .line 107
    add-int/2addr v3, p3

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p3, v3, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    invoke-virtual {p2, v1, p1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Landroidx/collection/CircularArray;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    add-int/2addr p2, v4

    .line 128
    const/4 p3, 0x3

    .line 129
    invoke-direct {p1, p3}, Landroidx/collection/CircularArray;-><init>(I)V

    .line 130
    .line 131
    .line 132
    iput v0, p1, Landroidx/collection/CircularArray;->head:I

    .line 133
    .line 134
    iput-object v2, p1, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 135
    .line 136
    iput p2, p1, Landroidx/collection/CircularArray;->tail:I

    .line 137
    .line 138
    iput v5, p1, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 139
    .line 140
    iput-object p1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 141
    .line 142
    iput v6, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 143
    .line 144
    iput v3, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 145
    .line 146
    return-void

    .line 147
    :cond_2
    iget v2, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 148
    .line 149
    sub-int v3, p1, v2

    .line 150
    .line 151
    sub-int v2, p3, v2

    .line 152
    .line 153
    if-ltz v3, :cond_8

    .line 154
    .line 155
    iget v4, v0, Landroidx/collection/CircularArray;->head:I

    .line 156
    .line 157
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->gapLength()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    sub-int/2addr v4, v5

    .line 162
    if-le v2, v4, :cond_3

    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    sub-int p1, v2, v3

    .line 171
    .line 172
    sub-int/2addr p0, p1

    .line 173
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->gapLength()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-gt p0, p1, :cond_4

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->gapLength()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    sub-int/2addr p0, p1

    .line 185
    iget p1, v0, Landroidx/collection/CircularArray;->head:I

    .line 186
    .line 187
    :goto_2
    mul-int/lit8 p1, p1, 0x2

    .line 188
    .line 189
    iget p3, v0, Landroidx/collection/CircularArray;->head:I

    .line 190
    .line 191
    sub-int p3, p1, p3

    .line 192
    .line 193
    if-ge p3, p0, :cond_5

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_5
    new-array p0, p1, [C

    .line 197
    .line 198
    iget-object p3, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast p3, [C

    .line 201
    .line 202
    iget v4, v0, Landroidx/collection/CircularArray;->tail:I

    .line 203
    .line 204
    invoke-static {p3, v1, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    .line 206
    .line 207
    iget p3, v0, Landroidx/collection/CircularArray;->head:I

    .line 208
    .line 209
    iget v4, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 210
    .line 211
    sub-int/2addr p3, v4

    .line 212
    sub-int v5, p1, p3

    .line 213
    .line 214
    iget-object v6, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v6, [C

    .line 217
    .line 218
    add-int/2addr p3, v4

    .line 219
    sub-int/2addr p3, v4

    .line 220
    invoke-static {v6, v4, p0, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    .line 222
    .line 223
    iput-object p0, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 224
    .line 225
    iput p1, v0, Landroidx/collection/CircularArray;->head:I

    .line 226
    .line 227
    iput v5, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 228
    .line 229
    :goto_3
    iget p0, v0, Landroidx/collection/CircularArray;->tail:I

    .line 230
    .line 231
    if-ge v3, p0, :cond_6

    .line 232
    .line 233
    if-gt v2, p0, :cond_6

    .line 234
    .line 235
    sub-int/2addr p0, v2

    .line 236
    iget-object p1, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast p1, [C

    .line 239
    .line 240
    iget p3, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 241
    .line 242
    sub-int/2addr p3, p0

    .line 243
    invoke-static {p1, v2, p1, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    .line 245
    .line 246
    iput v3, v0, Landroidx/collection/CircularArray;->tail:I

    .line 247
    .line 248
    iget p1, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 249
    .line 250
    sub-int/2addr p1, p0

    .line 251
    iput p1, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_6
    if-ge v3, p0, :cond_7

    .line 255
    .line 256
    if-lt v2, p0, :cond_7

    .line 257
    .line 258
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->gapLength()I

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    add-int/2addr p0, v2

    .line 263
    iput p0, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 264
    .line 265
    iput v3, v0, Landroidx/collection/CircularArray;->tail:I

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_7
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->gapLength()I

    .line 269
    .line 270
    .line 271
    move-result p0

    .line 272
    add-int/2addr p0, v3

    .line 273
    invoke-virtual {v0}, Landroidx/collection/CircularArray;->gapLength()I

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    add-int/2addr p1, v2

    .line 278
    iget p3, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 279
    .line 280
    sub-int/2addr p0, p3

    .line 281
    iget-object v2, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v2, [C

    .line 284
    .line 285
    iget v3, v0, Landroidx/collection/CircularArray;->tail:I

    .line 286
    .line 287
    invoke-static {v2, p3, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    .line 289
    .line 290
    iget p3, v0, Landroidx/collection/CircularArray;->tail:I

    .line 291
    .line 292
    add-int/2addr p3, p0

    .line 293
    iput p3, v0, Landroidx/collection/CircularArray;->tail:I

    .line 294
    .line 295
    iput p1, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 296
    .line 297
    :goto_4
    iget-object p0, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast p0, [C

    .line 300
    .line 301
    iget p1, v0, Landroidx/collection/CircularArray;->tail:I

    .line 302
    .line 303
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 304
    .line 305
    .line 306
    move-result p3

    .line 307
    invoke-virtual {p2, v1, p3, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 308
    .line 309
    .line 310
    iget p0, v0, Landroidx/collection/CircularArray;->tail:I

    .line 311
    .line 312
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    add-int/2addr p1, p0

    .line 317
    iput p1, v0, Landroidx/collection/CircularArray;->tail:I

    .line 318
    .line 319
    return-void

    .line 320
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/fsck/k9/message/html/EmailSection$Builder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    iput-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 325
    .line 326
    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 328
    .line 329
    const/4 v0, -0x1

    .line 330
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 331
    .line 332
    iput v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 333
    .line 334
    invoke-virtual {p0, p1, p2, p3}, Lcom/fsck/k9/message/html/EmailSection$Builder;->replace(ILjava/lang/String;I)V

    .line 335
    .line 336
    .line 337
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->segments:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroidx/collection/CircularArray;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    iget v3, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->quoteDepth:I

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-virtual {v2, v1, v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, [C

    .line 36
    .line 37
    iget v3, v0, Landroidx/collection/CircularArray;->tail:I

    .line 38
    .line 39
    invoke-virtual {v2, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Landroidx/collection/CircularArray;->elements:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, [C

    .line 45
    .line 46
    iget v3, v0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 47
    .line 48
    iget v0, v0, Landroidx/collection/CircularArray;->head:I

    .line 49
    .line 50
    sub-int/2addr v0, v3

    .line 51
    invoke-virtual {v2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->text:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    .line 58
    iget p0, p0, Lcom/fsck/k9/message/html/EmailSection$Builder;->indent:I

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v2, v0, p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
