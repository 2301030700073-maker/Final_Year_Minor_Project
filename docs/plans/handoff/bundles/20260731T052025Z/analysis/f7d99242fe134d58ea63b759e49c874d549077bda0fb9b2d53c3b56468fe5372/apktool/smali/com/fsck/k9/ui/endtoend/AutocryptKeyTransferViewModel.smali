.class public final Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final autocryptSetupMessageLiveEvent:Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

.field public final autocryptSetupTransferLiveEvent:Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;->autocryptSetupMessageLiveEvent:Lcom/fsck/k9/ui/endtoend/AutocryptSetupMessageLiveEvent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/fsck/k9/ui/endtoend/AutocryptKeyTransferViewModel;->autocryptSetupTransferLiveEvent:Lcom/fsck/k9/ui/endtoend/AutocryptSetupTransferLiveEvent;

    .line 7
    .line 8
    return-void
.end method
