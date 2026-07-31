.class public final Lcom/fsck/k9/ui/share/ShareIntentBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final quoteDateFormatter:Lcom/fsck/k9/message/quote/QuoteDateFormatter;

.field public final resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/resources/K9CoreResourceProvider;Lcom/fsck/k9/message/extractors/TextPartFinder;Lcom/fsck/k9/message/quote/QuoteDateFormatter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/share/ShareIntentBuilder;->resourceProvider:Lcom/fsck/k9/resources/K9CoreResourceProvider;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/fsck/k9/ui/share/ShareIntentBuilder;->quoteDateFormatter:Lcom/fsck/k9/message/quote/QuoteDateFormatter;

    .line 7
    .line 8
    return-void
.end method
