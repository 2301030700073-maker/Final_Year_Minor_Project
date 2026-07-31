.class public final Lorg/jsoup/helper/Re2jRegex$Re2jMatcher;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/jsoup/helper/Regex$Matcher;


# instance fields
.field public final delegate:Lcom/google/re2j/Matcher;


# direct methods
.method public constructor <init>(Lcom/google/re2j/Matcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/helper/Re2jRegex$Re2jMatcher;->delegate:Lcom/google/re2j/Matcher;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final find()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/helper/Re2jRegex$Re2jMatcher;->delegate:Lcom/google/re2j/Matcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/re2j/Matcher;->find()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
