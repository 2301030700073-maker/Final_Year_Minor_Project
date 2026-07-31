.class public final synthetic Lorg/wonday/pdf/PdfView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field public final synthetic f$1:Lorg/wonday/pdf/events/TopChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/react/uimanager/events/EventDispatcher;Lorg/wonday/pdf/events/TopChangeEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wonday/pdf/PdfView$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iput-object p2, p0, Lorg/wonday/pdf/PdfView$$ExternalSyntheticLambda0;->f$1:Lorg/wonday/pdf/events/TopChangeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/wonday/pdf/PdfView$$ExternalSyntheticLambda0;->f$0:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object v1, p0, Lorg/wonday/pdf/PdfView$$ExternalSyntheticLambda0;->f$1:Lorg/wonday/pdf/events/TopChangeEvent;

    invoke-static {v0, v1}, Lorg/wonday/pdf/PdfView;->lambda$onPageChanged$0(Lcom/facebook/react/uimanager/events/EventDispatcher;Lorg/wonday/pdf/events/TopChangeEvent;)V

    return-void
.end method
