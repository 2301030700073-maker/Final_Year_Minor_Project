.class public final Lorg/minidns/record/DelegatingDnssecRR$SharedData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final algorithm:B

.field public final digest:[B

.field public final digestType:B

.field public final keyTag:I


# direct methods
.method public constructor <init>(BBI[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->keyTag:I

    .line 5
    .line 6
    iput-byte p1, p0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->algorithm:B

    .line 7
    .line 8
    iput-byte p2, p0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digestType:B

    .line 9
    .line 10
    iput-object p4, p0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digest:[B

    .line 11
    .line 12
    return-void
.end method
