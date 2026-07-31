.class public Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;
.super Lcom/evernote/android/state/Injector$Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;",
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
    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    .line 9
    .line 10
    const-string v2, "org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$StateSaver"

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

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

    .line 87
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->restore(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "currentScreen"

    .line 4
    .line 5
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 10
    .line 11
    iput-object v0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 12
    .line 13
    const-string v0, "iconsListState"

    .line 14
    .line 15
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    .line 20
    .line 21
    const-string v0, "selectedIcon"

    .line 22
    .line 23
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 28
    .line 29
    iput-object v0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 30
    .line 31
    const-string v0, "selectedSubscriptions"

    .line 32
    .line 33
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getSerializable(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/HashSet;

    .line 38
    .line 39
    iput-object v0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 40
    .line 41
    const-string/jumbo v0, "subscriptionsCurrentSearchQuery"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 49
    .line 50
    const-string/jumbo v0, "subscriptionsListState"

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    .line 58
    .line 59
    const-string/jumbo v0, "subscriptionsShowOnlyUngrouped"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput-boolean v0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 67
    .line 68
    const-string/jumbo v0, "wasSearchSubscriptionsVisible"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iput-boolean v0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSearchSubscriptionsVisible:Z

    .line 76
    .line 77
    const-string/jumbo v0, "wasSubscriptionSelectionChanged"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    iput-boolean p0, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSubscriptionSelectionChanged:Z

    .line 85
    .line 86
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 72
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->save(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 2
    .line 3
    const-string v0, "currentScreen"

    .line 4
    .line 5
    iget-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 6
    .line 7
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "iconsListState"

    .line 11
    .line 12
    iget-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    .line 13
    .line 14
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "selectedIcon"

    .line 18
    .line 19
    iget-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 20
    .line 21
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "selectedSubscriptions"

    .line 25
    .line 26
    iget-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putSerializable(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "subscriptionsCurrentSearchQuery"

    .line 32
    .line 33
    .line 34
    iget-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v0, "subscriptionsListState"

    .line 40
    .line 41
    .line 42
    iget-object v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    .line 43
    .line 44
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v0, "subscriptionsShowOnlyUngrouped"

    .line 48
    .line 49
    .line 50
    iget-boolean v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 51
    .line 52
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v0, "wasSearchSubscriptionsVisible"

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSearchSubscriptionsVisible:Z

    .line 59
    .line 60
    invoke-virtual {p0, p2, v0, v1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v0, "wasSubscriptionSelectionChanged"

    .line 64
    .line 65
    .line 66
    iget-boolean p1, p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSubscriptionSelectionChanged:Z

    .line 67
    .line 68
    invoke-virtual {p0, p2, v0, p1}, Lcom/evernote/android/state/InjectionHelper;->putBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
