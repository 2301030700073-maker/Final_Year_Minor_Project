.class public Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;",
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
    sput-object v0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    .line 9
    .line 10
    const-string v2, "org.schabi.newpipe.player.helper.PlaybackParameterDialog$$StateSaver"

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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

    .line 52
    check-cast p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->restore(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "initialPitchPercent"

    .line 4
    .line 5
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    .line 10
    .line 11
    const-string v0, "initialSkipSilence"

    .line 12
    .line 13
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    .line 18
    .line 19
    const-string v0, "initialTempo"

    .line 20
    .line 21
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    .line 26
    .line 27
    const-string v0, "pitchPercent"

    .line 28
    .line 29
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 34
    .line 35
    const-string v0, "skipSilence"

    .line 36
    .line 37
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput-boolean v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 42
    .line 43
    const-string v0, "tempo"

    .line 44
    .line 45
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getDouble(Landroid/os/Bundle;Ljava/lang/String;)D

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iput-wide v0, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 50
    .line 51
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    check-cast p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->save(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "initialPitchPercent"

    .line 4
    .line 5
    iget-wide v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialPitchPercent:D

    .line 6
    .line 7
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 8
    .line 9
    .line 10
    const-string v0, "initialSkipSilence"

    .line 11
    .line 12
    iget-boolean v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialSkipSilence:Z

    .line 13
    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    const-string v0, "initialTempo"

    .line 18
    .line 19
    iget-wide v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->initialTempo:D

    .line 20
    .line 21
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 22
    .line 23
    .line 24
    const-string v0, "pitchPercent"

    .line 25
    .line 26
    iget-wide v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->pitchPercent:D

    .line 27
    .line 28
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 29
    .line 30
    .line 31
    const-string v0, "skipSilence"

    .line 32
    .line 33
    iget-boolean v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->skipSilence:Z

    .line 34
    .line 35
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "tempo"

    .line 39
    .line 40
    iget-wide v1, p1, Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;->tempo:D

    .line 41
    .line 42
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/evernote/android/state/InjectionHelper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;D)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
