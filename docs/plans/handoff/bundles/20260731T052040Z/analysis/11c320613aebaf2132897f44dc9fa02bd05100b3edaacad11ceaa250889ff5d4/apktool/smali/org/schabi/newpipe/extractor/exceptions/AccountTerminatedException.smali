.class public final Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;
.super Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->UNKNOWN:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 10
    sget-object p1, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;->VIOLATION:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;->reason:Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException$Reason;

    return-void
.end method
