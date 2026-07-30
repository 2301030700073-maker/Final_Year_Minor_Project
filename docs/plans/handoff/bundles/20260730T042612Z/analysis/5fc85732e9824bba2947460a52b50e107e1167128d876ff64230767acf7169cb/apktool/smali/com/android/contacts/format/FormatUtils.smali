.class public Lcom/android/contacts/format/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStyleToSpan(ILjava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 106
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 107
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 108
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, p0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static charArrayBufferToString(Landroid/database/CharArrayBuffer;)Ljava/lang/String;
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget p0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyToCharArrayBuffer(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 115
    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    if-eqz v1, :cond_1

    .line 116
    array-length v2, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1, v0}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 121
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    iput p0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_2

    .line 123
    :cond_2
    iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    :goto_2
    return-void
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_8

    if-nez p0, :cond_0

    goto :goto_4

    .line 146
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    if-ge v1, v2, :cond_1

    goto :goto_4

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_2
    if-ge v4, v1, :cond_8

    :goto_0
    if-ge v4, v1, :cond_3

    .line 156
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int v5, v4, v2

    if-le v5, v1, :cond_4

    return v0

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_6

    add-int v6, v4, v5

    .line 167
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ne v5, v2, :cond_7

    return v4

    :cond_7
    :goto_3
    if-ge v4, v1, :cond_2

    .line 176
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return v0
.end method

.method public static overlapPoint(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)I
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    iget p0, p0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget p1, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 41
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Lcom/android/contacts/format/FormatUtils;->overlapPoint([C[C)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static overlapPoint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/contacts/format/FormatUtils;->overlapPoint([C[C)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static overlapPoint([C[C)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_4

    .line 64
    :cond_0
    array-length v1, p0

    .line 65
    array-length v2, p1

    :goto_0
    if-lez v1, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v3, v1, -0x1

    .line 68
    aget-char v3, p0, v3

    add-int/lit8 v4, v2, -0x1

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_6

    add-int v5, v4, v2

    if-le v5, v1, :cond_2

    sub-int v2, v1, v4

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_4

    add-int v6, v4, v5

    .line 80
    aget-char v6, p0, v6

    aget-char v7, p1, v5

    if-eq v6, v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ne v5, v2, :cond_5

    return v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    return v0
.end method
