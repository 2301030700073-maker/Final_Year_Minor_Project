.class public Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry$Companion;


# instance fields
.field public displayIndex:Ljava/lang/Long;

.field public final isThumbnailPermanent:Ljava/lang/Boolean;

.field public final orderingName:Ljava/lang/String;

.field public final streamCount:J

.field public final thumbnailStreamId:Ljava/lang/Long;

.field public final thumbnailUrl:Ljava/lang/String;

.field public final uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->Companion:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->uid:J

    .line 5
    .line 6
    iput-object p3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->orderingName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->thumbnailUrl:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p5, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->displayIndex:Ljava/lang/Long;

    .line 11
    .line 12
    iput-object p6, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 13
    .line 14
    iput-object p7, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 15
    .line 16
    iput-wide p8, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->streamCount:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public getDisplayIndex()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->displayIndex:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 2
    .line 3
    return-object p0
.end method

.method public getOrderingName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->orderingName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getStreamCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->streamCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getThumbnailStreamId()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->thumbnailUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->uid:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isThumbnailPermanent()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDisplayIndex(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->displayIndex:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method
