.class public final Lorg/jsoup/helper/Regex$JdkMatcher;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/jsoup/helper/Regex$Matcher;


# instance fields
.field public final delegate:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/helper/Regex$JdkMatcher;->delegate:Ljava/util/regex/Matcher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final find()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/helper/Regex$JdkMatcher;->delegate:Ljava/util/regex/Matcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
