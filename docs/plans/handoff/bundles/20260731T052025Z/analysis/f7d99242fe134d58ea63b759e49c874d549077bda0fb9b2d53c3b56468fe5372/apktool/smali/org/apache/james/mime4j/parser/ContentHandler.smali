.class public interface abstract Lorg/apache/james/mime4j/parser/ContentHandler;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public abstract body(Lcom/eygraber/uri/Uri$Builder;Ljava/io/InputStream;)V
.end method

.method public abstract endBodyPart()V
.end method

.method public abstract endHeader()V
.end method

.method public abstract endMessage()V
.end method

.method public abstract endMultipart()V
.end method

.method public abstract epilogue(Ljava/io/InputStream;)V
.end method

.method public abstract field(Lorg/apache/james/mime4j/stream/Field;)V
.end method

.method public abstract preamble(Ljava/io/InputStream;)V
.end method

.method public abstract raw()V
.end method

.method public abstract startBodyPart()V
.end method

.method public abstract startHeader()V
.end method

.method public abstract startMessage()V
.end method

.method public abstract startMultipart(Lcom/eygraber/uri/Uri$Builder;)V
.end method
