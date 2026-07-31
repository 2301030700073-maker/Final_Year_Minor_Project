.class public final Lcom/grack/nanojson/JsonParserException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final charOffset:I

.field private final charPos:I

.field private final linePos:I


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/grack/nanojson/JsonParserException;->linePos:I

    .line 5
    .line 6
    iput p4, p0, Lcom/grack/nanojson/JsonParserException;->charPos:I

    .line 7
    .line 8
    iput p5, p0, Lcom/grack/nanojson/JsonParserException;->charOffset:I

    .line 9
    .line 10
    return-void
.end method
