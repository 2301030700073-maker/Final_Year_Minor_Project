.class public final Lorg/minidns/record/OPENPGPKEY;
.super Lorg/minidns/record/Data;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final publicKeyPacket:[B

.field public transient publicKeyPacketBase64Cache:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacket:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final serialize(Ljava/io/DataOutputStream;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacket:[B

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacketBase64Cache:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacket:[B

    .line 6
    .line 7
    invoke-static {v0}, Lorg/minidns/util/Base64;->encodeToString([B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacketBase64Cache:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lorg/minidns/record/OPENPGPKEY;->publicKeyPacketBase64Cache:Ljava/lang/String;

    .line 14
    .line 15
    return-object p0
.end method
