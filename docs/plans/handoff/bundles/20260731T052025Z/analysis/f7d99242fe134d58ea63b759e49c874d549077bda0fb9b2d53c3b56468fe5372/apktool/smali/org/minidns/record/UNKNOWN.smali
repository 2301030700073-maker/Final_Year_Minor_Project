.class public final Lorg/minidns/record/UNKNOWN;
.super Lorg/minidns/record/Data;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final data:[B


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array p2, p2, [B

    .line 5
    .line 6
    iput-object p2, p0, Lorg/minidns/record/UNKNOWN;->data:[B

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final serialize(Ljava/io/DataOutputStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/minidns/record/UNKNOWN;->data:[B

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
