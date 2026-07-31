.class public interface abstract annotation Lcom/fasterxml/jackson/databind/annotation/JsonAppend;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fasterxml/jackson/databind/annotation/JsonAppend;
        attrs = {}
        prepend = false
        props = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract attrs()[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Attr;
.end method

.method public abstract prepend()Z
.end method

.method public abstract props()[Lcom/fasterxml/jackson/databind/annotation/JsonAppend$Prop;
.end method
