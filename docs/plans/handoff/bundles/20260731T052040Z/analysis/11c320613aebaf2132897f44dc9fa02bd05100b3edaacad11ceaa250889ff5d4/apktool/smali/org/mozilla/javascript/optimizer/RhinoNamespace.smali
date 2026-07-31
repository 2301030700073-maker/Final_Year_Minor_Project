.class public final enum Lorg/mozilla/javascript/optimizer/RhinoNamespace;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljdk/dynalink/Namespace;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/optimizer/RhinoNamespace;",
        ">;",
        "Ljdk/dynalink/Namespace;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/optimizer/RhinoNamespace;

.field public static final enum MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

.field public static final enum NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;


# direct methods
.method private static synthetic $values()[Lorg/mozilla/javascript/optimizer/RhinoNamespace;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 3
    .line 4
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 2
    .line 3
    const-string v1, "NAME"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoNamespace;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 10
    .line 11
    new-instance v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 12
    .line 13
    const-string v1, "MATH"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/optimizer/RhinoNamespace;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 20
    .line 21
    invoke-static {}, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->$values()[Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->$VALUES:[Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 26
    .line 27
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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/optimizer/RhinoNamespace;
    .locals 1

    .line 1
    const-class v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/optimizer/RhinoNamespace;
    .locals 1

    .line 1
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->$VALUES:[Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/mozilla/javascript/optimizer/RhinoNamespace;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    .line 8
    .line 9
    return-object v0
.end method
