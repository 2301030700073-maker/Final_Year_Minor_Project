.class public Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/download/DownloadDialog;",
        ">",
        "Lcom/evernote/android/state/Injector$Object<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final BUNDLERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/evernote/android/state/Bundler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final HELPER:Lcom/evernote/android/state/InjectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    .line 9
    .line 10
    const-string v2, "org.schabi.newpipe.download.DownloadDialog$$StateSaver"

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/evernote/android/state/Injector$Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 79
    check-cast p1, Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->restore(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "currentInfo"

    .line 4
    .line 5
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 10
    .line 11
    iput-object v0, p1, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 12
    .line 13
    const-string v0, "selectedAudioIndex"

    .line 14
    .line 15
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 20
    .line 21
    const-string v0, "selectedAudioTrackIndex"

    .line 22
    .line 23
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 28
    .line 29
    const-string v0, "selectedSubtitleIndex"

    .line 30
    .line 31
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 36
    .line 37
    const-string v0, "selectedVideoIndex"

    .line 38
    .line 39
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 44
    .line 45
    const-string/jumbo v0, "wrappedAudioTracks"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 53
    .line 54
    iput-object v0, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 55
    .line 56
    const-string/jumbo v0, "wrappedSubtitleStreams"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 64
    .line 65
    iput-object v0, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 66
    .line 67
    const-string/jumbo v0, "wrappedVideoStreams"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 75
    .line 76
    iput-object p0, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 77
    .line 78
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    check-cast p1, Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->save(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/download/DownloadDialog;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/download/DownloadDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "currentInfo"

    .line 4
    .line 5
    iget-object v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->currentInfo:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 6
    .line 7
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "selectedAudioIndex"

    .line 11
    .line 12
    iget v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioIndex:I

    .line 13
    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "selectedAudioTrackIndex"

    .line 18
    .line 19
    iget v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedAudioTrackIndex:I

    .line 20
    .line 21
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "selectedSubtitleIndex"

    .line 25
    .line 26
    iget v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedSubtitleIndex:I

    .line 27
    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string v0, "selectedVideoIndex"

    .line 32
    .line 33
    iget v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->selectedVideoIndex:I

    .line 34
    .line 35
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "wrappedAudioTracks"

    .line 39
    .line 40
    .line 41
    iget-object v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedAudioTracks:Lorg/schabi/newpipe/util/AudioTrackAdapter$AudioTracksWrapper;

    .line 42
    .line 43
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v0, "wrappedSubtitleStreams"

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedSubtitleStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 50
    .line 51
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v0, "wrappedVideoStreams"

    .line 55
    .line 56
    .line 57
    iget-object p1, p1, Lorg/schabi/newpipe/download/DownloadDialog;->wrappedVideoStreams:Lorg/schabi/newpipe/util/StreamItemAdapter$StreamInfoWrapper;

    .line 58
    .line 59
    invoke-virtual {p0, p2, v0, p1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
