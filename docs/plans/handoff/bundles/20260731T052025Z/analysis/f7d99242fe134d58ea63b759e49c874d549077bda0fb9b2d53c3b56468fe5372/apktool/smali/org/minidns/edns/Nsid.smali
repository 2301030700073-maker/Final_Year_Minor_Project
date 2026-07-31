.class public final Lorg/minidns/edns/Nsid;
.super Lorg/minidns/edns/EdnsOption;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/minidns/edns/Nsid;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    invoke-direct {v0, v1}, Lorg/minidns/edns/EdnsOption;-><init>([B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final asTerminalOutputInternal()Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/minidns/edns/EdnsOption;->optionData:[B

    .line 2
    .line 3
    invoke-static {p0}, Lorg/minidns/util/Hex;->from([B)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getOptionCode()Lorg/minidns/edns/Edns$OptionCode;
    .locals 0

    .line 1
    sget-object p0, Lorg/minidns/edns/Edns$OptionCode;->NSID:Lorg/minidns/edns/Edns$OptionCode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toStringInternal()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->NSID:Lorg/minidns/edns/Edns$OptionCode;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ": "

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/String;

    .line 14
    .line 15
    iget-object p0, p0, Lorg/minidns/edns/EdnsOption;->optionData:[B

    .line 16
    .line 17
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
