.class public final Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method public static couldNotAddElement(Ljava/lang/RuntimeException;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
    .locals 3

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    .line 2
    .line 3
    const-string v1, "Could not add "

    .line 4
    .line 5
    const-string v2, " element"

    .line 6
    .line 7
    invoke-static {v1, p1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static couldNotAddElement(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;
    .locals 3

    .line 15
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/dashmanifestcreators/CreationException;

    const-string v1, "Could not add "

    const-string v2, " element: "

    .line 16
    invoke-static {v1, p0, v2, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
