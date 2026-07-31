.class public Lorg/maplibre/android/maps/NativeMapOptions;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field private final actionJournalEnabled:Z

.field private final actionJournalLogFileCount:J

.field private final actionJournalLogFileSize:J

.field private final actionJournalPath:Ljava/lang/String;

.field private final actionJournalRenderingReportInterval:I

.field private final crossSourceCollisions:Z

.field private final pixelRatio:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/maplibre/android/maps/NativeMapOptions;->pixelRatio:F

    .line 35
    iput-boolean p2, p0, Lorg/maplibre/android/maps/NativeMapOptions;->crossSourceCollisions:Z

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalEnabled:Z

    .line 37
    const-string p2, ""

    iput-object p2, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalPath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalLogFileSize:J

    .line 39
    iput-wide v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalLogFileCount:J

    .line 40
    iput p1, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalRenderingReportInterval:I

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio:F

    .line 5
    .line 6
    iput v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->pixelRatio:F

    .line 7
    .line 8
    iget-boolean v0, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->crossSourceCollisions:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->crossSourceCollisions:Z

    .line 11
    .line 12
    iget-boolean v0, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalEnabled:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalEnabled:Z

    .line 15
    .line 16
    iget-object v0, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 19
    .line 20
    iget-wide v0, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileSize:J

    .line 21
    .line 22
    iput-wide v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalLogFileSize:J

    .line 23
    .line 24
    iget-wide v0, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalLogFileCount:J

    .line 25
    .line 26
    iput-wide v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalLogFileCount:J

    .line 27
    .line 28
    iget p1, p1, Lorg/maplibre/android/maps/MapLibreMapOptions;->actionJournalRenderingReportInterval:I

    .line 29
    .line 30
    iput p1, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalRenderingReportInterval:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public actionJournalEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public actionJournalLogFileCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalLogFileCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public actionJournalLogFileSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalLogFileSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public actionJournalPath()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public actionJournalRenderingReportInterval()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->actionJournalRenderingReportInterval:I

    .line 2
    .line 3
    return p0
.end method

.method public crossSourceCollisions()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->crossSourceCollisions:Z

    .line 2
    .line 3
    return p0
.end method

.method public pixelRatio()F
    .locals 0

    .line 1
    iget p0, p0, Lorg/maplibre/android/maps/NativeMapOptions;->pixelRatio:F

    .line 2
    .line 3
    return p0
.end method
