.class public interface abstract Lexpo/modules/structuredheaders/NumberItem;
.super Ljava/lang/Object;
.source "NumberItem.java"

# interfaces
.implements Lexpo/modules/structuredheaders/Item;
.implements Lexpo/modules/structuredheaders/LongSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lexpo/modules/structuredheaders/Item<",
        "TT;>;",
        "Lexpo/modules/structuredheaders/LongSupplier;"
    }
.end annotation


# virtual methods
.method public abstract getDivisor()I
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Item;
    .locals 0

    .line 15
    invoke-interface {p0, p1}, Lexpo/modules/structuredheaders/NumberItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/NumberItem;

    move-result-object p1

    return-object p1
.end method

.method public abstract withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/NumberItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/structuredheaders/Parameters;",
            ")",
            "Lexpo/modules/structuredheaders/NumberItem<",
            "TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Parametrizable;
    .locals 0

    .line 15
    invoke-interface {p0, p1}, Lexpo/modules/structuredheaders/NumberItem;->withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/NumberItem;

    move-result-object p1

    return-object p1
.end method
