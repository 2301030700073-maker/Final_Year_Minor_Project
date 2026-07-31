.class public final Lcom/beetstra/jutf7/CharsetProvider;
.super Ljava/nio/charset/spi/CharsetProvider;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final UTF7_ALIASES:[Ljava/lang/String;

.field public static final UTF7_M_ALIASES:[Ljava/lang/String;

.field public static final UTF7_O_ALIASES:[Ljava/lang/String;


# instance fields
.field public final charsets:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "X-RFC2152"

    .line 2
    .line 3
    const-string v1, "X-RFC-2152"

    .line 4
    .line 5
    const-string v2, "UNICODE-1-1-UTF-7"

    .line 6
    .line 7
    const-string v3, "CSUNICODE11UTF7"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_ALIASES:[Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "X-RFC2152-OPTIONAL"

    .line 16
    .line 17
    const-string v1, "X-RFC-2152-OPTIONAL"

    .line 18
    .line 19
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_O_ALIASES:[Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "X-RFC3501"

    .line 26
    .line 27
    const-string v1, "X-RFC-3501"

    .line 28
    .line 29
    const-string v2, "X-IMAP-MODIFIED-UTF-7"

    .line 30
    .line 31
    const-string v3, "X-IMAP4-MODIFIED-UTF7"

    .line 32
    .line 33
    const-string v4, "X-IMAP4-MODIFIED-UTF-7"

    .line 34
    .line 35
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_M_ALIASES:[Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/nio/charset/spi/CharsetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/beetstra/jutf7/UTF7Charset;

    .line 5
    .line 6
    const-string v1, "UTF-7"

    .line 7
    .line 8
    sget-object v2, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_ALIASES:[Ljava/lang/String;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v1, v2, v3}, Lcom/beetstra/jutf7/UTF7Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/beetstra/jutf7/UTF7Charset;

    .line 15
    .line 16
    const-string v2, "X-UTF-7-OPTIONAL"

    .line 17
    .line 18
    sget-object v4, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_O_ALIASES:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    invoke-direct {v1, v2, v4, v5}, Lcom/beetstra/jutf7/UTF7Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/beetstra/jutf7/ModifiedUTF7Charset;

    .line 25
    .line 26
    sget-object v4, Lcom/beetstra/jutf7/CharsetProvider;->UTF7_M_ALIASES:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,"

    .line 29
    .line 30
    const-string v7, "X-MODIFIED-UTF-7"

    .line 31
    .line 32
    invoke-direct {v2, v7, v4, v6, v5}, Lcom/beetstra/jutf7/UTF7StyleCharset;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    new-array v4, v4, [Ljava/lang/Object;

    .line 37
    .line 38
    aput-object v0, v4, v3

    .line 39
    .line 40
    aput-object v2, v4, v5

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aput-object v1, v4, v0

    .line 44
    .line 45
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_3
    const/4 p0, 0x0

    .line 64
    return-object p0
.end method

.method public final charsets()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beetstra/jutf7/CharsetProvider;->charsets:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
