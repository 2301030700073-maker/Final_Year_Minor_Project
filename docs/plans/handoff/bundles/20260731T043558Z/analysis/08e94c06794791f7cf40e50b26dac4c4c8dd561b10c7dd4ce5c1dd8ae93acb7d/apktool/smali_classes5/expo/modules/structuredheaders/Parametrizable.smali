.class public interface abstract Lexpo/modules/structuredheaders/Parametrizable;
.super Ljava/lang/Object;
.source "Parametrizable.java"

# interfaces
.implements Lexpo/modules/structuredheaders/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lexpo/modules/structuredheaders/Type<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getParams()Lexpo/modules/structuredheaders/Parameters;
.end method

.method public abstract withParams(Lexpo/modules/structuredheaders/Parameters;)Lexpo/modules/structuredheaders/Parametrizable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/structuredheaders/Parameters;",
            ")",
            "Lexpo/modules/structuredheaders/Parametrizable<",
            "TT;>;"
        }
    .end annotation
.end method
