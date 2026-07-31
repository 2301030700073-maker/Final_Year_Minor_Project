.class public final Lorg/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final AttributeEvals:[Ljava/lang/String;

.field public static final Combinators:[C

.field public static final NthOffset:Ljava/util/regex/Pattern;

.field public static final NthStepOffset:Ljava/util/regex/Pattern;

.field public static final SequenceEnders:[C


# instance fields
.field public inNodeContext:Z

.field public final query:Ljava/lang/String;

.field public final tq:Lorg/jsoup/parser/TokenQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/select/QueryParser;->Combinators:[C

    .line 8
    .line 9
    const-string v5, "*="

    .line 10
    .line 11
    const-string/jumbo v6, "~="

    .line 12
    .line 13
    .line 14
    const-string v1, "="

    .line 15
    .line 16
    const-string v2, "!="

    .line 17
    .line 18
    const-string v3, "^="

    .line 19
    .line 20
    const-string v4, "$="

    .line 21
    .line 22
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    new-array v1, v0, [C

    .line 30
    .line 31
    fill-array-data v1, :array_1

    .line 32
    .line 33
    .line 34
    sput-object v1, Lorg/jsoup/select/QueryParser;->SequenceEnders:[C

    .line 35
    .line 36
    const-string v1, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    .line 37
    .line 38
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lorg/jsoup/select/QueryParser;->NthStepOffset:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    const-string v0, "([+-])?(\\d+)"

    .line 45
    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lorg/jsoup/select/QueryParser;->NthOffset:Ljava/util/regex/Pattern;

    .line 51
    .line 52
    return-void

    .line 53
    :array_0
    .array-data 2
        0x3es
        0x2bs
        0x7es
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    nop

    .line 61
    :array_1
    .array-data 2
        0x2cs
        0x29s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 19
    .line 20
    return-void
.end method

.method public static and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    instance-of v0, p0, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 10
    .line 11
    iget-object v1, v0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/jsoup/select/CombiningEvaluator;->updateEvaluators()V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance v0, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [Lorg/jsoup/select/Evaluator;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object p0, v1, v2

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    aput-object p1, v1, p0

    .line 30
    .line 31
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/jsoup/select/QueryParser;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :try_start_1
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->parseSelectorGroup()Lorg/jsoup/select/Evaluator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object v1, v0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 13
    .line 14
    .line 15
    iget-object v1, v1, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    :try_start_2
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    :try_start_3
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 28
    .line 29
    const-string v2, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 30
    .line 31
    iget-object v3, v0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v4, 0x2

    .line 38
    new-array v4, v4, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    aput-object v3, v4, v5

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    aput-object v1, v4, v3

    .line 45
    .line 46
    invoke-direct {p0, v2, v4}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_4
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    throw p0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenQueue;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final consumeIndex()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    move v2, v0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {v3}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x1

    .line 41
    :cond_3
    :goto_1
    const-string v1, "Index must be numeric"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroidx/sqlite/SQLite;->isTrue(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public final consumeParens()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    const/16 v1, 0x29

    .line 4
    .line 5
    iget-object p0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final contains(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":containsOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":contains"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "(text) query must not be empty"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean p0, p0, Lorg/jsoup/select/QueryParser;->inNodeContext:Z

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    new-instance p0, Lorg/jsoup/select/NodeEvaluator$MatchesValue;

    .line 30
    .line 31
    invoke-direct {p0, v1}, Lorg/jsoup/select/NodeEvaluator$MatchesValue;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance p0, Lorg/jsoup/select/Evaluator$Id;

    .line 38
    .line 39
    const/4 p1, 0x5

    .line 40
    invoke-direct {p0, v1, p1}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    new-instance p0, Lorg/jsoup/select/Evaluator$Id;

    .line 45
    .line 46
    const/4 p1, 0x6

    .line 47
    invoke-direct {p0, v1, p1}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public final containsWholeText(Z)Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":containsWholeOwnText"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":containsWholeText"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v1, "(text) query must not be empty"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    new-instance p1, Lorg/jsoup/select/Evaluator$Id;

    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    invoke-direct {p1, v1, p0, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$Id;

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    invoke-direct {p1, v1, p0, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public final cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "odd"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x2

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move v0, v3

    .line 22
    :goto_0
    move p0, v4

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    const-string v0, "even"

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v0, Lorg/jsoup/select/QueryParser;->NthStepOffset:Ljava/util/regex/Pattern;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const-string v6, ""

    .line 46
    .line 47
    const-string v7, "^\\+"

    .line 48
    .line 49
    if-eqz v5, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p0, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-string p0, "-"

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-eqz p0, :cond_3

    .line 81
    .line 82
    const/4 p0, -0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move p0, v3

    .line 85
    :goto_1
    const/4 v5, 0x4

    .line 86
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-eqz v8, :cond_4

    .line 91
    .line 92
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    goto :goto_2

    .line 105
    :cond_4
    move v0, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    sget-object v0, Lorg/jsoup/select/QueryParser;->NthOffset:Ljava/util/regex/Pattern;

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_9

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    move p0, v2

    .line 132
    :goto_2
    if-eqz p2, :cond_7

    .line 133
    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 137
    .line 138
    invoke-direct {p1, p0, v0, v4}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 139
    .line 140
    .line 141
    return-object p1

    .line 142
    :cond_6
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 143
    .line 144
    invoke-direct {p1, p0, v0, v1}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 145
    .line 146
    .line 147
    return-object p1

    .line 148
    :cond_7
    if-eqz p1, :cond_8

    .line 149
    .line 150
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 151
    .line 152
    invoke-direct {p1, p0, v0, v3}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 153
    .line 154
    .line 155
    return-object p1

    .line 156
    :cond_8
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 157
    .line 158
    invoke-direct {p1, p0, v0, v2}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 159
    .line 160
    .line 161
    return-object p1

    .line 162
    :cond_9
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 163
    .line 164
    new-array p2, v3, [Ljava/lang/Object;

    .line 165
    .line 166
    aput-object p0, p2, v2

    .line 167
    .line 168
    const-string p0, "Could not parse nth-index \'%s\': unexpected format"

    .line 169
    .line 170
    invoke-direct {p1, p0, p2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    throw p1
.end method

.method public final evaluatorForAttribute(Lorg/jsoup/parser/TokenQueue;)Lorg/jsoup/select/Evaluator;
    .locals 6

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 2
    .line 3
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    move v2, v3

    .line 15
    :goto_1
    const/4 v4, 0x6

    .line 16
    if-ge v2, v4, :cond_1

    .line 17
    .line 18
    sget-object v4, Lorg/jsoup/select/QueryParser;->AttributeEvals:[Ljava/lang/String;

    .line 19
    .line 20
    aget-object v4, v4, v2

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_2
    invoke-static {v1}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v2, "abs:"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_c

    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v4, 0x2

    .line 67
    const/4 v5, 0x1

    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    const-string p0, "^"

    .line 71
    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_3

    .line 77
    .line 78
    new-instance p0, Lorg/jsoup/select/Evaluator$Id;

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1, v4}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    return-object p0

    .line 88
    :cond_3
    const-string p0, "*"

    .line 89
    .line 90
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    new-instance p0, Lorg/jsoup/select/Evaluator$Id;

    .line 97
    .line 98
    const-string p1, ""

    .line 99
    .line 100
    invoke-direct {p0, p1, v4}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_4
    new-instance p0, Lorg/jsoup/select/Evaluator$Id;

    .line 105
    .line 106
    invoke-direct {p0, v5, v1, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_5
    const/16 v2, 0x3d

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    new-instance p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 119
    .line 120
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {p0, v1, p1, v3}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_6
    const-string p1, "!="

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    new-instance p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 137
    .line 138
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const/4 v0, 0x3

    .line 143
    invoke-direct {p0, v1, p1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    return-object p0

    .line 147
    :cond_7
    const-string p1, "^="

    .line 148
    .line 149
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_8

    .line 154
    .line 155
    new-instance p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 156
    .line 157
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const/4 v0, 0x4

    .line 162
    invoke-direct {p0, v1, p1, v0}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    return-object p0

    .line 166
    :cond_8
    const-string p1, "$="

    .line 167
    .line 168
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_9

    .line 173
    .line 174
    new-instance p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 175
    .line 176
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-direct {p0, v1, p1, v4}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    return-object p0

    .line 184
    :cond_9
    const-string p1, "*="

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_a

    .line 191
    .line 192
    new-instance p0, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 193
    .line 194
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-direct {p0, v1, p1, v5}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    .line 200
    .line 201
    return-object p0

    .line 202
    :cond_a
    const-string/jumbo p1, "~="

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_b

    .line 210
    .line 211
    new-instance p0, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    .line 212
    .line 213
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p1}, Lorg/jsoup/helper/Regex;->compile(Ljava/lang/String;)Lorg/jsoup/helper/Regex;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-direct {p0, v1, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Lorg/jsoup/helper/Regex;)V

    .line 222
    .line 223
    .line 224
    return-object p0

    .line 225
    :cond_b
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 226
    .line 227
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    new-array v1, v4, [Ljava/lang/Object;

    .line 232
    .line 233
    iget-object p0, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 234
    .line 235
    aput-object p0, v1, v3

    .line 236
    .line 237
    aput-object v0, v1, v5

    .line 238
    .line 239
    const-string p0, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    .line 240
    .line 241
    invoke-direct {p1, p0, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    throw p1

    .line 245
    :cond_c
    new-instance p0, Lorg/jsoup/helper/ValidationException;

    .line 246
    .line 247
    const-string p1, "Absolute attribute key must have a name"

    .line 248
    .line 249
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p0
.end method

.method public final matches(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":matchesOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":matches"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "(regex) query must not be empty"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lorg/jsoup/helper/Regex;->compile(Ljava/lang/String;)Lorg/jsoup/helper/Regex;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean p0, p0, Lorg/jsoup/select/QueryParser;->inNodeContext:Z

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    new-instance p0, Lorg/jsoup/select/NodeEvaluator$MatchesValue;

    .line 30
    .line 31
    invoke-direct {p0, v0}, Lorg/jsoup/select/NodeEvaluator$MatchesValue;-><init>(Lorg/jsoup/helper/Regex;)V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance p0, Lorg/jsoup/select/Evaluator$Matches;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-direct {p0, v0, p1}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Lorg/jsoup/helper/Regex;I)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    new-instance p0, Lorg/jsoup/select/Evaluator$Matches;

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-direct {p0, v0, p1}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Lorg/jsoup/helper/Regex;I)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public final matchesWholeText(Z)Lorg/jsoup/select/Evaluator;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":matchesWholeOwnText"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":matchesWholeText"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "(regex) query must not be empty"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lorg/jsoup/helper/Regex;->compile(Ljava/lang/String;)Lorg/jsoup/helper/Regex;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Lorg/jsoup/select/Evaluator$Matches;

    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-direct {p1, p0, v0}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Lorg/jsoup/helper/Regex;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$Matches;

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    invoke-direct {p1, p0, v0}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Lorg/jsoup/helper/Regex;I)V

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public final parseSelector()Lorg/jsoup/select/Evaluator;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 7
    .line 8
    sget-object v2, Lorg/jsoup/select/QueryParser;->Combinators:[C

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    new-instance v3, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 17
    .line 18
    const/16 v4, 0x8

    .line 19
    .line 20
    invoke-direct {v3, v4}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSimpleSequence()Lorg/jsoup/select/Evaluator;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    const/16 v6, 0x20

    .line 34
    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    move v4, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v4, v5

    .line 40
    :goto_1
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    sget-object v7, Lorg/jsoup/select/QueryParser;->SequenceEnders:[C

    .line 52
    .line 53
    invoke-virtual {v1, v7}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_3
    :goto_2
    if-eqz v4, :cond_9

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSimpleSequence()Lorg/jsoup/select/Evaluator;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    const/4 v8, 0x1

    .line 67
    if-eq v4, v6, :cond_8

    .line 68
    .line 69
    const/16 v6, 0x2b

    .line 70
    .line 71
    if-eq v4, v6, :cond_7

    .line 72
    .line 73
    const/16 v6, 0x3e

    .line 74
    .line 75
    if-eq v4, v6, :cond_5

    .line 76
    .line 77
    const/16 v6, 0x7e

    .line 78
    .line 79
    if-ne v4, v6, :cond_4

    .line 80
    .line 81
    new-instance v4, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    .line 82
    .line 83
    invoke-direct {v4, v3}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v4, v7}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 92
    .line 93
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-array v1, v8, [Ljava/lang/Object;

    .line 98
    .line 99
    aput-object v0, v1, v5

    .line 100
    .line 101
    const-string v0, "Unknown combinator \'%s\'"

    .line 102
    .line 103
    invoke-direct {p0, v0, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_5
    instance-of v4, v3, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    .line 108
    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    check-cast v3, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    new-instance v4, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    .line 115
    .line 116
    invoke-direct {v4, v3}, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 117
    .line 118
    .line 119
    move-object v3, v4

    .line 120
    :goto_3
    iget-object v4, v3, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->evaluators:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget v4, v3, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    .line 126
    .line 127
    invoke-virtual {v7}, Lorg/jsoup/select/Evaluator;->cost()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    add-int/2addr v5, v4

    .line 132
    iput v5, v3, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->cost:I

    .line 133
    .line 134
    iget-boolean v4, v3, Lorg/jsoup/select/StructuralEvaluator;->wantsNodes:Z

    .line 135
    .line 136
    invoke-virtual {v7}, Lorg/jsoup/select/Evaluator;->wantsNodes()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    or-int/2addr v4, v5

    .line 141
    iput-boolean v4, v3, Lorg/jsoup/select/StructuralEvaluator;->wantsNodes:Z

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_7
    new-instance v4, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    .line 145
    .line 146
    invoke-direct {v4, v3}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v4, v7}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    goto :goto_0

    .line 154
    :cond_8
    new-instance v4, Lorg/jsoup/select/StructuralEvaluator$Is;

    .line 155
    .line 156
    invoke-direct {v4, v3, v8}, Lorg/jsoup/select/StructuralEvaluator$Is;-><init>(Lorg/jsoup/select/Evaluator;I)V

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v7}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_9
    :goto_4
    return-object v3
.end method

.method public final parseSelectorGroup()Lorg/jsoup/select/Evaluator;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSelector()Lorg/jsoup/select/Evaluator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 6
    .line 7
    const/16 v2, 0x2c

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSelector()Lorg/jsoup/select/Evaluator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v2, v0, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 25
    .line 26
    iget-object v3, v2, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lorg/jsoup/select/CombiningEvaluator;->updateEvaluators()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v2, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [Lorg/jsoup/select/Evaluator;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    aput-object v0, v3, v4

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    aput-object v1, v3, v0

    .line 45
    .line 46
    invoke-direct {v2, v3}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>([Lorg/jsoup/select/Evaluator;)V

    .line 47
    .line 48
    .line 49
    move-object v0, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return-object v0
.end method

.method public final parseSimpleSequence()Lorg/jsoup/select/Evaluator;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 7
    .line 8
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x2

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    const-string v6, "*|"

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1, v6}, Lorg/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v2, 0x2a

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 39
    .line 40
    invoke-direct {v0, v4}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_2
    :goto_0
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_1
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-nez v7, :cond_5

    .line 57
    .line 58
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/16 v8, 0x5c

    .line 63
    .line 64
    if-ne v7, v8, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-nez v8, :cond_4

    .line 92
    .line 93
    sget-object v8, Lorg/jsoup/parser/TokenQueue;->ElementSelectorChars:[C

    .line 94
    .line 95
    invoke-virtual {v1, v8}, Lorg/jsoup/parser/CharacterReader;->matchesAny([C)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_5

    .line 100
    .line 101
    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->advance()V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-static {v2}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v0}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    const/16 v6, 0x9

    .line 124
    .line 125
    const-string v7, ":"

    .line 126
    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v2, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 134
    .line 135
    new-instance v8, Lorg/jsoup/select/Evaluator$Id;

    .line 136
    .line 137
    invoke-direct {v8, v6, v0, v5}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 138
    .line 139
    .line 140
    new-instance v6, Lorg/jsoup/select/Evaluator$Id;

    .line 141
    .line 142
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const/16 v7, 0xa

    .line 147
    .line 148
    invoke-direct {v6, v7, v0, v5}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    new-array v0, v3, [Lorg/jsoup/select/Evaluator;

    .line 152
    .line 153
    aput-object v8, v0, v5

    .line 154
    .line 155
    aput-object v6, v0, v4

    .line 156
    .line 157
    invoke-direct {v2, v0}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>([Lorg/jsoup/select/Evaluator;)V

    .line 158
    .line 159
    .line 160
    :goto_2
    move-object v0, v2

    .line 161
    goto :goto_3

    .line 162
    :cond_6
    const-string/jumbo v2, "|*"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_7

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    sub-int/2addr v2, v3

    .line 176
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v2, Lorg/jsoup/select/Evaluator$Id;

    .line 185
    .line 186
    const/16 v6, 0xb

    .line 187
    .line 188
    invoke-direct {v2, v6, v0, v5}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    const-string/jumbo v2, "|"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 196
    .line 197
    .line 198
    move-result v8

    .line 199
    if-eqz v8, :cond_8

    .line 200
    .line 201
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :cond_8
    new-instance v2, Lorg/jsoup/select/Evaluator$Id;

    .line 206
    .line 207
    invoke-direct {v2, v6, v0, v5}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :goto_3
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSubclass()Lorg/jsoup/select/Evaluator;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    if-eqz v2, :cond_9

    .line 216
    .line 217
    invoke-static {v0, v2}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    goto :goto_3

    .line 222
    :cond_9
    if-eqz v0, :cond_a

    .line 223
    .line 224
    return-object v0

    .line 225
    :cond_a
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 226
    .line 227
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    new-array v2, v3, [Ljava/lang/Object;

    .line 232
    .line 233
    iget-object p0, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 234
    .line 235
    aput-object p0, v2, v5

    .line 236
    .line 237
    aput-object v1, v2, v4

    .line 238
    .line 239
    const-string p0, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 240
    .line 241
    invoke-direct {v0, p0, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    throw v0
.end method

.method public final parseSubclass()Lorg/jsoup/select/Evaluator;
    .locals 14

    .line 1
    const/16 v0, 0x23

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->tq:Lorg/jsoup/parser/TokenQueue;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, v1, Lorg/jsoup/parser/TokenQueue;->reader:Lorg/jsoup/parser/CharacterReader;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lorg/jsoup/select/Evaluator$Id;

    .line 22
    .line 23
    invoke-direct {v0, v3, p0, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    const/16 v0, 0x2e

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v4, 0x3

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lorg/jsoup/select/Evaluator$Id;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, v4, p0, v3}, Lorg/jsoup/select/Evaluator$Id;-><init>(ILjava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    const/16 v0, 0x5b

    .line 54
    .line 55
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/CharacterReader;->matches(C)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    .line 61
    new-instance v2, Lorg/jsoup/parser/TokenQueue;

    .line 62
    .line 63
    const/16 v3, 0x5d

    .line 64
    .line 65
    invoke-virtual {v1, v0, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v2, v0}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/jsoup/select/QueryParser;->evaluatorForAttribute(Lorg/jsoup/parser/TokenQueue;)Lorg/jsoup/select/Evaluator;

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->close()V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    :try_start_1
    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_1
    move-exception v0

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    throw p0

    .line 90
    :cond_2
    const-string v0, "::"

    .line 91
    .line 92
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v5, -0x1

    .line 97
    const/4 v6, 0x5

    .line 98
    const/4 v7, 0x4

    .line 99
    const/4 v8, 0x2

    .line 100
    iget-object v9, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 101
    .line 102
    const/4 v10, 0x1

    .line 103
    if-eqz v0, :cond_a

    .line 104
    .line 105
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-boolean v10, p0, Lorg/jsoup/select/QueryParser;->inNodeContext:Z

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    sparse-switch v1, :sswitch_data_0

    .line 116
    .line 117
    .line 118
    :goto_1
    move v4, v5

    .line 119
    goto :goto_2

    .line 120
    :sswitch_0
    const-string v1, "leafnode"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move v4, v6

    .line 130
    goto :goto_2

    .line 131
    :sswitch_1
    const-string v1, "comment"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_4

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    move v4, v7

    .line 141
    goto :goto_2

    .line 142
    :sswitch_2
    const-string v1, "cdata"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_8

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :sswitch_3
    const-string/jumbo v1, "text"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_5

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    move v4, v8

    .line 162
    goto :goto_2

    .line 163
    :sswitch_4
    const-string v1, "node"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_6

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    move v4, v10

    .line 173
    goto :goto_2

    .line 174
    :sswitch_5
    const-string v1, "data"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_7

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_7
    move v4, v3

    .line 184
    :cond_8
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 185
    .line 186
    .line 187
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 188
    .line 189
    new-array v1, v8, [Ljava/lang/Object;

    .line 190
    .line 191
    aput-object v9, v1, v3

    .line 192
    .line 193
    aput-object v0, v1, v10

    .line 194
    .line 195
    const-string v0, "Could not parse query \'%s\': unknown node type \'::%s\'"

    .line 196
    .line 197
    invoke-direct {p0, v0, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    throw p0

    .line 201
    :pswitch_0
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 202
    .line 203
    const-class v2, Lorg/jsoup/nodes/LeafNode;

    .line 204
    .line 205
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :pswitch_1
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 210
    .line 211
    const-class v2, Lorg/jsoup/nodes/Comment;

    .line 212
    .line 213
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :pswitch_2
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 218
    .line 219
    const-class v2, Lorg/jsoup/nodes/CDataNode;

    .line 220
    .line 221
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :pswitch_3
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 226
    .line 227
    const-class v2, Lorg/jsoup/nodes/TextNode;

    .line 228
    .line 229
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :pswitch_4
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 234
    .line 235
    const-class v2, Lorg/jsoup/nodes/Node;

    .line 236
    .line 237
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :pswitch_5
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 242
    .line 243
    const-class v2, Lorg/jsoup/nodes/DataNode;

    .line 244
    .line 245
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :goto_3
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSubclass()Lorg/jsoup/select/Evaluator;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    if-eqz v0, :cond_9

    .line 253
    .line 254
    invoke-static {v1, v0}, Lorg/jsoup/select/QueryParser;->and(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    goto :goto_3

    .line 259
    :cond_9
    iput-boolean v3, p0, Lorg/jsoup/select/QueryParser;->inNodeContext:Z

    .line 260
    .line 261
    return-object v1

    .line 262
    :cond_a
    const/16 v0, 0x3a

    .line 263
    .line 264
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_29

    .line 269
    .line 270
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 275
    .line 276
    .line 277
    move-result v11

    .line 278
    const/4 v12, 0x7

    .line 279
    const/4 v13, 0x6

    .line 280
    sparse-switch v11, :sswitch_data_1

    .line 281
    .line 282
    .line 283
    goto/16 :goto_4

    .line 284
    .line 285
    :sswitch_6
    const-string v11, "last-of-type"

    .line 286
    .line 287
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_b

    .line 292
    .line 293
    goto/16 :goto_4

    .line 294
    .line 295
    :cond_b
    const/16 v5, 0x1c

    .line 296
    .line 297
    goto/16 :goto_4

    .line 298
    .line 299
    :sswitch_7
    const-string v11, "containsWholeText"

    .line 300
    .line 301
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-nez v0, :cond_c

    .line 306
    .line 307
    goto/16 :goto_4

    .line 308
    .line 309
    :cond_c
    const/16 v5, 0x1b

    .line 310
    .line 311
    goto/16 :goto_4

    .line 312
    .line 313
    :sswitch_8
    const-string v11, "matchesOwn"

    .line 314
    .line 315
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-nez v0, :cond_d

    .line 320
    .line 321
    goto/16 :goto_4

    .line 322
    .line 323
    :cond_d
    const/16 v5, 0x1a

    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :sswitch_9
    const-string v11, "only-of-type"

    .line 328
    .line 329
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-nez v0, :cond_e

    .line 334
    .line 335
    goto/16 :goto_4

    .line 336
    .line 337
    :cond_e
    const/16 v5, 0x19

    .line 338
    .line 339
    goto/16 :goto_4

    .line 340
    .line 341
    :sswitch_a
    const-string v11, "first-of-type"

    .line 342
    .line 343
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    if-nez v0, :cond_f

    .line 348
    .line 349
    goto/16 :goto_4

    .line 350
    .line 351
    :cond_f
    const/16 v5, 0x18

    .line 352
    .line 353
    goto/16 :goto_4

    .line 354
    .line 355
    :sswitch_b
    const-string v11, "matchesWholeOwnText"

    .line 356
    .line 357
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-nez v0, :cond_10

    .line 362
    .line 363
    goto/16 :goto_4

    .line 364
    .line 365
    :cond_10
    const/16 v5, 0x17

    .line 366
    .line 367
    goto/16 :goto_4

    .line 368
    .line 369
    :sswitch_c
    const-string v11, "matches"

    .line 370
    .line 371
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-nez v0, :cond_11

    .line 376
    .line 377
    goto/16 :goto_4

    .line 378
    .line 379
    :cond_11
    const/16 v5, 0x16

    .line 380
    .line 381
    goto/16 :goto_4

    .line 382
    .line 383
    :sswitch_d
    const-string v11, "last-child"

    .line 384
    .line 385
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_12

    .line 390
    .line 391
    goto/16 :goto_4

    .line 392
    .line 393
    :cond_12
    const/16 v5, 0x15

    .line 394
    .line 395
    goto/16 :goto_4

    .line 396
    .line 397
    :sswitch_e
    const-string v11, "matchText"

    .line 398
    .line 399
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    if-nez v0, :cond_13

    .line 404
    .line 405
    goto/16 :goto_4

    .line 406
    .line 407
    :cond_13
    const/16 v5, 0x14

    .line 408
    .line 409
    goto/16 :goto_4

    .line 410
    .line 411
    :sswitch_f
    const-string v11, "containsOwn"

    .line 412
    .line 413
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-nez v0, :cond_14

    .line 418
    .line 419
    goto/16 :goto_4

    .line 420
    .line 421
    :cond_14
    const/16 v5, 0x13

    .line 422
    .line 423
    goto/16 :goto_4

    .line 424
    .line 425
    :sswitch_10
    const-string v11, "empty"

    .line 426
    .line 427
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-nez v0, :cond_15

    .line 432
    .line 433
    goto/16 :goto_4

    .line 434
    .line 435
    :cond_15
    const/16 v5, 0x12

    .line 436
    .line 437
    goto/16 :goto_4

    .line 438
    .line 439
    :sswitch_11
    const-string v11, "blank"

    .line 440
    .line 441
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    if-nez v0, :cond_16

    .line 446
    .line 447
    goto/16 :goto_4

    .line 448
    .line 449
    :cond_16
    const/16 v5, 0x11

    .line 450
    .line 451
    goto/16 :goto_4

    .line 452
    .line 453
    :sswitch_12
    const-string v11, "root"

    .line 454
    .line 455
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-nez v0, :cond_17

    .line 460
    .line 461
    goto/16 :goto_4

    .line 462
    .line 463
    :cond_17
    const/16 v5, 0x10

    .line 464
    .line 465
    goto/16 :goto_4

    .line 466
    .line 467
    :sswitch_13
    const-string v11, "not"

    .line 468
    .line 469
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-nez v0, :cond_18

    .line 474
    .line 475
    goto/16 :goto_4

    .line 476
    .line 477
    :cond_18
    const/16 v5, 0xf

    .line 478
    .line 479
    goto/16 :goto_4

    .line 480
    .line 481
    :sswitch_14
    const-string v11, "has"

    .line 482
    .line 483
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-nez v0, :cond_19

    .line 488
    .line 489
    goto/16 :goto_4

    .line 490
    .line 491
    :cond_19
    const/16 v5, 0xe

    .line 492
    .line 493
    goto/16 :goto_4

    .line 494
    .line 495
    :sswitch_15
    const-string v11, "lt"

    .line 496
    .line 497
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    if-nez v0, :cond_1a

    .line 502
    .line 503
    goto/16 :goto_4

    .line 504
    .line 505
    :cond_1a
    const/16 v5, 0xd

    .line 506
    .line 507
    goto/16 :goto_4

    .line 508
    .line 509
    :sswitch_16
    const-string v11, "is"

    .line 510
    .line 511
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-nez v0, :cond_1b

    .line 516
    .line 517
    goto/16 :goto_4

    .line 518
    .line 519
    :cond_1b
    const/16 v5, 0xc

    .line 520
    .line 521
    goto/16 :goto_4

    .line 522
    .line 523
    :sswitch_17
    const-string v11, "gt"

    .line 524
    .line 525
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-nez v0, :cond_1c

    .line 530
    .line 531
    goto/16 :goto_4

    .line 532
    .line 533
    :cond_1c
    const/16 v5, 0xb

    .line 534
    .line 535
    goto/16 :goto_4

    .line 536
    .line 537
    :sswitch_18
    const-string v11, "eq"

    .line 538
    .line 539
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-nez v0, :cond_1d

    .line 544
    .line 545
    goto/16 :goto_4

    .line 546
    .line 547
    :cond_1d
    const/16 v5, 0xa

    .line 548
    .line 549
    goto/16 :goto_4

    .line 550
    .line 551
    :sswitch_19
    const-string v11, "containsWholeOwnText"

    .line 552
    .line 553
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    if-nez v0, :cond_1e

    .line 558
    .line 559
    goto/16 :goto_4

    .line 560
    .line 561
    :cond_1e
    const/16 v5, 0x9

    .line 562
    .line 563
    goto/16 :goto_4

    .line 564
    .line 565
    :sswitch_1a
    const-string v11, "contains"

    .line 566
    .line 567
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    if-nez v0, :cond_1f

    .line 572
    .line 573
    goto/16 :goto_4

    .line 574
    .line 575
    :cond_1f
    const/16 v5, 0x8

    .line 576
    .line 577
    goto/16 :goto_4

    .line 578
    .line 579
    :sswitch_1b
    const-string v11, "nth-last-of-type"

    .line 580
    .line 581
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    if-nez v0, :cond_20

    .line 586
    .line 587
    goto/16 :goto_4

    .line 588
    .line 589
    :cond_20
    move v5, v12

    .line 590
    goto :goto_4

    .line 591
    :sswitch_1c
    const-string v11, "nth-of-type"

    .line 592
    .line 593
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-nez v0, :cond_21

    .line 598
    .line 599
    goto :goto_4

    .line 600
    :cond_21
    move v5, v13

    .line 601
    goto :goto_4

    .line 602
    :sswitch_1d
    const-string v11, "only-child"

    .line 603
    .line 604
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    if-nez v0, :cond_22

    .line 609
    .line 610
    goto :goto_4

    .line 611
    :cond_22
    move v5, v6

    .line 612
    goto :goto_4

    .line 613
    :sswitch_1e
    const-string v11, "nth-last-child"

    .line 614
    .line 615
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    if-nez v0, :cond_23

    .line 620
    .line 621
    goto :goto_4

    .line 622
    :cond_23
    move v5, v7

    .line 623
    goto :goto_4

    .line 624
    :sswitch_1f
    const-string v11, "nth-child"

    .line 625
    .line 626
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v0

    .line 630
    if-nez v0, :cond_24

    .line 631
    .line 632
    goto :goto_4

    .line 633
    :cond_24
    move v5, v4

    .line 634
    goto :goto_4

    .line 635
    :sswitch_20
    const-string v11, "matchesWholeText"

    .line 636
    .line 637
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    if-nez v0, :cond_25

    .line 642
    .line 643
    goto :goto_4

    .line 644
    :cond_25
    move v5, v8

    .line 645
    goto :goto_4

    .line 646
    :sswitch_21
    const-string v11, "first-child"

    .line 647
    .line 648
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    if-nez v0, :cond_26

    .line 653
    .line 654
    goto :goto_4

    .line 655
    :cond_26
    move v5, v10

    .line 656
    goto :goto_4

    .line 657
    :sswitch_22
    const-string v11, "containsData"

    .line 658
    .line 659
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    if-nez v0, :cond_27

    .line 664
    .line 665
    goto :goto_4

    .line 666
    :cond_27
    move v5, v3

    .line 667
    :goto_4
    const/16 v0, 0x29

    .line 668
    .line 669
    const/16 v11, 0x28

    .line 670
    .line 671
    packed-switch v5, :pswitch_data_1

    .line 672
    .line 673
    .line 674
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 675
    .line 676
    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    new-array v1, v8, [Ljava/lang/Object;

    .line 681
    .line 682
    aput-object v9, v1, v3

    .line 683
    .line 684
    aput-object v0, v1, v10

    .line 685
    .line 686
    const-string v0, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 687
    .line 688
    invoke-direct {p0, v0, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    throw p0

    .line 692
    :pswitch_6
    new-instance p0, Lorg/jsoup/select/Evaluator$IsLastOfType;

    .line 693
    .line 694
    invoke-direct {p0, v3, v10, v8}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 695
    .line 696
    .line 697
    return-object p0

    .line 698
    :pswitch_7
    invoke-virtual {p0, v3}, Lorg/jsoup/select/QueryParser;->containsWholeText(Z)Lorg/jsoup/select/Evaluator;

    .line 699
    .line 700
    .line 701
    move-result-object p0

    .line 702
    return-object p0

    .line 703
    :pswitch_8
    invoke-virtual {p0, v10}, Lorg/jsoup/select/QueryParser;->matches(Z)Lorg/jsoup/select/Evaluator;

    .line 704
    .line 705
    .line 706
    move-result-object p0

    .line 707
    return-object p0

    .line 708
    :pswitch_9
    new-instance p0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 709
    .line 710
    invoke-direct {p0, v13}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 711
    .line 712
    .line 713
    return-object p0

    .line 714
    :pswitch_a
    new-instance p0, Lorg/jsoup/select/Evaluator$IsFirstOfType;

    .line 715
    .line 716
    invoke-direct {p0, v3, v10, v4}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(III)V

    .line 717
    .line 718
    .line 719
    return-object p0

    .line 720
    :pswitch_b
    invoke-virtual {p0, v10}, Lorg/jsoup/select/QueryParser;->matchesWholeText(Z)Lorg/jsoup/select/Evaluator;

    .line 721
    .line 722
    .line 723
    move-result-object p0

    .line 724
    return-object p0

    .line 725
    :pswitch_c
    invoke-virtual {p0, v3}, Lorg/jsoup/select/QueryParser;->matches(Z)Lorg/jsoup/select/Evaluator;

    .line 726
    .line 727
    .line 728
    move-result-object p0

    .line 729
    return-object p0

    .line 730
    :pswitch_d
    new-instance p0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 731
    .line 732
    invoke-direct {p0, v7}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 733
    .line 734
    .line 735
    return-object p0

    .line 736
    :pswitch_e
    new-instance p0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 737
    .line 738
    invoke-direct {p0, v12}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 739
    .line 740
    .line 741
    sget-boolean v0, Lorg/jsoup/select/Evaluator$IsRoot;->loggedError:Z

    .line 742
    .line 743
    if-nez v0, :cond_28

    .line 744
    .line 745
    sput-boolean v10, Lorg/jsoup/select/Evaluator$IsRoot;->loggedError:Z

    .line 746
    .line 747
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 748
    .line 749
    const-string v1, "WARNING: :matchText selector is deprecated and will be removed in jsoup 1.24.1. Use Element#selectNodes(String, Class) with selector ::textnode and class TextNode instead."

    .line 750
    .line 751
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    :cond_28
    return-object p0

    .line 755
    :pswitch_f
    invoke-virtual {p0, v10}, Lorg/jsoup/select/QueryParser;->contains(Z)Lorg/jsoup/select/Evaluator;

    .line 756
    .line 757
    .line 758
    move-result-object p0

    .line 759
    return-object p0

    .line 760
    :pswitch_10
    new-instance p0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 761
    .line 762
    invoke-direct {p0, v8}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 763
    .line 764
    .line 765
    return-object p0

    .line 766
    :pswitch_11
    new-instance p0, Lorg/jsoup/select/NodeEvaluator$BlankValue;

    .line 767
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    .line 770
    .line 771
    return-object p0

    .line 772
    :pswitch_12
    new-instance p0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 773
    .line 774
    invoke-direct {p0, v3}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 775
    .line 776
    .line 777
    return-object p0

    .line 778
    :pswitch_13
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 779
    .line 780
    .line 781
    move-result-object p0

    .line 782
    const-string v0, ":not(selector) subselect must not be empty"

    .line 783
    .line 784
    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$Is;

    .line 788
    .line 789
    invoke-static {p0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 790
    .line 791
    .line 792
    move-result-object p0

    .line 793
    invoke-direct {v0, p0, v8}, Lorg/jsoup/select/StructuralEvaluator$Is;-><init>(Lorg/jsoup/select/Evaluator;I)V

    .line 794
    .line 795
    .line 796
    return-object v0

    .line 797
    :pswitch_14
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 798
    .line 799
    .line 800
    move-result v2

    .line 801
    const-string v3, ":has() must have a selector"

    .line 802
    .line 803
    invoke-static {v3, v2}, Landroidx/sqlite/SQLite;->isTrue(Ljava/lang/String;Z)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSelectorGroup()Lorg/jsoup/select/Evaluator;

    .line 807
    .line 808
    .line 809
    move-result-object p0

    .line 810
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 811
    .line 812
    .line 813
    move-result v0

    .line 814
    invoke-static {v3, v0}, Landroidx/sqlite/SQLite;->isTrue(Ljava/lang/String;Z)V

    .line 815
    .line 816
    .line 817
    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$Has;

    .line 818
    .line 819
    invoke-direct {v0, p0}, Lorg/jsoup/select/StructuralEvaluator$Has;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 820
    .line 821
    .line 822
    return-object v0

    .line 823
    :pswitch_15
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexEquals;

    .line 824
    .line 825
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    .line 826
    .line 827
    .line 828
    move-result p0

    .line 829
    invoke-direct {v0, p0, v8}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(II)V

    .line 830
    .line 831
    .line 832
    return-object v0

    .line 833
    :pswitch_16
    invoke-virtual {v1, v11}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    const-string v4, ":is() must have a selector"

    .line 838
    .line 839
    invoke-static {v4, v2}, Landroidx/sqlite/SQLite;->isTrue(Ljava/lang/String;Z)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->parseSelectorGroup()Lorg/jsoup/select/Evaluator;

    .line 843
    .line 844
    .line 845
    move-result-object p0

    .line 846
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 847
    .line 848
    .line 849
    move-result v0

    .line 850
    invoke-static {v4, v0}, Landroidx/sqlite/SQLite;->isTrue(Ljava/lang/String;Z)V

    .line 851
    .line 852
    .line 853
    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$Is;

    .line 854
    .line 855
    invoke-direct {v0, p0, v3}, Lorg/jsoup/select/StructuralEvaluator$Is;-><init>(Lorg/jsoup/select/Evaluator;I)V

    .line 856
    .line 857
    .line 858
    return-object v0

    .line 859
    :pswitch_17
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexEquals;

    .line 860
    .line 861
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    .line 862
    .line 863
    .line 864
    move-result p0

    .line 865
    invoke-direct {v0, p0, v10}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(II)V

    .line 866
    .line 867
    .line 868
    return-object v0

    .line 869
    :pswitch_18
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexEquals;

    .line 870
    .line 871
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeIndex()I

    .line 872
    .line 873
    .line 874
    move-result p0

    .line 875
    invoke-direct {v0, p0, v3}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(II)V

    .line 876
    .line 877
    .line 878
    return-object v0

    .line 879
    :pswitch_19
    invoke-virtual {p0, v10}, Lorg/jsoup/select/QueryParser;->containsWholeText(Z)Lorg/jsoup/select/Evaluator;

    .line 880
    .line 881
    .line 882
    move-result-object p0

    .line 883
    return-object p0

    .line 884
    :pswitch_1a
    invoke-virtual {p0, v3}, Lorg/jsoup/select/QueryParser;->contains(Z)Lorg/jsoup/select/Evaluator;

    .line 885
    .line 886
    .line 887
    move-result-object p0

    .line 888
    return-object p0

    .line 889
    :pswitch_1b
    invoke-virtual {p0, v10, v10}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 890
    .line 891
    .line 892
    move-result-object p0

    .line 893
    return-object p0

    .line 894
    :pswitch_1c
    invoke-virtual {p0, v3, v10}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 895
    .line 896
    .line 897
    move-result-object p0

    .line 898
    return-object p0

    .line 899
    :pswitch_1d
    new-instance p0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 900
    .line 901
    invoke-direct {p0, v6}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 902
    .line 903
    .line 904
    return-object p0

    .line 905
    :pswitch_1e
    invoke-virtual {p0, v10, v3}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 906
    .line 907
    .line 908
    move-result-object p0

    .line 909
    return-object p0

    .line 910
    :pswitch_1f
    invoke-virtual {p0, v3, v3}, Lorg/jsoup/select/QueryParser;->cssNthChild(ZZ)Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 911
    .line 912
    .line 913
    move-result-object p0

    .line 914
    return-object p0

    .line 915
    :pswitch_20
    invoke-virtual {p0, v3}, Lorg/jsoup/select/QueryParser;->matchesWholeText(Z)Lorg/jsoup/select/Evaluator;

    .line 916
    .line 917
    .line 918
    move-result-object p0

    .line 919
    return-object p0

    .line 920
    :pswitch_21
    new-instance p0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 921
    .line 922
    invoke-direct {p0, v4}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>(I)V

    .line 923
    .line 924
    .line 925
    return-object p0

    .line 926
    :pswitch_22
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->consumeParens()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object p0

    .line 930
    invoke-static {p0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object p0

    .line 934
    const-string v0, ":containsData(text) query must not be empty"

    .line 935
    .line 936
    invoke-static {p0, v0}, Landroidx/sqlite/SQLite;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    new-instance v0, Lorg/jsoup/select/Evaluator$Id;

    .line 940
    .line 941
    invoke-direct {v0, p0, v7}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;I)V

    .line 942
    .line 943
    .line 944
    return-object v0

    .line 945
    :cond_29
    const/4 p0, 0x0

    .line 946
    return-object p0

    .line 947
    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x33ae02 -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5a2068d -> :sswitch_2
        0x38a5ee5f -> :sswitch_1
        0x5d2b6e60 -> :sswitch_0
    .end sparse-switch

    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    :sswitch_data_1
    .sparse-switch
        -0x7fa84d97 -> :sswitch_22
        -0x7f5fe841 -> :sswitch_21
        -0x73a0d86f -> :sswitch_20
        -0x6899dd0f -> :sswitch_1f
        -0x6123fd90 -> :sswitch_1e
        -0x38814845 -> :sswitch_1d
        -0x357f41fb -> :sswitch_1c
        -0x3403463c -> :sswitch_1b
        -0x21d289e1 -> :sswitch_1a
        -0x34d8c25 -> :sswitch_19
        0xcac -> :sswitch_18
        0xced -> :sswitch_17
        0xd2a -> :sswitch_16
        0xd88 -> :sswitch_15
        0x1929a -> :sswitch_14
        0x1aad3 -> :sswitch_13
        0x3580e2 -> :sswitch_12
        0x5979154 -> :sswitch_11
        0x5c2854d -> :sswitch_10
        0xc6618e7 -> :sswitch_f
        0x24992892 -> :sswitch_e
        0x31d1d325 -> :sswitch_d
        0x321e8933 -> :sswitch_c
        0x4adb88ef -> :sswitch_b
        0x4d10b753 -> :sswitch_a
        0x56c7484f -> :sswitch_9
        0x6f813d53 -> :sswitch_8
        0x780e0425 -> :sswitch_7
        0x78c13139 -> :sswitch_6
    .end sparse-switch

    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/select/QueryParser;->query:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
