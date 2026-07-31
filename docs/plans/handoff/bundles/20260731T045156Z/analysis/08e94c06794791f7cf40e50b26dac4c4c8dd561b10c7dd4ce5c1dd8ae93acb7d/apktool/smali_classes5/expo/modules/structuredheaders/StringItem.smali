.class public Lexpo/modules/structuredheaders/StringItem;
.super Ljava/lang/Object;
.source "StringItem.java"

# interfaces
.implements Lexpo/modules/structuredheaders/Item;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/structuredheaders/Item<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final params:Lexpo/modules/structuredheaders/Parameters;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lexpo/modules/structuredheaders/Parameters;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "value must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lexpo/modules/structuredheaders/StringItem;->checkParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lexpo/modules/structuredheaders/StringItem;->value:Ljava/lang/String;

    .line 19
    const-string p1, "params must not be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lexpo/modules/structuredheaders/Parameters;

    iput-object p1, p0, Lexpo/modules/structuredheaders/StringItem;->params:Lexpo/modules/structuredheaders/Parameters;

    return-void
.end method

.method private static checkParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 74
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid character in String at position %d: \'%c\' (0x%04x)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/structuredheaders/StringItem;
    .locals 2

    .line 31
    new-instance v0, Lexpo/modules/structuredheaders/StringItem;

    sget-object v1, Lexpo/modules/structuredheaders/Parameters;->EMPTY:Lexpo/modules/structuredheaders/Parameters;

    invoke-direct {v0, p0, v1}, Lexpo/modules/structuredheaders/StringItem;-><init>(Ljava/lang/String;Lexpo/modules/structuredheaders/Parameters;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lexpo/modules/structuredheaders/StringItem;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lexpo/modules/structuredheaders/StringItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lexpo/modules/structuredheaders/Parameters;
    .locals 1

    .line 45
    iget-object v0, p0, Lexpo/modules/structuredheaders/StringItem;->params:Lexpo/modules/structuredheaders/Parameters;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lexpo/modules/structuredheaders/StringItem;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lexpo/modules/structuredheaders/StringItem;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4

    const/16 v0, 0x22

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 51
    :goto_0
    iget-object v2, p0, Lexpo/modules/structuredheaders/StringItem;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 52
    iget-object v2, p0, Lexpo/modules/structuredheaders/StringItem;->value:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_0

    if-ne v2, v0, :cond_1

    .line 54
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p0, Lexpo/modules/structuredheaders/StringItem;->params:Lexpo/modules/structuredheaders/Parameters;

    invoke-virtual {v0, p1}, Lexpo/modules/structuredheaders/Parameters;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Item;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/StringItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/StringItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Parametrizable;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lexpo/modules/structuredheaders/StringItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/StringItem;

    move-result-object p1

    return-object p1
.end method

.method public withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/StringItem;
    .locals 2

    .line 36
    const-string v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/structuredheaders/Parameters;

    invoke-virtual {v0}, Lexpo/modules/structuredheaders/Parameters;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 39
    :cond_0
    new-instance v0, Lexpo/modules/structuredheaders/StringItem;

    iget-object v1, p0, Lexpo/modules/structuredheaders/StringItem;->value:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lexpo/modules/structuredheaders/StringItem;-><init>(Ljava/lang/String;Lexpo/modules/structuredheaders/Parameters;)V

    return-object v0
.end method
