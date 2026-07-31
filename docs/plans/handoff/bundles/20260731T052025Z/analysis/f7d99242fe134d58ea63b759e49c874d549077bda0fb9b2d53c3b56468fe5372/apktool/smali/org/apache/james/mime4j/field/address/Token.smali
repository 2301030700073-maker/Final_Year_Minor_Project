.class public final Lorg/apache/james/mime4j/field/address/Token;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/james/mime4j/field/address/Token;

.field public specialToken:Lorg/apache/james/mime4j/field/address/Token;


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
