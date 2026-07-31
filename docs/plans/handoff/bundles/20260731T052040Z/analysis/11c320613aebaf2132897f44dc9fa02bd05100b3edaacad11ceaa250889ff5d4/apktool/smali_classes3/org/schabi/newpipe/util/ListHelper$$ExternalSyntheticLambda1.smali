.class public final synthetic Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;->f$0:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 2
    .line 3
    check-cast p2, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 4
    .line 5
    iget-boolean p0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda1;->f$0:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_2

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    sget-object v1, Lorg/schabi/newpipe/extractor/stream/AudioTrackType;->ORIGINAL:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 12
    .line 13
    if-ne p1, v1, :cond_0

    .line 14
    .line 15
    move p1, p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p1, v0

    .line 18
    :goto_0
    if-ne p2, v1, :cond_1

    .line 19
    .line 20
    move v0, p0

    .line 21
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_2
    return v0
.end method
