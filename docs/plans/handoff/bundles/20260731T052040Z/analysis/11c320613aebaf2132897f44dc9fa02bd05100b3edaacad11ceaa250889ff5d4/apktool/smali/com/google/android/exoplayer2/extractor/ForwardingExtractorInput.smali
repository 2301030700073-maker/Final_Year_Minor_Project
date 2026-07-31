.class public Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorInput;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public peek([BII)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peek([BII)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public peekFully([BII)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public read([BII)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public readFully([BII)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public resetPeekPosition()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public skip(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public skipFully(I)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return-void
.end method

.method public skipFully(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplayer2/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(IZ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
