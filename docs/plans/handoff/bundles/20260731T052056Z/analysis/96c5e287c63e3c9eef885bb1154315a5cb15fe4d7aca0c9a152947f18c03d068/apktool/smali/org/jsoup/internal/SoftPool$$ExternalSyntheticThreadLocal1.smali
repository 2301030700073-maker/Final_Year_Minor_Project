.class public final synthetic Lorg/jsoup/internal/SoftPool$$ExternalSyntheticThreadLocal1;
.super Ljava/lang/ThreadLocal;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic initialValueSupplier:Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/jsoup/internal/SoftPool$$ExternalSyntheticThreadLocal1;->initialValueSupplier:Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jsoup/internal/SoftPool$$ExternalSyntheticThreadLocal1;->initialValueSupplier:Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jsoup/nodes/Entities$$ExternalSyntheticLambda0;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
