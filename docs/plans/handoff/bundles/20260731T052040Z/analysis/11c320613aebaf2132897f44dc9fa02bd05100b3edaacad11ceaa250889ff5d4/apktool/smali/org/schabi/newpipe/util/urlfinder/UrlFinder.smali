.class public abstract Lorg/schabi/newpipe/util/urlfinder/UrlFinder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final Companion:Lorg/schabi/newpipe/util/urlfinder/UrlFinder$Companion;

.field public static final WEB_URL_WITH_PROTOCOL:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/util/urlfinder/UrlFinder$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/util/urlfinder/UrlFinder;->Companion:Lorg/schabi/newpipe/util/urlfinder/UrlFinder$Companion;

    .line 7
    .line 8
    sget-object v0, Lorg/schabi/newpipe/util/urlfinder/PatternsCompat;->WEB_URL_WITH_PROTOCOL:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lorg/schabi/newpipe/util/urlfinder/UrlFinder;->WEB_URL_WITH_PROTOCOL:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    return-void
.end method
