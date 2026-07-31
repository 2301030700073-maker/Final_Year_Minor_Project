.class public final Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/graph/GraphCommand;


# instance fields
.field public final new:Lorg/apache/james/mime4j/stream/RawField;

.field public final old:Lorg/apache/james/mime4j/stream/RawField;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/stream/RawField;Lorg/apache/james/mime4j/stream/RawField;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->old:Lorg/apache/james/mime4j/stream/RawField;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->new:Lorg/apache/james/mime4j/stream/RawField;

    .line 7
    .line 8
    return-void
.end method
