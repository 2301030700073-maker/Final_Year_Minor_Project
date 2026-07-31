.class public abstract Lkotlin/reflect/jvm/internal/impl/renderer/KeywordStringsGenerated;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final KEYWORDS:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v27, "interface"

    .line 4
    .line 5
    const-string/jumbo v28, "typeof"

    .line 6
    .line 7
    .line 8
    const-string v1, "package"

    .line 9
    .line 10
    const-string v2, "as"

    .line 11
    .line 12
    const-string/jumbo v3, "typealias"

    .line 13
    .line 14
    .line 15
    const-string v4, "class"

    .line 16
    .line 17
    const-string v5, "this"

    .line 18
    .line 19
    const-string v6, "super"

    .line 20
    .line 21
    const-string/jumbo v7, "val"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v8, "var"

    .line 25
    .line 26
    .line 27
    const-string v9, "fun"

    .line 28
    .line 29
    const-string v10, "for"

    .line 30
    .line 31
    const-string v11, "null"

    .line 32
    .line 33
    const-string/jumbo v12, "true"

    .line 34
    .line 35
    .line 36
    const-string v13, "false"

    .line 37
    .line 38
    const-string v14, "is"

    .line 39
    .line 40
    const-string v15, "in"

    .line 41
    .line 42
    const-string v16, "throw"

    .line 43
    .line 44
    const-string v17, "return"

    .line 45
    .line 46
    const-string v18, "break"

    .line 47
    .line 48
    const-string v19, "continue"

    .line 49
    .line 50
    const-string v20, "object"

    .line 51
    .line 52
    const-string v21, "if"

    .line 53
    .line 54
    const-string/jumbo v22, "try"

    .line 55
    .line 56
    .line 57
    const-string v23, "else"

    .line 58
    .line 59
    const-string/jumbo v24, "while"

    .line 60
    .line 61
    .line 62
    const-string v25, "do"

    .line 63
    .line 64
    const-string/jumbo v26, "when"

    .line 65
    .line 66
    .line 67
    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/renderer/KeywordStringsGenerated;->KEYWORDS:Ljava/util/HashSet;

    .line 79
    .line 80
    return-void
.end method
