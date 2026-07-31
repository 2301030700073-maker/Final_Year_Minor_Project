.class public Lorg/jsoup/parser/Token$Character;
.super Lorg/jsoup/parser/Token;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final nullString:Ljava/lang/String;


# instance fields
.field public final data:Lorg/jsoup/parser/TokenData;


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
    .locals 2

    const/4 v0, 0x5

    .line 33
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(I)V

    .line 34
    new-instance v0, Lorg/jsoup/parser/TokenData;

    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenData;-><init>(I)V

    .line 36
    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/Token$Character;)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lorg/jsoup/parser/TokenData;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    .line 12
    .line 13
    iget v1, p1, Lorg/jsoup/parser/Token;->startPos:I

    .line 14
    .line 15
    iput v1, p0, Lorg/jsoup/parser/Token;->startPos:I

    .line 16
    .line 17
    iget v1, p1, Lorg/jsoup/parser/Token;->endPos:I

    .line 18
    .line 19
    iput v1, p0, Lorg/jsoup/parser/Token;->endPos:I

    .line 20
    .line 21
    iget-object p0, p1, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    .line 22
    .line 23
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->reset()V

    .line 28
    .line 29
    .line 30
    iput-object p0, v0, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 31
    .line 32
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
    iget-object p0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenData;->reset()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/parser/Token$Character;->data:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/parser/TokenData;->value()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
