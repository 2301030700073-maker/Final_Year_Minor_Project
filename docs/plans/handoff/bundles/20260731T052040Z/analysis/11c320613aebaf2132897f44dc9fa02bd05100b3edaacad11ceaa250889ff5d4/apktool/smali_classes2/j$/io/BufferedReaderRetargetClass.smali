.class public final synthetic Lj$/io/BufferedReaderRetargetClass;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;
    .locals 1

    .line 1
    new-instance v0, Lj$/io/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lj$/io/a;-><init>(Ljava/io/BufferedReader;)V

    .line 4
    .line 5
    .line 6
    const/16 p0, 0x110

    .line 7
    .line 8
    invoke-static {v0, p0}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
