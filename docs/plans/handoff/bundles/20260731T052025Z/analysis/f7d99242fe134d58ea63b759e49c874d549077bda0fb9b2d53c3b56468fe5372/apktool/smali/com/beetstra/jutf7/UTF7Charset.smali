.class public final Lcom/beetstra/jutf7/UTF7Charset;
.super Lcom/beetstra/jutf7/UTF7StyleCharset;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final directlyEncoded:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/beetstra/jutf7/UTF7StyleCharset;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    const-string p1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:?!\"#$%&*;<=>@[]^_`{|} \t\r\n"

    .line 10
    .line 11
    iput-object p1, p0, Lcom/beetstra/jutf7/UTF7Charset;->directlyEncoded:Ljava/lang/String;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string p1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:? \t\r\n"

    .line 15
    .line 16
    iput-object p1, p0, Lcom/beetstra/jutf7/UTF7Charset;->directlyEncoded:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final canEncodeDirectly(C)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/UTF7Charset;->directlyEncoded:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final shift()B
    .locals 0

    .line 1
    const/16 p0, 0x2b

    .line 2
    .line 3
    return p0
.end method
