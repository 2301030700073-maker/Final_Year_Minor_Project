.class public Lorg/schabi/newpipe/settings/SettingsActivity$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/settings/SettingsActivity;",
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
    sput-object v0, Lorg/schabi/newpipe/settings/SettingsActivity$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    .line 9
    .line 10
    const-string v2, "org.schabi.newpipe.settings.SettingsActivity$$StateSaver"

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/schabi/newpipe/settings/SettingsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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

    .line 20
    check-cast p1, Lorg/schabi/newpipe/settings/SettingsActivity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SettingsActivity$$StateSaver;->restore(Lorg/schabi/newpipe/settings/SettingsActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/settings/SettingsActivity;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/settings/SettingsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "searchText"

    .line 4
    .line 5
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p1, Lorg/schabi/newpipe/settings/SettingsActivity;->searchText:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "wasSearchActive"

    .line 12
    .line 13
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    iput-boolean p0, p1, Lorg/schabi/newpipe/settings/SettingsActivity;->wasSearchActive:Z

    .line 18
    .line 19
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 18
    check-cast p1, Lorg/schabi/newpipe/settings/SettingsActivity;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/SettingsActivity$$StateSaver;->save(Lorg/schabi/newpipe/settings/SettingsActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/settings/SettingsActivity;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/settings/SettingsActivity$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "searchText"

    .line 4
    .line 5
    iget-object v1, p1, Lorg/schabi/newpipe/settings/SettingsActivity;->searchText:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "wasSearchActive"

    .line 11
    .line 12
    iget-boolean p1, p1, Lorg/schabi/newpipe/settings/SettingsActivity;->wasSearchActive:Z

    .line 13
    .line 14
    invoke-virtual {p0, p2, v0, p1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
