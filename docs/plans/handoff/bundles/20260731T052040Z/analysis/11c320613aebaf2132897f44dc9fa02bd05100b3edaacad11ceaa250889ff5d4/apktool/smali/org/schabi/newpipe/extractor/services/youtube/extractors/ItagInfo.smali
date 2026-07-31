.class public final Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final content:Ljava/lang/String;

.field private isUrl:Z

.field private final itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->content:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getIsUrl()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->isUrl:Z

    .line 2
    .line 3
    return p0
.end method

.method public final getItagItem()Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->itagItem:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setIsUrl(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/ItagInfo;->isUrl:Z

    .line 2
    .line 3
    return-void
.end method
