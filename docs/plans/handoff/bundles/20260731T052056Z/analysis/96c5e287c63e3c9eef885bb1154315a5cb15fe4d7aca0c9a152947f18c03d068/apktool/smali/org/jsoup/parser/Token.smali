.class public abstract Lorg/jsoup/parser/Token;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public endPos:I

.field public startPos:I

.field public final type:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 5
    .line 6
    iput p1, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Token$TokenType;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 14
    iput-object p1, p0, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getGroup()I
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "ab_test_"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, -0x1

    .line 16
    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 21
    .line 22
    if-ne v2, v4, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    new-instance v4, Lkotlin/random/XorWowRandom;

    .line 29
    .line 30
    long-to-int v5, v2

    .line 31
    const/16 v6, 0x20

    .line 32
    .line 33
    shr-long/2addr v2, v6

    .line 34
    long-to-int v2, v2

    .line 35
    invoke-direct {v4, v5, v2}, Lkotlin/random/XorWowRandom;-><init>(II)V

    .line 36
    .line 37
    .line 38
    const v2, 0x7fffffff

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-virtual {v4, v3, v2}, Lkotlin/random/Random;->nextInt(II)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iget v3, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 47
    .line 48
    rem-int/2addr v2, v3

    .line 49
    xor-int v4, v2, v3

    .line 50
    .line 51
    neg-int v5, v2

    .line 52
    or-int/2addr v5, v2

    .line 53
    and-int/2addr v4, v5

    .line 54
    shr-int/lit8 v4, v4, 0x1f

    .line 55
    .line 56
    and-int/2addr v3, v4

    .line 57
    add-int/2addr v2, v3

    .line 58
    iput v2, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget v1, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 65
    .line 66
    invoke-static {}, Lorg/wikipedia/settings/PrefsIoUtil;->getPreferences()Landroid/content/SharedPreferences;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    .line 83
    .line 84
    :cond_0
    iget p0, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 85
    .line 86
    return p0
.end method

.method public isComment()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isDoctype()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isEOF()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isEndTag()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public isStartTag()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Token;->type:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public abstract reset()V
.end method
