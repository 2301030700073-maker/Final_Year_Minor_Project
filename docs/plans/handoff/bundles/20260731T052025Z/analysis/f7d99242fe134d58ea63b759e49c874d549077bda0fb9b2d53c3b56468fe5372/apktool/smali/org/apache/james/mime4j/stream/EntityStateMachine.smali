.class public interface abstract Lorg/apache/james/mime4j/stream/EntityStateMachine;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public abstract advance()Lorg/apache/james/mime4j/stream/EntityStateMachine;
.end method

.method public abstract getBodyDescriptor()Lcom/eygraber/uri/Uri$Builder;
.end method

.method public abstract getContentStream()Ljava/io/InputStream;
.end method

.method public abstract getField()Lorg/apache/james/mime4j/stream/Field;
.end method

.method public abstract getState()I
.end method

.method public abstract setRecursionMode(I)V
.end method
