.class public Lorg/mozilla/javascript/json/JsonParser;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/json/JsonParser$ParseException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cx:Lorg/mozilla/javascript/Context;

.field private length:I

.field private pos:I

.field private scope:Lorg/mozilla/javascript/Scriptable;

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 7
    .line 8
    return-void
.end method

.method private consume(C)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 7
    .line 8
    const-string v2, "Expected "

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 13
    .line 14
    add-int/lit8 v3, v0, 0x1

    .line 15
    .line 16
    iput v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-ne p0, p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " found "

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_1
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p1, " but reached end of stream"

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method

.method private consumeWhitespace()V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x9

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0xd

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    return-void
.end method

.method private static fromHex(C)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 v0, 0x41

    .line 12
    .line 13
    if-lt p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x46

    .line 16
    .line 17
    if-gt p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x37

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    const/16 v0, 0x61

    .line 23
    .line 24
    if-lt p0, v0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x66

    .line 27
    .line 28
    if-gt p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x57

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    return p0
.end method

.method private nextOrNumberError(I)C
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/mozilla/javascript/json/JsonParser;->numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    throw p0
.end method

.method private numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;
    .locals 1

    .line 1
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "Unsupported number format: "

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private readArray()Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 7
    .line 8
    const/16 v2, 0x5d

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 23
    .line 24
    add-int/2addr v0, v4

    .line 25
    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 26
    .line 27
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    .line 28
    .line 29
    iget-object p0, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 30
    .line 31
    invoke-virtual {v0, p0, v3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    move v1, v3

    .line 42
    :goto_0
    iget v5, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 43
    .line 44
    iget v6, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 45
    .line 46
    if-ge v5, v6, :cond_6

    .line 47
    .line 48
    iget-object v6, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/16 v6, 0x2c

    .line 55
    .line 56
    const-string v7, "Unexpected comma in array literal"

    .line 57
    .line 58
    if-eq v5, v6, :cond_4

    .line 59
    .line 60
    if-eq v5, v2, :cond_2

    .line 61
    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move v1, v4

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 74
    .line 75
    const-string v0, "Missing comma in array literal"

    .line 76
    .line 77
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_2
    if-eqz v1, :cond_3

    .line 82
    .line 83
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 84
    .line 85
    add-int/2addr v1, v4

    .line 86
    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 87
    .line 88
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    .line 89
    .line 90
    iget-object p0, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, p0, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_3
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 102
    .line 103
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_4
    if-eqz v1, :cond_5

    .line 108
    .line 109
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 110
    .line 111
    add-int/2addr v1, v4

    .line 112
    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 113
    .line 114
    move v1, v3

    .line 115
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 120
    .line 121
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_6
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 126
    .line 127
    const-string v0, "Unterminated array literal"

    .line 128
    .line 129
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method private readDigits()V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x30

    .line 14
    .line 15
    if-lt v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x39

    .line 18
    .line 19
    if-le v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return-void
.end method

.method private readFalse()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v2, 0x4

    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x61

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 20
    .line 21
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x6c

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 34
    .line 35
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0x73

    .line 44
    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 48
    .line 49
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x3

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/16 v1, 0x65

    .line 58
    .line 59
    if-ne v0, v1, :cond_0

    .line 60
    .line 61
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 62
    .line 63
    add-int/2addr v0, v2

    .line 64
    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 65
    .line 66
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_0
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 70
    .line 71
    const-string v0, "Unexpected token: f"

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method private readNull()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x75

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 20
    .line 21
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x6c

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 34
    .line 35
    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x2

    .line 38
    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne v0, v1, :cond_0

    .line 44
    .line 45
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 46
    .line 47
    add-int/2addr v0, v2

    .line 48
    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_0
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 53
    .line 54
    const-string v0, "Unexpected token: n"

    .line 55
    .line 56
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method private readNumber(C)Ljava/lang/Number;
    .locals 5

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    const/16 v2, 0x30

    .line 8
    .line 9
    const/16 v3, 0x2d

    .line 10
    .line 11
    if-ne p1, v3, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->nextOrNumberError(I)C

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-lt p1, v2, :cond_0

    .line 18
    .line 19
    if-gt p1, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 23
    .line 24
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/json/JsonParser;->numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    if-eq p1, v2, :cond_2

    .line 30
    .line 31
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readDigits()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 35
    .line 36
    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 37
    .line 38
    if-ge p1, v4, :cond_4

    .line 39
    .line 40
    iget-object v4, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/16 v4, 0x2e

    .line 47
    .line 48
    if-ne p1, v4, :cond_4

    .line 49
    .line 50
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    iput p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 55
    .line 56
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->nextOrNumberError(I)C

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-lt p1, v2, :cond_3

    .line 61
    .line 62
    if-gt p1, v1, :cond_3

    .line 63
    .line 64
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readDigits()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 69
    .line 70
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/json/JsonParser;->numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    throw p0

    .line 75
    :cond_4
    :goto_1
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 76
    .line 77
    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 78
    .line 79
    if-ge p1, v4, :cond_9

    .line 80
    .line 81
    iget-object v4, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const/16 v4, 0x65

    .line 88
    .line 89
    if-eq p1, v4, :cond_5

    .line 90
    .line 91
    const/16 v4, 0x45

    .line 92
    .line 93
    if-ne p1, v4, :cond_9

    .line 94
    .line 95
    :cond_5
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 96
    .line 97
    add-int/lit8 p1, p1, 0x1

    .line 98
    .line 99
    iput p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 100
    .line 101
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->nextOrNumberError(I)C

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eq p1, v3, :cond_6

    .line 106
    .line 107
    const/16 v3, 0x2b

    .line 108
    .line 109
    if-ne p1, v3, :cond_7

    .line 110
    .line 111
    :cond_6
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->nextOrNumberError(I)C

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    :cond_7
    if-lt p1, v2, :cond_8

    .line 116
    .line 117
    if-gt p1, v1, :cond_8

    .line 118
    .line 119
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readDigits()V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_8
    iget p1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 124
    .line 125
    invoke-direct {p0, v0, p1}, Lorg/mozilla/javascript/json/JsonParser;->numberError(II)Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    throw p0

    .line 130
    :cond_9
    :goto_2
    iget-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 131
    .line 132
    iget p0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 133
    .line 134
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 139
    .line 140
    .line 141
    move-result-wide p0

    .line 142
    double-to-int v0, p0

    .line 143
    int-to-double v1, v0

    .line 144
    cmpl-double v1, v1, p0

    .line 145
    .line 146
    if-nez v1, :cond_a

    .line 147
    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :cond_a
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0
.end method

.method private readObject()Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 13
    .line 14
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 15
    .line 16
    const/16 v3, 0x7d

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-ge v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, v3, :cond_0

    .line 28
    .line 29
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 30
    .line 31
    add-int/2addr v1, v4

    .line 32
    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    move v2, v1

    .line 37
    :goto_0
    iget v5, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 38
    .line 39
    iget v6, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 40
    .line 41
    if-ge v5, v6, :cond_8

    .line 42
    .line 43
    iget-object v6, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 44
    .line 45
    add-int/lit8 v7, v5, 0x1

    .line 46
    .line 47
    iput v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 48
    .line 49
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/16 v6, 0x22

    .line 54
    .line 55
    if-eq v5, v6, :cond_5

    .line 56
    .line 57
    const/16 v6, 0x2c

    .line 58
    .line 59
    const-string v7, "Unexpected comma in object literal"

    .line 60
    .line 61
    if-eq v5, v6, :cond_3

    .line 62
    .line 63
    if-ne v5, v3, :cond_2

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_1
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 69
    .line 70
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_2
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 75
    .line 76
    const-string v0, "Unexpected token in object literal"

    .line 77
    .line 78
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0

    .line 82
    :cond_3
    if-eqz v2, :cond_4

    .line 83
    .line 84
    move v2, v1

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 87
    .line 88
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_5
    if-nez v2, :cond_7

    .line 93
    .line 94
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const/16 v5, 0x3a

    .line 99
    .line 100
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/json/JsonParser;->consume(C)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toStringIdOrIndex(Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->getStringId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    if-nez v6, :cond_6

    .line 116
    .line 117
    invoke-virtual {v2}, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->getIndex()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-interface {v0, v2, v0, v5}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    invoke-virtual {v2}, Lorg/mozilla/javascript/ScriptRuntime$StringIdOrIndex;->getStringId()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-interface {v0, v2, v0, v5}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :goto_1
    move v2, v4

    .line 133
    :goto_2
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_7
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 138
    .line 139
    const-string v0, "Missing comma in object literal"

    .line 140
    .line 141
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_8
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 146
    .line 147
    const-string v0, "Unterminated object literal"

    .line 148
    .line 149
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0
.end method

.method private readString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 2
    .line 3
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 4
    .line 5
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 6
    .line 7
    const-string v3, "String contains control character"

    .line 8
    .line 9
    const/16 v4, 0x1f

    .line 10
    .line 11
    const/16 v5, 0x22

    .line 12
    .line 13
    const/16 v6, 0x5c

    .line 14
    .line 15
    if-ge v1, v2, :cond_3

    .line 16
    .line 17
    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 18
    .line 19
    add-int/lit8 v7, v1, 0x1

    .line 20
    .line 21
    iput v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-le v1, v4, :cond_2

    .line 28
    .line 29
    if-ne v1, v6, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-ne v1, v5, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 35
    .line 36
    iget p0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 37
    .line 38
    add-int/lit8 p0, p0, -0x1

    .line 39
    .line 40
    invoke-virtual {v1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 46
    .line 47
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0

    .line 51
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    :cond_4
    :goto_1
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 57
    .line 58
    iget v7, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 59
    .line 60
    if-ge v2, v7, :cond_14

    .line 61
    .line 62
    iget-object v7, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 63
    .line 64
    add-int/lit8 v2, v2, -0x1

    .line 65
    .line 66
    invoke-virtual {v1, v7, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 70
    .line 71
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 72
    .line 73
    if-ge v0, v2, :cond_13

    .line 74
    .line 75
    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 76
    .line 77
    add-int/lit8 v7, v0, 0x1

    .line 78
    .line 79
    iput v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eq v0, v5, :cond_f

    .line 86
    .line 87
    const/16 v2, 0x2f

    .line 88
    .line 89
    if-eq v0, v2, :cond_e

    .line 90
    .line 91
    if-eq v0, v6, :cond_d

    .line 92
    .line 93
    const/16 v2, 0x62

    .line 94
    .line 95
    const/16 v7, 0x8

    .line 96
    .line 97
    if-eq v0, v2, :cond_c

    .line 98
    .line 99
    const/16 v2, 0x66

    .line 100
    .line 101
    const/16 v8, 0xc

    .line 102
    .line 103
    if-eq v0, v2, :cond_b

    .line 104
    .line 105
    const/16 v2, 0x6e

    .line 106
    .line 107
    if-eq v0, v2, :cond_a

    .line 108
    .line 109
    const/16 v2, 0x72

    .line 110
    .line 111
    if-eq v0, v2, :cond_9

    .line 112
    .line 113
    const/16 v2, 0x74

    .line 114
    .line 115
    if-eq v0, v2, :cond_8

    .line 116
    .line 117
    const/16 v2, 0x75

    .line 118
    .line 119
    if-ne v0, v2, :cond_7

    .line 120
    .line 121
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 122
    .line 123
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 124
    .line 125
    sub-int/2addr v0, v2

    .line 126
    const/4 v9, 0x5

    .line 127
    if-lt v0, v9, :cond_6

    .line 128
    .line 129
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v0}, Lorg/mozilla/javascript/json/JsonParser;->fromHex(C)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    shl-int/2addr v0, v8

    .line 140
    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 141
    .line 142
    iget v8, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 143
    .line 144
    add-int/lit8 v8, v8, 0x1

    .line 145
    .line 146
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-static {v2}, Lorg/mozilla/javascript/json/JsonParser;->fromHex(C)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    shl-int/2addr v2, v7

    .line 155
    or-int/2addr v0, v2

    .line 156
    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 157
    .line 158
    iget v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 159
    .line 160
    add-int/lit8 v7, v7, 0x2

    .line 161
    .line 162
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-static {v2}, Lorg/mozilla/javascript/json/JsonParser;->fromHex(C)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    shl-int/lit8 v2, v2, 0x4

    .line 171
    .line 172
    or-int/2addr v0, v2

    .line 173
    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 174
    .line 175
    iget v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 176
    .line 177
    add-int/lit8 v7, v7, 0x3

    .line 178
    .line 179
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-static {v2}, Lorg/mozilla/javascript/json/JsonParser;->fromHex(C)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    or-int/2addr v0, v2

    .line 188
    if-ltz v0, :cond_5

    .line 189
    .line 190
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 191
    .line 192
    add-int/lit8 v2, v2, 0x4

    .line 193
    .line 194
    iput v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 195
    .line 196
    int-to-char v0, v0

    .line 197
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_5
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 202
    .line 203
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 204
    .line 205
    iget p0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 206
    .line 207
    add-int/lit8 v2, p0, 0x4

    .line 208
    .line 209
    invoke-virtual {v1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    const-string v1, "Invalid character code: "

    .line 214
    .line 215
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_6
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 224
    .line 225
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 226
    .line 227
    iget p0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 228
    .line 229
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    const-string v1, "Invalid character code: \\u"

    .line 234
    .line 235
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    invoke-direct {v0, p0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :cond_7
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 244
    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v2, "Unexpected character in string: \'\\"

    .line 248
    .line 249
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v0, "\'"

    .line 256
    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p0

    .line 268
    :cond_8
    const/16 v0, 0x9

    .line 269
    .line 270
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_9
    const/16 v0, 0xd

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_a
    const/16 v0, 0xa

    .line 281
    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_b
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    goto :goto_2

    .line 294
    :cond_d
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    :goto_2
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 306
    .line 307
    :cond_10
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 308
    .line 309
    iget v7, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 310
    .line 311
    if-ge v2, v7, :cond_4

    .line 312
    .line 313
    iget-object v7, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 314
    .line 315
    add-int/lit8 v8, v2, 0x1

    .line 316
    .line 317
    iput v8, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 318
    .line 319
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-le v2, v4, :cond_12

    .line 324
    .line 325
    if-ne v2, v6, :cond_11

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :cond_11
    if-ne v2, v5, :cond_10

    .line 330
    .line 331
    iget-object v2, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 332
    .line 333
    iget p0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 334
    .line 335
    add-int/lit8 p0, p0, -0x1

    .line 336
    .line 337
    invoke-virtual {v1, v2, v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object p0

    .line 344
    return-object p0

    .line 345
    :cond_12
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 346
    .line 347
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    throw p0

    .line 351
    :cond_13
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 352
    .line 353
    const-string v0, "Unterminated string"

    .line 354
    .line 355
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw p0

    .line 359
    :cond_14
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 360
    .line 361
    const-string v0, "Unterminated string literal"

    .line 362
    .line 363
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw p0
.end method

.method private readTrue()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt v0, v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x72

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 20
    .line 21
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x75

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 34
    .line 35
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0x65

    .line 44
    .line 45
    if-ne v0, v1, :cond_0

    .line 46
    .line 47
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 48
    .line 49
    add-int/2addr v0, v2

    .line 50
    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 51
    .line 52
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_0
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 56
    .line 57
    const-string v0, "Unexpected token: t"

    .line 58
    .line 59
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method private readValue()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 5
    .line 6
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 7
    .line 8
    if-ge v0, v1, :cond_7

    .line 9
    .line 10
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 11
    .line 12
    add-int/lit8 v2, v0, 0x1

    .line 13
    .line 14
    iput v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x22

    .line 21
    .line 22
    if-eq v0, v1, :cond_6

    .line 23
    .line 24
    const/16 v1, 0x2d

    .line 25
    .line 26
    if-eq v0, v1, :cond_5

    .line 27
    .line 28
    const/16 v1, 0x5b

    .line 29
    .line 30
    if-eq v0, v1, :cond_4

    .line 31
    .line 32
    const/16 v1, 0x66

    .line 33
    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    const/16 v1, 0x6e

    .line 37
    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const/16 v1, 0x74

    .line 41
    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    const/16 v1, 0x7b

    .line 45
    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    packed-switch v0, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "Unexpected token: "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readObject()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readTrue()Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_2
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readNull()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_3
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readFalse()Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0

    .line 91
    :cond_4
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readArray()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :cond_5
    :pswitch_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->readNumber(C)Ljava/lang/Number;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    return-object p0

    .line 101
    :cond_6
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :cond_7
    new-instance p0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 107
    .line 108
    const-string v0, "Empty JSON string"

    .line 109
    .line 110
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p0

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "Expected end of stream at char "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 14
    .line 15
    iput-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 25
    .line 26
    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    if-lt v1, v2, :cond_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-object p1

    .line 32
    :cond_0
    :try_start_1
    new-instance p1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 33
    .line 34
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    .line 55
    .line 56
    const-string v0, "Input string may not be null"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1
.end method
