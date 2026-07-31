.class public Lorg/jsoup/parser/Token$Character;
.super Lorg/jsoup/parser/Token;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final nullString:Ljava/lang/String;


# instance fields
.field public final data:Lokhttp3/FormBody$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lorg/jsoup/parser/Token$Character;->nullString:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 36
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    .line 37
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;)V

    .line 38
    new-instance v0, Lokhttp3/FormBody$Builder;

    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody$Builder;-><init>(IZ)V

    .line 40
    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lokhttp3/FormBody$Builder;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Token$Character;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokhttp3/FormBody$Builder;

    .line 7
    .line 8
    const/16 v1, 0x19

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody$Builder;-><init>(IZ)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lokhttp3/FormBody$Builder;

    .line 15
    .line 16
    iget v1, p1, Lorg/jsoup/parser/Token;->startPos:I

    .line 17
    .line 18
    iput v1, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 19
    .line 20
    iget v1, p1, Lorg/jsoup/parser/Token;->endPos:I

    .line 21
    .line 22
    iput v1, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 23
    .line 24
    iget-object p0, p1, Lorg/jsoup/parser/Token$Character;->data:Lokhttp3/FormBody$Builder;

    .line 25
    .line 26
    invoke-virtual {p0}, Lokhttp3/FormBody$Builder;->value()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->reset()V

    .line 31
    .line 32
    .line 33
    iput-object p0, v0, Lokhttp3/FormBody$Builder;->names:Ljava/lang/Object;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 3
    .line 4
    iput v0, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 5
    .line 6
    iget-object p0, p0, Lorg/jsoup/parser/Token$Character;->data:Lokhttp3/FormBody$Builder;

    .line 7
    .line 8
    invoke-virtual {p0}, Lokhttp3/FormBody$Builder;->reset()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Token$Character;->data:Lokhttp3/FormBody$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokhttp3/FormBody$Builder;->value()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
