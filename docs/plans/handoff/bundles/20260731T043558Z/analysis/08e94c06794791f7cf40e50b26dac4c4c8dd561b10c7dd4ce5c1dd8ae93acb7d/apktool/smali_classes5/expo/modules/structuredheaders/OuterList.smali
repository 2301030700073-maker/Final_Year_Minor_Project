.class public Lexpo/modules/structuredheaders/OuterList;
.super Ljava/lang/Object;
.source "OuterList.java"

# interfaces
.implements Lexpo/modules/structuredheaders/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexpo/modules/structuredheaders/Type<",
        "Ljava/util/List<",
        "Lexpo/modules/structuredheaders/ListElement<",
        "+",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/structuredheaders/ListElement<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/structuredheaders/ListElement<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "value must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lexpo/modules/structuredheaders/OuterList;->value:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/util/List;)Lexpo/modules/structuredheaders/OuterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/structuredheaders/ListElement<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lexpo/modules/structuredheaders/OuterList;"
        }
    .end annotation

    .line 30
    new-instance v0, Lexpo/modules/structuredheaders/OuterList;

    invoke-direct {v0, p0}, Lexpo/modules/structuredheaders/OuterList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lexpo/modules/structuredheaders/OuterList;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/structuredheaders/ListElement<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lexpo/modules/structuredheaders/OuterList;->value:Ljava/util/List;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .locals 1

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lexpo/modules/structuredheaders/OuterList;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 37
    iget-object v0, p0, Lexpo/modules/structuredheaders/OuterList;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/structuredheaders/ListElement;

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v2, p1}, Lexpo/modules/structuredheaders/ListElement;->serializeTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", "

    goto :goto_0

    :cond_0
    return-object p1
.end method
