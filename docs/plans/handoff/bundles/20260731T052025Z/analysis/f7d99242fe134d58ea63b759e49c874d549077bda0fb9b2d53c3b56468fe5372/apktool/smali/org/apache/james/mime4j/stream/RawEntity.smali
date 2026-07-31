.class public final Lorg/apache/james/mime4j/stream/RawEntity;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/apache/james/mime4j/stream/EntityStateMachine;


# instance fields
.field public state:I

.field public final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/RawEntity;->stream:Ljava/io/InputStream;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lorg/apache/james/mime4j/stream/RawEntity;->state:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final advance()Lorg/apache/james/mime4j/stream/EntityStateMachine;
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    iput v0, p0, Lorg/apache/james/mime4j/stream/RawEntity;->state:I

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0
.end method

.method public final getBodyDescriptor()Lcom/eygraber/uri/Uri$Builder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getContentStream()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/stream/RawEntity;->stream:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public final bridge synthetic getField()Lorg/apache/james/mime4j/stream/Field;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final getState()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/apache/james/mime4j/stream/RawEntity;->state:I

    .line 2
    .line 3
    return p0
.end method

.method public final setRecursionMode(I)V
    .locals 0

    .line 1
    return-void
.end method
