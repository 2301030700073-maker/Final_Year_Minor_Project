.class public interface abstract Lcom/fsck/k9/mail/Part;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public abstract addRawHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getBody()Lcom/fsck/k9/mail/Body;
.end method

.method public abstract getContentId()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDisposition()Ljava/lang/String;
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getServerExtra()Ljava/lang/String;
.end method

.method public abstract isMimeType(Ljava/lang/String;)Z
.end method

.method public abstract setBody(Lcom/fsck/k9/mail/Body;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setServerExtra(Ljava/lang/String;)V
.end method

.method public abstract writeHeaderTo(Ljava/io/ByteArrayOutputStream;)V
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method
