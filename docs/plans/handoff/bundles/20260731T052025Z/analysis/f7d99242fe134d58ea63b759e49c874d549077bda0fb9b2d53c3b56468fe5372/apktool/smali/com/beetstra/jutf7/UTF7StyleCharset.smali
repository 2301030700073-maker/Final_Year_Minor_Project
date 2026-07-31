.class public abstract Lcom/beetstra/jutf7/UTF7StyleCharset;
.super Ljava/nio/charset/Charset;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final CONTAINED:Ljava/util/List;


# instance fields
.field public final base64:Lcom/beetstra/jutf7/Base64Util;

.field public final strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "UTF-16LE"

    .line 2
    .line 3
    const-string v5, "UTF-16BE"

    .line 4
    .line 5
    const-string v0, "US-ASCII"

    .line 6
    .line 7
    const-string v1, "ISO-8859-1"

    .line 8
    .line 9
    const-string v2, "UTF-8"

    .line 10
    .line 11
    const-string v3, "UTF-16"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/beetstra/jutf7/UTF7StyleCharset;->CONTAINED:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/beetstra/jutf7/Base64Util;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p3, p2}, Lcom/beetstra/jutf7/Base64Util;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 11
    .line 12
    iput-boolean p4, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->strict:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract canEncodeDirectly(C)Z
.end method

.method public final contains(Ljava/nio/charset/Charset;)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->CONTAINED:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 3

    .line 1
    new-instance v0, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->strict:Z

    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2}, Lcom/beetstra/jutf7/UTF7StyleCharsetDecoder;-><init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 3

    .line 1
    new-instance v0, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->base64:Lcom/beetstra/jutf7/Base64Util;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/beetstra/jutf7/UTF7StyleCharset;->strict:Z

    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2}, Lcom/beetstra/jutf7/UTF7StyleCharsetEncoder;-><init>(Lcom/beetstra/jutf7/UTF7StyleCharset;Lcom/beetstra/jutf7/Base64Util;Z)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public abstract shift()B
.end method
