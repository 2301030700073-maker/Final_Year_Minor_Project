.class public final Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final extractorFactory:Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;

.field public final handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->extractorFactory:Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskEntry;->handlerFactory:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;

    .line 7
    .line 8
    return-void
.end method
