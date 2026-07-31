.class Lorg/mozilla/javascript/optimizer/ParsedOperation;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final name:Ljava/lang/String;

.field private final namespace:Ljdk/dynalink/Namespace;

.field private final operation:Ljdk/dynalink/Operation;

.field private final root:Ljdk/dynalink/Operation;


# direct methods
.method public constructor <init>(Ljdk/dynalink/Operation;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->root:Ljdk/dynalink/Operation;

    .line 5
    .line 6
    invoke-static {p1}, Ljdk/dynalink/NamedOperation;->getName(Ljdk/dynalink/Operation;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->name:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->name:Ljava/lang/String;

    .line 24
    .line 25
    :goto_0
    invoke-static {p1}, Ljdk/dynalink/NamedOperation;->getBaseOperation(Ljdk/dynalink/Operation;)Ljdk/dynalink/Operation;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljdk/dynalink/NamespaceOperation;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Ljdk/dynalink/NamespaceOperation;->getNamespace(I)Ljdk/dynalink/Namespace;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->namespace:Ljdk/dynalink/Namespace;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljdk/dynalink/NamespaceOperation;->getBaseOperation()Ljdk/dynalink/Operation;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->operation:Ljdk/dynalink/Operation;

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    throw p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isNamespace(Ljdk/dynalink/Namespace;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->namespace:Ljdk/dynalink/Namespace;

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isOperation(Ljdk/dynalink/Operation;)Z
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->operation:Ljdk/dynalink/Operation;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isOperation(Ljdk/dynalink/Operation;Ljdk/dynalink/Operation;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->operation:Ljdk/dynalink/Operation;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->operation:Ljdk/dynalink/Operation;

    .line 10
    .line 11
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/optimizer/ParsedOperation;->root:Ljdk/dynalink/Operation;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
