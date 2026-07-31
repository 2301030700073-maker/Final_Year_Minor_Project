.class public abstract Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static errorReporter:Lorg/acra/ErrorReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/acra/util/StubCreator$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lkotlin/ranges/RangesKt;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    new-array v2, v2, [Ljava/lang/Class;

    .line 14
    .line 15
    const-class v3, Lorg/acra/ErrorReporter;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    aput-object v3, v2, v4

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lorg/acra/ErrorReporter;

    .line 25
    .line 26
    sput-object v0, Lorg/acra/ACRA;->errorReporter:Lorg/acra/ErrorReporter;

    .line 27
    .line 28
    return-void
.end method

.method public static final isACRASenderServiceProcess()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Lorg/acra/util/StreamReader;

    .line 4
    .line 5
    const-string v3, "/proc/self/cmdline"

    .line 6
    .line 7
    new-instance v4, Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v4}, Lorg/acra/util/StreamReader;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lorg/acra/util/StreamReader;->read()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sub-int/2addr v3, v1

    .line 24
    move v4, v0

    .line 25
    move v5, v4

    .line 26
    :goto_0
    if-gt v4, v3, :cond_5

    .line 27
    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    move v6, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v6, v3

    .line 33
    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const/16 v7, 0x20

    .line 38
    .line 39
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-gtz v6, :cond_1

    .line 44
    .line 45
    move v6, v1

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    move v6, v0

    .line 48
    :goto_2
    if-nez v5, :cond_3

    .line 49
    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    move v5, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    if-nez v6, :cond_4

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    :goto_3
    add-int/2addr v3, v1

    .line 64
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_4

    .line 73
    :catch_0
    const/4 v2, 0x0

    .line 74
    :goto_4
    if-eqz v2, :cond_6

    .line 75
    .line 76
    const-string v3, ":acra"

    .line 77
    .line 78
    invoke-static {v2, v3, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    move v0, v1

    .line 85
    :cond_6
    return v0
.end method
