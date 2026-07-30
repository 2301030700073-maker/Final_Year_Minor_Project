.class public Lcom/android/contacts/util/SearchUtil;
.super Ljava/lang/Object;
.source "SearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/SearchUtil$MatchedLine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanStartAndEndOfSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 175
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 177
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 183
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string p0, ""

    return-object p0

    .line 188
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    const/4 v2, -0x1

    if-le v1, v2, :cond_5

    .line 190
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 194
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 195
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 202
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static contains(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 102
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 103
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 104
    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 106
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 109
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge p1, v3, :cond_5

    move v3, p1

    const/4 v5, 0x0

    .line 111
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    if-ge v5, v4, :cond_3

    .line 112
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    .line 113
    aget v7, v0, v5

    if-eq v6, v7, :cond_2

    goto :goto_3

    .line 117
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ne v5, v4, :cond_4

    return p1

    .line 109
    :cond_4
    invoke-static {p0, p1}, Lcom/android/contacts/util/SearchUtil;->findNextTokenStart(Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    :cond_5
    return v2
.end method

.method public static findMatchingLine(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/util/SearchUtil$MatchedLine;
    .locals 5

    .line 50
    new-instance v0, Lcom/android/contacts/util/SearchUtil$MatchedLine;

    invoke-direct {v0}, Lcom/android/contacts/util/SearchUtil$MatchedLine;-><init>()V

    .line 54
    invoke-static {p0, p1}, Lcom/android/contacts/util/SearchUtil;->contains(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    add-int/lit8 v2, p1, -0x1

    :goto_0
    const/16 v3, 0xa

    if-le v2, v1, :cond_1

    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, p1, 0x1

    .line 65
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 71
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/contacts/util/SearchUtil$MatchedLine;->line:Ljava/lang/String;

    sub-int/2addr p1, v2

    .line 72
    iput p1, v0, Lcom/android/contacts/util/SearchUtil$MatchedLine;->startIndex:I

    :cond_4
    return-object v0
.end method

.method static findNextTokenStart(Ljava/lang/String;I)I
    .locals 2

    .line 139
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    return p1

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 145
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    .line 152
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_5

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_3

    return p1

    .line 156
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 157
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 160
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_1

    :cond_5
    :goto_2
    return p1
.end method
