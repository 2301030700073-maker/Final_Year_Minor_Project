.class public Lorg/mozilla/javascript/regexp/NativeRegExp;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ANCHOR_BOL:I = -0x2

.field private static final INDEX_LEN:I = 0x2

.field private static final Id_compile:I = 0x1

.field private static final Id_dotAll:I = 0x7

.field private static final Id_exec:I = 0x4

.field private static final Id_flags:I = 0x3

.field private static final Id_global:I = 0x4

.field private static final Id_ignoreCase:I = 0x5

.field private static final Id_lastIndex:I = 0x1

.field private static final Id_multiline:I = 0x6

.field private static final Id_prefix:I = 0x6

.field private static final Id_source:I = 0x2

.field private static final Id_sticky:I = 0x8

.field private static final Id_test:I = 0x5

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field public static final JSREG_DOTALL:I = 0x8

.field public static final JSREG_FOLD:I = 0x2

.field public static final JSREG_GLOB:I = 0x1

.field public static final JSREG_MULTILINE:I = 0x4

.field public static final JSREG_STICKY:I = 0x10

.field public static final MATCH:I = 0x1

.field private static final MAX_INSTANCE_ID:I = 0x8

.field private static final MAX_PROTOTYPE_ID:I = 0x9

.field public static final PREFIX:I = 0x2

.field private static final REGEXP_TAG:Ljava/lang/Object;

.field private static final REOP_ALNUM:B = 0x9t

.field private static final REOP_ALT:B = 0x1ft

.field private static final REOP_ALTPREREQ:B = 0x35t

.field private static final REOP_ALTPREREQ2:B = 0x37t

.field private static final REOP_ALTPREREQi:B = 0x36t

.field private static final REOP_ASSERT:B = 0x29t

.field private static final REOP_ASSERTNOTTEST:B = 0x2ct

.field private static final REOP_ASSERTTEST:B = 0x2bt

.field private static final REOP_ASSERT_NOT:B = 0x2at

.field private static final REOP_BACKREF:B = 0xdt

.field private static final REOP_BOL:B = 0x2t

.field private static final REOP_CLASS:B = 0x16t

.field private static final REOP_DIGIT:B = 0x7t

.field private static final REOP_DOT:B = 0x6t

.field private static final REOP_EMPTY:B = 0x1t

.field private static final REOP_END:B = 0x39t

.field private static final REOP_ENDCHILD:B = 0x31t

.field private static final REOP_EOL:B = 0x3t

.field private static final REOP_FLAT:B = 0xet

.field private static final REOP_FLAT1:B = 0xft

.field private static final REOP_FLAT1i:B = 0x11t

.field private static final REOP_FLATi:B = 0x10t

.field private static final REOP_JUMP:B = 0x20t

.field private static final REOP_LPAREN:B = 0x1dt

.field private static final REOP_MINIMALOPT:B = 0x2ft

.field private static final REOP_MINIMALPLUS:B = 0x2et

.field private static final REOP_MINIMALQUANT:B = 0x30t

.field private static final REOP_MINIMALREPEAT:B = 0x34t

.field private static final REOP_MINIMALSTAR:B = 0x2dt

.field private static final REOP_NCLASS:B = 0x17t

.field private static final REOP_NONALNUM:B = 0xat

.field private static final REOP_NONDIGIT:B = 0x8t

.field private static final REOP_NONSPACE:B = 0xct

.field private static final REOP_OPT:B = 0x1ct

.field private static final REOP_PLUS:B = 0x1bt

.field private static final REOP_QUANT:B = 0x19t

.field private static final REOP_REPEAT:B = 0x33t

.field private static final REOP_RPAREN:B = 0x1et

.field private static final REOP_SIMPLE_END:B = 0x17t

.field private static final REOP_SIMPLE_START:B = 0x1t

.field private static final REOP_SPACE:B = 0xbt

.field private static final REOP_STAR:B = 0x1at

.field private static final REOP_UCFLAT1:B = 0x12t

.field private static final REOP_UCFLAT1i:B = 0x13t

.field private static final REOP_WBDRY:B = 0x4t

.field private static final REOP_WNONBDRY:B = 0x5t

.field private static final SymbolId_match:I = 0x7

.field private static final SymbolId_matchAll:I = 0x8

.field private static final SymbolId_search:I = 0x9

.field public static final TEST:I = 0x0

.field private static final debug:Z = false

.field private static final serialVersionUID:J = 0x44e828d6a0fb3a60L


# instance fields
.field lastIndex:Ljava/lang/Object;

.field private lastIndexAttr:I

.field private re:Lorg/mozilla/javascript/regexp/RECompiled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 23
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    const/4 v0, 0x6

    .line 24
    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RECompiled;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    iput v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    .line 10
    .line 11
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p2, Lorg/mozilla/javascript/TopLevel$Builtins;->RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

    .line 17
    .line 18
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V
    .locals 5

    .line 1
    div-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    div-int/lit8 v1, p2, 0x8

    .line 4
    .line 5
    iget v2, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 6
    .line 7
    if-ge p2, v2, :cond_2

    .line 8
    .line 9
    if-gt p1, p2, :cond_2

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x7

    .line 12
    .line 13
    int-to-char p1, p1

    .line 14
    and-int/lit8 p2, p2, 0x7

    .line 15
    .line 16
    int-to-char p2, p2

    .line 17
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    .line 18
    .line 19
    const/16 v3, 0xff

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    aget-byte p0, v2, v0

    .line 24
    .line 25
    sub-int/2addr p2, p1

    .line 26
    rsub-int/lit8 p2, p2, 0x7

    .line 27
    .line 28
    shr-int p2, v3, p2

    .line 29
    .line 30
    shl-int p1, p2, p1

    .line 31
    .line 32
    int-to-byte p1, p1

    .line 33
    or-int/2addr p0, p1

    .line 34
    int-to-byte p0, p0

    .line 35
    aput-byte p0, v2, v0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    aget-byte v4, v2, v0

    .line 39
    .line 40
    shl-int p1, v3, p1

    .line 41
    .line 42
    int-to-byte p1, p1

    .line 43
    or-int/2addr p1, v4

    .line 44
    int-to-byte p1, p1

    .line 45
    aput-byte p1, v2, v0

    .line 46
    .line 47
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    .line 50
    .line 51
    if-ge v0, v1, :cond_1

    .line 52
    .line 53
    const/4 v2, -0x1

    .line 54
    aput-byte v2, p1, v0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    aget-byte p0, p1, v1

    .line 58
    .line 59
    rsub-int/lit8 p2, p2, 0x7

    .line 60
    .line 61
    shr-int p2, v3, p2

    .line 62
    .line 63
    int-to-byte p2, p2

    .line 64
    or-int/2addr p0, p2

    .line 65
    int-to-byte p0, p0

    .line 66
    aput-byte p0, p1, v1

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const-string p0, "SyntaxError"

    .line 70
    .line 71
    const-string p1, "invalid range in character class"

    .line 72
    .line 73
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    throw p0
.end method

.method private static addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V
    .locals 3

    .line 1
    div-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    iget v1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 4
    .line 5
    if-ge p1, v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    .line 8
    .line 9
    aget-byte v1, p0, v0

    .line 10
    .line 11
    and-int/lit8 p1, p1, 0x7

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    shl-int p1, v2, p1

    .line 15
    .line 16
    int-to-byte p1, p1

    .line 17
    or-int/2addr p1, v1

    .line 18
    int-to-byte p1, p1

    .line 19
    aput-byte p1, p0, v0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string p0, "SyntaxError"

    .line 23
    .line 24
    const-string p1, "invalid range in character class"

    .line 25
    .line 26
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    throw p0
.end method

