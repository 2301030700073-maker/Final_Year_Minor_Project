.class public final enum Lorg/apache/commons/io/StandardLineSeparator;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/apache/commons/io/StandardLineSeparator;

.field public static final enum CRLF:Lorg/apache/commons/io/StandardLineSeparator;

.field public static final enum LF:Lorg/apache/commons/io/StandardLineSeparator;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/commons/io/StandardLineSeparator;

    .line 2
    .line 3
    const-string v1, "CR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/apache/commons/io/StandardLineSeparator;

    .line 10
    .line 11
    const-string v3, "CRLF"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lorg/apache/commons/io/StandardLineSeparator;->CRLF:Lorg/apache/commons/io/StandardLineSeparator;

    .line 18
    .line 19
    new-instance v3, Lorg/apache/commons/io/StandardLineSeparator;

    .line 20
    .line 21
    const-string v5, "LF"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lorg/apache/commons/io/StandardLineSeparator;->LF:Lorg/apache/commons/io/StandardLineSeparator;

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    new-array v5, v5, [Lorg/apache/commons/io/StandardLineSeparator;

    .line 31
    .line 32
    aput-object v0, v5, v2

    .line 33
    .line 34
    aput-object v1, v5, v4

    .line 35
    .line 36
    aput-object v3, v5, v6

    .line 37
    .line 38
    sput-object v5, Lorg/apache/commons/io/StandardLineSeparator;->$VALUES:[Lorg/apache/commons/io/StandardLineSeparator;

    .line 39
    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/StandardLineSeparator;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/io/StandardLineSeparator;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/io/StandardLineSeparator;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/io/StandardLineSeparator;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/StandardLineSeparator;->$VALUES:[Lorg/apache/commons/io/StandardLineSeparator;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/io/StandardLineSeparator;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/io/StandardLineSeparator;

    .line 8
    .line 9
    return-object v0
.end method
