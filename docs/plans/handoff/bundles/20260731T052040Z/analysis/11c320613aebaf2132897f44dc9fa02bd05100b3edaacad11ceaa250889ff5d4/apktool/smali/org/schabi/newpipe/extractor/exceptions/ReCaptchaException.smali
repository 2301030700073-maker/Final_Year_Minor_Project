.class public final Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;
.super Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "reCaptcha Challenge requested"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