.method private static addIndex([BII)I
    .locals 1

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    const v0, 0xffff

    .line 4
    .line 5
    .line 6
    if-gt p2, v0, :cond_0

    .line 7
    .line 8
    shr-int/lit8 v0, p2, 0x8

    .line 9
    .line 10
    int-to-byte v0, v0

    .line 11
    aput-byte v0, p0, p1

    .line 12
    .line 13
    add-int/lit8 v0, p1, 0x1

    .line 14
    .line 15
    int-to-byte p2, p2

    .line 16
    aput-byte p2, p0, v0

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    const-string p0, "Too complex regexp"

    .line 22
    .line 23
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    throw p0

    .line 28
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    throw p0
.end method

.method private appendFlags(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 2
    .line 3
    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 4
    .line 5
    and-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x67

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 15
    .line 16
    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 17
    .line 18
    and-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x69

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 28
    .line 29
    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 30
    .line 31
    and-int/lit8 v0, v0, 0x4

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const/16 v0, 0x6d

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 41
    .line 42
    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 43
    .line 44
    and-int/lit8 v0, v0, 0x8

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    const/16 v0, 0x73

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 54
    .line 55
    iget p0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 56
    .line 57
    and-int/lit8 p0, p0, 0x10

    .line 58
    .line 59
    if-eqz p0, :cond_4

    .line 60
    .line 61
    const/16 p0, 0x79

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method private static backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, -0x1

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    return v3

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 24
    .line 25
    add-int v4, v2, p1

    .line 26
    .line 27
    if-le v4, p3, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 31
    .line 32
    iget p3, p3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 33
    .line 34
    and-int/lit8 p3, p3, 0x2

    .line 35
    .line 36
    if-eqz p3, :cond_4

    .line 37
    .line 38
    move p3, v1

    .line 39
    :goto_0
    if-ge p3, p1, :cond_5

    .line 40
    .line 41
    add-int v2, v0, p3

    .line 42
    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 48
    .line 49
    add-int/2addr v4, p3

    .line 50
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eq v2, v4, :cond_3

    .line 55
    .line 56
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eq v2, v4, :cond_3

    .line 65
    .line 66
    return v1

    .line 67
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p2, v0, p2, v2, p1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_5

    .line 75
    .line 76
    return v1

    .line 77
    :cond_5
    iget p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 78
    .line 79
    add-int/2addr p2, p1

    .line 80
    iput p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 81
    .line 82
    return v3

    .line 83
    :cond_6
    :goto_1
    return v1
.end method

.method private static calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p1, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    .line 6
    .line 7
    if-ne p3, p4, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    aget-char v2, p2, p3

    .line 11
    .line 12
    const/16 v3, 0x5e

    .line 13
    .line 14
    if-ne v2, v3, :cond_1

    .line 15
    .line 16
    add-int/lit8 p3, p3, 0x1

    .line 17
    .line 18
    iput-boolean v0, p1, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    .line 19
    .line 20
    :cond_1
    move v2, v0

    .line 21
    move v3, v2

    .line 22
    move v4, v3

    .line 23
    :cond_2
    :goto_0
    if-eq p3, p4, :cond_12

    .line 24
    .line 25
    aget-char v5, p2, p3

    .line 26
    .line 27
    const/16 v6, 0x5c

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    if-ne v5, v6, :cond_d

    .line 31
    .line 32
    add-int/lit8 v5, p3, 0x1

    .line 33
    .line 34
    add-int/lit8 v8, p3, 0x2

    .line 35
    .line 36
    aget-char v5, p2, v5

    .line 37
    .line 38
    const/16 v9, 0x44

    .line 39
    .line 40
    const/high16 v10, 0x10000

    .line 41
    .line 42
    if-eq v5, v9, :cond_c

    .line 43
    .line 44
    const/16 v9, 0x53

    .line 45
    .line 46
    if-eq v5, v9, :cond_c

    .line 47
    .line 48
    const/16 v9, 0x57

    .line 49
    .line 50
    if-eq v5, v9, :cond_c

    .line 51
    .line 52
    const/16 v9, 0x66

    .line 53
    .line 54
    if-eq v5, v9, :cond_b

    .line 55
    .line 56
    const/16 v9, 0x6e

    .line 57
    .line 58
    if-eq v5, v9, :cond_a

    .line 59
    .line 60
    packed-switch v5, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    packed-switch v5, :pswitch_data_1

    .line 64
    .line 65
    .line 66
    packed-switch v5, :pswitch_data_2

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    move p3, v8

    .line 70
    goto/16 :goto_6

    .line 71
    .line 72
    :pswitch_0
    move p3, v7

    .line 73
    goto :goto_2

    .line 74
    :pswitch_1
    const/16 v5, 0xb

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_2
    const/4 p3, 0x4

    .line 78
    :goto_2
    move v5, v0

    .line 79
    move v9, v5

    .line 80
    :goto_3
    if-ge v5, p3, :cond_6

    .line 81
    .line 82
    if-ge v8, p4, :cond_6

    .line 83
    .line 84
    add-int/lit8 v10, v8, 0x1

    .line 85
    .line 86
    aget-char v8, p2, v8

    .line 87
    .line 88
    invoke-static {v8, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-gez v9, :cond_5

    .line 93
    .line 94
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    sub-int v8, v10, v5

    .line 97
    .line 98
    :cond_4
    :goto_4
    move v5, v6

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 101
    .line 102
    move v8, v10

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    move v5, v9

    .line 105
    goto :goto_1

    .line 106
    :pswitch_3
    const/16 v5, 0x9

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :pswitch_4
    const/16 v5, 0xd

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_5
    if-eqz v3, :cond_7

    .line 113
    .line 114
    iput v10, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    .line 115
    .line 116
    return v1

    .line 117
    :cond_7
    const/16 v5, 0x39

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :pswitch_6
    if-ge v8, p4, :cond_8

    .line 121
    .line 122
    aget-char v5, p2, v8

    .line 123
    .line 124
    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eqz v5, :cond_8

    .line 129
    .line 130
    add-int/lit8 p3, p3, 0x3

    .line 131
    .line 132
    aget-char v5, p2, v8

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_8
    add-int/lit8 p3, p3, 0x1

    .line 136
    .line 137
    :goto_5
    move v5, v6

    .line 138
    goto :goto_6

    .line 139
    :pswitch_7
    const/16 v5, 0x8

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :pswitch_8
    add-int/lit8 v5, v5, -0x30

    .line 143
    .line 144
    aget-char v6, p2, v8

    .line 145
    .line 146
    const/16 v9, 0x30

    .line 147
    .line 148
    if-gt v9, v6, :cond_3

    .line 149
    .line 150
    const/16 v10, 0x37

    .line 151
    .line 152
    if-gt v6, v10, :cond_3

    .line 153
    .line 154
    add-int/lit8 v8, p3, 0x3

    .line 155
    .line 156
    mul-int/lit8 v5, v5, 0x8

    .line 157
    .line 158
    add-int/lit8 v6, v6, -0x30

    .line 159
    .line 160
    add-int/2addr v6, v5

    .line 161
    aget-char v5, p2, v8

    .line 162
    .line 163
    if-gt v9, v5, :cond_4

    .line 164
    .line 165
    if-gt v5, v10, :cond_4

    .line 166
    .line 167
    add-int/lit8 v8, p3, 0x4

    .line 168
    .line 169
    mul-int/lit8 v9, v6, 0x8

    .line 170
    .line 171
    add-int/lit8 v5, v5, -0x30

    .line 172
    .line 173
    add-int/2addr v5, v9

    .line 174
    const/16 v9, 0xff

    .line 175
    .line 176
    if-gt v5, v9, :cond_9

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_9
    add-int/lit8 v8, p3, 0x3

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_a
    const/16 v5, 0xa

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_b
    const/16 v5, 0xc

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_c
    :pswitch_9
    iput v10, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    .line 189
    .line 190
    return v1

    .line 191
    :cond_d
    add-int/lit8 p3, p3, 0x1

    .line 192
    .line 193
    :goto_6
    if-eqz v3, :cond_f

    .line 194
    .line 195
    if-le v4, v5, :cond_e

    .line 196
    .line 197
    const-string p0, "msg.bad.range"

    .line 198
    .line 199
    const-string p1, ""

    .line 200
    .line 201
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return v0

    .line 205
    :cond_e
    move v3, v0

    .line 206
    goto :goto_7

    .line 207
    :cond_f
    add-int/lit8 v6, p4, -0x1

    .line 208
    .line 209
    if-ge p3, v6, :cond_10

    .line 210
    .line 211
    aget-char v6, p2, p3

    .line 212
    .line 213
    const/16 v8, 0x2d

    .line 214
    .line 215
    if-ne v6, v8, :cond_10

    .line 216
    .line 217
    add-int/lit8 p3, p3, 0x1

    .line 218
    .line 219
    int-to-char v4, v5

    .line 220
    move v3, v1

    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_10
    :goto_7
    iget v6, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    .line 224
    .line 225
    and-int/2addr v6, v7

    .line 226
    if-eqz v6, :cond_11

    .line 227
    .line 228
    int-to-char v5, v5

    .line 229
    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-lt v6, v5, :cond_11

    .line 238
    .line 239
    move v5, v6

    .line 240
    :cond_11
    if-le v5, v2, :cond_2

    .line 241
    .line 242
    move v2, v5

    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_12
    add-int/2addr v2, v1

    .line 246
    iput v2, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    .line 247
    .line 248
    return v1

    .line 249
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method private static classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z
    .locals 2

    .line 1
    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    shr-int/lit8 p0, p2, 0x3

    .line 9
    .line 10
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-ge p2, v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    .line 18
    .line 19
    aget-byte p0, v0, p0

    .line 20
    .line 21
    and-int/lit8 p2, p2, 0x7

    .line 22
    .line 23
    shl-int p2, v1, p2

    .line 24
    .line 25
    and-int/2addr p0, p2

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :cond_2
    :goto_0
    iget-boolean p0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    .line 31
    .line 32
    xor-int/2addr p0, v1

    .line 33
    return p0
.end method

.method public static compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;
    .locals 10

    .line 1
    new-instance v0, Lorg/mozilla/javascript/regexp/RECompiled;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/mozilla/javascript/regexp/RECompiled;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz p2, :cond_6

    .line 14
    .line 15
    move v4, v3

    .line 16
    move v5, v4

    .line 17
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-ge v4, v6, :cond_7

    .line 22
    .line 23
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/16 v7, 0x67

    .line 28
    .line 29
    const-string v8, "msg.invalid.re.flag"

    .line 30
    .line 31
    if-ne v6, v7, :cond_0

    .line 32
    .line 33
    move v7, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const/16 v7, 0x69

    .line 36
    .line 37
    if-ne v6, v7, :cond_1

    .line 38
    .line 39
    move v7, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v7, 0x6d

    .line 42
    .line 43
    if-ne v6, v7, :cond_2

    .line 44
    .line 45
    const/4 v7, 0x4

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/16 v7, 0x73

    .line 48
    .line 49
    if-ne v6, v7, :cond_3

    .line 50
    .line 51
    const/16 v7, 0x8

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/16 v7, 0x79

    .line 55
    .line 56
    if-ne v6, v7, :cond_4

    .line 57
    .line 58
    const/16 v7, 0x10

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-static {v8, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    move v7, v3

    .line 69
    :goto_1
    and-int v9, v5, v7

    .line 70
    .line 71
    if-eqz v9, :cond_5

    .line 72
    .line 73
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v8, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    or-int/2addr v5, v7

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    move v5, v3

    .line 85
    :cond_7
    iput v5, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 86
    .line 87
    new-instance p2, Lorg/mozilla/javascript/regexp/CompilerState;

    .line 88
    .line 89
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 90
    .line 91
    invoke-direct {p2, p0, v4, p1, v5}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    .line 92
    .line 93
    .line 94
    if-eqz p3, :cond_8

    .line 95
    .line 96
    if-lez p1, :cond_8

    .line 97
    .line 98
    new-instance p0, Lorg/mozilla/javascript/regexp/RENode;

    .line 99
    .line 100
    const/16 p3, 0xe

    .line 101
    .line 102
    invoke-direct {p0, p3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 103
    .line 104
    .line 105
    iput-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 106
    .line 107
    iget-object p3, p2, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 108
    .line 109
    aget-char p3, p3, v3

    .line 110
    .line 111
    iput-char p3, p0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 112
    .line 113
    iput p1, p0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 114
    .line 115
    iput v3, p0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 116
    .line 117
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 118
    .line 119
    add-int/lit8 p0, p0, 0x5

    .line 120
    .line 121
    iput p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_8
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    .line 125
    .line 126
    .line 127
    move-result p3

    .line 128
    const/4 v4, 0x0

    .line 129
    if-nez p3, :cond_9

    .line 130
    .line 131
    return-object v4

    .line 132
    :cond_9
    iget p3, p2, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    .line 133
    .line 134
    iget v6, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 135
    .line 136
    if-le p3, v6, :cond_a

    .line 137
    .line 138
    new-instance p2, Lorg/mozilla/javascript/regexp/CompilerState;

    .line 139
    .line 140
    iget-object p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 141
    .line 142
    invoke-direct {p2, p0, p3, p1, v5}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    .line 143
    .line 144
    .line 145
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 146
    .line 147
    iput p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    .line 148
    .line 149
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_a

    .line 154
    .line 155
    return-object v4

    .line 156
    :cond_a
    :goto_2
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 157
    .line 158
    add-int/2addr p0, v2

    .line 159
    new-array p0, p0, [B

    .line 160
    .line 161
    iput-object p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    .line 162
    .line 163
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    .line 164
    .line 165
    if-eqz p0, :cond_b

    .line 166
    .line 167
    new-array p1, p0, [Lorg/mozilla/javascript/regexp/RECharSet;

    .line 168
    .line 169
    iput-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    .line 170
    .line 171
    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->classCount:I

    .line 172
    .line 173
    :cond_b
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 174
    .line 175
    invoke-static {p2, v0, v3, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    iget-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    .line 180
    .line 181
    const/16 p3, 0x39

    .line 182
    .line 183
    aput-byte p3, p1, p0

    .line 184
    .line 185
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 186
    .line 187
    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    .line 188
    .line 189
    aget-byte p0, p1, v3

    .line 190
    .line 191
    const/4 p3, -0x2

    .line 192
    if-eq p0, v1, :cond_e

    .line 193
    .line 194
    const/16 v3, 0x1f

    .line 195
    .line 196
    if-eq p0, v3, :cond_c

    .line 197
    .line 198
    packed-switch p0, :pswitch_data_0

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :pswitch_0
    invoke-static {p1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    int-to-char p0, p0

    .line 207
    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    .line 208
    .line 209
    return-object v0

    .line 210
    :pswitch_1
    aget-byte p0, p1, v2

    .line 211
    .line 212
    and-int/lit16 p0, p0, 0xff

    .line 213
    .line 214
    int-to-char p0, p0

    .line 215
    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    .line 216
    .line 217
    return-object v0

    .line 218
    :pswitch_2
    invoke-static {p1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 219
    .line 220
    .line 221
    move-result p0

    .line 222
    iget-object p1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 223
    .line 224
    aget-char p0, p1, p0

    .line 225
    .line 226
    iput p0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    .line 227
    .line 228
    return-object v0

    .line 229
    :cond_c
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 230
    .line 231
    iget-object p1, p0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 232
    .line 233
    iget-byte p1, p1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 234
    .line 235
    if-ne p1, v1, :cond_d

    .line 236
    .line 237
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    .line 238
    .line 239
    iget-byte p0, p0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 240
    .line 241
    if-ne p0, v1, :cond_d

    .line 242
    .line 243
    iput p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    .line 244
    .line 245
    :cond_d
    :goto_3
    return-object v0

    .line 246
    :cond_e
    iput p3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    .line 247
    .line 248
    return-object v0

    .line 249
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V
    .locals 2

    .line 1
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 9
    .line 10
    iput-char p1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput p1, v0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    iput p1, v0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 17
    .line 18
    iget p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x3

    .line 21
    .line 22
    iput p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 23
    .line 24
    return-void
.end method

.method private static downcase(C)C
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x41

    .line 6
    .line 7
    if-gt v0, p0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x5a

    .line 10
    .line 11
    if-gt p0, v0, :cond_1

    .line 12
    .line 13
    add-int/lit8 p0, p0, 0x20

    .line 14
    .line 15
    int-to-char p0, p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    :cond_1
    return p0

    .line 24
    :cond_2
    return v1
.end method

.method private static emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I
    .locals 9

    .line 1
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    .line 2
    .line 3
    :goto_0
    if-eqz p3, :cond_1a

    .line 4
    .line 5
    add-int/lit8 v1, p2, 0x1

    .line 6
    .line 7
    iget-byte v2, p3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 8
    .line 9
    aput-byte v2, v0, p2

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v2, v3, :cond_19

    .line 13
    .line 14
    const/16 v4, 0x16

    .line 15
    .line 16
    if-eq v2, v4, :cond_17

    .line 17
    .line 18
    const/16 v4, 0x19

    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    if-eq v2, v4, :cond_f

    .line 22
    .line 23
    const/16 v4, 0x1d

    .line 24
    .line 25
    if-eq v2, v4, :cond_e

    .line 26
    .line 27
    const/16 v4, 0x1f

    .line 28
    .line 29
    if-eq v2, v4, :cond_d

    .line 30
    .line 31
    const/16 v4, 0xd

    .line 32
    .line 33
    if-eq v2, v4, :cond_c

    .line 34
    .line 35
    const/16 v4, 0xe

    .line 36
    .line 37
    if-eq v2, v4, :cond_5

    .line 38
    .line 39
    const/16 v4, 0x29

    .line 40
    .line 41
    if-eq v2, v4, :cond_4

    .line 42
    .line 43
    const/16 v4, 0x2a

    .line 44
    .line 45
    if-eq v2, v4, :cond_3

    .line 46
    .line 47
    packed-switch v2, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    move p2, v1

    .line 51
    goto/16 :goto_c

    .line 52
    .line 53
    :pswitch_0
    const/16 v4, 0x36

    .line 54
    .line 55
    if-ne v2, v4, :cond_0

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v3, 0x0

    .line 59
    :goto_1
    iget-char v2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    :cond_1
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 68
    .line 69
    .line 70
    add-int/lit8 v1, p2, 0x3

    .line 71
    .line 72
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    int-to-char v2, v2

    .line 77
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :cond_2
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, p2, 0x5

    .line 85
    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :cond_3
    add-int/lit8 p2, p2, 0x3

    .line 89
    .line 90
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 91
    .line 92
    invoke-static {p0, p1, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    add-int/lit8 v2, p2, 0x1

    .line 97
    .line 98
    const/16 v3, 0x2c

    .line 99
    .line 100
    aput-byte v3, v0, p2

    .line 101
    .line 102
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 103
    .line 104
    .line 105
    :goto_2
    move p2, v2

    .line 106
    goto/16 :goto_c

    .line 107
    .line 108
    :cond_4
    add-int/lit8 p2, p2, 0x3

    .line 109
    .line 110
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 111
    .line 112
    invoke-static {p0, p1, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    add-int/lit8 v2, p2, 0x1

    .line 117
    .line 118
    const/16 v3, 0x2b

    .line 119
    .line 120
    aput-byte v3, v0, p2

    .line 121
    .line 122
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 127
    .line 128
    if-eq v2, v5, :cond_6

    .line 129
    .line 130
    :goto_3
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 131
    .line 132
    if-eqz v2, :cond_6

    .line 133
    .line 134
    iget-byte v6, v2, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 135
    .line 136
    if-ne v6, v4, :cond_6

    .line 137
    .line 138
    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 139
    .line 140
    iget v7, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 141
    .line 142
    add-int/2addr v6, v7

    .line 143
    iget v8, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 144
    .line 145
    if-ne v6, v8, :cond_6

    .line 146
    .line 147
    iget v6, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 148
    .line 149
    add-int/2addr v7, v6

    .line 150
    iput v7, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 151
    .line 152
    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 153
    .line 154
    iput-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_6
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 158
    .line 159
    if-eq v2, v5, :cond_8

    .line 160
    .line 161
    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 162
    .line 163
    if-le v5, v3, :cond_8

    .line 164
    .line 165
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    .line 166
    .line 167
    and-int/lit8 v3, v3, 0x2

    .line 168
    .line 169
    if-eqz v3, :cond_7

    .line 170
    .line 171
    const/16 v3, 0x10

    .line 172
    .line 173
    aput-byte v3, v0, p2

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_7
    aput-byte v4, v0, p2

    .line 177
    .line 178
    :goto_4
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 183
    .line 184
    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    goto/16 :goto_c

    .line 189
    .line 190
    :cond_8
    iget-char v2, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 191
    .line 192
    const/16 v3, 0x100

    .line 193
    .line 194
    if-ge v2, v3, :cond_a

    .line 195
    .line 196
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    .line 197
    .line 198
    and-int/lit8 v3, v3, 0x2

    .line 199
    .line 200
    if-eqz v3, :cond_9

    .line 201
    .line 202
    const/16 v3, 0x11

    .line 203
    .line 204
    aput-byte v3, v0, p2

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_9
    const/16 v3, 0xf

    .line 208
    .line 209
    aput-byte v3, v0, p2

    .line 210
    .line 211
    :goto_5
    add-int/lit8 p2, p2, 0x2

    .line 212
    .line 213
    int-to-byte v2, v2

    .line 214
    aput-byte v2, v0, v1

    .line 215
    .line 216
    goto/16 :goto_c

    .line 217
    .line 218
    :cond_a
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    .line 219
    .line 220
    and-int/lit8 v3, v3, 0x2

    .line 221
    .line 222
    if-eqz v3, :cond_b

    .line 223
    .line 224
    const/16 v3, 0x13

    .line 225
    .line 226
    aput-byte v3, v0, p2

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_b
    const/16 v3, 0x12

    .line 230
    .line 231
    aput-byte v3, v0, p2

    .line 232
    .line 233
    :goto_6
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    goto/16 :goto_c

    .line 238
    .line 239
    :cond_c
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 240
    .line 241
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    goto/16 :goto_c

    .line 246
    .line 247
    :cond_d
    :goto_7
    iget-object p2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    .line 248
    .line 249
    add-int/lit8 v2, v1, 0x2

    .line 250
    .line 251
    iget-object v3, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 252
    .line 253
    invoke-static {p0, p1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    add-int/lit8 v3, v2, 0x1

    .line 258
    .line 259
    const/16 v4, 0x20

    .line 260
    .line 261
    aput-byte v4, v0, v2

    .line 262
    .line 263
    add-int/lit8 v2, v2, 0x3

    .line 264
    .line 265
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 266
    .line 267
    .line 268
    invoke-static {p0, p1, v2, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    add-int/lit8 v1, p2, 0x1

    .line 273
    .line 274
    aput-byte v4, v0, p2

    .line 275
    .line 276
    add-int/lit8 p2, p2, 0x3

    .line 277
    .line 278
    invoke-static {v0, v3, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 279
    .line 280
    .line 281
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_c

    .line 285
    .line 286
    :cond_e
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 287
    .line 288
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 293
    .line 294
    invoke-static {p0, p1, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    add-int/lit8 v1, p2, 0x1

    .line 299
    .line 300
    const/16 v2, 0x1e

    .line 301
    .line 302
    aput-byte v2, v0, p2

    .line 303
    .line 304
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 305
    .line 306
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 307
    .line 308
    .line 309
    move-result p2

    .line 310
    goto/16 :goto_c

    .line 311
    .line 312
    :cond_f
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 313
    .line 314
    if-nez v2, :cond_11

    .line 315
    .line 316
    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 317
    .line 318
    if-ne v4, v5, :cond_11

    .line 319
    .line 320
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    .line 321
    .line 322
    if-eqz v2, :cond_10

    .line 323
    .line 324
    const/16 v2, 0x1a

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_10
    const/16 v2, 0x2d

    .line 328
    .line 329
    :goto_8
    aput-byte v2, v0, p2

    .line 330
    .line 331
    goto :goto_b

    .line 332
    :cond_11
    if-nez v2, :cond_13

    .line 333
    .line 334
    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 335
    .line 336
    if-ne v4, v3, :cond_13

    .line 337
    .line 338
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    .line 339
    .line 340
    if-eqz v2, :cond_12

    .line 341
    .line 342
    const/16 v2, 0x1c

    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_12
    const/16 v2, 0x2f

    .line 346
    .line 347
    :goto_9
    aput-byte v2, v0, p2

    .line 348
    .line 349
    goto :goto_b

    .line 350
    :cond_13
    if-ne v2, v3, :cond_15

    .line 351
    .line 352
    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 353
    .line 354
    if-ne v4, v5, :cond_15

    .line 355
    .line 356
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    .line 357
    .line 358
    if-eqz v2, :cond_14

    .line 359
    .line 360
    const/16 v2, 0x1b

    .line 361
    .line 362
    goto :goto_a

    .line 363
    :cond_14
    const/16 v2, 0x2e

    .line 364
    .line 365
    :goto_a
    aput-byte v2, v0, p2

    .line 366
    .line 367
    goto :goto_b

    .line 368
    :cond_15
    iget-boolean v4, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    .line 369
    .line 370
    if-nez v4, :cond_16

    .line 371
    .line 372
    const/16 v4, 0x30

    .line 373
    .line 374
    aput-byte v4, v0, p2

    .line 375
    .line 376
    :cond_16
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 377
    .line 378
    .line 379
    move-result p2

    .line 380
    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 381
    .line 382
    add-int/2addr v1, v3

    .line 383
    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    :goto_b
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    .line 388
    .line 389
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 390
    .line 391
    .line 392
    move-result p2

    .line 393
    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 394
    .line 395
    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 396
    .line 397
    .line 398
    move-result p2

    .line 399
    add-int/lit8 v1, p2, 0x2

    .line 400
    .line 401
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 402
    .line 403
    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    .line 404
    .line 405
    .line 406
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    add-int/lit8 v2, v1, 0x1

    .line 408
    .line 409
    const/16 v3, 0x31

    .line 410
    .line 411
    aput-byte v3, v0, v1

    .line 412
    .line 413
    invoke-static {v0, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 414
    .line 415
    .line 416
    goto/16 :goto_2

    .line 417
    .line 418
    :catchall_0
    move-exception p0

    .line 419
    throw p0

    .line 420
    :cond_17
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    .line 421
    .line 422
    if-nez v2, :cond_18

    .line 423
    .line 424
    const/16 v2, 0x17

    .line 425
    .line 426
    aput-byte v2, v0, p2

    .line 427
    .line 428
    :cond_18
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 429
    .line 430
    invoke-static {v0, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 431
    .line 432
    .line 433
    move-result p2

    .line 434
    iget-object v1, p1, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    .line 435
    .line 436
    iget v2, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 437
    .line 438
    new-instance v3, Lorg/mozilla/javascript/regexp/RECharSet;

    .line 439
    .line 440
    iget v4, p3, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    .line 441
    .line 442
    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    .line 443
    .line 444
    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    .line 445
    .line 446
    iget-boolean v7, p3, Lorg/mozilla/javascript/regexp/RENode;->sense:Z

    .line 447
    .line 448
    invoke-direct {v3, v4, v5, v6, v7}, Lorg/mozilla/javascript/regexp/RECharSet;-><init>(IIIZ)V

    .line 449
    .line 450
    .line 451
    aput-object v3, v1, v2

    .line 452
    .line 453
    :cond_19
    :goto_c
    iget-object p3, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 454
    .line 455
    goto/16 :goto_0

    .line 456
    .line 457
    :cond_1a
    return p2

    .line 458
    nop

    .line 459
    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x2f

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    const/4 v4, -0x1

    .line 14
    if-le v1, v4, :cond_3

    .line 15
    .line 16
    if-eq v1, v3, :cond_0

    .line 17
    .line 18
    add-int/lit8 v4, v1, -0x1

    .line 19
    .line 20
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/16 v5, 0x5c

    .line 25
    .line 26
    if-eq v4, v5, :cond_2

    .line 27
    .line 28
    :cond_0
    if-nez v2, :cond_1

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v2, p0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, "\\/"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v3, v1, 0x1

    .line 44
    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    if-eqz v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {v2, p0, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :cond_4
    return-object p0
.end method

.method private static executeREBytecode(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v5, p3

    .line 4
    .line 5
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 6
    .line 7
    iget-object v3, v1, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    aget-byte v2, v3, v7

    .line 11
    .line 12
    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    const/4 v4, 0x1

    .line 16
    if-gez v1, :cond_2

    .line 17
    .line 18
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    :goto_0
    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 25
    .line 26
    if-gt v1, v5, :cond_1

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    move-object/from16 v1, p2

    .line 30
    .line 31
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-ltz v6, :cond_0

    .line 36
    .line 37
    add-int/lit8 v4, v6, 0x1

    .line 38
    .line 39
    aget-byte v2, v3, v6

    .line 40
    .line 41
    move v1, v8

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 44
    .line 45
    add-int/2addr v1, v8

    .line 46
    iput v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 47
    .line 48
    iget v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 49
    .line 50
    add-int/2addr v1, v8

    .line 51
    iput v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 52
    .line 53
    move/from16 v5, p3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    move v1, v7

    .line 57
    :goto_1
    if-nez v1, :cond_2

    .line 58
    .line 59
    return v7

    .line 60
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getInstructionObserverThreshold()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    move v9, v8

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move v9, v7

    .line 69
    :goto_2
    const/16 v10, 0x39

    .line 70
    .line 71
    move v12, v7

    .line 72
    move v13, v12

    .line 73
    move v11, v10

    .line 74
    :goto_3
    if-eqz v9, :cond_4

    .line 75
    .line 76
    const/4 v1, 0x5

    .line 77
    move-object/from16 v14, p0

    .line 78
    .line 79
    invoke-static {v14, v1}, Lorg/mozilla/javascript/ScriptRuntime;->addInstructionCount(Lorg/mozilla/javascript/Context;I)V

    .line 80
    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_4
    move-object/from16 v14, p0

    .line 84
    .line 85
    :goto_4
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    const/4 v6, 0x1

    .line 92
    move-object/from16 v1, p2

    .line 93
    .line 94
    move/from16 v5, p3

    .line 95
    .line 96
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    move v15, v4

    .line 101
    move v1, v5

    .line 102
    if-ltz v2, :cond_5

    .line 103
    .line 104
    move v4, v8

    .line 105
    goto :goto_5

    .line 106
    :cond_5
    move v4, v7

    .line 107
    :goto_5
    if-eqz v4, :cond_6

    .line 108
    .line 109
    move v15, v2

    .line 110
    :cond_6
    move v13, v4

    .line 111
    move/from16 v16, v8

    .line 112
    .line 113
    :cond_7
    :goto_6
    move v4, v15

    .line 114
    move-object v15, v3

    .line 115
    goto/16 :goto_19

    .line 116
    .line 117
    :cond_8
    move/from16 v1, p3

    .line 118
    .line 119
    move v15, v4

    .line 120
    if-eq v2, v10, :cond_2d

    .line 121
    .line 122
    const/16 v4, 0x33

    .line 123
    .line 124
    const/16 v5, 0x34

    .line 125
    .line 126
    const/4 v6, -0x1

    .line 127
    move/from16 v16, v8

    .line 128
    .line 129
    packed-switch v2, :pswitch_data_0

    .line 130
    .line 131
    .line 132
    const/16 v8, 0x2c

    .line 133
    .line 134
    packed-switch v2, :pswitch_data_1

    .line 135
    .line 136
    .line 137
    packed-switch v2, :pswitch_data_2

    .line 138
    .line 139
    .line 140
    const-string v0, "invalid bytecode"

    .line 141
    .line 142
    invoke-static {v0}, Lorg/mozilla/javascript/Kit;->codeBug(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    throw v0

    .line 147
    :pswitch_0
    invoke-static {v3, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    int-to-char v4, v4

    .line 152
    add-int/lit8 v5, v15, 0x2

    .line 153
    .line 154
    invoke-static {v3, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    int-to-char v5, v5

    .line 159
    add-int/lit8 v6, v15, 0x4

    .line 160
    .line 161
    iget v8, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 162
    .line 163
    if-ne v8, v1, :cond_9

    .line 164
    .line 165
    :goto_7
    move-object v15, v3

    .line 166
    move v4, v6

    .line 167
    move v13, v7

    .line 168
    goto/16 :goto_19

    .line 169
    .line 170
    :cond_9
    move-object/from16 v15, p2

    .line 171
    .line 172
    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    const/16 v10, 0x37

    .line 177
    .line 178
    if-ne v2, v10, :cond_a

    .line 179
    .line 180
    if-eq v8, v4, :cond_c

    .line 181
    .line 182
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 183
    .line 184
    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    .line 185
    .line 186
    aget-object v2, v2, v5

    .line 187
    .line 188
    invoke-static {v0, v2, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-nez v2, :cond_c

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_a
    const/16 v10, 0x36

    .line 196
    .line 197
    if-ne v2, v10, :cond_b

    .line 198
    .line 199
    invoke-static {v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    :cond_b
    if-eq v8, v4, :cond_c

    .line 204
    .line 205
    if-eq v8, v5, :cond_c

    .line 206
    .line 207
    goto :goto_7

    .line 208
    :cond_c
    move v4, v6

    .line 209
    :goto_8
    move/from16 v18, v12

    .line 210
    .line 211
    move v12, v11

    .line 212
    goto/16 :goto_1c

    .line 213
    .line 214
    :pswitch_1
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    .line 215
    .line 216
    .line 217
    move-result-object v8

    .line 218
    if-nez v13, :cond_10

    .line 219
    .line 220
    iget v2, v8, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    .line 221
    .line 222
    if-eq v2, v6, :cond_e

    .line 223
    .line 224
    if-lez v2, :cond_d

    .line 225
    .line 226
    goto :goto_9

    .line 227
    :cond_d
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 228
    .line 229
    iget v11, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_e
    :goto_9
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    .line 233
    .line 234
    move-object v4, v3

    .line 235
    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 236
    .line 237
    move v10, v5

    .line 238
    iget v5, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 239
    .line 240
    move v11, v6

    .line 241
    iget v6, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 242
    .line 243
    move-object v8, v4

    .line 244
    const/4 v4, 0x0

    .line 245
    move v12, v10

    .line 246
    move v10, v11

    .line 247
    move-object v11, v8

    .line 248
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 249
    .line 250
    .line 251
    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    add-int/lit8 v4, v15, 0x2

    .line 256
    .line 257
    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    add-int/lit8 v4, v15, 0x6

    .line 262
    .line 263
    move v3, v7

    .line 264
    :goto_a
    if-ge v3, v1, :cond_f

    .line 265
    .line 266
    add-int v5, v2, v3

    .line 267
    .line 268
    invoke-virtual {v0, v5, v10, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    .line 269
    .line 270
    .line 271
    add-int/lit8 v3, v3, 0x1

    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_f
    add-int/lit8 v1, v15, 0x7

    .line 275
    .line 276
    aget-byte v2, v11, v4

    .line 277
    .line 278
    :goto_b
    move v4, v1

    .line 279
    :goto_c
    move-object v3, v11

    .line 280
    move v11, v12

    .line 281
    move v12, v15

    .line 282
    :goto_d
    move/from16 v8, v16

    .line 283
    .line 284
    :goto_e
    const/16 v10, 0x39

    .line 285
    .line 286
    goto/16 :goto_3

    .line 287
    .line 288
    :cond_10
    move-object v11, v3

    .line 289
    move v12, v5

    .line 290
    move v10, v6

    .line 291
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    .line 292
    .line 293
    if-nez v1, :cond_11

    .line 294
    .line 295
    iget v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 296
    .line 297
    iget v3, v8, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    .line 298
    .line 299
    if-ne v2, v3, :cond_11

    .line 300
    .line 301
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 302
    .line 303
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 304
    .line 305
    move v13, v7

    .line 306
    move v4, v15

    .line 307
    :goto_f
    move-object v15, v11

    .line 308
    :goto_10
    move v11, v1

    .line 309
    goto/16 :goto_19

    .line 310
    .line 311
    :cond_11
    iget v2, v8, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    .line 312
    .line 313
    if-eqz v1, :cond_12

    .line 314
    .line 315
    add-int/lit8 v1, v1, -0x1

    .line 316
    .line 317
    :cond_12
    if-eq v2, v10, :cond_13

    .line 318
    .line 319
    add-int/lit8 v2, v2, -0x1

    .line 320
    .line 321
    :cond_13
    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 322
    .line 323
    iget v5, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 324
    .line 325
    iget v6, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 326
    .line 327
    const/4 v4, 0x0

    .line 328
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 329
    .line 330
    .line 331
    if-eqz v1, :cond_14

    .line 332
    .line 333
    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    add-int/lit8 v4, v15, 0x2

    .line 338
    .line 339
    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    add-int/lit8 v4, v15, 0x6

    .line 344
    .line 345
    move v3, v7

    .line 346
    :goto_11
    if-ge v3, v1, :cond_15

    .line 347
    .line 348
    add-int v5, v2, v3

    .line 349
    .line 350
    invoke-virtual {v0, v5, v10, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    .line 351
    .line 352
    .line 353
    add-int/lit8 v3, v3, 0x1

    .line 354
    .line 355
    goto :goto_11

    .line 356
    :cond_14
    iget v4, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 357
    .line 358
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 359
    .line 360
    invoke-static {v0, v12, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 361
    .line 362
    .line 363
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    .line 364
    .line 365
    .line 366
    add-int/lit8 v2, v15, 0x4

    .line 367
    .line 368
    invoke-static {v11, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    add-int/2addr v2, v3

    .line 373
    move v12, v1

    .line 374
    move v15, v4

    .line 375
    move v4, v2

    .line 376
    :cond_15
    add-int/lit8 v1, v4, 0x1

    .line 377
    .line 378
    aget-byte v2, v11, v4

    .line 379
    .line 380
    goto :goto_b

    .line 381
    :pswitch_2
    move-object v11, v3

    .line 382
    move v10, v6

    .line 383
    :goto_12
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    if-nez v13, :cond_17

    .line 388
    .line 389
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    .line 390
    .line 391
    if-nez v1, :cond_16

    .line 392
    .line 393
    move/from16 v13, v16

    .line 394
    .line 395
    :cond_16
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 396
    .line 397
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 398
    .line 399
    add-int/lit8 v4, v15, 0x4

    .line 400
    .line 401
    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    add-int/2addr v4, v2

    .line 406
    goto :goto_f

    .line 407
    :cond_17
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    .line 408
    .line 409
    if-nez v1, :cond_19

    .line 410
    .line 411
    iget v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 412
    .line 413
    iget v3, v8, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    .line 414
    .line 415
    if-eq v2, v3, :cond_18

    .line 416
    .line 417
    iget v2, v8, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    .line 418
    .line 419
    if-nez v2, :cond_19

    .line 420
    .line 421
    :cond_18
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 422
    .line 423
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 424
    .line 425
    add-int/lit8 v4, v15, 0x4

    .line 426
    .line 427
    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    add-int/2addr v4, v2

    .line 432
    move v13, v7

    .line 433
    goto :goto_f

    .line 434
    :cond_19
    iget v2, v8, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    .line 435
    .line 436
    if-eqz v1, :cond_1a

    .line 437
    .line 438
    add-int/lit8 v1, v1, -0x1

    .line 439
    .line 440
    :cond_1a
    move v12, v1

    .line 441
    if-eq v2, v10, :cond_1b

    .line 442
    .line 443
    add-int/lit8 v2, v2, -0x1

    .line 444
    .line 445
    :cond_1b
    move/from16 v17, v2

    .line 446
    .line 447
    if-nez v17, :cond_1c

    .line 448
    .line 449
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 450
    .line 451
    iget v1, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 452
    .line 453
    add-int/lit8 v4, v15, 0x4

    .line 454
    .line 455
    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    add-int/2addr v4, v2

    .line 460
    move-object v15, v11

    .line 461
    move/from16 v13, v16

    .line 462
    .line 463
    goto/16 :goto_10

    .line 464
    .line 465
    :cond_1c
    add-int/lit8 v1, v15, 0x6

    .line 466
    .line 467
    aget-byte v2, v11, v1

    .line 468
    .line 469
    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 470
    .line 471
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    if-eqz v5, :cond_1f

    .line 476
    .line 477
    move v1, v4

    .line 478
    add-int/lit8 v4, v15, 0x7

    .line 479
    .line 480
    const/4 v6, 0x1

    .line 481
    move-object v5, v11

    .line 482
    move v11, v3

    .line 483
    move-object v3, v5

    .line 484
    move/from16 v5, p3

    .line 485
    .line 486
    move v13, v1

    .line 487
    move-object/from16 v1, p2

    .line 488
    .line 489
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    move-object v0, v3

    .line 494
    if-gez v2, :cond_1e

    .line 495
    .line 496
    if-nez v12, :cond_1d

    .line 497
    .line 498
    move/from16 v1, v16

    .line 499
    .line 500
    goto :goto_13

    .line 501
    :cond_1d
    move v1, v7

    .line 502
    :goto_13
    iget v12, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 503
    .line 504
    iget v11, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 505
    .line 506
    add-int/lit8 v4, v15, 0x4

    .line 507
    .line 508
    invoke-static {v0, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 509
    .line 510
    .line 511
    move-result v2

    .line 512
    add-int/2addr v4, v2

    .line 513
    move-object v15, v0

    .line 514
    move v13, v1

    .line 515
    move-object/from16 v0, p1

    .line 516
    .line 517
    goto/16 :goto_19

    .line 518
    .line 519
    :cond_1e
    move/from16 v18, v13

    .line 520
    .line 521
    move v13, v2

    .line 522
    move/from16 v2, v18

    .line 523
    .line 524
    move/from16 v18, v16

    .line 525
    .line 526
    goto :goto_14

    .line 527
    :cond_1f
    move v2, v4

    .line 528
    move-object v0, v11

    .line 529
    move v11, v3

    .line 530
    move/from16 v18, v13

    .line 531
    .line 532
    move v13, v1

    .line 533
    :goto_14
    iget v5, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 534
    .line 535
    iget v6, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 536
    .line 537
    const/4 v4, 0x0

    .line 538
    move v3, v11

    .line 539
    move v1, v12

    .line 540
    move-object v11, v0

    .line 541
    move v12, v2

    .line 542
    move/from16 v2, v17

    .line 543
    .line 544
    move-object/from16 v0, p1

    .line 545
    .line 546
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 547
    .line 548
    .line 549
    if-nez v1, :cond_20

    .line 550
    .line 551
    iget v4, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 552
    .line 553
    iget v5, v8, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 554
    .line 555
    const/16 v1, 0x33

    .line 556
    .line 557
    move-object/from16 v0, p1

    .line 558
    .line 559
    move v2, v15

    .line 560
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    .line 561
    .line 562
    .line 563
    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    add-int/lit8 v4, v15, 0x2

    .line 568
    .line 569
    invoke-static {v11, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 570
    .line 571
    .line 572
    move-result v2

    .line 573
    move v3, v7

    .line 574
    :goto_15
    if-ge v3, v1, :cond_21

    .line 575
    .line 576
    add-int v4, v2, v3

    .line 577
    .line 578
    invoke-virtual {v0, v4, v10, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    .line 579
    .line 580
    .line 581
    add-int/lit8 v3, v3, 0x1

    .line 582
    .line 583
    goto :goto_15

    .line 584
    :cond_20
    move-object/from16 v0, p1

    .line 585
    .line 586
    :cond_21
    aget-byte v2, v11, v13

    .line 587
    .line 588
    const/16 v1, 0x31

    .line 589
    .line 590
    if-eq v2, v1, :cond_22

    .line 591
    .line 592
    add-int/lit8 v4, v13, 0x1

    .line 593
    .line 594
    move-object v3, v11

    .line 595
    move v11, v12

    .line 596
    move v12, v15

    .line 597
    move/from16 v8, v16

    .line 598
    .line 599
    move/from16 v13, v18

    .line 600
    .line 601
    goto/16 :goto_e

    .line 602
    .line 603
    :cond_22
    move v4, v12

    .line 604
    move/from16 v13, v18

    .line 605
    .line 606
    goto/16 :goto_12

    .line 607
    .line 608
    :pswitch_3
    move v2, v11

    .line 609
    move v4, v12

    .line 610
    move/from16 v8, v16

    .line 611
    .line 612
    move v13, v8

    .line 613
    goto/16 :goto_3

    .line 614
    .line 615
    :pswitch_4
    move v1, v4

    .line 616
    move v4, v5

    .line 617
    move v10, v6

    .line 618
    move v5, v11

    .line 619
    move/from16 v18, v12

    .line 620
    .line 621
    move-object v11, v3

    .line 622
    goto/16 :goto_1f

    .line 623
    .line 624
    :pswitch_5
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    iget v4, v1, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    .line 629
    .line 630
    iput v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 631
    .line 632
    iget-object v4, v1, Lorg/mozilla/javascript/regexp/REProgState;->backTrack:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 633
    .line 634
    iput-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 635
    .line 636
    iget v12, v1, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 637
    .line 638
    iget v11, v1, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 639
    .line 640
    if-ne v2, v8, :cond_7

    .line 641
    .line 642
    xor-int/lit8 v13, v13, 0x1

    .line 643
    .line 644
    goto/16 :goto_6

    .line 645
    .line 646
    :pswitch_6
    invoke-static {v3, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    add-int v10, v15, v1

    .line 651
    .line 652
    add-int/lit8 v4, v15, 0x2

    .line 653
    .line 654
    move v1, v4

    .line 655
    add-int/lit8 v4, v15, 0x3

    .line 656
    .line 657
    aget-byte v2, v3, v1

    .line 658
    .line 659
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    if-eqz v1, :cond_24

    .line 664
    .line 665
    const/4 v6, 0x0

    .line 666
    move-object/from16 v1, p2

    .line 667
    .line 668
    move/from16 v5, p3

    .line 669
    .line 670
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    .line 671
    .line 672
    .line 673
    move-result v6

    .line 674
    move v15, v2

    .line 675
    move/from16 v17, v4

    .line 676
    .line 677
    if-ltz v6, :cond_23

    .line 678
    .line 679
    aget-byte v1, v3, v6

    .line 680
    .line 681
    if-ne v1, v8, :cond_23

    .line 682
    .line 683
    move-object v15, v3

    .line 684
    move v13, v7

    .line 685
    move/from16 v4, v17

    .line 686
    .line 687
    goto/16 :goto_19

    .line 688
    .line 689
    :cond_23
    :goto_16
    move-object v4, v3

    .line 690
    goto :goto_17

    .line 691
    :cond_24
    move v15, v2

    .line 692
    move/from16 v17, v4

    .line 693
    .line 694
    goto :goto_16

    .line 695
    :goto_17
    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 696
    .line 697
    move-object v1, v4

    .line 698
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 699
    .line 700
    move-object v2, v1

    .line 701
    const/4 v1, 0x0

    .line 702
    move-object v5, v2

    .line 703
    const/4 v2, 0x0

    .line 704
    move v6, v11

    .line 705
    move-object v11, v5

    .line 706
    move v5, v6

    .line 707
    move v6, v12

    .line 708
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 709
    .line 710
    .line 711
    move v12, v5

    .line 712
    move/from16 v18, v6

    .line 713
    .line 714
    invoke-static {v0, v8, v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 715
    .line 716
    .line 717
    move-object v3, v11

    .line 718
    move v11, v12

    .line 719
    move v2, v15

    .line 720
    move/from16 v8, v16

    .line 721
    .line 722
    move/from16 v4, v17

    .line 723
    .line 724
    :goto_18
    move/from16 v12, v18

    .line 725
    .line 726
    goto/16 :goto_e

    .line 727
    .line 728
    :pswitch_7
    move/from16 v18, v12

    .line 729
    .line 730
    move v12, v11

    .line 731
    move-object v11, v3

    .line 732
    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 733
    .line 734
    .line 735
    move-result v1

    .line 736
    add-int v8, v15, v1

    .line 737
    .line 738
    add-int/lit8 v4, v15, 0x2

    .line 739
    .line 740
    move v1, v4

    .line 741
    add-int/lit8 v4, v15, 0x3

    .line 742
    .line 743
    aget-byte v2, v11, v1

    .line 744
    .line 745
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    .line 746
    .line 747
    .line 748
    move-result v1

    .line 749
    if-eqz v1, :cond_27

    .line 750
    .line 751
    const/4 v6, 0x0

    .line 752
    move-object/from16 v1, p2

    .line 753
    .line 754
    move/from16 v5, p3

    .line 755
    .line 756
    move-object v3, v11

    .line 757
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    .line 758
    .line 759
    .line 760
    move-result v6

    .line 761
    move v10, v2

    .line 762
    move-object v15, v3

    .line 763
    move v11, v4

    .line 764
    if-gez v6, :cond_28

    .line 765
    .line 766
    move v13, v7

    .line 767
    move v4, v11

    .line 768
    move v11, v12

    .line 769
    move/from16 v12, v18

    .line 770
    .line 771
    :goto_19
    if-nez v13, :cond_26

    .line 772
    .line 773
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 774
    .line 775
    if-eqz v1, :cond_25

    .line 776
    .line 777
    iget-object v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 778
    .line 779
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 780
    .line 781
    iget-object v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    .line 782
    .line 783
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 784
    .line 785
    iget v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->cp:I

    .line 786
    .line 787
    iput v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 788
    .line 789
    iget-object v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 790
    .line 791
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 792
    .line 793
    iget v11, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationOp:I

    .line 794
    .line 795
    iget v12, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationPc:I

    .line 796
    .line 797
    iget v4, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->pc:I

    .line 798
    .line 799
    iget v2, v1, Lorg/mozilla/javascript/regexp/REBackTrackData;->op:I

    .line 800
    .line 801
    :goto_1a
    move-object v3, v15

    .line 802
    goto/16 :goto_d

    .line 803
    .line 804
    :cond_25
    return v7

    .line 805
    :cond_26
    add-int/lit8 v1, v4, 0x1

    .line 806
    .line 807
    aget-byte v2, v15, v4

    .line 808
    .line 809
    move v4, v1

    .line 810
    goto :goto_1a

    .line 811
    :cond_27
    move v10, v2

    .line 812
    move-object v15, v11

    .line 813
    move v11, v4

    .line 814
    :cond_28
    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 815
    .line 816
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 817
    .line 818
    const/4 v1, 0x0

    .line 819
    const/4 v2, 0x0

    .line 820
    move v5, v12

    .line 821
    move/from16 v6, v18

    .line 822
    .line 823
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 824
    .line 825
    .line 826
    const/16 v1, 0x2b

    .line 827
    .line 828
    invoke-static {v0, v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 829
    .line 830
    .line 831
    move v2, v10

    .line 832
    move v4, v11

    .line 833
    move v11, v12

    .line 834
    move-object v3, v15

    .line 835
    :goto_1b
    move/from16 v8, v16

    .line 836
    .line 837
    goto :goto_18

    .line 838
    :pswitch_8
    move/from16 v18, v12

    .line 839
    .line 840
    move v12, v11

    .line 841
    invoke-static {v3, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 842
    .line 843
    .line 844
    move-result v1

    .line 845
    add-int v4, v15, v1

    .line 846
    .line 847
    add-int/lit8 v1, v4, 0x1

    .line 848
    .line 849
    aget-byte v2, v3, v4

    .line 850
    .line 851
    move v4, v1

    .line 852
    goto/16 :goto_18

    .line 853
    .line 854
    :pswitch_9
    move v4, v15

    .line 855
    goto/16 :goto_8

    .line 856
    .line 857
    :goto_1c
    invoke-static {v3, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    add-int v8, v4, v1

    .line 862
    .line 863
    add-int/lit8 v1, v4, 0x2

    .line 864
    .line 865
    add-int/lit8 v4, v4, 0x3

    .line 866
    .line 867
    aget-byte v2, v3, v1

    .line 868
    .line 869
    iget v10, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 870
    .line 871
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reopIsSimple(I)Z

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    if-eqz v1, :cond_2a

    .line 876
    .line 877
    const/4 v6, 0x1

    .line 878
    move-object/from16 v1, p2

    .line 879
    .line 880
    move/from16 v5, p3

    .line 881
    .line 882
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I

    .line 883
    .line 884
    .line 885
    move-result v2

    .line 886
    move-object v11, v3

    .line 887
    if-gez v2, :cond_29

    .line 888
    .line 889
    add-int/lit8 v4, v8, 0x1

    .line 890
    .line 891
    aget-byte v2, v11, v8

    .line 892
    .line 893
    move-object/from16 v0, p1

    .line 894
    .line 895
    move-object v3, v11

    .line 896
    move v11, v12

    .line 897
    goto :goto_1b

    .line 898
    :cond_29
    add-int/lit8 v0, v2, 0x1

    .line 899
    .line 900
    aget-byte v1, v11, v2

    .line 901
    .line 902
    move v13, v0

    .line 903
    move v6, v1

    .line 904
    move/from16 v15, v16

    .line 905
    .line 906
    goto :goto_1d

    .line 907
    :cond_2a
    move-object v11, v3

    .line 908
    move v6, v2

    .line 909
    move v15, v13

    .line 910
    move v13, v4

    .line 911
    :goto_1d
    add-int/lit8 v2, v8, 0x1

    .line 912
    .line 913
    aget-byte v1, v11, v8

    .line 914
    .line 915
    move-object/from16 v0, p1

    .line 916
    .line 917
    move v3, v10

    .line 918
    move v4, v12

    .line 919
    move/from16 v5, v18

    .line 920
    .line 921
    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V

    .line 922
    .line 923
    .line 924
    move v5, v4

    .line 925
    move v2, v6

    .line 926
    move-object v3, v11

    .line 927
    move v4, v13

    .line 928
    move v13, v15

    .line 929
    move/from16 v8, v16

    .line 930
    .line 931
    move/from16 v12, v18

    .line 932
    .line 933
    :goto_1e
    const/16 v10, 0x39

    .line 934
    .line 935
    move v11, v5

    .line 936
    goto/16 :goto_3

    .line 937
    .line 938
    :pswitch_a
    move v5, v11

    .line 939
    move/from16 v18, v12

    .line 940
    .line 941
    move-object v11, v3

    .line 942
    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 943
    .line 944
    .line 945
    move-result v1

    .line 946
    add-int/lit8 v4, v15, 0x2

    .line 947
    .line 948
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    .line 949
    .line 950
    .line 951
    move-result v2

    .line 952
    iget v3, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 953
    .line 954
    sub-int/2addr v3, v2

    .line 955
    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    .line 956
    .line 957
    .line 958
    add-int/lit8 v1, v15, 0x3

    .line 959
    .line 960
    aget-byte v2, v11, v4

    .line 961
    .line 962
    move v4, v1

    .line 963
    move-object v3, v11

    .line 964
    goto :goto_1e

    .line 965
    :pswitch_b
    move v5, v11

    .line 966
    move/from16 v18, v12

    .line 967
    .line 968
    move-object v11, v3

    .line 969
    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 970
    .line 971
    .line 972
    move-result v1

    .line 973
    add-int/lit8 v4, v15, 0x2

    .line 974
    .line 975
    iget v2, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 976
    .line 977
    invoke-virtual {v0, v1, v2, v7}, Lorg/mozilla/javascript/regexp/REGlobalData;->setParens(III)V

    .line 978
    .line 979
    .line 980
    add-int/lit8 v1, v15, 0x3

    .line 981
    .line 982
    aget-byte v2, v11, v4

    .line 983
    .line 984
    move v4, v1

    .line 985
    goto :goto_1e

    .line 986
    :goto_1f
    packed-switch v2, :pswitch_data_3

    .line 987
    .line 988
    .line 989
    packed-switch v2, :pswitch_data_4

    .line 990
    .line 991
    .line 992
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    throw v0

    .line 997
    :pswitch_c
    move v2, v7

    .line 998
    goto :goto_23

    .line 999
    :pswitch_d
    move v2, v7

    .line 1000
    goto :goto_20

    .line 1001
    :pswitch_e
    move v2, v7

    .line 1002
    goto :goto_21

    .line 1003
    :pswitch_f
    move v2, v7

    .line 1004
    goto :goto_22

    .line 1005
    :pswitch_10
    move/from16 v2, v16

    .line 1006
    .line 1007
    :goto_20
    move v8, v2

    .line 1008
    move v3, v7

    .line 1009
    move/from16 v2, v16

    .line 1010
    .line 1011
    goto :goto_24

    .line 1012
    :pswitch_11
    move/from16 v2, v16

    .line 1013
    .line 1014
    :goto_21
    move v8, v2

    .line 1015
    move v2, v10

    .line 1016
    move/from16 v3, v16

    .line 1017
    .line 1018
    goto :goto_24

    .line 1019
    :pswitch_12
    move/from16 v2, v16

    .line 1020
    .line 1021
    :goto_22
    move v8, v2

    .line 1022
    move v3, v7

    .line 1023
    move v2, v10

    .line 1024
    goto :goto_24

    .line 1025
    :pswitch_13
    move/from16 v2, v16

    .line 1026
    .line 1027
    :goto_23
    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 1028
    .line 1029
    .line 1030
    move-result v3

    .line 1031
    add-int/lit8 v6, v15, 0x2

    .line 1032
    .line 1033
    invoke-static {v11, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 1034
    .line 1035
    .line 1036
    move-result v6

    .line 1037
    add-int/lit8 v6, v6, -0x1

    .line 1038
    .line 1039
    add-int/lit8 v8, v15, 0x4

    .line 1040
    .line 1041
    move v15, v8

    .line 1042
    move v8, v2

    .line 1043
    move v2, v6

    .line 1044
    :goto_24
    iget v6, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 1045
    .line 1046
    move v12, v4

    .line 1047
    const/4 v4, 0x0

    .line 1048
    move v10, v12

    .line 1049
    move v12, v1

    .line 1050
    move v1, v3

    .line 1051
    move v3, v6

    .line 1052
    move/from16 v6, v18

    .line 1053
    .line 1054
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 1055
    .line 1056
    .line 1057
    if-eqz v8, :cond_2b

    .line 1058
    .line 1059
    invoke-static {v0, v12, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 1060
    .line 1061
    .line 1062
    add-int/lit8 v1, v15, 0x6

    .line 1063
    .line 1064
    goto :goto_25

    .line 1065
    :cond_2b
    if-eqz v1, :cond_2c

    .line 1066
    .line 1067
    add-int/lit8 v1, v15, 0x6

    .line 1068
    .line 1069
    move v12, v10

    .line 1070
    goto :goto_25

    .line 1071
    :cond_2c
    invoke-static {v0, v10, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 1072
    .line 1073
    .line 1074
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    .line 1075
    .line 1076
    .line 1077
    add-int/lit8 v15, v15, 0x4

    .line 1078
    .line 1079
    invoke-static {v11, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    .line 1080
    .line 1081
    .line 1082
    move-result v1

    .line 1083
    add-int/2addr v1, v15

    .line 1084
    move v12, v5

    .line 1085
    move/from16 v15, v18

    .line 1086
    .line 1087
    :goto_25
    add-int/lit8 v4, v1, 0x1

    .line 1088
    .line 1089
    aget-byte v2, v11, v1

    .line 1090
    .line 1091
    goto/16 :goto_c

    .line 1092
    .line 1093
    :cond_2d
    move/from16 v16, v8

    .line 1094
    .line 1095
    return v16

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x19
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private static flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2
    .line 3
    add-int/2addr v0, p2

    .line 4
    const/4 v1, 0x0

    .line 5
    if-le v0, p4, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    iget-object p4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 9
    .line 10
    iget-object p4, p4, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 11
    .line 12
    move v0, v1

    .line 13
    :goto_0
    if-ge v0, p2, :cond_2

    .line 14
    .line 15
    add-int v2, p1, v0

    .line 16
    .line 17
    aget-char v2, p4, v2

    .line 18
    .line 19
    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 20
    .line 21
    add-int/2addr v3, v0

    .line 22
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eq v2, v3, :cond_1

    .line 27
    .line 28
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eq v2, v3, :cond_1

    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 43
    .line 44
    add-int/2addr p1, p2

    .line 45
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method private static flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2
    .line 3
    add-int/2addr v0, p2

    .line 4
    const/4 v1, 0x0

    .line 5
    if-le v0, p4, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    move p4, v1

    .line 9
    :goto_0
    if-ge p4, p2, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 14
    .line 15
    add-int v2, p1, p4

    .line 16
    .line 17
    aget-char v0, v0, v2

    .line 18
    .line 19
    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 20
    .line 21
    add-int/2addr v2, p4

    .line 22
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 33
    .line 34
    add-int/2addr p1, p2

    .line 35
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method private static getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;Ljava/lang/String;)I
    .locals 5

    .line 1
    iget v0, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 2
    .line 3
    iget-object v1, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 4
    .line 5
    add-int/lit8 p0, p0, -0x30

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 9
    .line 10
    iget v4, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 11
    .line 12
    if-eq v3, v4, :cond_3

    .line 13
    .line 14
    aget-char v3, v1, v3

    .line 15
    .line 16
    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/4 v4, 0x1

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    mul-int/lit8 p0, p0, 0xa

    .line 27
    .line 28
    add-int/lit8 v3, v3, -0x30

    .line 29
    .line 30
    add-int/2addr v3, p0

    .line 31
    const p0, 0xffff

    .line 32
    .line 33
    .line 34
    if-ge v3, p0, :cond_1

    .line 35
    .line 36
    move p0, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v2, v4

    .line 39
    :cond_2
    :goto_1
    iget v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 40
    .line 41
    add-int/2addr v3, v4

    .line 42
    iput v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 46
    .line 47
    iget p1, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 48
    .line 49
    sub-int/2addr p1, v0

    .line 50
    invoke-static {v1, v0, p1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p2, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    return p0
.end method

.method private static getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    .line 6
    .line 7
    return-object p0
.end method

.method private static getIndex([BI)I
    .locals 1

    .line 1
    aget-byte v0, p0, p1

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    aget-byte p0, p0, p1

    .line 10
    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    or-int/2addr p0, v0

    .line 14
    return p0
.end method

.method private static getOffset([BI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExpInstantiator;->withLanguageVersion(I)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, ""

    .line 12
    .line 13
    invoke-static {p0, v3, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 18
    .line 19
    const/16 v1, 0x9

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;

    .line 35
    .line 36
    invoke-direct {v1}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "constructor"

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    invoke-virtual {v0, v2, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/BaseFunction;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    if-eqz p2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 57
    .line 58
    .line 59
    :cond_0
    const-string p2, "RegExp"

    .line 60
    .line 61
    invoke-static {p1, p2, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntimeES6;->addSymbolSpecies(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdScriptableObject;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private static isControlLetter(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x61

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x7a

    .line 6
    .line 7
    if-le p0, v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x41

    .line 10
    .line 11
    if-gt v0, p0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x5a

    .line 14
    .line 15
    if-gt p0, v0, :cond_2

    .line 16
    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_2
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public static isDigit(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x39

    .line 6
    .line 7
    if-gt p0, v0, :cond_0

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

.method private static isLineTerm(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static isREWhiteSpace(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static isWord(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x61

    .line 2
    .line 3
    if-gt v0, p0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x7a

    .line 6
    .line 7
    if-le p0, v0, :cond_3

    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x41

    .line 10
    .line 11
    if-gt v0, p0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x5a

    .line 14
    .line 15
    if-le p0, v0, :cond_3

    .line 16
    .line 17
    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    const/16 v0, 0x5f

    .line 24
    .line 25
    if-ne p0, v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 31
    return p0
.end method

.method private js_SymbolMatchAll(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->isObject(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    array-length v0, p4

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    aget-object p4, p4, v2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 16
    .line 17
    :goto_0
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    invoke-virtual {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getClassName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p1, p4, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getExistingCtor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Function;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p1, p3, p0}, Lorg/mozilla/javascript/AbstractEcmaObjectOperations;->speciesConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Constructable;)Lorg/mozilla/javascript/Constructable;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p4, "flags"

    .line 38
    .line 39
    invoke-static {p3, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object p3, v0, v2

    .line 51
    .line 52
    aput-object p4, v0, v1

    .line 53
    .line 54
    invoke-interface {p0, p1, p2, v0}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    const-string p0, "lastIndex"

    .line 59
    .line 60
    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toLength(Ljava/lang/Object;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-static {v5, p0, p3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const/16 p0, 0x67

    .line 76
    .line 77
    invoke-virtual {p4, p0}, Ljava/lang/String;->indexOf(I)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    const/4 p1, -0x1

    .line 82
    if-eq p0, p1, :cond_1

    .line 83
    .line 84
    move v7, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    move v7, v2

    .line 87
    :goto_1
    const/16 p0, 0x75

    .line 88
    .line 89
    invoke-virtual {p4, p0}, Ljava/lang/String;->indexOf(I)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-ne p0, p1, :cond_3

    .line 94
    .line 95
    const/16 p0, 0x76

    .line 96
    .line 97
    invoke-virtual {p4, p0}, Ljava/lang/String;->indexOf(I)I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eq p0, p1, :cond_2

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move v8, v2

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    :goto_2
    move v8, v1

    .line 107
    :goto_3
    new-instance v3, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;

    .line 108
    .line 109
    move-object v4, p2

    .line 110
    invoke-direct/range {v3 .. v8}, Lorg/mozilla/javascript/regexp/NativeRegExpStringIterator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ZZ)V

    .line 111
    .line 112
    .line 113
    return-object v3

    .line 114
    :cond_4
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    new-array p1, v1, [Ljava/lang/Object;

    .line 119
    .line 120
    aput-object p0, p1, v2

    .line 121
    .line 122
    const-string p0, "msg.arg.not.object"

    .line 123
    .line 124
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    throw p0
.end method

.method public static js_exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "exec"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p2, p0, p1, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static matchRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z
    .locals 7

    .line 1
    iget v0, p2, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    iput-object v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 12
    .line 13
    :goto_0
    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 14
    .line 15
    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez p6, :cond_2

    .line 20
    .line 21
    iget p6, p2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 22
    .line 23
    and-int/lit8 p6, p6, 0x4

    .line 24
    .line 25
    if-eqz p6, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move p6, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    move p6, v0

    .line 31
    :goto_2
    iput-boolean p6, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    .line 32
    .line 33
    iput-object p2, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 34
    .line 35
    iget p6, p2, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    .line 36
    .line 37
    move v3, p4

    .line 38
    :goto_3
    if-gt v3, p5, :cond_b

    .line 39
    .line 40
    if-ltz p6, :cond_6

    .line 41
    .line 42
    :goto_4
    if-ne v3, p5, :cond_3

    .line 43
    .line 44
    return v2

    .line 45
    :cond_3
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eq v4, p6, :cond_6

    .line 50
    .line 51
    iget-object v5, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 52
    .line 53
    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 54
    .line 55
    and-int/lit8 v5, v5, 0x2

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    int-to-char v5, p6

    .line 64
    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-ne v4, v5, :cond_4

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_4
    iget-object v4, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 72
    .line 73
    iget v4, v4, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 74
    .line 75
    and-int/lit8 v4, v4, 0x10

    .line 76
    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    return v2

    .line 80
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    :goto_5
    iput v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 84
    .line 85
    sub-int/2addr v3, p4

    .line 86
    iput v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 87
    .line 88
    move v3, v2

    .line 89
    :goto_6
    iget v4, p2, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    .line 90
    .line 91
    if-ge v3, v4, :cond_7

    .line 92
    .line 93
    iget-object v4, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 94
    .line 95
    const-wide/16 v5, -0x1

    .line 96
    .line 97
    aput-wide v5, v4, v3

    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_7
    invoke-static {p0, p1, p3, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeREBytecode(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 107
    .line 108
    iput-object v1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 109
    .line 110
    if-eqz v3, :cond_8

    .line 111
    .line 112
    return v0

    .line 113
    :cond_8
    const/4 v3, -0x2

    .line 114
    if-ne p6, v3, :cond_9

    .line 115
    .line 116
    iget-boolean v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    .line 117
    .line 118
    if-nez v3, :cond_9

    .line 119
    .line 120
    iput p5, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 121
    .line 122
    return v2

    .line 123
    :cond_9
    iget-object v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 124
    .line 125
    iget v3, v3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 126
    .line 127
    and-int/lit8 v3, v3, 0x10

    .line 128
    .line 129
    if-eqz v3, :cond_a

    .line 130
    .line 131
    return v2

    .line 132
    :cond_a
    iget v3, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 133
    .line 134
    add-int/2addr v3, p4

    .line 135
    add-int/2addr v3, v0

    .line 136
    goto :goto_3

    .line 137
    :cond_b
    return v2
.end method

.method private static parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v2, v1

    .line 5
    :cond_0
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 6
    .line 7
    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 8
    .line 9
    if-eq v3, v4, :cond_4

    .line 10
    .line 11
    aget-char v3, v0, v3

    .line 12
    .line 13
    const/16 v4, 0x7c

    .line 14
    .line 15
    if-eq v3, v4, :cond_4

    .line 16
    .line 17
    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    const/16 v4, 0x29

    .line 22
    .line 23
    if-ne v3, v4, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    move-object v1, v3

    .line 39
    move-object v2, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 42
    .line 43
    :goto_0
    iget-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    move-object v2, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_5
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 61
    .line 62
    :goto_2
    return v0
.end method

.method private static parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 11

    .line 1
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 10
    .line 11
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 12
    .line 13
    array-length v3, v0

    .line 14
    const/4 v4, 0x1

    .line 15
    if-eq v2, v3, :cond_6

    .line 16
    .line 17
    aget-char v0, v0, v2

    .line 18
    .line 19
    const/16 v3, 0x7c

    .line 20
    .line 21
    if-ne v0, v3, :cond_6

    .line 22
    .line 23
    add-int/2addr v2, v4

    .line 24
    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 25
    .line 26
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    .line 27
    .line 28
    const/16 v2, 0x1f

    .line 29
    .line 30
    invoke-direct {v0, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 34
    .line 35
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 36
    .line 37
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 45
    .line 46
    iput-object v1, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    .line 47
    .line 48
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 49
    .line 50
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 51
    .line 52
    iget-byte v3, v2, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 53
    .line 54
    const/16 v5, 0xe

    .line 55
    .line 56
    if-ne v3, v5, :cond_3

    .line 57
    .line 58
    iget-byte v6, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 59
    .line 60
    if-ne v6, v5, :cond_3

    .line 61
    .line 62
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    .line 63
    .line 64
    and-int/lit8 v3, v3, 0x2

    .line 65
    .line 66
    if-nez v3, :cond_2

    .line 67
    .line 68
    const/16 v3, 0x35

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/16 v3, 0x36

    .line 72
    .line 73
    :goto_0
    iput-byte v3, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 74
    .line 75
    iget-char v2, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 76
    .line 77
    iput-char v2, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 78
    .line 79
    iget-char v1, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 80
    .line 81
    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 82
    .line 83
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 84
    .line 85
    add-int/lit8 v0, v0, 0xd

    .line 86
    .line 87
    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/16 v6, 0x37

    .line 91
    .line 92
    const/16 v7, 0x100

    .line 93
    .line 94
    const/16 v8, 0x16

    .line 95
    .line 96
    if-ne v3, v8, :cond_4

    .line 97
    .line 98
    iget v9, v2, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 99
    .line 100
    if-ge v9, v7, :cond_4

    .line 101
    .line 102
    iget-byte v10, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 103
    .line 104
    if-ne v10, v5, :cond_4

    .line 105
    .line 106
    iget v10, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    .line 107
    .line 108
    and-int/lit8 v10, v10, 0x2

    .line 109
    .line 110
    if-nez v10, :cond_4

    .line 111
    .line 112
    iput-byte v6, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 113
    .line 114
    iget-char v1, v1, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 115
    .line 116
    iput-char v1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 117
    .line 118
    iput v9, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 119
    .line 120
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 121
    .line 122
    add-int/lit8 v0, v0, 0xd

    .line 123
    .line 124
    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    if-ne v3, v5, :cond_5

    .line 128
    .line 129
    iget-byte v3, v1, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 130
    .line 131
    if-ne v3, v8, :cond_5

    .line 132
    .line 133
    iget v1, v1, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 134
    .line 135
    if-ge v1, v7, :cond_5

    .line 136
    .line 137
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    .line 138
    .line 139
    and-int/lit8 v3, v3, 0x2

    .line 140
    .line 141
    if-nez v3, :cond_5

    .line 142
    .line 143
    iput-byte v6, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    .line 144
    .line 145
    iget-char v2, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 146
    .line 147
    iput-char v2, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 148
    .line 149
    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 150
    .line 151
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 152
    .line 153
    add-int/lit8 v0, v0, 0xd

    .line 154
    .line 155
    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 159
    .line 160
    add-int/lit8 v0, v0, 0x9

    .line 161
    .line 162
    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 163
    .line 164
    :cond_6
    :goto_1
    return v4
.end method

.method private static parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 4
    .line 5
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 10
    .line 11
    aget-char v4, v1, v2

    .line 12
    .line 13
    iget v5, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 14
    .line 15
    const/16 v6, 0x24

    .line 16
    .line 17
    const/4 v8, 0x1

    .line 18
    if-eq v4, v6, :cond_2c

    .line 19
    .line 20
    const/16 v6, 0x2e

    .line 21
    .line 22
    const/16 v9, 0x2a

    .line 23
    .line 24
    const/16 v12, 0x3f

    .line 25
    .line 26
    if-eq v4, v6, :cond_1e

    .line 27
    .line 28
    if-eq v4, v12, :cond_1d

    .line 29
    .line 30
    const/16 v6, 0x5e

    .line 31
    .line 32
    if-eq v4, v6, :cond_1c

    .line 33
    .line 34
    const/16 v6, 0x5b

    .line 35
    .line 36
    const/16 v16, 0x3

    .line 37
    .line 38
    const/16 v7, 0x5c

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    const-string v14, ""

    .line 43
    .line 44
    if-eq v4, v6, :cond_17

    .line 45
    .line 46
    const/16 v6, 0xe

    .line 47
    .line 48
    const/16 v18, 0x6

    .line 49
    .line 50
    const/4 v10, 0x4

    .line 51
    if-eq v4, v7, :cond_7

    .line 52
    .line 53
    packed-switch v4, :pswitch_data_0

    .line 54
    .line 55
    .line 56
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 57
    .line 58
    invoke-direct {v2, v6}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 59
    .line 60
    .line 61
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 62
    .line 63
    iput-char v4, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 64
    .line 65
    iput v8, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 66
    .line 67
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 68
    .line 69
    sub-int/2addr v3, v8

    .line 70
    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 71
    .line 72
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x3

    .line 75
    .line 76
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 77
    .line 78
    goto/16 :goto_a

    .line 79
    .line 80
    :pswitch_0
    const-string v0, "msg.re.unmatched.right.paren"

    .line 81
    .line 82
    invoke-static {v0, v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v17

    .line 86
    :pswitch_1
    add-int/lit8 v4, v2, 0x2

    .line 87
    .line 88
    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 89
    .line 90
    const/16 v7, 0x29

    .line 91
    .line 92
    if-ge v4, v6, :cond_3

    .line 93
    .line 94
    aget-char v3, v1, v3

    .line 95
    .line 96
    if-ne v3, v12, :cond_3

    .line 97
    .line 98
    add-int/lit8 v3, v2, 0x2

    .line 99
    .line 100
    aget-char v3, v1, v3

    .line 101
    .line 102
    const/16 v4, 0x21

    .line 103
    .line 104
    const/16 v6, 0x3d

    .line 105
    .line 106
    if-eq v3, v6, :cond_0

    .line 107
    .line 108
    if-eq v3, v4, :cond_0

    .line 109
    .line 110
    const/16 v12, 0x3a

    .line 111
    .line 112
    if-ne v3, v12, :cond_3

    .line 113
    .line 114
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 115
    .line 116
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 117
    .line 118
    if-ne v3, v6, :cond_1

    .line 119
    .line 120
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 121
    .line 122
    invoke-direct {v2, v7}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 123
    .line 124
    .line 125
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 126
    .line 127
    add-int/2addr v3, v10

    .line 128
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    if-ne v3, v4, :cond_2

    .line 132
    .line 133
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 134
    .line 135
    invoke-direct {v2, v9}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 136
    .line 137
    .line 138
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 139
    .line 140
    add-int/2addr v3, v10

    .line 141
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    const/4 v2, 0x0

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 147
    .line 148
    const/16 v3, 0x1d

    .line 149
    .line 150
    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 151
    .line 152
    .line 153
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 154
    .line 155
    add-int/lit8 v3, v3, 0x6

    .line 156
    .line 157
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 158
    .line 159
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 160
    .line 161
    add-int/lit8 v4, v3, 0x1

    .line 162
    .line 163
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 164
    .line 165
    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 166
    .line 167
    :goto_0
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    .line 168
    .line 169
    add-int/2addr v3, v8

    .line 170
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    .line 171
    .line 172
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_4

    .line 177
    .line 178
    return v17

    .line 179
    :cond_4
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 180
    .line 181
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 182
    .line 183
    if-eq v3, v4, :cond_6

    .line 184
    .line 185
    aget-char v4, v1, v3

    .line 186
    .line 187
    if-eq v4, v7, :cond_5

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    add-int/2addr v3, v8

    .line 191
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 192
    .line 193
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    .line 194
    .line 195
    sub-int/2addr v3, v8

    .line 196
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    .line 197
    .line 198
    if-eqz v2, :cond_1f

    .line 199
    .line 200
    iget-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 201
    .line 202
    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 203
    .line 204
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 205
    .line 206
    goto/16 :goto_a

    .line 207
    .line 208
    :cond_6
    :goto_1
    const-string v0, "msg.unterm.paren"

    .line 209
    .line 210
    invoke-static {v0, v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    return v17

    .line 214
    :cond_7
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 215
    .line 216
    if-ge v3, v4, :cond_16

    .line 217
    .line 218
    add-int/lit8 v12, v2, 0x2

    .line 219
    .line 220
    iput v12, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 221
    .line 222
    aget-char v3, v1, v3

    .line 223
    .line 224
    const/16 v9, 0x42

    .line 225
    .line 226
    if-eq v3, v9, :cond_15

    .line 227
    .line 228
    const/16 v9, 0x44

    .line 229
    .line 230
    if-eq v3, v9, :cond_14

    .line 231
    .line 232
    const/16 v9, 0x53

    .line 233
    .line 234
    if-eq v3, v9, :cond_13

    .line 235
    .line 236
    const/16 v9, 0x57

    .line 237
    .line 238
    const/16 v19, 0x2

    .line 239
    .line 240
    const/16 v15, 0xa

    .line 241
    .line 242
    if-eq v3, v9, :cond_12

    .line 243
    .line 244
    const/16 v9, 0x66

    .line 245
    .line 246
    if-eq v3, v9, :cond_11

    .line 247
    .line 248
    const/16 v9, 0x6e

    .line 249
    .line 250
    if-eq v3, v9, :cond_10

    .line 251
    .line 252
    const/16 v15, 0x20

    .line 253
    .line 254
    const-string v13, "msg.bad.backref"

    .line 255
    .line 256
    const/16 v11, 0xd

    .line 257
    .line 258
    const/16 v9, 0x30

    .line 259
    .line 260
    packed-switch v3, :pswitch_data_1

    .line 261
    .line 262
    .line 263
    packed-switch v3, :pswitch_data_2

    .line 264
    .line 265
    .line 266
    const/16 v2, 0xb

    .line 267
    .line 268
    const/16 v4, 0x9

    .line 269
    .line 270
    packed-switch v3, :pswitch_data_3

    .line 271
    .line 272
    .line 273
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 274
    .line 275
    invoke-direct {v2, v6}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 276
    .line 277
    .line 278
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 279
    .line 280
    iput-char v3, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 281
    .line 282
    iput v8, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 283
    .line 284
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 285
    .line 286
    sub-int/2addr v3, v8

    .line 287
    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 288
    .line 289
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 290
    .line 291
    add-int/lit8 v2, v2, 0x3

    .line 292
    .line 293
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 294
    .line 295
    goto/16 :goto_a

    .line 296
    .line 297
    :pswitch_2
    move/from16 v10, v19

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :pswitch_3
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 301
    .line 302
    invoke-direct {v2, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 303
    .line 304
    .line 305
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 306
    .line 307
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 308
    .line 309
    add-int/2addr v2, v8

    .line 310
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 311
    .line 312
    goto/16 :goto_a

    .line 313
    .line 314
    :pswitch_4
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_a

    .line 318
    .line 319
    :goto_2
    :pswitch_5
    move/from16 v2, v17

    .line 320
    .line 321
    move v3, v2

    .line 322
    :goto_3
    if-ge v2, v10, :cond_9

    .line 323
    .line 324
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 325
    .line 326
    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 327
    .line 328
    if-ge v4, v6, :cond_9

    .line 329
    .line 330
    add-int/lit8 v6, v4, 0x1

    .line 331
    .line 332
    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 333
    .line 334
    aget-char v4, v1, v4

    .line 335
    .line 336
    invoke-static {v4, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-gez v3, :cond_8

    .line 341
    .line 342
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 343
    .line 344
    add-int/lit8 v2, v2, 0x2

    .line 345
    .line 346
    sub-int/2addr v3, v2

    .line 347
    add-int/lit8 v2, v3, 0x1

    .line 348
    .line 349
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 350
    .line 351
    aget-char v3, v1, v3

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 355
    .line 356
    goto :goto_3

    .line 357
    :cond_9
    :goto_4
    int-to-char v2, v3

    .line 358
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_a

    .line 362
    .line 363
    :pswitch_6
    invoke-static {v0, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_a

    .line 367
    .line 368
    :pswitch_7
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    .line 369
    .line 370
    invoke-direct {v3, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 371
    .line 372
    .line 373
    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 374
    .line 375
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 376
    .line 377
    add-int/2addr v2, v8

    .line 378
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 379
    .line 380
    goto/16 :goto_a

    .line 381
    .line 382
    :pswitch_8
    invoke-static {v0, v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_a

    .line 386
    .line 387
    :pswitch_9
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 388
    .line 389
    const/4 v3, 0x7

    .line 390
    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 391
    .line 392
    .line 393
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 394
    .line 395
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 396
    .line 397
    add-int/2addr v2, v8

    .line 398
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 399
    .line 400
    goto/16 :goto_a

    .line 401
    .line 402
    :pswitch_a
    if-ge v12, v4, :cond_a

    .line 403
    .line 404
    aget-char v2, v1, v12

    .line 405
    .line 406
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_a

    .line 411
    .line 412
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 413
    .line 414
    add-int/lit8 v3, v2, 0x1

    .line 415
    .line 416
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 417
    .line 418
    aget-char v2, v1, v2

    .line 419
    .line 420
    and-int/lit8 v2, v2, 0x1f

    .line 421
    .line 422
    int-to-char v7, v2

    .line 423
    goto :goto_5

    .line 424
    :cond_a
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 425
    .line 426
    sub-int/2addr v2, v8

    .line 427
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 428
    .line 429
    :goto_5
    invoke-static {v0, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_a

    .line 433
    .line 434
    :pswitch_b
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    .line 435
    .line 436
    invoke-direct {v1, v10}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 437
    .line 438
    .line 439
    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 440
    .line 441
    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 442
    .line 443
    add-int/2addr v1, v8

    .line 444
    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 445
    .line 446
    return v8

    .line 447
    :pswitch_c
    add-int/lit8 v4, v2, 0x1

    .line 448
    .line 449
    const-string v6, "msg.overlarge.backref"

    .line 450
    .line 451
    invoke-static {v3, v0, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;Ljava/lang/String;)I

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    iget v10, v0, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    .line 456
    .line 457
    if-le v6, v10, :cond_b

    .line 458
    .line 459
    iget-object v10, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    .line 460
    .line 461
    invoke-static {v10, v13, v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    :cond_b
    iget v10, v0, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    .line 465
    .line 466
    if-le v6, v10, :cond_e

    .line 467
    .line 468
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 469
    .line 470
    const/16 v4, 0x38

    .line 471
    .line 472
    if-lt v3, v4, :cond_c

    .line 473
    .line 474
    invoke-static {v0, v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_a

    .line 478
    .line 479
    :cond_c
    add-int/lit8 v2, v2, 0x2

    .line 480
    .line 481
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 482
    .line 483
    sub-int/2addr v3, v9

    .line 484
    :goto_6
    if-ge v3, v15, :cond_d

    .line 485
    .line 486
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 487
    .line 488
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 489
    .line 490
    if-ge v2, v4, :cond_d

    .line 491
    .line 492
    aget-char v4, v1, v2

    .line 493
    .line 494
    if-lt v4, v9, :cond_d

    .line 495
    .line 496
    const/16 v6, 0x37

    .line 497
    .line 498
    if-gt v4, v6, :cond_d

    .line 499
    .line 500
    add-int/lit8 v2, v2, 0x1

    .line 501
    .line 502
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 503
    .line 504
    mul-int/lit8 v3, v3, 0x8

    .line 505
    .line 506
    add-int/lit8 v4, v4, -0x30

    .line 507
    .line 508
    add-int/2addr v3, v4

    .line 509
    goto :goto_6

    .line 510
    :cond_d
    int-to-char v2, v3

    .line 511
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 512
    .line 513
    .line 514
    goto/16 :goto_a

    .line 515
    .line 516
    :cond_e
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 517
    .line 518
    invoke-direct {v2, v11}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 519
    .line 520
    .line 521
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 522
    .line 523
    add-int/lit8 v3, v6, -0x1

    .line 524
    .line 525
    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 526
    .line 527
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 528
    .line 529
    add-int/lit8 v2, v2, 0x3

    .line 530
    .line 531
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 532
    .line 533
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    .line 534
    .line 535
    if-ge v2, v6, :cond_1f

    .line 536
    .line 537
    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    .line 538
    .line 539
    goto/16 :goto_a

    .line 540
    .line 541
    :pswitch_d
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    .line 542
    .line 543
    invoke-static {v2, v13, v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    move/from16 v2, v17

    .line 547
    .line 548
    :goto_7
    if-ge v2, v15, :cond_f

    .line 549
    .line 550
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 551
    .line 552
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 553
    .line 554
    if-ge v3, v4, :cond_f

    .line 555
    .line 556
    aget-char v4, v1, v3

    .line 557
    .line 558
    if-lt v4, v9, :cond_f

    .line 559
    .line 560
    const/16 v6, 0x37

    .line 561
    .line 562
    if-gt v4, v6, :cond_f

    .line 563
    .line 564
    add-int/lit8 v3, v3, 0x1

    .line 565
    .line 566
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 567
    .line 568
    mul-int/lit8 v2, v2, 0x8

    .line 569
    .line 570
    add-int/lit8 v4, v4, -0x30

    .line 571
    .line 572
    add-int/2addr v2, v4

    .line 573
    goto :goto_7

    .line 574
    :cond_f
    int-to-char v2, v2

    .line 575
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_a

    .line 579
    .line 580
    :cond_10
    invoke-static {v0, v15}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 581
    .line 582
    .line 583
    goto/16 :goto_a

    .line 584
    .line 585
    :cond_11
    const/16 v2, 0xc

    .line 586
    .line 587
    invoke-static {v0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    .line 588
    .line 589
    .line 590
    goto/16 :goto_a

    .line 591
    .line 592
    :cond_12
    const/16 v2, 0xc

    .line 593
    .line 594
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    .line 595
    .line 596
    invoke-direct {v3, v15}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 597
    .line 598
    .line 599
    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 600
    .line 601
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 602
    .line 603
    add-int/2addr v3, v8

    .line 604
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 605
    .line 606
    goto/16 :goto_a

    .line 607
    .line 608
    :cond_13
    const/16 v2, 0xc

    .line 609
    .line 610
    const/16 v19, 0x2

    .line 611
    .line 612
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    .line 613
    .line 614
    invoke-direct {v3, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 615
    .line 616
    .line 617
    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 618
    .line 619
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 620
    .line 621
    add-int/2addr v2, v8

    .line 622
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 623
    .line 624
    goto/16 :goto_a

    .line 625
    .line 626
    :cond_14
    const/16 v19, 0x2

    .line 627
    .line 628
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 629
    .line 630
    const/16 v3, 0x8

    .line 631
    .line 632
    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 633
    .line 634
    .line 635
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 636
    .line 637
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 638
    .line 639
    add-int/2addr v2, v8

    .line 640
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 641
    .line 642
    goto/16 :goto_a

    .line 643
    .line 644
    :cond_15
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    .line 645
    .line 646
    const/4 v2, 0x5

    .line 647
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 648
    .line 649
    .line 650
    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 651
    .line 652
    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 653
    .line 654
    add-int/2addr v1, v8

    .line 655
    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 656
    .line 657
    return v8

    .line 658
    :cond_16
    const-string v0, "msg.trail.backslash"

    .line 659
    .line 660
    invoke-static {v0, v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    return v17

    .line 664
    :cond_17
    const/16 v19, 0x2

    .line 665
    .line 666
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 667
    .line 668
    const/16 v3, 0x16

    .line 669
    .line 670
    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 671
    .line 672
    .line 673
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 674
    .line 675
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 676
    .line 677
    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    .line 678
    .line 679
    :goto_8
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 680
    .line 681
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 682
    .line 683
    if-ne v2, v4, :cond_18

    .line 684
    .line 685
    const-string v0, "msg.unterm.class"

    .line 686
    .line 687
    invoke-static {v0, v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    return v17

    .line 691
    :cond_18
    aget-char v4, v1, v2

    .line 692
    .line 693
    if-ne v4, v7, :cond_19

    .line 694
    .line 695
    add-int/lit8 v2, v2, 0x1

    .line 696
    .line 697
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 698
    .line 699
    goto :goto_9

    .line 700
    :cond_19
    const/16 v6, 0x5d

    .line 701
    .line 702
    if-ne v4, v6, :cond_1b

    .line 703
    .line 704
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 705
    .line 706
    sub-int v6, v2, v3

    .line 707
    .line 708
    iput v6, v4, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    .line 709
    .line 710
    iget v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    .line 711
    .line 712
    add-int/lit8 v7, v6, 0x1

    .line 713
    .line 714
    iput v7, v0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    .line 715
    .line 716
    iput v6, v4, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 717
    .line 718
    add-int/lit8 v6, v2, 0x1

    .line 719
    .line 720
    iput v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 721
    .line 722
    invoke-static {v0, v4, v1, v3, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    if-nez v2, :cond_1a

    .line 727
    .line 728
    return v17

    .line 729
    :cond_1a
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 730
    .line 731
    add-int/lit8 v2, v2, 0x3

    .line 732
    .line 733
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 734
    .line 735
    goto :goto_a

    .line 736
    :cond_1b
    :goto_9
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 737
    .line 738
    add-int/2addr v2, v8

    .line 739
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 740
    .line 741
    goto :goto_8

    .line 742
    :cond_1c
    const/16 v19, 0x2

    .line 743
    .line 744
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    .line 745
    .line 746
    move/from16 v2, v19

    .line 747
    .line 748
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 749
    .line 750
    .line 751
    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 752
    .line 753
    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 754
    .line 755
    add-int/2addr v1, v8

    .line 756
    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 757
    .line 758
    return v8

    .line 759
    :cond_1d
    const/16 v17, 0x0

    .line 760
    .line 761
    :pswitch_e
    aget-char v0, v1, v2

    .line 762
    .line 763
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    const-string v1, "msg.bad.quant"

    .line 768
    .line 769
    invoke-static {v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    return v17

    .line 773
    :cond_1e
    const/16 v17, 0x0

    .line 774
    .line 775
    const/16 v18, 0x6

    .line 776
    .line 777
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .line 778
    .line 779
    move/from16 v3, v18

    .line 780
    .line 781
    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 782
    .line 783
    .line 784
    iput-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 785
    .line 786
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 787
    .line 788
    add-int/2addr v2, v8

    .line 789
    iput v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 790
    .line 791
    :cond_1f
    :goto_a
    iget-object v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 792
    .line 793
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 794
    .line 795
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 796
    .line 797
    if-ne v3, v4, :cond_20

    .line 798
    .line 799
    return v8

    .line 800
    :cond_20
    aget-char v4, v1, v3

    .line 801
    .line 802
    const/4 v6, -0x1

    .line 803
    const/16 v7, 0x19

    .line 804
    .line 805
    const/16 v9, 0x2a

    .line 806
    .line 807
    if-eq v4, v9, :cond_28

    .line 808
    .line 809
    const/16 v9, 0x2b

    .line 810
    .line 811
    if-eq v4, v9, :cond_27

    .line 812
    .line 813
    const/16 v9, 0x3f

    .line 814
    .line 815
    if-eq v4, v9, :cond_26

    .line 816
    .line 817
    const/16 v9, 0x7b

    .line 818
    .line 819
    if-eq v4, v9, :cond_21

    .line 820
    .line 821
    move/from16 v4, v17

    .line 822
    .line 823
    goto/16 :goto_e

    .line 824
    .line 825
    :cond_21
    add-int/lit8 v4, v3, 0x1

    .line 826
    .line 827
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 828
    .line 829
    array-length v9, v1

    .line 830
    if-ge v4, v9, :cond_25

    .line 831
    .line 832
    aget-char v4, v1, v4

    .line 833
    .line 834
    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    .line 835
    .line 836
    .line 837
    move-result v9

    .line 838
    if-eqz v9, :cond_25

    .line 839
    .line 840
    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 841
    .line 842
    add-int/2addr v9, v8

    .line 843
    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 844
    .line 845
    const-string v9, "msg.overlarge.min"

    .line 846
    .line 847
    invoke-static {v4, v0, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;Ljava/lang/String;)I

    .line 848
    .line 849
    .line 850
    move-result v4

    .line 851
    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 852
    .line 853
    array-length v10, v1

    .line 854
    if-ge v9, v10, :cond_25

    .line 855
    .line 856
    aget-char v10, v1, v9

    .line 857
    .line 858
    const/16 v11, 0x2c

    .line 859
    .line 860
    if-ne v10, v11, :cond_23

    .line 861
    .line 862
    add-int/2addr v9, v8

    .line 863
    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 864
    .line 865
    array-length v11, v1

    .line 866
    if-ge v9, v11, :cond_23

    .line 867
    .line 868
    aget-char v10, v1, v9

    .line 869
    .line 870
    invoke-static {v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    .line 871
    .line 872
    .line 873
    move-result v9

    .line 874
    if-eqz v9, :cond_24

    .line 875
    .line 876
    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 877
    .line 878
    add-int/2addr v9, v8

    .line 879
    iput v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 880
    .line 881
    array-length v11, v1

    .line 882
    if-ge v9, v11, :cond_24

    .line 883
    .line 884
    const-string v6, "msg.overlarge.max"

    .line 885
    .line 886
    invoke-static {v10, v0, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;Ljava/lang/String;)I

    .line 887
    .line 888
    .line 889
    move-result v6

    .line 890
    iget v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 891
    .line 892
    aget-char v10, v1, v9

    .line 893
    .line 894
    if-gt v4, v6, :cond_22

    .line 895
    .line 896
    goto :goto_b

    .line 897
    :cond_22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 902
    .line 903
    .line 904
    move-result-object v1

    .line 905
    const/4 v2, 0x2

    .line 906
    new-array v2, v2, [Ljava/lang/Object;

    .line 907
    .line 908
    aput-object v0, v2, v17

    .line 909
    .line 910
    aput-object v1, v2, v8

    .line 911
    .line 912
    const-string v0, "msg.max.lt.min"

    .line 913
    .line 914
    invoke-static {v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    const-string v1, "SyntaxError"

    .line 919
    .line 920
    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 921
    .line 922
    .line 923
    move-result-object v0

    .line 924
    throw v0

    .line 925
    :cond_23
    move v6, v4

    .line 926
    :cond_24
    :goto_b
    const/16 v9, 0x7d

    .line 927
    .line 928
    if-ne v10, v9, :cond_25

    .line 929
    .line 930
    new-instance v9, Lorg/mozilla/javascript/regexp/RENode;

    .line 931
    .line 932
    invoke-direct {v9, v7}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 933
    .line 934
    .line 935
    iput-object v9, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 936
    .line 937
    iput v4, v9, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 938
    .line 939
    iput v6, v9, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 940
    .line 941
    iget v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 942
    .line 943
    const/16 v21, 0xc

    .line 944
    .line 945
    add-int/lit8 v4, v4, 0xc

    .line 946
    .line 947
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 948
    .line 949
    move v4, v8

    .line 950
    goto :goto_c

    .line 951
    :cond_25
    move/from16 v4, v17

    .line 952
    .line 953
    :goto_c
    if-nez v4, :cond_29

    .line 954
    .line 955
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 956
    .line 957
    goto :goto_e

    .line 958
    :cond_26
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    .line 959
    .line 960
    invoke-direct {v3, v7}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 961
    .line 962
    .line 963
    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 964
    .line 965
    move/from16 v4, v17

    .line 966
    .line 967
    iput v4, v3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 968
    .line 969
    iput v8, v3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 970
    .line 971
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 972
    .line 973
    const/16 v20, 0x8

    .line 974
    .line 975
    add-int/lit8 v3, v3, 0x8

    .line 976
    .line 977
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 978
    .line 979
    :goto_d
    move v4, v8

    .line 980
    goto :goto_e

    .line 981
    :cond_27
    const/16 v20, 0x8

    .line 982
    .line 983
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    .line 984
    .line 985
    invoke-direct {v3, v7}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 986
    .line 987
    .line 988
    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 989
    .line 990
    iput v8, v3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 991
    .line 992
    iput v6, v3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 993
    .line 994
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 995
    .line 996
    add-int/lit8 v3, v3, 0x8

    .line 997
    .line 998
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 999
    .line 1000
    goto :goto_d

    .line 1001
    :cond_28
    const/16 v20, 0x8

    .line 1002
    .line 1003
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    .line 1004
    .line 1005
    invoke-direct {v3, v7}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 1006
    .line 1007
    .line 1008
    iput-object v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1009
    .line 1010
    const/4 v4, 0x0

    .line 1011
    iput v4, v3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 1012
    .line 1013
    iput v6, v3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 1014
    .line 1015
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1016
    .line 1017
    add-int/lit8 v3, v3, 0x8

    .line 1018
    .line 1019
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1020
    .line 1021
    goto :goto_d

    .line 1022
    :cond_29
    :goto_e
    if-nez v4, :cond_2a

    .line 1023
    .line 1024
    return v8

    .line 1025
    :cond_2a
    iget v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1026
    .line 1027
    add-int/lit8 v4, v3, 0x1

    .line 1028
    .line 1029
    iput v4, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1030
    .line 1031
    iget-object v6, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1032
    .line 1033
    iput-object v2, v6, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 1034
    .line 1035
    iput v5, v6, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 1036
    .line 1037
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 1038
    .line 1039
    sub-int/2addr v2, v5

    .line 1040
    iput v2, v6, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    .line 1041
    .line 1042
    iget v2, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 1043
    .line 1044
    if-ge v4, v2, :cond_2b

    .line 1045
    .line 1046
    aget-char v1, v1, v4

    .line 1047
    .line 1048
    const/16 v9, 0x3f

    .line 1049
    .line 1050
    if-ne v1, v9, :cond_2b

    .line 1051
    .line 1052
    const/16 v19, 0x2

    .line 1053
    .line 1054
    add-int/lit8 v3, v3, 0x2

    .line 1055
    .line 1056
    iput v3, v0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1057
    .line 1058
    const/4 v4, 0x0

    .line 1059
    iput-boolean v4, v6, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    .line 1060
    .line 1061
    goto :goto_f

    .line 1062
    :cond_2b
    iput-boolean v8, v6, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    .line 1063
    .line 1064
    :goto_f
    return v8

    .line 1065
    :cond_2c
    const/16 v16, 0x3

    .line 1066
    .line 1067
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    .line 1068
    .line 1069
    move/from16 v2, v16

    .line 1070
    .line 1071
    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 1072
    .line 1073
    .line 1074
    iput-object v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1075
    .line 1076
    iget v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1077
    .line 1078
    add-int/2addr v1, v8

    .line 1079
    iput v1, v0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1080
    .line 1081
    return v8

    .line 1082
    nop

    .line 1083
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
        :pswitch_e
        :pswitch_e
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

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
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    :pswitch_data_2
    .packed-switch 0x62
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    :pswitch_data_3
    .packed-switch 0x72
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->previous:Lorg/mozilla/javascript/regexp/REProgState;

    .line 4
    .line 5
    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 6
    .line 7
    return-object v0
.end method

.method private static processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    iput-boolean p0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit p1

    .line 16
    return-void

    .line 17
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method private static processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->startIndex:I

    .line 6
    .line 7
    iget v3, v1, Lorg/mozilla/javascript/regexp/RECharSet;->strlength:I

    .line 8
    .line 9
    add-int/2addr v3, v2

    .line 10
    iget v4, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 11
    .line 12
    add-int/lit8 v4, v4, 0x7

    .line 13
    .line 14
    const/16 v5, 0x8

    .line 15
    .line 16
    div-int/2addr v4, v5

    .line 17
    new-array v4, v4, [B

    .line 18
    .line 19
    iput-object v4, v1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_10

    .line 24
    .line 25
    :cond_0
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 26
    .line 27
    iget-object v4, v4, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 28
    .line 29
    aget-char v4, v4, v2

    .line 30
    .line 31
    const/16 v6, 0x5e

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    if-ne v4, v6, :cond_1

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    :cond_1
    move v4, v7

    .line 39
    move v6, v4

    .line 40
    :goto_0
    if-eq v2, v3, :cond_21

    .line 41
    .line 42
    iget-object v8, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 43
    .line 44
    iget-object v8, v8, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 45
    .line 46
    aget-char v9, v8, v2

    .line 47
    .line 48
    const/16 v10, 0x5c

    .line 49
    .line 50
    const/4 v11, 0x2

    .line 51
    const/16 v12, 0x2d

    .line 52
    .line 53
    const/4 v13, 0x1

    .line 54
    if-ne v9, v10, :cond_19

    .line 55
    .line 56
    add-int/lit8 v9, v2, 0x1

    .line 57
    .line 58
    add-int/lit8 v14, v2, 0x2

    .line 59
    .line 60
    aget-char v9, v8, v9

    .line 61
    .line 62
    const/16 v15, 0x44

    .line 63
    .line 64
    if-eq v9, v15, :cond_17

    .line 65
    .line 66
    const/16 v15, 0x53

    .line 67
    .line 68
    if-eq v9, v15, :cond_14

    .line 69
    .line 70
    const/16 v15, 0x57

    .line 71
    .line 72
    if-eq v9, v15, :cond_f

    .line 73
    .line 74
    const/16 v15, 0x66

    .line 75
    .line 76
    if-eq v9, v15, :cond_e

    .line 77
    .line 78
    const/16 v15, 0x6e

    .line 79
    .line 80
    if-eq v9, v15, :cond_d

    .line 81
    .line 82
    const/16 v15, 0x30

    .line 83
    .line 84
    packed-switch v9, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    packed-switch v9, :pswitch_data_1

    .line 88
    .line 89
    .line 90
    packed-switch v9, :pswitch_data_2

    .line 91
    .line 92
    .line 93
    :goto_1
    move v2, v14

    .line 94
    goto/16 :goto_d

    .line 95
    .line 96
    :pswitch_0
    move v2, v11

    .line 97
    goto :goto_4

    .line 98
    :pswitch_1
    if-eqz v4, :cond_2

    .line 99
    .line 100
    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 101
    .line 102
    .line 103
    move v4, v7

    .line 104
    :cond_2
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 105
    .line 106
    sub-int/2addr v2, v13

    .line 107
    :goto_2
    if-ltz v2, :cond_4

    .line 108
    .line 109
    int-to-char v8, v2

    .line 110
    invoke-static {v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_3

    .line 115
    .line 116
    invoke-static {v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 117
    .line 118
    .line 119
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_4
    :goto_3
    move v2, v14

    .line 123
    goto :goto_0

    .line 124
    :pswitch_2
    const/16 v9, 0xb

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :pswitch_3
    const/4 v2, 0x4

    .line 128
    :goto_4
    move v8, v7

    .line 129
    move v9, v8

    .line 130
    :goto_5
    if-ge v8, v2, :cond_6

    .line 131
    .line 132
    if-ge v14, v3, :cond_6

    .line 133
    .line 134
    iget-object v15, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 135
    .line 136
    iget-object v15, v15, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 137
    .line 138
    add-int/lit8 v16, v14, 0x1

    .line 139
    .line 140
    aget-char v14, v15, v14

    .line 141
    .line 142
    invoke-static {v14}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toASCIIHexDigit(I)I

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    if-gez v14, :cond_5

    .line 147
    .line 148
    add-int/lit8 v8, v8, 0x1

    .line 149
    .line 150
    sub-int v14, v16, v8

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_5
    shl-int/lit8 v9, v9, 0x4

    .line 154
    .line 155
    or-int/2addr v9, v14

    .line 156
    add-int/lit8 v8, v8, 0x1

    .line 157
    .line 158
    move/from16 v14, v16

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_6
    move v10, v9

    .line 162
    :goto_6
    int-to-char v9, v10

    .line 163
    goto :goto_1

    .line 164
    :pswitch_4
    const/16 v9, 0x9

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :pswitch_5
    if-eqz v4, :cond_7

    .line 168
    .line 169
    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 170
    .line 171
    .line 172
    move v4, v7

    .line 173
    :cond_7
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 174
    .line 175
    sub-int/2addr v2, v13

    .line 176
    :goto_7
    if-ltz v2, :cond_4

    .line 177
    .line 178
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_8

    .line 183
    .line 184
    int-to-char v8, v2

    .line 185
    invoke-static {v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 186
    .line 187
    .line 188
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 189
    .line 190
    goto :goto_7

    .line 191
    :pswitch_6
    const/16 v9, 0xd

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :pswitch_7
    if-eqz v4, :cond_9

    .line 195
    .line 196
    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 197
    .line 198
    .line 199
    move v4, v7

    .line 200
    :cond_9
    const/16 v2, 0x39

    .line 201
    .line 202
    invoke-static {v1, v15, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :pswitch_8
    if-ge v14, v3, :cond_a

    .line 207
    .line 208
    aget-char v8, v8, v14

    .line 209
    .line 210
    invoke-static {v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isControlLetter(C)Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-eqz v8, :cond_a

    .line 215
    .line 216
    iget-object v8, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 217
    .line 218
    iget-object v8, v8, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 219
    .line 220
    add-int/lit8 v2, v2, 0x3

    .line 221
    .line 222
    aget-char v8, v8, v14

    .line 223
    .line 224
    and-int/lit8 v8, v8, 0x1f

    .line 225
    .line 226
    int-to-char v9, v8

    .line 227
    goto/16 :goto_d

    .line 228
    .line 229
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 230
    .line 231
    move v9, v10

    .line 232
    goto/16 :goto_d

    .line 233
    .line 234
    :pswitch_9
    move v9, v5

    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :pswitch_a
    add-int/lit8 v9, v9, -0x30

    .line 238
    .line 239
    aget-char v10, v8, v14

    .line 240
    .line 241
    if-gt v15, v10, :cond_c

    .line 242
    .line 243
    const/16 v5, 0x37

    .line 244
    .line 245
    if-gt v10, v5, :cond_c

    .line 246
    .line 247
    add-int/lit8 v14, v2, 0x3

    .line 248
    .line 249
    mul-int/lit8 v9, v9, 0x8

    .line 250
    .line 251
    add-int/lit8 v10, v10, -0x30

    .line 252
    .line 253
    add-int/2addr v9, v10

    .line 254
    aget-char v8, v8, v14

    .line 255
    .line 256
    if-gt v15, v8, :cond_c

    .line 257
    .line 258
    if-gt v8, v5, :cond_c

    .line 259
    .line 260
    add-int/lit8 v14, v2, 0x4

    .line 261
    .line 262
    mul-int/lit8 v5, v9, 0x8

    .line 263
    .line 264
    add-int/lit8 v8, v8, -0x30

    .line 265
    .line 266
    add-int/2addr v5, v8

    .line 267
    const/16 v8, 0xff

    .line 268
    .line 269
    if-gt v5, v8, :cond_b

    .line 270
    .line 271
    move v9, v5

    .line 272
    goto :goto_8

    .line 273
    :cond_b
    add-int/lit8 v14, v2, 0x3

    .line 274
    .line 275
    :cond_c
    :goto_8
    int-to-char v9, v9

    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_d
    const/16 v9, 0xa

    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_e
    const/16 v9, 0xc

    .line 283
    .line 284
    goto/16 :goto_1

    .line 285
    .line 286
    :cond_f
    if-eqz v4, :cond_10

    .line 287
    .line 288
    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 289
    .line 290
    .line 291
    move v4, v7

    .line 292
    :cond_10
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 293
    .line 294
    sub-int/2addr v2, v13

    .line 295
    :goto_9
    if-ltz v2, :cond_12

    .line 296
    .line 297
    int-to-char v5, v2

    .line 298
    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    if-nez v8, :cond_11

    .line 303
    .line 304
    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 305
    .line 306
    .line 307
    :cond_11
    add-int/lit8 v2, v2, -0x1

    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_12
    :goto_a
    move v2, v14

    .line 311
    :cond_13
    :goto_b
    const/16 v5, 0x8

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_14
    if-eqz v4, :cond_15

    .line 316
    .line 317
    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 318
    .line 319
    .line 320
    move v4, v7

    .line 321
    :cond_15
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 322
    .line 323
    sub-int/2addr v2, v13

    .line 324
    :goto_c
    if-ltz v2, :cond_12

    .line 325
    .line 326
    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-nez v5, :cond_16

    .line 331
    .line 332
    int-to-char v5, v2

    .line 333
    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 334
    .line 335
    .line 336
    :cond_16
    add-int/lit8 v2, v2, -0x1

    .line 337
    .line 338
    goto :goto_c

    .line 339
    :cond_17
    if-eqz v4, :cond_18

    .line 340
    .line 341
    invoke-static {v1, v12}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 342
    .line 343
    .line 344
    move v4, v7

    .line 345
    :cond_18
    const/16 v2, 0x2f

    .line 346
    .line 347
    invoke-static {v1, v7, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    .line 348
    .line 349
    .line 350
    iget v2, v1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .line 351
    .line 352
    sub-int/2addr v2, v13

    .line 353
    int-to-char v2, v2

    .line 354
    const/16 v5, 0x3a

    .line 355
    .line 356
    invoke-static {v1, v5, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    .line 357
    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_19
    add-int/lit8 v2, v2, 0x1

    .line 361
    .line 362
    :goto_d
    iget-object v5, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 363
    .line 364
    if-eqz v4, :cond_1f

    .line 365
    .line 366
    iget v4, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 367
    .line 368
    and-int/2addr v4, v11

    .line 369
    if-eqz v4, :cond_1d

    .line 370
    .line 371
    move v4, v6

    .line 372
    :cond_1a
    if-gt v4, v9, :cond_1e

    .line 373
    .line 374
    invoke-static {v1, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 375
    .line 376
    .line 377
    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    .line 382
    .line 383
    .line 384
    move-result v8

    .line 385
    if-eq v4, v5, :cond_1b

    .line 386
    .line 387
    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 388
    .line 389
    .line 390
    :cond_1b
    if-eq v4, v8, :cond_1c

    .line 391
    .line 392
    invoke-static {v1, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 393
    .line 394
    .line 395
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    .line 396
    .line 397
    int-to-char v4, v4

    .line 398
    if-nez v4, :cond_1a

    .line 399
    .line 400
    goto :goto_e

    .line 401
    :cond_1d
    invoke-static {v1, v6, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    .line 402
    .line 403
    .line 404
    :cond_1e
    :goto_e
    move v4, v7

    .line 405
    goto :goto_b

    .line 406
    :cond_1f
    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 407
    .line 408
    and-int/2addr v5, v11

    .line 409
    if-eqz v5, :cond_20

    .line 410
    .line 411
    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 412
    .line 413
    .line 414
    move-result v5

    .line 415
    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 416
    .line 417
    .line 418
    invoke-static {v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    invoke-static {v1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 423
    .line 424
    .line 425
    goto :goto_f

    .line 426
    :cond_20
    invoke-static {v1, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 427
    .line 428
    .line 429
    :goto_f
    add-int/lit8 v5, v3, -0x1

    .line 430
    .line 431
    if-ge v2, v5, :cond_13

    .line 432
    .line 433
    iget-object v5, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 434
    .line 435
    iget-object v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 436
    .line 437
    aget-char v5, v5, v2

    .line 438
    .line 439
    if-ne v5, v12, :cond_13

    .line 440
    .line 441
    add-int/lit8 v2, v2, 0x1

    .line 442
    .line 443
    move v6, v9

    .line 444
    move v4, v13

    .line 445
    goto/16 :goto_b

    .line 446
    .line 447
    :cond_21
    :goto_10
    return-void

    .line 448
    nop

    .line 449
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 2
    .line 3
    new-instance v1, Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 4
    .line 5
    iget v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 6
    .line 7
    iget v6, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationOp:I

    .line 8
    .line 9
    iget v7, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuationPc:I

    .line 10
    .line 11
    move-object v2, p0

    .line 12
    move v3, p1

    .line 13
    move v4, p2

    .line 14
    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v2, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 18
    .line 19
    return-void
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BIIII)V
    .locals 7

    .line 20
    new-instance v0, Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    return-void
.end method

.method private static pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V
    .locals 8

    .line 1
    new-instance v0, Lorg/mozilla/javascript/regexp/REProgState;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 4
    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move v6, p5

    .line 10
    move v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/regexp/REProgState;-><init>(Lorg/mozilla/javascript/regexp/REProgState;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 15
    .line 16
    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 1

    .line 10
    const-class v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-static {p0, v0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->ensureType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return-object p0
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static reopIsSimple(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    const/16 v1, 0x17

    .line 5
    .line 6
    if-gt p0, v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private static reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "SyntaxError"

    .line 12
    .line 13
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    throw p0
.end method

.method private static reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    new-array p0, p0, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    aput-object p2, p0, v0

    .line 14
    .line 15
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getMessageById(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private static resolveForwardJump([BII)V
    .locals 0

    .line 1
    if-gt p1, p2, :cond_0

    .line 2
    .line 3
    sub-int/2addr p2, p1

    .line 4
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0
.end method

.method private setLastIndex(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string p1, "lastIndex"

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    aput-object p1, p0, v0

    .line 16
    .line 17
    const-string p1, "msg.modify.readonly"

    .line 18
    .line 19
    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    throw p0
.end method

.method private static simpleMatch(Lorg/mozilla/javascript/regexp/REGlobalData;Ljava/lang/String;I[BIIZ)I
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch p2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    throw p0

    .line 13
    :pswitch_1
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    add-int/lit8 p4, p4, 0x2

    .line 18
    .line 19
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 20
    .line 21
    if-eq p3, p5, :cond_0

    .line 22
    .line 23
    iget-object p5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 24
    .line 25
    iget-object p5, p5, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    .line 26
    .line 27
    aget-object p2, p5, p2

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 40
    .line 41
    add-int/2addr p1, v1

    .line 42
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 43
    .line 44
    goto/16 :goto_9

    .line 45
    .line 46
    :cond_0
    :goto_0
    move v1, v2

    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :pswitch_2
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    int-to-char p2, p2

    .line 54
    add-int/lit8 p4, p4, 0x2

    .line 55
    .line 56
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 57
    .line 58
    if-eq p3, p5, :cond_0

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eq p2, p1, :cond_1

    .line 65
    .line 66
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-ne p2, p1, :cond_0

    .line 75
    .line 76
    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 77
    .line 78
    add-int/2addr p1, v1

    .line 79
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 80
    .line 81
    goto/16 :goto_9

    .line 82
    .line 83
    :pswitch_3
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    int-to-char p2, p2

    .line 88
    add-int/lit8 p4, p4, 0x2

    .line 89
    .line 90
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 91
    .line 92
    if-eq p3, p5, :cond_0

    .line 93
    .line 94
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-ne p1, p2, :cond_0

    .line 99
    .line 100
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 101
    .line 102
    add-int/2addr p1, v1

    .line 103
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 104
    .line 105
    goto/16 :goto_9

    .line 106
    .line 107
    :pswitch_4
    add-int/lit8 p2, p4, 0x1

    .line 108
    .line 109
    aget-byte p3, p3, p4

    .line 110
    .line 111
    and-int/lit16 p3, p3, 0xff

    .line 112
    .line 113
    int-to-char p3, p3

    .line 114
    if-eq v0, p5, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eq p3, p1, :cond_3

    .line 121
    .line 122
    invoke-static {p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-ne p3, p1, :cond_2

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_2
    move v1, v2

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    :goto_1
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 136
    .line 137
    add-int/2addr p1, v1

    .line 138
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 139
    .line 140
    :goto_2
    move p4, p2

    .line 141
    goto/16 :goto_9

    .line 142
    .line 143
    :cond_4
    move p4, p2

    .line 144
    goto :goto_0

    .line 145
    :pswitch_5
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    add-int/lit8 v1, p4, 0x2

    .line 150
    .line 151
    invoke-static {p3, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 152
    .line 153
    .line 154
    move-result p3

    .line 155
    add-int/lit8 p4, p4, 0x4

    .line 156
    .line 157
    invoke-static {p0, p2, p3, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    goto/16 :goto_9

    .line 162
    .line 163
    :pswitch_6
    add-int/lit8 p2, p4, 0x1

    .line 164
    .line 165
    aget-byte p3, p3, p4

    .line 166
    .line 167
    and-int/lit16 p3, p3, 0xff

    .line 168
    .line 169
    int-to-char p3, p3

    .line 170
    if-eq v0, p5, :cond_4

    .line 171
    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-ne p1, p3, :cond_4

    .line 177
    .line 178
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 179
    .line 180
    add-int/2addr p1, v1

    .line 181
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :pswitch_7
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    add-int/lit8 v1, p4, 0x2

    .line 189
    .line 190
    invoke-static {p3, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    add-int/lit8 p4, p4, 0x4

    .line 195
    .line 196
    invoke-static {p0, p2, p3, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;IILjava/lang/String;I)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    goto/16 :goto_9

    .line 201
    .line 202
    :pswitch_8
    invoke-static {p3, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    add-int/lit8 p4, p4, 0x2

    .line 207
    .line 208
    invoke-static {p0, p2, p1, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;ILjava/lang/String;I)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    goto/16 :goto_9

    .line 213
    .line 214
    :pswitch_9
    if-eq v0, p5, :cond_0

    .line 215
    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-nez p1, :cond_0

    .line 225
    .line 226
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 227
    .line 228
    add-int/2addr p1, v1

    .line 229
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 230
    .line 231
    goto/16 :goto_9

    .line 232
    .line 233
    :pswitch_a
    if-eq v0, p5, :cond_0

    .line 234
    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_0

    .line 244
    .line 245
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 246
    .line 247
    add-int/2addr p1, v1

    .line 248
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 249
    .line 250
    goto/16 :goto_9

    .line 251
    .line 252
    :pswitch_b
    if-eq v0, p5, :cond_0

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-nez p1, :cond_0

    .line 263
    .line 264
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 265
    .line 266
    add-int/2addr p1, v1

    .line 267
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 268
    .line 269
    goto/16 :goto_9

    .line 270
    .line 271
    :pswitch_c
    if-eq v0, p5, :cond_0

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_0

    .line 282
    .line 283
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 284
    .line 285
    add-int/2addr p1, v1

    .line 286
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 287
    .line 288
    goto/16 :goto_9

    .line 289
    .line 290
    :pswitch_d
    if-eq v0, p5, :cond_0

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-nez p1, :cond_0

    .line 301
    .line 302
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 303
    .line 304
    add-int/2addr p1, v1

    .line 305
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 306
    .line 307
    goto/16 :goto_9

    .line 308
    .line 309
    :pswitch_e
    if-eq v0, p5, :cond_0

    .line 310
    .line 311
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_0

    .line 320
    .line 321
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 322
    .line 323
    add-int/2addr p1, v1

    .line 324
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 325
    .line 326
    goto/16 :goto_9

    .line 327
    .line 328
    :pswitch_f
    if-eq v0, p5, :cond_0

    .line 329
    .line 330
    iget-object p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 331
    .line 332
    iget p2, p2, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 333
    .line 334
    and-int/lit8 p2, p2, 0x8

    .line 335
    .line 336
    if-nez p2, :cond_5

    .line 337
    .line 338
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 339
    .line 340
    .line 341
    move-result p1

    .line 342
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-nez p1, :cond_0

    .line 347
    .line 348
    :cond_5
    iget p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 349
    .line 350
    add-int/2addr p1, v1

    .line 351
    iput p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 352
    .line 353
    goto/16 :goto_9

    .line 354
    .line 355
    :pswitch_10
    if-eqz v0, :cond_7

    .line 356
    .line 357
    add-int/lit8 p2, v0, -0x1

    .line 358
    .line 359
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    .line 364
    .line 365
    .line 366
    move-result p2

    .line 367
    if-nez p2, :cond_6

    .line 368
    .line 369
    goto :goto_3

    .line 370
    :cond_6
    move p2, v2

    .line 371
    goto :goto_4

    .line 372
    :cond_7
    :goto_3
    move p2, v1

    .line 373
    :goto_4
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 374
    .line 375
    if-ge p3, p5, :cond_8

    .line 376
    .line 377
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 378
    .line 379
    .line 380
    move-result p1

    .line 381
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    if-eqz p1, :cond_8

    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_8
    move v1, v2

    .line 389
    :cond_9
    :goto_5
    xor-int/2addr v1, p2

    .line 390
    goto :goto_9

    .line 391
    :pswitch_11
    if-eqz v0, :cond_b

    .line 392
    .line 393
    add-int/lit8 p2, v0, -0x1

    .line 394
    .line 395
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 396
    .line 397
    .line 398
    move-result p2

    .line 399
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    .line 400
    .line 401
    .line 402
    move-result p2

    .line 403
    if-nez p2, :cond_a

    .line 404
    .line 405
    goto :goto_6

    .line 406
    :cond_a
    move p2, v2

    .line 407
    goto :goto_7

    .line 408
    :cond_b
    :goto_6
    move p2, v1

    .line 409
    :goto_7
    iget p3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 410
    .line 411
    if-ge p3, p5, :cond_9

    .line 412
    .line 413
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    if-nez p1, :cond_8

    .line 422
    .line 423
    goto :goto_5

    .line 424
    :pswitch_12
    if-eq v0, p5, :cond_c

    .line 425
    .line 426
    iget-boolean p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    .line 427
    .line 428
    if-eqz p2, :cond_0

    .line 429
    .line 430
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 431
    .line 432
    .line 433
    move-result p1

    .line 434
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    if-nez p1, :cond_c

    .line 439
    .line 440
    goto :goto_8

    .line 441
    :pswitch_13
    if-eqz v0, :cond_c

    .line 442
    .line 443
    iget-boolean p2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    .line 444
    .line 445
    if-eqz p2, :cond_0

    .line 446
    .line 447
    add-int/lit8 p2, v0, -0x1

    .line 448
    .line 449
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    if-nez p1, :cond_c

    .line 458
    .line 459
    :goto_8
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_c
    :goto_9
    :pswitch_14
    if-eqz v1, :cond_e

    .line 462
    .line 463
    if-nez p6, :cond_d

    .line 464
    .line 465
    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 466
    .line 467
    :cond_d
    return p4

    .line 468
    :cond_e
    iput v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 469
    .line 470
    const/4 p0, -0x1

    .line 471
    return p0

    .line 472
    nop

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static toASCIIHexDigit(I)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, 0x30

    .line 3
    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/16 v2, 0x39

    .line 8
    .line 9
    if-gt p0, v2, :cond_1

    .line 10
    .line 11
    sub-int/2addr p0, v1

    .line 12
    return p0

    .line 13
    :cond_1
    or-int/lit8 p0, p0, 0x20

    .line 14
    .line 15
    const/16 v1, 0x61

    .line 16
    .line 17
    if-gt v1, p0, :cond_2

    .line 18
    .line 19
    const/16 v1, 0x66

    .line 20
    .line 21
    if-gt p0, v1, :cond_2

    .line 22
    .line 23
    add-int/lit8 p0, p0, -0x57

    .line 24
    .line 25
    return p0

    .line 26
    :cond_2
    return v0
.end method

.method private static upcase(C)C
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x61

    .line 6
    .line 7
    if-gt v0, p0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x7a

    .line 10
    .line 11
    if-gt p0, v0, :cond_1

    .line 12
    .line 13
    add-int/lit8 p0, p0, -0x20

    .line 14
    .line 15
    int-to-char p0, p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    :cond_1
    return p0

    .line 24
    :cond_2
    return v1
.end method


# virtual methods
.method public compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 4

    .line 1
    array-length p2, p3

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p2, v1, :cond_1

    .line 5
    .line 6
    aget-object p2, p3, v0

    .line 7
    .line 8
    instance-of v2, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    array-length v2, p3

    .line 13
    if-eq v2, v1, :cond_0

    .line 14
    .line 15
    aget-object v2, p3, v1

    .line 16
    .line 17
    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    :cond_0
    check-cast p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 22
    .line 23
    iget-object p1, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 24
    .line 25
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 26
    .line 27
    goto :goto_4

    .line 28
    :cond_1
    array-length p2, p3

    .line 29
    if-eqz p2, :cond_4

    .line 30
    .line 31
    aget-object p2, p3, v0

    .line 32
    .line 33
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 34
    .line 35
    if-ne p2, v2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    instance-of v2, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    new-instance v2, Ljava/lang/String;

    .line 43
    .line 44
    check-cast p2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 45
    .line 46
    iget-object p2, p2, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 47
    .line 48
    iget-object p2, p2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 49
    .line 50
    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    :goto_0
    const-string v2, ""

    .line 60
    .line 61
    :goto_1
    array-length p2, p3

    .line 62
    if-le p2, v1, :cond_5

    .line 63
    .line 64
    aget-object p2, p3, v1

    .line 65
    .line 66
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 67
    .line 68
    if-eq p2, v1, :cond_5

    .line 69
    .line 70
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/4 p2, 0x0

    .line 76
    :goto_2
    array-length v1, p3

    .line 77
    if-lez v1, :cond_7

    .line 78
    .line 79
    aget-object p3, p3, v0

    .line 80
    .line 81
    instance-of p3, p3, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 82
    .line 83
    if-eqz p3, :cond_7

    .line 84
    .line 85
    if-eqz p2, :cond_7

    .line 86
    .line 87
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    const/16 v1, 0xc8

    .line 92
    .line 93
    if-lt p3, v1, :cond_6

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    const-string p0, "msg.bad.regexp.compile"

    .line 97
    .line 98
    new-array p1, v0, [Ljava/lang/Object;

    .line 99
    .line 100
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    throw p0

    .line 105
    :cond_7
    :goto_3
    invoke-static {p1, v2, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Lorg/mozilla/javascript/regexp/RECompiled;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 110
    .line 111
    :goto_4
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-object p0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, p2, p3, p5, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    .line 40
    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    const/4 p0, -0x1

    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_1
    const-string p1, "index"

    .line 50
    .line 51
    invoke-interface {p0, p1, p0}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :pswitch_1
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->js_SymbolMatchAll(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :pswitch_2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, p2, p3, p5, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :pswitch_3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/4 p1, 0x2

    .line 75
    invoke-virtual {p0, p2, p3, p5, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p2, p3, p5, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_2

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_5
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->js_exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    return-object p0

    .line 106
    :pswitch_6
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :pswitch_7
    if-eq p4, p3, :cond_5

    .line 116
    .line 117
    instance-of p0, p4, Lorg/mozilla/javascript/NativeObject;

    .line 118
    .line 119
    if-eqz p0, :cond_5

    .line 120
    .line 121
    const-string/jumbo p0, "source"

    .line 122
    .line 123
    .line 124
    invoke-interface {p4, p0, p4}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    const-string/jumbo p3, "undefined"

    .line 135
    .line 136
    .line 137
    if-eqz p2, :cond_3

    .line 138
    .line 139
    move-object p0, p3

    .line 140
    goto :goto_0

    .line 141
    :cond_3
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->escapeRegExp(Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    :goto_0
    const-string p2, "flags"

    .line 146
    .line 147
    invoke-interface {p4, p2, p4}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_4

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    :goto_1
    const-string p1, "/"

    .line 163
    .line 164
    invoke-static {p1, p0, p1, p3}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :cond_5
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :pswitch_8
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0, p2, p3, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    array-length v0, p3

    .line 6
    const/4 v7, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object p3, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    sget-object p3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    :cond_0
    :goto_0
    move-object v4, p3

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    aget-object p3, p3, v7

    .line 22
    .line 23
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    iget-object p3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 29
    .line 30
    iget p3, p3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 31
    .line 32
    and-int/lit8 v0, p3, 0x1

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    and-int/lit8 p3, p3, 0x10

    .line 37
    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move p3, v7

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    :goto_2
    const/4 p3, 0x1

    .line 44
    :goto_3
    const-wide/16 v0, 0x0

    .line 45
    .line 46
    if-eqz p3, :cond_6

    .line 47
    .line 48
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    cmpg-double v0, v5, v0

    .line 55
    .line 56
    if-ltz v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-double v0, v0

    .line 63
    cmpg-double v0, v0, v5

    .line 64
    .line 65
    if-gez v0, :cond_4

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    move-wide v0, v5

    .line 69
    goto :goto_5

    .line 70
    :cond_5
    :goto_4
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    return-object p0

    .line 77
    :cond_6
    :goto_5
    double-to-int v0, v0

    .line 78
    filled-new-array {v0}, [I

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    move-object v0, p0

    .line 83
    move-object v1, p1

    .line 84
    move-object v2, p2

    .line 85
    move v6, p4

    .line 86
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-eqz p3, :cond_9

    .line 91
    .line 92
    if-eqz p0, :cond_8

    .line 93
    .line 94
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 95
    .line 96
    if-ne p0, p1, :cond_7

    .line 97
    .line 98
    goto :goto_6

    .line 99
    :cond_7
    aget p1, v5, v7

    .line 100
    .line 101
    int-to-double p1, p1

    .line 102
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {v0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_8
    :goto_6
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->zeroObj:Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-direct {v0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    :cond_9
    return-object p0
.end method

.method public executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move/from16 v9, p6

    .line 6
    .line 7
    new-instance v3, Lorg/mozilla/javascript/regexp/REGlobalData;

    .line 8
    .line 9
    invoke-direct {v3}, Lorg/mozilla/javascript/regexp/REGlobalData;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    aget v2, p5, v10

    .line 14
    .line 15
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-le v2, v7, :cond_0

    .line 20
    .line 21
    move v6, v7

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v6, v2

    .line 24
    :goto_0
    iget-object v4, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 25
    .line 26
    iget-boolean v8, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    .line 27
    .line 28
    move-object/from16 v2, p1

    .line 29
    .line 30
    move-object/from16 v5, p4

    .line 31
    .line 32
    invoke-static/range {v2 .. v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->matchRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;Ljava/lang/String;IIZ)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v2, 0x0

    .line 37
    if-nez v4, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    if-eq v9, v0, :cond_1

    .line 41
    .line 42
    return-object v2

    .line 43
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    iget v4, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 47
    .line 48
    aput v4, p5, v10

    .line 49
    .line 50
    iget v8, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 51
    .line 52
    add-int/2addr v8, v6

    .line 53
    sub-int v8, v4, v8

    .line 54
    .line 55
    sub-int v11, v4, v8

    .line 56
    .line 57
    if-nez v9, :cond_3

    .line 58
    .line 59
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 60
    .line 61
    move-object v14, v2

    .line 62
    move-object v13, v12

    .line 63
    move-object/from16 v12, p1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object/from16 v12, p1

    .line 67
    .line 68
    move-object/from16 v13, p2

    .line 69
    .line 70
    invoke-virtual {v12, v13, v10}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Scriptable;

    .line 71
    .line 72
    .line 73
    move-result-object v13

    .line 74
    add-int v14, v11, v8

    .line 75
    .line 76
    invoke-virtual {v5, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    invoke-interface {v13, v10, v13, v14}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object v14, v13

    .line 84
    :goto_1
    iget-object v15, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 85
    .line 86
    iget v15, v15, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    .line 87
    .line 88
    if-nez v15, :cond_4

    .line 89
    .line 90
    iput-object v2, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 91
    .line 92
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    .line 93
    .line 94
    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    new-array v15, v15, [Lorg/mozilla/javascript/regexp/SubString;

    .line 101
    .line 102
    iput-object v15, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 103
    .line 104
    move v15, v10

    .line 105
    :goto_2
    iget-object v10, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 106
    .line 107
    iget v10, v10, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    .line 108
    .line 109
    if-ge v15, v10, :cond_7

    .line 110
    .line 111
    invoke-virtual {v3, v15}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensIndex(I)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    const/4 v0, -0x1

    .line 116
    if-eq v10, v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {v3, v15}, Lorg/mozilla/javascript/regexp/REGlobalData;->parensLength(I)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    new-instance v2, Lorg/mozilla/javascript/regexp/SubString;

    .line 123
    .line 124
    invoke-direct {v2, v5, v10, v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;II)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 128
    .line 129
    aput-object v2, v0, v15

    .line 130
    .line 131
    if-eqz v9, :cond_6

    .line 132
    .line 133
    add-int/lit8 v0, v15, 0x1

    .line 134
    .line 135
    invoke-virtual {v2}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v10

    .line 139
    invoke-interface {v14, v0, v14, v10}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    if-eqz v9, :cond_6

    .line 144
    .line 145
    add-int/lit8 v0, v15, 0x1

    .line 146
    .line 147
    sget-object v10, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-interface {v14, v0, v14, v10}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 153
    .line 154
    move-object/from16 v0, p0

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_7
    iput-object v2, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    .line 158
    .line 159
    :goto_4
    if-eqz v9, :cond_8

    .line 160
    .line 161
    iget v0, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 162
    .line 163
    add-int/2addr v0, v6

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v2, "index"

    .line 169
    .line 170
    invoke-interface {v14, v2, v14, v0}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const-string v0, "input"

    .line 174
    .line 175
    invoke-interface {v14, v0, v14, v5}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_8
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 179
    .line 180
    if-nez v0, :cond_9

    .line 181
    .line 182
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    .line 183
    .line 184
    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 188
    .line 189
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    .line 190
    .line 191
    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    .line 192
    .line 193
    .line 194
    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 195
    .line 196
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    .line 197
    .line 198
    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 202
    .line 203
    :cond_9
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 204
    .line 205
    iput-object v5, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    .line 206
    .line 207
    iput v11, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 208
    .line 209
    iput v8, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 210
    .line 211
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 212
    .line 213
    iput-object v5, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v12}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iget-object v2, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 220
    .line 221
    const/16 v8, 0x78

    .line 222
    .line 223
    if-ne v0, v8, :cond_a

    .line 224
    .line 225
    iput v6, v2, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 226
    .line 227
    iget v0, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 228
    .line 229
    iput v0, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_a
    const/4 v0, 0x0

    .line 233
    iput v0, v2, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 234
    .line 235
    iget v0, v3, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 236
    .line 237
    add-int/2addr v6, v0

    .line 238
    iput v6, v2, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 239
    .line 240
    :goto_5
    iget-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 241
    .line 242
    iput-object v5, v0, Lorg/mozilla/javascript/regexp/SubString;->str:Ljava/lang/String;

    .line 243
    .line 244
    iput v4, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 245
    .line 246
    sub-int/2addr v7, v4

    .line 247
    iput v7, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 248
    .line 249
    return-object v13
.end method

.method public findInstanceIdInfo(Ljava/lang/String;)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x6

    .line 9
    const/4 v2, 0x5

    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x7

    .line 16
    const/4 v9, -0x1

    .line 17
    sparse-switch v0, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :sswitch_0
    const-string v0, "lastIndex"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    move v9, v8

    .line 33
    goto :goto_0

    .line 34
    :sswitch_1
    const-string v0, "ignoreCase"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v9, v1

    .line 44
    goto :goto_0

    .line 45
    :sswitch_2
    const-string v0, "flags"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v9, v2

    .line 55
    goto :goto_0

    .line 56
    :sswitch_3
    const-string/jumbo v0, "sticky"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    move v9, v3

    .line 67
    goto :goto_0

    .line 68
    :sswitch_4
    const-string/jumbo v0, "source"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    move v9, v4

    .line 79
    goto :goto_0

    .line 80
    :sswitch_5
    const-string v0, "multiline"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    move v9, v5

    .line 90
    goto :goto_0

    .line 91
    :sswitch_6
    const-string v0, "global"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    move v9, v6

    .line 101
    goto :goto_0

    .line 102
    :sswitch_7
    const-string v0, "dotAll"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_7

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    move v9, v7

    .line 112
    :goto_0
    packed-switch v9, :pswitch_data_0

    .line 113
    .line 114
    .line 115
    move v1, v7

    .line 116
    goto :goto_1

    .line 117
    :pswitch_0
    move v1, v6

    .line 118
    goto :goto_1

    .line 119
    :pswitch_1
    move v1, v2

    .line 120
    goto :goto_1

    .line 121
    :pswitch_2
    move v1, v4

    .line 122
    goto :goto_1

    .line 123
    :pswitch_3
    const/16 v1, 0x8

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :pswitch_4
    move v1, v5

    .line 127
    goto :goto_1

    .line 128
    :pswitch_5
    move v1, v3

    .line 129
    goto :goto_1

    .line 130
    :pswitch_6
    move v1, v8

    .line 131
    :goto_1
    :pswitch_7
    if-nez v1, :cond_8

    .line 132
    .line 133
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    return p0

    .line 138
    :cond_8
    packed-switch v1, :pswitch_data_1

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m()V

    .line 142
    .line 143
    .line 144
    return v7

    .line 145
    :pswitch_8
    iget v8, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    .line 146
    .line 147
    :pswitch_9
    invoke-static {v8, v1}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    return p0

    .line 152
    nop

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0x4f097468 -> :sswitch_7
        -0x4a16fc5d -> :sswitch_6
        -0x47e5bf53 -> :sswitch_5
        -0x356f97e5 -> :sswitch_4
        -0x352ece17 -> :sswitch_3
        0x5cfee87 -> :sswitch_2
        0x3474b422 -> :sswitch_1
        0x76c7d3dc -> :sswitch_0
    .end sparse-switch

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public findPrototypeId(Ljava/lang/String;)I
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x5

    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, -0x1

    .line 15
    sparse-switch p0, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string p0, "compile"

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v6, v0

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string/jumbo p0, "test"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-nez p0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v6, v1

    .line 41
    goto :goto_0

    .line 42
    :sswitch_2
    const-string p0, "exec"

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    move v6, v2

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string p0, "prefix"

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v6, v3

    .line 63
    goto :goto_0

    .line 64
    :sswitch_4
    const-string/jumbo p0, "toString"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    move v6, v4

    .line 75
    goto :goto_0

    .line 76
    :sswitch_5
    const-string/jumbo p0, "toSource"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    move v6, v5

    .line 87
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 88
    .line 89
    .line 90
    return v5

    .line 91
    :pswitch_0
    return v4

    .line 92
    :pswitch_1
    return v0

    .line 93
    :pswitch_2
    return v1

    .line 94
    :pswitch_3
    const/4 p0, 0x6

    .line 95
    return p0

    .line 96
    :pswitch_4
    return v3

    .line 97
    :pswitch_5
    return v2

    .line 98
    nop

    .line 99
    :sswitch_data_0
    .sparse-switch
        -0x6a2ea58a -> :sswitch_5
        -0x69e9ad94 -> :sswitch_4
        -0x3a6b4d6e -> :sswitch_3
        0x2fb891 -> :sswitch_2
        0x364492 -> :sswitch_1
        0x38a75a33 -> :sswitch_0
    .end sparse-switch

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findPrototypeId(Lorg/mozilla/javascript/Symbol;)I
    .locals 0

    .line 99
    sget-object p0, Lorg/mozilla/javascript/SymbolKey;->MATCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    return p0

    .line 100
    :cond_0
    sget-object p0, Lorg/mozilla/javascript/SymbolKey;->MATCH_ALL:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    return p0

    .line 101
    :cond_1
    sget-object p0, Lorg/mozilla/javascript/SymbolKey;->SEARCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x9

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "RegExp"

    .line 2
    .line 3
    return-object p0
.end method

.method public getFlags()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 2
    .line 3
    iget p0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 4
    .line 5
    return p0
.end method

.method public getInstanceIdName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-string/jumbo p0, "sticky"

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_1
    const-string p0, "dotAll"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_2
    const-string p0, "multiline"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_3
    const-string p0, "ignoreCase"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_4
    const-string p0, "global"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_5
    const-string p0, "flags"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_6
    const-string/jumbo p0, "source"

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    const-string p0, "lastIndex"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInstanceIdValue(I)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 12
    .line 13
    iget p0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 14
    .line 15
    and-int/lit8 p0, p0, 0x10

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_1
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 26
    .line 27
    iget p0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 28
    .line 29
    and-int/lit8 p0, p0, 0x8

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    move v0, v1

    .line 34
    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_2
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 40
    .line 41
    iget p0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 42
    .line 43
    and-int/lit8 p0, p0, 0x4

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    move v0, v1

    .line 48
    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_3
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 54
    .line 55
    iget p0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 56
    .line 57
    and-int/lit8 p0, p0, 0x2

    .line 58
    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    move v0, v1

    .line 62
    :cond_3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_4
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 68
    .line 69
    iget p0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 70
    .line 71
    and-int/2addr p0, v1

    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    move v0, v1

    .line 75
    :cond_4
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->appendFlags(Ljava/lang/StringBuilder;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :pswitch_6
    new-instance p1, Ljava/lang/String;

    .line 94
    .line 95
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 96
    .line 97
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 98
    .line 99
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    .line 100
    .line 101
    .line 102
    return-object p1

    .line 103
    :pswitch_7
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:Ljava/lang/Object;

    .line 104
    .line 105
    return-object p0

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxInstanceId()I
    .locals 0

    .line 1
    const/16 p0, 0x8

    .line 2
    .line 3
    return p0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "object"

    .line 2
    .line 3
    return-object p0
.end method

.method public initPrototypeId(I)V
    .locals 14

    .line 1
    const/4 v0, 0x7

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget-object v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    .line 5
    .line 6
    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->MATCH:Lorg/mozilla/javascript/SymbolKey;

    .line 7
    .line 8
    const-string v5, "[Symbol.match]"

    .line 9
    .line 10
    const/4 v6, 0x1

    .line 11
    move-object v1, p0

    .line 12
    move v3, p1

    .line 13
    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    move-object v7, p0

    .line 18
    move v9, p1

    .line 19
    const/16 p0, 0x8

    .line 20
    .line 21
    if-ne v9, p0, :cond_1

    .line 22
    .line 23
    sget-object v8, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    .line 24
    .line 25
    sget-object v10, Lorg/mozilla/javascript/SymbolKey;->MATCH_ALL:Lorg/mozilla/javascript/SymbolKey;

    .line 26
    .line 27
    const-string v11, "[Symbol.matchAll]"

    .line 28
    .line 29
    const/4 v12, 0x1

    .line 30
    invoke-virtual/range {v7 .. v12}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/16 p0, 0x9

    .line 35
    .line 36
    if-ne v9, p0, :cond_2

    .line 37
    .line 38
    sget-object v8, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    .line 39
    .line 40
    sget-object v10, Lorg/mozilla/javascript/SymbolKey;->SEARCH:Lorg/mozilla/javascript/SymbolKey;

    .line 41
    .line 42
    const-string v11, "[Symbol.search]"

    .line 43
    .line 44
    const/4 v12, 0x1

    .line 45
    invoke-virtual/range {v7 .. v12}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILorg/mozilla/javascript/Symbol;Ljava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    const/4 p0, 0x0

    .line 50
    const/4 p1, 0x1

    .line 51
    packed-switch v9, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_0
    const-string p0, "prefix"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :pswitch_1
    const-string/jumbo p0, "test"

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :pswitch_2
    const-string p0, "exec"

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :pswitch_3
    const-string/jumbo p1, "toSource"

    .line 73
    .line 74
    .line 75
    :goto_0
    move-object v13, p1

    .line 76
    move p1, p0

    .line 77
    move-object p0, v13

    .line 78
    goto :goto_1

    .line 79
    :pswitch_4
    const-string/jumbo p1, "toString"

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_5
    const/4 p0, 0x2

    .line 84
    const-string p1, "compile"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :goto_1
    sget-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-virtual {v7, v0, v9, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)Lorg/mozilla/javascript/IdFunctionObject;

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInstanceIdAttributes(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndexAttr:I

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdAttributes(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setInstanceIdValue(ILjava/lang/Object;)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    :pswitch_0
    return-void

    .line 8
    :pswitch_1
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setLastIndex(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x2f

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 12
    .line 13
    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v2, "(?:)"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->appendFlags(Ljava/lang/StringBuilder;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
