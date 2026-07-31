.class public final Lorg/commonmark/internal/InlineParserImpl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final AUTOLINK:Ljava/util/regex/Pattern;

.field public static final EMAIL_AUTOLINK:Ljava/util/regex/Pattern;

.field public static final ENTITY_HERE:Ljava/util/regex/Pattern;

.field public static final ESCAPABLE:Ljava/util/regex/Pattern;

.field public static final FINAL_SPACE:Ljava/util/regex/Pattern;

.field public static final HTML_TAG:Ljava/util/regex/Pattern;

.field public static final PUNCTUATION:Ljava/util/regex/Pattern;

.field public static final SPNL:Ljava/util/regex/Pattern;

.field public static final TICKS:Ljava/util/regex/Pattern;

.field public static final TICKS_HERE:Ljava/util/regex/Pattern;

.field public static final UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

.field public static final WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field public final context:Lorg/jsoup/parser/TokenData;

.field public final delimiterCharacters:Ljava/util/BitSet;

.field public final delimiterProcessors:Ljava/util/HashMap;

.field public index:I

.field public input:Ljava/lang/String;

.field public lastBracket:Lorg/commonmark/internal/Bracket;

.field public lastDelimiter:Lorg/commonmark/internal/Delimiter;

.field public final specialCharacters:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "^[!\"#\\$%&\'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->PUNCTUATION:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)"

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->HTML_TAG:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    const-string v0, "^[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]"

    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->ESCAPABLE:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    const-string v0, "^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});"

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->ENTITY_HERE:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    const-string v0, "`+"

    .line 35
    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->TICKS:Ljava/util/regex/Pattern;

    .line 41
    .line 42
    const-string v0, "^`+"

    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->TICKS_HERE:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    const-string v0, "^<([a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>"

    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->EMAIL_AUTOLINK:Ljava/util/regex/Pattern;

    .line 57
    .line 58
    const-string v0, "^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>"

    .line 59
    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->AUTOLINK:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    const-string v0, "^ *(?:\n *)?"

    .line 67
    .line 68
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->SPNL:Ljava/util/regex/Pattern;

    .line 73
    .line 74
    const-string v0, "^[\\p{Zs}\t\r\n\u000c]"

    .line 75
    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

    .line 81
    .line 82
    const-string v0, "\\s+"

    .line 83
    .line 84
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 89
    .line 90
    const-string v0, " *$"

    .line 91
    .line 92
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->FINAL_SPACE:Ljava/util/regex/Pattern;

    .line 97
    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/TokenData;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;

    .line 14
    .line 15
    const/16 v3, 0x2a

    .line 16
    .line 17
    invoke-direct {v2, v3}, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;-><init>(C)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;

    .line 21
    .line 22
    const/16 v4, 0x5f

    .line 23
    .line 24
    invoke-direct {v3, v4}, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;-><init>(C)V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x2

    .line 28
    new-array v4, v4, [Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    aput-object v2, v4, v5

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    aput-object v3, v4, v2

    .line 35
    .line 36
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/HashMap;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/HashMap;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Ljava/util/BitSet;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/Character;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iput-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterCharacters:Ljava/util/BitSet;

    .line 82
    .line 83
    new-instance v0, Ljava/util/BitSet;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 89
    .line 90
    .line 91
    const/16 v1, 0xa

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x60

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 99
    .line 100
    .line 101
    const/16 v1, 0x5b

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 104
    .line 105
    .line 106
    const/16 v1, 0x5d

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x5c

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 114
    .line 115
    .line 116
    const/16 v1, 0x21

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 119
    .line 120
    .line 121
    const/16 v1, 0x3c

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 124
    .line 125
    .line 126
    const/16 v1, 0x26

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->specialCharacters:Ljava/util/BitSet;

    .line 132
    .line 133
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->context:Lorg/jsoup/parser/TokenData;

    .line 134
    .line 135
    return-void
.end method

.method public static addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/HashMap;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, "Delimiter processor conflict with delimiter char \'"

    .line 19
    .line 20
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, "\'"

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public static addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/HashMap;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 16
    .line 17
    invoke-interface {v0}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v0}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ne v1, v2, :cond_2

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {v2}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-interface {v2}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v3, v4, :cond_1

    .line 48
    .line 49
    instance-of v3, v2, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    .line 50
    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    check-cast v2, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    new-instance v3, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    .line 57
    .line 58
    invoke-direct {v3, v1}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;-><init>(C)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->add(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)V

    .line 62
    .line 63
    .line 64
    move-object v2, v3

    .line 65
    :goto_1
    invoke-virtual {v2, v0}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->add(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-static {v1, v0, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/HashMap;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v1, v0, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/HashMap;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v0, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/HashMap;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    return-void
.end method

.method public static mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eq p0, p1, :cond_1

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p2, Lorg/commonmark/node/Node;

    .line 20
    .line 21
    iget-object p1, p1, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lorg/commonmark/node/Node;

    .line 24
    .line 25
    :goto_0
    if-eq p2, p1, :cond_0

    .line 26
    .line 27
    move-object v1, p2

    .line 28
    check-cast v1, Lorg/commonmark/node/Text;

    .line 29
    .line 30
    iget-object v1, v1, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p2, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lorg/commonmark/node/Node;

    .line 38
    .line 39
    invoke-virtual {p2}, Lorg/commonmark/node/Node;->unlink()V

    .line 40
    .line 41
    .line 42
    move-object p2, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public static mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v0

    .line 4
    move-object v3, v2

    .line 5
    move v4, v1

    .line 6
    :goto_0
    if-eqz p0, :cond_3

    .line 7
    .line 8
    instance-of v5, p0, Lorg/commonmark/node/Text;

    .line 9
    .line 10
    if-eqz v5, :cond_1

    .line 11
    .line 12
    move-object v3, p0

    .line 13
    check-cast v3, Lorg/commonmark/node/Text;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move-object v2, v3

    .line 18
    :cond_0
    iget-object v5, v3, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    add-int/2addr v5, v4

    .line 25
    move v4, v5

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {v2, v3, v4}, Lorg/commonmark/internal/InlineParserImpl;->mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 28
    .line 29
    .line 30
    move-object v2, v0

    .line 31
    move-object v3, v2

    .line 32
    move v4, v1

    .line 33
    :goto_1
    if-ne p0, p1, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    iget-object p0, p0, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lorg/commonmark/node/Node;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_2
    invoke-static {v2, v3, v4}, Lorg/commonmark/internal/InlineParserImpl;->mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final match(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lt v0, v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 20
    .line 21
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    return-object v2
.end method

.method public final parse(Ljava/lang/String;Lorg/commonmark/node/Node;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iput-object v3, v0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 16
    .line 17
    iput-object v3, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 18
    .line 19
    move-object v4, v3

    .line 20
    :goto_0
    invoke-virtual {v0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-nez v7, :cond_0

    .line 25
    .line 26
    move v5, v2

    .line 27
    :goto_1
    move-object v4, v3

    .line 28
    goto/16 :goto_27

    .line 29
    .line 30
    :cond_0
    const-string v5, " "

    .line 31
    .line 32
    const/4 v11, 0x1

    .line 33
    const/16 v8, 0xa

    .line 34
    .line 35
    if-eq v7, v8, :cond_43

    .line 36
    .line 37
    const/16 v4, 0x21

    .line 38
    .line 39
    if-eq v7, v4, :cond_40

    .line 40
    .line 41
    const/16 v4, 0x26

    .line 42
    .line 43
    if-eq v7, v4, :cond_3f

    .line 44
    .line 45
    const/16 v4, 0x3c

    .line 46
    .line 47
    if-eq v7, v4, :cond_3c

    .line 48
    .line 49
    const/16 v10, 0x60

    .line 50
    .line 51
    if-eq v7, v10, :cond_36

    .line 52
    .line 53
    packed-switch v7, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    iget-object v4, v0, Lorg/commonmark/internal/InlineParserImpl;->delimiterCharacters:Ljava/util/BitSet;

    .line 57
    .line 58
    invoke-virtual {v4, v7}, Ljava/util/BitSet;->get(I)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_13

    .line 63
    .line 64
    iget-object v4, v0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 75
    .line 76
    iget v5, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 77
    .line 78
    move v6, v2

    .line 79
    :goto_2
    invoke-virtual {v0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-ne v8, v7, :cond_1

    .line 84
    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    iget v8, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 88
    .line 89
    add-int/2addr v8, v11

    .line 90
    iput v8, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_1
    invoke-interface {v4}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getMinLength()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-ge v6, v8, :cond_2

    .line 98
    .line 99
    iput v5, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 100
    .line 101
    move-object v5, v3

    .line 102
    goto/16 :goto_b

    .line 103
    .line 104
    :cond_2
    const-string v8, "\n"

    .line 105
    .line 106
    if-nez v5, :cond_3

    .line 107
    .line 108
    move-object v9, v8

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    iget-object v9, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 111
    .line 112
    add-int/lit8 v10, v5, -0x1

    .line 113
    .line 114
    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    :goto_3
    invoke-virtual {v0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-nez v10, :cond_4

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    :goto_4
    sget-object v10, Lorg/commonmark/internal/InlineParserImpl;->PUNCTUATION:Ljava/util/regex/Pattern;

    .line 130
    .line 131
    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    sget-object v13, Lorg/commonmark/internal/InlineParserImpl;->UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

    .line 140
    .line 141
    invoke-virtual {v13, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-nez v8, :cond_6

    .line 166
    .line 167
    if-eqz v10, :cond_5

    .line 168
    .line 169
    if-nez v9, :cond_5

    .line 170
    .line 171
    if-eqz v12, :cond_6

    .line 172
    .line 173
    :cond_5
    move v13, v11

    .line 174
    goto :goto_5

    .line 175
    :cond_6
    move v13, v2

    .line 176
    :goto_5
    if-nez v9, :cond_8

    .line 177
    .line 178
    if-eqz v12, :cond_7

    .line 179
    .line 180
    if-nez v8, :cond_7

    .line 181
    .line 182
    if-eqz v10, :cond_8

    .line 183
    .line 184
    :cond_7
    move v8, v11

    .line 185
    goto :goto_6

    .line 186
    :cond_8
    move v8, v2

    .line 187
    :goto_6
    const/16 v9, 0x5f

    .line 188
    .line 189
    if-ne v7, v9, :cond_d

    .line 190
    .line 191
    if-eqz v13, :cond_a

    .line 192
    .line 193
    if-eqz v8, :cond_9

    .line 194
    .line 195
    if-eqz v12, :cond_a

    .line 196
    .line 197
    :cond_9
    move v4, v11

    .line 198
    goto :goto_7

    .line 199
    :cond_a
    move v4, v2

    .line 200
    :goto_7
    if-eqz v8, :cond_c

    .line 201
    .line 202
    if-eqz v13, :cond_b

    .line 203
    .line 204
    if-eqz v10, :cond_c

    .line 205
    .line 206
    :cond_b
    move v8, v11

    .line 207
    goto :goto_a

    .line 208
    :cond_c
    move v8, v2

    .line 209
    goto :goto_a

    .line 210
    :cond_d
    if-eqz v13, :cond_e

    .line 211
    .line 212
    invoke-interface {v4}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    .line 213
    .line 214
    .line 215
    move-result v9

    .line 216
    if-ne v7, v9, :cond_e

    .line 217
    .line 218
    move v9, v11

    .line 219
    goto :goto_8

    .line 220
    :cond_e
    move v9, v2

    .line 221
    :goto_8
    if-eqz v8, :cond_f

    .line 222
    .line 223
    invoke-interface {v4}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-ne v7, v4, :cond_f

    .line 228
    .line 229
    move v8, v11

    .line 230
    goto :goto_9

    .line 231
    :cond_f
    move v8, v2

    .line 232
    :goto_9
    move v4, v9

    .line 233
    :goto_a
    iput v5, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 234
    .line 235
    new-instance v5, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;

    .line 236
    .line 237
    invoke-direct {v5, v6, v4, v8}, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;-><init>(IZZ)V

    .line 238
    .line 239
    .line 240
    :goto_b
    if-nez v5, :cond_11

    .line 241
    .line 242
    :cond_10
    move-object v10, v3

    .line 243
    goto :goto_c

    .line 244
    :cond_11
    iget v4, v5, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->count:I

    .line 245
    .line 246
    iget v6, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 247
    .line 248
    add-int v8, v6, v4

    .line 249
    .line 250
    iput v8, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 251
    .line 252
    iget-object v9, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 253
    .line 254
    new-instance v10, Lorg/commonmark/node/Text;

    .line 255
    .line 256
    invoke-virtual {v9, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-direct {v10, v6}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    new-instance v6, Lorg/commonmark/internal/Delimiter;

    .line 264
    .line 265
    iget-boolean v8, v5, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canOpen:Z

    .line 266
    .line 267
    iget-boolean v9, v5, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canClose:Z

    .line 268
    .line 269
    move-object v5, v6

    .line 270
    move-object v6, v10

    .line 271
    iget-object v10, v0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 272
    .line 273
    invoke-direct/range {v5 .. v10}, Lorg/commonmark/internal/Delimiter;-><init>(Lorg/commonmark/node/Text;CZZLorg/commonmark/internal/Delimiter;)V

    .line 274
    .line 275
    .line 276
    iput-object v5, v0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 277
    .line 278
    iput v4, v5, Lorg/commonmark/internal/Delimiter;->length:I

    .line 279
    .line 280
    iput v4, v5, Lorg/commonmark/internal/Delimiter;->originalLength:I

    .line 281
    .line 282
    if-eqz v10, :cond_12

    .line 283
    .line 284
    iput-object v5, v10, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 285
    .line 286
    :cond_12
    move-object v10, v6

    .line 287
    :goto_c
    move v5, v2

    .line 288
    goto/16 :goto_26

    .line 289
    .line 290
    :cond_13
    iget v4, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 291
    .line 292
    iget-object v5, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 295
    .line 296
    .line 297
    move-result v5

    .line 298
    :goto_d
    iget v6, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 299
    .line 300
    if-eq v6, v5, :cond_15

    .line 301
    .line 302
    iget-object v8, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    iget-object v8, v0, Lorg/commonmark/internal/InlineParserImpl;->specialCharacters:Ljava/util/BitSet;

    .line 309
    .line 310
    invoke-virtual {v8, v6}, Ljava/util/BitSet;->get(I)Z

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-eqz v6, :cond_14

    .line 315
    .line 316
    goto :goto_e

    .line 317
    :cond_14
    iget v6, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 318
    .line 319
    add-int/2addr v6, v11

    .line 320
    iput v6, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 321
    .line 322
    goto :goto_d

    .line 323
    :cond_15
    :goto_e
    iget v5, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 324
    .line 325
    if-eq v4, v5, :cond_10

    .line 326
    .line 327
    iget-object v6, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 328
    .line 329
    new-instance v8, Lorg/commonmark/node/Text;

    .line 330
    .line 331
    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    invoke-direct {v8, v4}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    move-object v10, v8

    .line 339
    goto :goto_c

    .line 340
    :pswitch_0
    iget v8, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 341
    .line 342
    add-int/2addr v8, v11

    .line 343
    iput v8, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 344
    .line 345
    iget-object v10, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 346
    .line 347
    const-string v12, "]"

    .line 348
    .line 349
    if-nez v10, :cond_17

    .line 350
    .line 351
    new-instance v4, Lorg/commonmark/node/Text;

    .line 352
    .line 353
    invoke-direct {v4, v12}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    :cond_16
    :goto_f
    move-object v10, v4

    .line 357
    goto/16 :goto_20

    .line 358
    .line 359
    :cond_17
    iget-object v13, v10, Lorg/commonmark/internal/Bracket;->node:Lorg/commonmark/node/Text;

    .line 360
    .line 361
    iget-boolean v14, v10, Lorg/commonmark/internal/Bracket;->image:Z

    .line 362
    .line 363
    iget-boolean v15, v10, Lorg/commonmark/internal/Bracket;->allowed:Z

    .line 364
    .line 365
    if-nez v15, :cond_18

    .line 366
    .line 367
    iget-object v4, v10, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    .line 368
    .line 369
    iput-object v4, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 370
    .line 371
    new-instance v4, Lorg/commonmark/node/Text;

    .line 372
    .line 373
    invoke-direct {v4, v12}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_f

    .line 377
    :cond_18
    invoke-virtual {v0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    .line 378
    .line 379
    .line 380
    move-result v15

    .line 381
    const/16 v3, 0x28

    .line 382
    .line 383
    const/4 v2, -0x1

    .line 384
    if-ne v15, v3, :cond_25

    .line 385
    .line 386
    iget v15, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 387
    .line 388
    add-int/2addr v15, v11

    .line 389
    iput v15, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 390
    .line 391
    sget-object v15, Lorg/commonmark/internal/InlineParserImpl;->SPNL:Ljava/util/regex/Pattern;

    .line 392
    .line 393
    invoke-virtual {v0, v15}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move/from16 v16, v11

    .line 397
    .line 398
    iget-object v11, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 399
    .line 400
    iget v6, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 401
    .line 402
    invoke-static {v6, v11}, Lokhttp3/Cookie$Companion;->scanLinkDestination(ILjava/lang/CharSequence;)I

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    if-ne v6, v2, :cond_19

    .line 407
    .line 408
    const/4 v2, 0x0

    .line 409
    goto :goto_11

    .line 410
    :cond_19
    invoke-virtual {v0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    .line 411
    .line 412
    .line 413
    move-result v11

    .line 414
    iget-object v9, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 415
    .line 416
    iget v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 417
    .line 418
    if-ne v11, v4, :cond_1a

    .line 419
    .line 420
    add-int/lit8 v2, v2, 0x1

    .line 421
    .line 422
    add-int/lit8 v4, v6, -0x1

    .line 423
    .line 424
    invoke-virtual {v9, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    goto :goto_10

    .line 429
    :cond_1a
    invoke-virtual {v9, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v2

    .line 433
    :goto_10
    iput v6, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 434
    .line 435
    invoke-static {v2}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    :goto_11
    if-eqz v2, :cond_24

    .line 440
    .line 441
    invoke-virtual {v0, v15}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    iget-object v4, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 445
    .line 446
    iget v6, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 447
    .line 448
    add-int/lit8 v9, v6, -0x1

    .line 449
    .line 450
    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    sget-object v6, Lorg/commonmark/internal/InlineParserImpl;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 455
    .line 456
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    if-eqz v4, :cond_22

    .line 465
    .line 466
    iget-object v4, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 467
    .line 468
    iget v9, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 471
    .line 472
    .line 473
    move-result v11

    .line 474
    if-lt v9, v11, :cond_1c

    .line 475
    .line 476
    :cond_1b
    :goto_12
    const/4 v3, -0x1

    .line 477
    const/4 v9, -0x1

    .line 478
    goto :goto_13

    .line 479
    :cond_1c
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    .line 480
    .line 481
    .line 482
    move-result v11

    .line 483
    const/16 v6, 0x22

    .line 484
    .line 485
    if-eq v11, v6, :cond_1e

    .line 486
    .line 487
    const/16 v6, 0x27

    .line 488
    .line 489
    if-eq v11, v6, :cond_1e

    .line 490
    .line 491
    if-eq v11, v3, :cond_1d

    .line 492
    .line 493
    goto :goto_12

    .line 494
    :cond_1d
    const/16 v6, 0x29

    .line 495
    .line 496
    :cond_1e
    add-int/lit8 v9, v9, 0x1

    .line 497
    .line 498
    invoke-static {v4, v9, v6}, Lokhttp3/Cookie$Companion;->scanLinkTitleContent(Ljava/lang/CharSequence;IC)I

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    const/4 v9, -0x1

    .line 503
    if-ne v3, v9, :cond_1f

    .line 504
    .line 505
    goto :goto_12

    .line 506
    :cond_1f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 507
    .line 508
    .line 509
    move-result v9

    .line 510
    if-ge v3, v9, :cond_1b

    .line 511
    .line 512
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    if-eq v4, v6, :cond_20

    .line 517
    .line 518
    goto :goto_12

    .line 519
    :cond_20
    add-int/lit8 v3, v3, 0x1

    .line 520
    .line 521
    move v9, v3

    .line 522
    const/4 v3, -0x1

    .line 523
    :goto_13
    if-ne v9, v3, :cond_21

    .line 524
    .line 525
    const/4 v3, 0x0

    .line 526
    goto :goto_14

    .line 527
    :cond_21
    iget-object v3, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 528
    .line 529
    iget v4, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 530
    .line 531
    add-int/lit8 v4, v4, 0x1

    .line 532
    .line 533
    add-int/lit8 v6, v9, -0x1

    .line 534
    .line 535
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    iput v9, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 540
    .line 541
    invoke-static {v3}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    :goto_14
    invoke-virtual {v0, v15}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    goto :goto_15

    .line 549
    :cond_22
    const/4 v3, 0x0

    .line 550
    :goto_15
    invoke-virtual {v0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    const/16 v6, 0x29

    .line 555
    .line 556
    if-ne v4, v6, :cond_23

    .line 557
    .line 558
    iget v4, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 559
    .line 560
    add-int/lit8 v4, v4, 0x1

    .line 561
    .line 562
    iput v4, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 563
    .line 564
    move/from16 v4, v16

    .line 565
    .line 566
    goto :goto_18

    .line 567
    :cond_23
    iput v8, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 568
    .line 569
    :goto_16
    const/4 v4, 0x0

    .line 570
    goto :goto_18

    .line 571
    :cond_24
    :goto_17
    const/4 v3, 0x0

    .line 572
    goto :goto_16

    .line 573
    :cond_25
    move/from16 v16, v11

    .line 574
    .line 575
    const/4 v2, 0x0

    .line 576
    goto :goto_17

    .line 577
    :goto_18
    if-nez v4, :cond_2c

    .line 578
    .line 579
    iget v6, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 580
    .line 581
    iget-object v9, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 584
    .line 585
    .line 586
    move-result v9

    .line 587
    if-ge v6, v9, :cond_29

    .line 588
    .line 589
    iget-object v9, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 590
    .line 591
    iget v11, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 592
    .line 593
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    .line 594
    .line 595
    .line 596
    move-result v9

    .line 597
    const/16 v11, 0x5b

    .line 598
    .line 599
    if-eq v9, v11, :cond_26

    .line 600
    .line 601
    goto :goto_19

    .line 602
    :cond_26
    iget v9, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 603
    .line 604
    add-int/lit8 v9, v9, 0x1

    .line 605
    .line 606
    iget-object v11, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 607
    .line 608
    invoke-static {v9, v11}, Lokhttp3/Cookie$Companion;->scanLinkLabelContent(ILjava/lang/CharSequence;)I

    .line 609
    .line 610
    .line 611
    move-result v11

    .line 612
    sub-int v9, v11, v9

    .line 613
    .line 614
    const/4 v15, -0x1

    .line 615
    if-eq v11, v15, :cond_29

    .line 616
    .line 617
    const/16 v15, 0x3e7

    .line 618
    .line 619
    if-le v9, v15, :cond_27

    .line 620
    .line 621
    goto :goto_19

    .line 622
    :cond_27
    iget-object v9, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 625
    .line 626
    .line 627
    move-result v9

    .line 628
    if-ge v11, v9, :cond_29

    .line 629
    .line 630
    iget-object v9, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    .line 633
    .line 634
    .line 635
    move-result v9

    .line 636
    const/16 v15, 0x5d

    .line 637
    .line 638
    if-eq v9, v15, :cond_28

    .line 639
    .line 640
    goto :goto_19

    .line 641
    :cond_28
    add-int/lit8 v11, v11, 0x1

    .line 642
    .line 643
    iput v11, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 644
    .line 645
    :cond_29
    :goto_19
    iget v9, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 646
    .line 647
    sub-int/2addr v9, v6

    .line 648
    const/4 v11, 0x2

    .line 649
    if-le v9, v11, :cond_2a

    .line 650
    .line 651
    iget-object v11, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 652
    .line 653
    add-int/2addr v9, v6

    .line 654
    invoke-virtual {v11, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v6

    .line 658
    goto :goto_1a

    .line 659
    :cond_2a
    iget-boolean v6, v10, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    .line 660
    .line 661
    if-nez v6, :cond_2b

    .line 662
    .line 663
    iget-object v6, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 664
    .line 665
    iget v9, v10, Lorg/commonmark/internal/Bracket;->index:I

    .line 666
    .line 667
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    goto :goto_1a

    .line 672
    :cond_2b
    const/4 v6, 0x0

    .line 673
    :goto_1a
    if-eqz v6, :cond_2c

    .line 674
    .line 675
    sget-object v9, Lorg/commonmark/internal/util/Escaping;->BACKSLASH_OR_AMP:Ljava/util/regex/Pattern;

    .line 676
    .line 677
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 678
    .line 679
    .line 680
    move-result v9

    .line 681
    add-int/lit8 v9, v9, -0x1

    .line 682
    .line 683
    move/from16 v11, v16

    .line 684
    .line 685
    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v6

    .line 689
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v6

    .line 693
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 694
    .line 695
    invoke-virtual {v6, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v6

    .line 699
    sget-object v9, Lorg/commonmark/internal/util/Escaping;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 700
    .line 701
    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 702
    .line 703
    .line 704
    move-result-object v6

    .line 705
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v5

    .line 709
    iget-object v6, v0, Lorg/commonmark/internal/InlineParserImpl;->context:Lorg/jsoup/parser/TokenData;

    .line 710
    .line 711
    iget-object v6, v6, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast v6, Ljava/util/Map;

    .line 714
    .line 715
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    check-cast v5, Lorg/commonmark/node/LinkReferenceDefinition;

    .line 720
    .line 721
    if-eqz v5, :cond_2c

    .line 722
    .line 723
    iget-object v2, v5, Lorg/commonmark/node/LinkReferenceDefinition;->destination:Ljava/lang/String;

    .line 724
    .line 725
    iget-object v3, v5, Lorg/commonmark/node/LinkReferenceDefinition;->title:Ljava/lang/String;

    .line 726
    .line 727
    const/4 v4, 0x1

    .line 728
    :cond_2c
    if-eqz v4, :cond_31

    .line 729
    .line 730
    if-eqz v14, :cond_2d

    .line 731
    .line 732
    new-instance v4, Lorg/commonmark/node/Image;

    .line 733
    .line 734
    invoke-direct {v4}, Lorg/commonmark/node/Node;-><init>()V

    .line 735
    .line 736
    .line 737
    iput-object v2, v4, Lorg/commonmark/node/Image;->destination:Ljava/lang/String;

    .line 738
    .line 739
    iput-object v3, v4, Lorg/commonmark/node/Image;->title:Ljava/lang/String;

    .line 740
    .line 741
    goto :goto_1b

    .line 742
    :cond_2d
    new-instance v4, Lorg/commonmark/node/Link;

    .line 743
    .line 744
    invoke-direct {v4, v2, v3}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    :goto_1b
    iget-object v2, v13, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast v2, Lorg/commonmark/node/Node;

    .line 750
    .line 751
    :goto_1c
    if-eqz v2, :cond_2e

    .line 752
    .line 753
    iget-object v3, v2, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 754
    .line 755
    check-cast v3, Lorg/commonmark/node/Node;

    .line 756
    .line 757
    invoke-virtual {v4, v2}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 758
    .line 759
    .line 760
    move-object v2, v3

    .line 761
    goto :goto_1c

    .line 762
    :cond_2e
    iget-object v2, v10, Lorg/commonmark/internal/Bracket;->previousDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 763
    .line 764
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/InlineParserImpl;->processDelimiters(Lorg/commonmark/internal/Delimiter;)V

    .line 765
    .line 766
    .line 767
    iget-object v2, v4, Lorg/commonmark/node/Node;->firstChild:Ljava/lang/Object;

    .line 768
    .line 769
    check-cast v2, Lorg/commonmark/node/Node;

    .line 770
    .line 771
    iget-object v3, v4, Lorg/commonmark/node/Node;->lastChild:Ljava/lang/Object;

    .line 772
    .line 773
    check-cast v3, Lorg/commonmark/node/Node;

    .line 774
    .line 775
    if-ne v2, v3, :cond_2f

    .line 776
    .line 777
    goto :goto_1d

    .line 778
    :cond_2f
    invoke-static {v2, v3}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    .line 779
    .line 780
    .line 781
    :goto_1d
    invoke-virtual {v13}, Lorg/commonmark/node/Node;->unlink()V

    .line 782
    .line 783
    .line 784
    iget-object v2, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 785
    .line 786
    iget-object v2, v2, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    .line 787
    .line 788
    iput-object v2, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 789
    .line 790
    if-nez v14, :cond_16

    .line 791
    .line 792
    :goto_1e
    if-eqz v2, :cond_16

    .line 793
    .line 794
    iget-boolean v3, v2, Lorg/commonmark/internal/Bracket;->image:Z

    .line 795
    .line 796
    if-nez v3, :cond_30

    .line 797
    .line 798
    const/4 v3, 0x0

    .line 799
    iput-boolean v3, v2, Lorg/commonmark/internal/Bracket;->allowed:Z

    .line 800
    .line 801
    :cond_30
    iget-object v2, v2, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    .line 802
    .line 803
    goto :goto_1e

    .line 804
    :cond_31
    iput v8, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 805
    .line 806
    iget-object v2, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 807
    .line 808
    iget-object v2, v2, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    .line 809
    .line 810
    iput-object v2, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 811
    .line 812
    new-instance v2, Lorg/commonmark/node/Text;

    .line 813
    .line 814
    invoke-direct {v2, v12}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    :goto_1f
    move-object v10, v2

    .line 818
    :cond_32
    :goto_20
    const/4 v5, 0x0

    .line 819
    goto/16 :goto_26

    .line 820
    .line 821
    :pswitch_1
    iget v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 822
    .line 823
    const/16 v16, 0x1

    .line 824
    .line 825
    add-int/lit8 v2, v2, 0x1

    .line 826
    .line 827
    iput v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 828
    .line 829
    invoke-virtual {v0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    .line 830
    .line 831
    .line 832
    move-result v2

    .line 833
    if-ne v2, v8, :cond_33

    .line 834
    .line 835
    new-instance v2, Lorg/commonmark/node/HardLineBreak;

    .line 836
    .line 837
    invoke-direct {v2}, Lorg/commonmark/node/Node;-><init>()V

    .line 838
    .line 839
    .line 840
    iget v3, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 841
    .line 842
    add-int/lit8 v3, v3, 0x1

    .line 843
    .line 844
    iput v3, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 845
    .line 846
    goto :goto_1f

    .line 847
    :cond_33
    iget v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 848
    .line 849
    iget-object v3, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 850
    .line 851
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 852
    .line 853
    .line 854
    move-result v3

    .line 855
    if-ge v2, v3, :cond_34

    .line 856
    .line 857
    iget-object v2, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 858
    .line 859
    iget v3, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 860
    .line 861
    add-int/lit8 v4, v3, 0x1

    .line 862
    .line 863
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v2

    .line 867
    sget-object v3, Lorg/commonmark/internal/InlineParserImpl;->ESCAPABLE:Ljava/util/regex/Pattern;

    .line 868
    .line 869
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 874
    .line 875
    .line 876
    move-result v2

    .line 877
    if-eqz v2, :cond_34

    .line 878
    .line 879
    iget-object v2, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 880
    .line 881
    iget v3, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 882
    .line 883
    add-int/lit8 v4, v3, 0x1

    .line 884
    .line 885
    new-instance v5, Lorg/commonmark/node/Text;

    .line 886
    .line 887
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    invoke-direct {v5, v2}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    iget v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 895
    .line 896
    const/16 v16, 0x1

    .line 897
    .line 898
    add-int/lit8 v2, v2, 0x1

    .line 899
    .line 900
    iput v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 901
    .line 902
    move-object v10, v5

    .line 903
    goto :goto_20

    .line 904
    :cond_34
    new-instance v2, Lorg/commonmark/node/Text;

    .line 905
    .line 906
    const-string v3, "\\"

    .line 907
    .line 908
    invoke-direct {v2, v3}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    goto :goto_1f

    .line 912
    :pswitch_2
    iget v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 913
    .line 914
    add-int/lit8 v3, v2, 0x1

    .line 915
    .line 916
    iput v3, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 917
    .line 918
    new-instance v3, Lorg/commonmark/node/Text;

    .line 919
    .line 920
    const-string v4, "["

    .line 921
    .line 922
    invoke-direct {v3, v4}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    iget-object v4, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 926
    .line 927
    iget-object v5, v0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 928
    .line 929
    new-instance v17, Lorg/commonmark/internal/Bracket;

    .line 930
    .line 931
    const/16 v22, 0x0

    .line 932
    .line 933
    move/from16 v19, v2

    .line 934
    .line 935
    move-object/from16 v18, v3

    .line 936
    .line 937
    move-object/from16 v20, v4

    .line 938
    .line 939
    move-object/from16 v21, v5

    .line 940
    .line 941
    invoke-direct/range {v17 .. v22}, Lorg/commonmark/internal/Bracket;-><init>(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;Z)V

    .line 942
    .line 943
    .line 944
    move-object/from16 v3, v17

    .line 945
    .line 946
    move-object/from16 v2, v20

    .line 947
    .line 948
    if-eqz v2, :cond_35

    .line 949
    .line 950
    const/4 v11, 0x1

    .line 951
    iput-boolean v11, v2, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    .line 952
    .line 953
    :cond_35
    iput-object v3, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 954
    .line 955
    move-object/from16 v10, v18

    .line 956
    .line 957
    goto/16 :goto_20

    .line 958
    .line 959
    :cond_36
    sget-object v2, Lorg/commonmark/internal/InlineParserImpl;->TICKS_HERE:Ljava/util/regex/Pattern;

    .line 960
    .line 961
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v2

    .line 965
    if-nez v2, :cond_38

    .line 966
    .line 967
    :cond_37
    const/4 v10, 0x0

    .line 968
    goto/16 :goto_20

    .line 969
    .line 970
    :cond_38
    iget v3, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 971
    .line 972
    :cond_39
    sget-object v4, Lorg/commonmark/internal/InlineParserImpl;->TICKS:Ljava/util/regex/Pattern;

    .line 973
    .line 974
    invoke-virtual {v0, v4}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v4

    .line 978
    if-eqz v4, :cond_3b

    .line 979
    .line 980
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 981
    .line 982
    .line 983
    move-result v4

    .line 984
    if-eqz v4, :cond_39

    .line 985
    .line 986
    new-instance v4, Lorg/commonmark/node/Code;

    .line 987
    .line 988
    invoke-direct {v4}, Lorg/commonmark/node/Node;-><init>()V

    .line 989
    .line 990
    .line 991
    iget-object v5, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 992
    .line 993
    iget v6, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 994
    .line 995
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 996
    .line 997
    .line 998
    move-result v2

    .line 999
    sub-int/2addr v6, v2

    .line 1000
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v2

    .line 1004
    const/16 v3, 0x20

    .line 1005
    .line 1006
    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v2

    .line 1010
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1011
    .line 1012
    .line 1013
    move-result v5

    .line 1014
    const/4 v6, 0x3

    .line 1015
    if-lt v5, v6, :cond_3a

    .line 1016
    .line 1017
    const/4 v5, 0x0

    .line 1018
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 1019
    .line 1020
    .line 1021
    move-result v6

    .line 1022
    if-ne v6, v3, :cond_3a

    .line 1023
    .line 1024
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1025
    .line 1026
    .line 1027
    move-result v6

    .line 1028
    const/4 v11, 0x1

    .line 1029
    sub-int/2addr v6, v11

    .line 1030
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 1031
    .line 1032
    .line 1033
    move-result v6

    .line 1034
    if-ne v6, v3, :cond_3a

    .line 1035
    .line 1036
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1037
    .line 1038
    .line 1039
    move-result v6

    .line 1040
    invoke-static {v3, v5, v6, v2}, Lkotlin/math/MathKt;->skip(CIILjava/lang/CharSequence;)I

    .line 1041
    .line 1042
    .line 1043
    move-result v3

    .line 1044
    if-eq v3, v6, :cond_3a

    .line 1045
    .line 1046
    invoke-static {v11, v11, v2}, Landroidx/compose/ui/node/Owner$-CC;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v2

    .line 1050
    :cond_3a
    iput-object v2, v4, Lorg/commonmark/node/Code;->literal:Ljava/lang/String;

    .line 1051
    .line 1052
    goto/16 :goto_f

    .line 1053
    .line 1054
    :cond_3b
    iput v3, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 1055
    .line 1056
    new-instance v3, Lorg/commonmark/node/Text;

    .line 1057
    .line 1058
    invoke-direct {v3, v2}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    :goto_21
    move-object v10, v3

    .line 1062
    goto/16 :goto_20

    .line 1063
    .line 1064
    :cond_3c
    sget-object v2, Lorg/commonmark/internal/InlineParserImpl;->EMAIL_AUTOLINK:Ljava/util/regex/Pattern;

    .line 1065
    .line 1066
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v2

    .line 1070
    if-eqz v2, :cond_3d

    .line 1071
    .line 1072
    const/4 v11, 0x1

    .line 1073
    invoke-static {v11, v11, v2}, Landroidx/compose/ui/node/Owner$-CC;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v2

    .line 1077
    new-instance v3, Lorg/commonmark/node/Link;

    .line 1078
    .line 1079
    const-string v4, "mailto:"

    .line 1080
    .line 1081
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v4

    .line 1085
    const/4 v5, 0x0

    .line 1086
    invoke-direct {v3, v4, v5}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    .line 1088
    .line 1089
    new-instance v4, Lorg/commonmark/node/Text;

    .line 1090
    .line 1091
    invoke-direct {v4, v2}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    invoke-virtual {v3, v4}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 1095
    .line 1096
    .line 1097
    :goto_22
    move-object v10, v3

    .line 1098
    goto :goto_23

    .line 1099
    :cond_3d
    const/4 v5, 0x0

    .line 1100
    sget-object v2, Lorg/commonmark/internal/InlineParserImpl;->AUTOLINK:Ljava/util/regex/Pattern;

    .line 1101
    .line 1102
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v2

    .line 1106
    if-eqz v2, :cond_3e

    .line 1107
    .line 1108
    const/4 v11, 0x1

    .line 1109
    invoke-static {v11, v11, v2}, Landroidx/compose/ui/node/Owner$-CC;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    new-instance v3, Lorg/commonmark/node/Link;

    .line 1114
    .line 1115
    invoke-direct {v3, v2, v5}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    new-instance v4, Lorg/commonmark/node/Text;

    .line 1119
    .line 1120
    invoke-direct {v4, v2}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v3, v4}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 1124
    .line 1125
    .line 1126
    goto :goto_22

    .line 1127
    :cond_3e
    const/4 v10, 0x0

    .line 1128
    :goto_23
    if-nez v10, :cond_32

    .line 1129
    .line 1130
    sget-object v2, Lorg/commonmark/internal/InlineParserImpl;->HTML_TAG:Ljava/util/regex/Pattern;

    .line 1131
    .line 1132
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v2

    .line 1136
    if-eqz v2, :cond_37

    .line 1137
    .line 1138
    new-instance v2, Lorg/commonmark/node/HtmlInline;

    .line 1139
    .line 1140
    invoke-direct {v2}, Lorg/commonmark/node/Node;-><init>()V

    .line 1141
    .line 1142
    .line 1143
    goto/16 :goto_1f

    .line 1144
    .line 1145
    :cond_3f
    sget-object v2, Lorg/commonmark/internal/InlineParserImpl;->ENTITY_HERE:Ljava/util/regex/Pattern;

    .line 1146
    .line 1147
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v2

    .line 1151
    if-eqz v2, :cond_37

    .line 1152
    .line 1153
    invoke-static {v2}, Lorg/commonmark/internal/util/Html5Entities;->entityToString(Ljava/lang/String;)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v2

    .line 1157
    new-instance v3, Lorg/commonmark/node/Text;

    .line 1158
    .line 1159
    invoke-direct {v3, v2}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 1160
    .line 1161
    .line 1162
    goto :goto_21

    .line 1163
    :cond_40
    iget v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 1164
    .line 1165
    const/4 v11, 0x1

    .line 1166
    add-int/2addr v2, v11

    .line 1167
    iput v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 1168
    .line 1169
    invoke-virtual {v0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    .line 1170
    .line 1171
    .line 1172
    move-result v3

    .line 1173
    const/16 v4, 0x5b

    .line 1174
    .line 1175
    if-ne v3, v4, :cond_42

    .line 1176
    .line 1177
    iget v3, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 1178
    .line 1179
    add-int/2addr v3, v11

    .line 1180
    iput v3, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 1181
    .line 1182
    new-instance v3, Lorg/commonmark/node/Text;

    .line 1183
    .line 1184
    const-string v4, "!["

    .line 1185
    .line 1186
    invoke-direct {v3, v4}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    iget-object v4, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 1190
    .line 1191
    iget-object v5, v0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 1192
    .line 1193
    new-instance v19, Lorg/commonmark/internal/Bracket;

    .line 1194
    .line 1195
    const/16 v24, 0x1

    .line 1196
    .line 1197
    move/from16 v21, v2

    .line 1198
    .line 1199
    move-object/from16 v20, v3

    .line 1200
    .line 1201
    move-object/from16 v22, v4

    .line 1202
    .line 1203
    move-object/from16 v23, v5

    .line 1204
    .line 1205
    invoke-direct/range {v19 .. v24}, Lorg/commonmark/internal/Bracket;-><init>(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;Z)V

    .line 1206
    .line 1207
    .line 1208
    move-object/from16 v3, v19

    .line 1209
    .line 1210
    move-object/from16 v2, v22

    .line 1211
    .line 1212
    if-eqz v2, :cond_41

    .line 1213
    .line 1214
    iput-boolean v11, v2, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    .line 1215
    .line 1216
    :cond_41
    iput-object v3, v0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 1217
    .line 1218
    move-object/from16 v10, v20

    .line 1219
    .line 1220
    goto/16 :goto_20

    .line 1221
    .line 1222
    :cond_42
    new-instance v2, Lorg/commonmark/node/Text;

    .line 1223
    .line 1224
    const-string v3, "!"

    .line 1225
    .line 1226
    invoke-direct {v2, v3}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 1227
    .line 1228
    .line 1229
    goto/16 :goto_1f

    .line 1230
    .line 1231
    :cond_43
    iget v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 1232
    .line 1233
    add-int/2addr v2, v11

    .line 1234
    iput v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 1235
    .line 1236
    instance-of v2, v4, Lorg/commonmark/node/Text;

    .line 1237
    .line 1238
    if-eqz v2, :cond_47

    .line 1239
    .line 1240
    check-cast v4, Lorg/commonmark/node/Text;

    .line 1241
    .line 1242
    iget-object v2, v4, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 1243
    .line 1244
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1245
    .line 1246
    .line 1247
    move-result v2

    .line 1248
    if-eqz v2, :cond_47

    .line 1249
    .line 1250
    iget-object v2, v4, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 1251
    .line 1252
    sget-object v3, Lorg/commonmark/internal/InlineParserImpl;->FINAL_SPACE:Ljava/util/regex/Pattern;

    .line 1253
    .line 1254
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v3

    .line 1258
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 1259
    .line 1260
    .line 1261
    move-result v5

    .line 1262
    if-eqz v5, :cond_44

    .line 1263
    .line 1264
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    .line 1265
    .line 1266
    .line 1267
    move-result v5

    .line 1268
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    .line 1269
    .line 1270
    .line 1271
    move-result v3

    .line 1272
    sub-int v3, v5, v3

    .line 1273
    .line 1274
    goto :goto_24

    .line 1275
    :cond_44
    const/4 v3, 0x0

    .line 1276
    :goto_24
    const/4 v5, 0x0

    .line 1277
    if-lez v3, :cond_45

    .line 1278
    .line 1279
    invoke-static {v3, v5, v2}, Landroidx/compose/ui/node/Owner$-CC;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v2

    .line 1283
    iput-object v2, v4, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 1284
    .line 1285
    :cond_45
    const/4 v11, 0x2

    .line 1286
    if-lt v3, v11, :cond_46

    .line 1287
    .line 1288
    new-instance v2, Lorg/commonmark/node/HardLineBreak;

    .line 1289
    .line 1290
    invoke-direct {v2}, Lorg/commonmark/node/Node;-><init>()V

    .line 1291
    .line 1292
    .line 1293
    :goto_25
    move-object v10, v2

    .line 1294
    goto :goto_26

    .line 1295
    :cond_46
    new-instance v2, Lorg/commonmark/node/SoftLineBreak;

    .line 1296
    .line 1297
    invoke-direct {v2}, Lorg/commonmark/node/Node;-><init>()V

    .line 1298
    .line 1299
    .line 1300
    goto :goto_25

    .line 1301
    :cond_47
    const/4 v5, 0x0

    .line 1302
    new-instance v2, Lorg/commonmark/node/SoftLineBreak;

    .line 1303
    .line 1304
    invoke-direct {v2}, Lorg/commonmark/node/Node;-><init>()V

    .line 1305
    .line 1306
    .line 1307
    goto :goto_25

    .line 1308
    :goto_26
    if-eqz v10, :cond_48

    .line 1309
    .line 1310
    move-object v4, v10

    .line 1311
    goto :goto_27

    .line 1312
    :cond_48
    iget v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 1313
    .line 1314
    const/16 v16, 0x1

    .line 1315
    .line 1316
    add-int/lit8 v2, v2, 0x1

    .line 1317
    .line 1318
    iput v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 1319
    .line 1320
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v2

    .line 1324
    new-instance v3, Lorg/commonmark/node/Text;

    .line 1325
    .line 1326
    invoke-direct {v3, v2}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    .line 1327
    .line 1328
    .line 1329
    goto/16 :goto_1

    .line 1330
    .line 1331
    :goto_27
    if-eqz v4, :cond_49

    .line 1332
    .line 1333
    invoke-virtual {v1, v4}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 1334
    .line 1335
    .line 1336
    move v2, v5

    .line 1337
    const/4 v3, 0x0

    .line 1338
    goto/16 :goto_0

    .line 1339
    .line 1340
    :cond_49
    const/4 v2, 0x0

    .line 1341
    invoke-virtual {v0, v2}, Lorg/commonmark/internal/InlineParserImpl;->processDelimiters(Lorg/commonmark/internal/Delimiter;)V

    .line 1342
    .line 1343
    .line 1344
    iget-object v0, v1, Lorg/commonmark/node/Node;->firstChild:Ljava/lang/Object;

    .line 1345
    .line 1346
    check-cast v0, Lorg/commonmark/node/Node;

    .line 1347
    .line 1348
    iget-object v1, v1, Lorg/commonmark/node/Node;->lastChild:Ljava/lang/Object;

    .line 1349
    .line 1350
    check-cast v1, Lorg/commonmark/node/Node;

    .line 1351
    .line 1352
    if-ne v0, v1, :cond_4a

    .line 1353
    .line 1354
    return-void

    .line 1355
    :cond_4a
    invoke-static {v0, v1}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    .line 1356
    .line 1357
    .line 1358
    return-void

    .line 1359
    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final peek()C
    .locals 2

    .line 1
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 12
    .line 13
    iget p0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final processDelimiters(Lorg/commonmark/internal/Delimiter;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 7
    .line 8
    :goto_0
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v2, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 11
    .line 12
    if-eq v2, p1, :cond_0

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :goto_1
    if-eqz v1, :cond_b

    .line 17
    .line 18
    iget-object v2, v1, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 19
    .line 20
    iget-char v3, v1, Lorg/commonmark/internal/Delimiter;->delimiterChar:C

    .line 21
    .line 22
    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 33
    .line 34
    iget-boolean v5, v1, Lorg/commonmark/internal/Delimiter;->canClose:Z

    .line 35
    .line 36
    if-eqz v5, :cond_a

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :cond_1
    invoke-interface {v4}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    iget-object v6, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    move v8, v7

    .line 50
    move v9, v8

    .line 51
    :goto_2
    if-eqz v6, :cond_3

    .line 52
    .line 53
    if-eq v6, p1, :cond_3

    .line 54
    .line 55
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    if-eq v6, v10, :cond_3

    .line 64
    .line 65
    iget-boolean v10, v6, Lorg/commonmark/internal/Delimiter;->canOpen:Z

    .line 66
    .line 67
    if-eqz v10, :cond_2

    .line 68
    .line 69
    iget-char v10, v6, Lorg/commonmark/internal/Delimiter;->delimiterChar:C

    .line 70
    .line 71
    if-ne v10, v5, :cond_2

    .line 72
    .line 73
    invoke-interface {v4, v6, v1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getDelimiterUse(Lorg/commonmark/internal/Delimiter;Lorg/commonmark/internal/Delimiter;)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    const/4 v9, 0x1

    .line 78
    if-lez v8, :cond_2

    .line 79
    .line 80
    move v5, v9

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    iget-object v6, v6, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v5, v9

    .line 86
    move v9, v7

    .line 87
    :goto_3
    if-nez v9, :cond_5

    .line 88
    .line 89
    if-nez v5, :cond_4

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v3, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 96
    .line 97
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-boolean v2, v1, Lorg/commonmark/internal/Delimiter;->canOpen:Z

    .line 101
    .line 102
    if-nez v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    iget-object v3, v6, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 111
    .line 112
    iget v5, v6, Lorg/commonmark/internal/Delimiter;->length:I

    .line 113
    .line 114
    sub-int/2addr v5, v8

    .line 115
    iput v5, v6, Lorg/commonmark/internal/Delimiter;->length:I

    .line 116
    .line 117
    iget v5, v1, Lorg/commonmark/internal/Delimiter;->length:I

    .line 118
    .line 119
    sub-int/2addr v5, v8

    .line 120
    iput v5, v1, Lorg/commonmark/internal/Delimiter;->length:I

    .line 121
    .line 122
    iget-object v5, v3, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v8, v7, v5}, Landroidx/compose/ui/node/Owner$-CC;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    iput-object v5, v3, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v5, v2, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {v8, v7, v5}, Landroidx/compose/ui/node/Owner$-CC;->m(IILjava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iput-object v5, v2, Lorg/commonmark/node/Text;->literal:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v5, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 139
    .line 140
    :goto_4
    if-eqz v5, :cond_6

    .line 141
    .line 142
    if-eq v5, v6, :cond_6

    .line 143
    .line 144
    iget-object v7, v5, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 145
    .line 146
    invoke-virtual {p0, v5}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    .line 147
    .line 148
    .line 149
    move-object v5, v7

    .line 150
    goto :goto_4

    .line 151
    :cond_6
    if-eq v3, v2, :cond_8

    .line 152
    .line 153
    iget-object v5, v3, Lorg/commonmark/node/Node;->next:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v5, Lorg/commonmark/node/Node;

    .line 156
    .line 157
    if-ne v5, v2, :cond_7

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_7
    iget-object v7, v2, Lorg/commonmark/node/Node;->prev:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v7, Lorg/commonmark/node/Node;

    .line 163
    .line 164
    invoke-static {v5, v7}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    .line 165
    .line 166
    .line 167
    :cond_8
    :goto_5
    invoke-interface {v4, v3, v2, v8}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 168
    .line 169
    .line 170
    iget v3, v6, Lorg/commonmark/internal/Delimiter;->length:I

    .line 171
    .line 172
    if-nez v3, :cond_9

    .line 173
    .line 174
    iget-object v3, v6, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 175
    .line 176
    invoke-virtual {v3}, Lorg/commonmark/node/Node;->unlink()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v6}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    .line 180
    .line 181
    .line 182
    :cond_9
    iget v3, v1, Lorg/commonmark/internal/Delimiter;->length:I

    .line 183
    .line 184
    if-nez v3, :cond_0

    .line 185
    .line 186
    iget-object v3, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 187
    .line 188
    invoke-virtual {v2}, Lorg/commonmark/node/Node;->unlink()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    .line 192
    .line 193
    .line 194
    move-object v1, v3

    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_a
    :goto_6
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :cond_b
    :goto_7
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 202
    .line 203
    if-eqz v0, :cond_c

    .line 204
    .line 205
    if-eq v0, p1, :cond_c

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    .line 208
    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_c
    return-void
.end method

.method public final removeDelimiter(Lorg/commonmark/internal/Delimiter;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 6
    .line 7
    iput-object v1, v0, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 8
    .line 9
    :cond_0
    iget-object p1, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iput-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 17
    .line 18
    return-void
.end method
