.class public Lorg/schabi/newpipe/fragments/BlankFragment$$StateSaver;
.super Lorg/schabi/newpipe/BaseFragment$$StateSaver;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/fragments/BlankFragment;",
        ">",
        "Lorg/schabi/newpipe/BaseFragment$$StateSaver<",
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
    sput-object v0, Lorg/schabi/newpipe/fragments/BlankFragment$$StateSaver;->BUNDLERS:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v1, Lcom/evernote/android/state/InjectionHelper;

    .line 9
    .line 10
    const-string v2, "org.schabi.newpipe.fragments.BlankFragment$$StateSaver"

    .line 11
    .line 12
    invoke-direct {v1, v2, v0}, Lcom/evernote/android/state/InjectionHelper;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lorg/schabi/newpipe/fragments/BlankFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/schabi/newpipe/BaseFragment$$StateSaver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic restore(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 18
    check-cast p1, Lorg/schabi/newpipe/fragments/BlankFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BlankFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/BlankFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 17
    check-cast p1, Lorg/schabi/newpipe/fragments/BlankFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BlankFragment$$StateSaver;->restore(Lorg/schabi/newpipe/fragments/BlankFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public restore(Lorg/schabi/newpipe/fragments/BlankFragment;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment$$StateSaver;->restore(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/schabi/newpipe/fragments/BlankFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 5
    .line 6
    const-string v0, "errorInfo"

    .line 7
    .line 8
    invoke-virtual {p0, p2, v0}, Lcom/evernote/android/state/InjectionHelper;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 13
    .line 14
    iput-object p0, p1, Lorg/schabi/newpipe/fragments/BlankFragment;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 15
    .line 16
    return-void
.end method

.method public bridge synthetic save(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 15
    check-cast p1, Lorg/schabi/newpipe/fragments/BlankFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BlankFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/BlankFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V
    .locals 0

    .line 14
    check-cast p1, Lorg/schabi/newpipe/fragments/BlankFragment;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/fragments/BlankFragment$$StateSaver;->save(Lorg/schabi/newpipe/fragments/BlankFragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public save(Lorg/schabi/newpipe/fragments/BlankFragment;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/schabi/newpipe/BaseFragment$$StateSaver;->save(Lorg/schabi/newpipe/BaseFragment;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/schabi/newpipe/fragments/BlankFragment$$StateSaver;->HELPER:Lcom/evernote/android/state/InjectionHelper;

    .line 5
    .line 6
    const-string v0, "errorInfo"

    .line 7
    .line 8
    iget-object p1, p1, Lorg/schabi/newpipe/fragments/BlankFragment;->errorInfo:Lorg/schabi/newpipe/error/ErrorInfo;

    .line 9
    .line 10
    invoke-virtual {p0, p2, v0, p1}, Lcom/evernote/android/state/InjectionHelper;->putParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
