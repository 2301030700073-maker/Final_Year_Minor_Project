.class public final enum Lorg/mozilla/javascript/ast/FunctionNode$Form;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ast/FunctionNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/ast/FunctionNode$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/ast/FunctionNode$Form;

.field public static final enum FUNCTION:Lorg/mozilla/javascript/ast/FunctionNode$Form;

.field public static final enum GETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

.field public static final enum METHOD:Lorg/mozilla/javascript/ast/FunctionNode$Form;

.field public static final enum SETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/ast/FunctionNode$Form;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 3
    .line 4
    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->FUNCTION:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->GETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->SETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lorg/mozilla/javascript/ast/FunctionNode$Form;->METHOD:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 2
    .line 3
    const-string v1, "FUNCTION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/FunctionNode$Form;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->FUNCTION:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 10
    .line 11
    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 12
    .line 13
    const-string v1, "GETTER"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/FunctionNode$Form;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->GETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 20
    .line 21
    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 22
    .line 23
    const-string v1, "SETTER"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/FunctionNode$Form;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->SETTER:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 30
    .line 31
    new-instance v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 32
    .line 33
    const-string v1, "METHOD"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/ast/FunctionNode$Form;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->METHOD:Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 40
    .line 41
    invoke-static {}, Lorg/mozilla/javascript/ast/FunctionNode$Form;->$values()[Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->$VALUES:[Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/ast/FunctionNode$Form;
    .locals 1

    .line 1
    const-class v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/ast/FunctionNode$Form;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/ast/FunctionNode$Form;->$VALUES:[Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/mozilla/javascript/ast/FunctionNode$Form;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/mozilla/javascript/ast/FunctionNode$Form;

    .line 8
    .line 9
    return-object v0
.end method
