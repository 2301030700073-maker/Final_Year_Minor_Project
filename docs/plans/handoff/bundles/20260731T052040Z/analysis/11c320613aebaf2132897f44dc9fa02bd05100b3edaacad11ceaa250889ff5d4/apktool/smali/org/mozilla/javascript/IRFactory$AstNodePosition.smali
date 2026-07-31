.class public Lorg/mozilla/javascript/IRFactory$AstNodePosition;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/Parser$CurrentPositionReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/IRFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AstNodePosition"
.end annotation


# instance fields
.field private savedLine:Ljava/lang/String;

.field private savedLineOffset:I

.field private savedLineno:I

.field private sourceString:Ljava/lang/String;

.field private stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/mozilla/javascript/ast/AstNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineno:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private cutAndSaveLine()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->getLineno()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineno:I

    .line 6
    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    move v3, v1

    .line 13
    move v4, v3

    .line 14
    move v5, v2

    .line 15
    :goto_0
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-ge v3, v6, :cond_5

    .line 22
    .line 23
    iget-object v6, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    const/16 v7, 0xa

    .line 32
    .line 33
    if-ne v6, v7, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    const/16 v4, 0xd

    .line 37
    .line 38
    if-ne v6, v4, :cond_2

    .line 39
    .line 40
    move v4, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v4, v1

    .line 43
    :goto_1
    if-ne v5, v0, :cond_3

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-static {v6}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_4

    .line 51
    .line 52
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    :goto_3
    move v4, v3

    .line 58
    :goto_4
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-ge v4, v5, :cond_7

    .line 65
    .line 66
    iget-object v5, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_6

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_7
    :goto_5
    iput v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineno:I

    .line 83
    .line 84
    if-nez v4, :cond_8

    .line 85
    .line 86
    const-string v0, ""

    .line 87
    .line 88
    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLine:Ljava/lang/String;

    .line 89
    .line 90
    iput v1, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineOffset:I

    .line 91
    .line 92
    return-void

    .line 93
    :cond_8
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->sourceString:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLine:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->getPosition()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    sub-int/2addr v0, v3

    .line 106
    add-int/2addr v0, v2

    .line 107
    iput v0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineOffset:I

    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/mozilla/javascript/ast/AstNode;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLength()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public getLine()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->cutAndSaveLine()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLine:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0
.end method

.method public getLineno()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/mozilla/javascript/ast/AstNode;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getLineno()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public getOffset()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->cutAndSaveLine()V

    .line 2
    .line 3
    .line 4
    iget p0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->savedLineOffset:I

    .line 5
    .line 6
    return p0
.end method

.method public getPosition()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/mozilla/javascript/ast/AstNode;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/mozilla/javascript/ast/AstNode;->getAbsolutePosition()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public pop()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public push(Lorg/mozilla/javascript/ast/AstNode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IRFactory$AstNodePosition;->stack:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
