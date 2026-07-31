.class public final Lorg/jsoup/internal/StringUtil$StringJoiner;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public first:Z

.field public sb:Ljava/lang/StringBuilder;

.field public final separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->sb:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->first:Z

    .line 12
    .line 13
    iput-object p1, p0, Lorg/jsoup/internal/StringUtil$StringJoiner;->separator:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method
