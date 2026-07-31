.class public final Lorg/minidns/edns/UnknownEdnsOption;
.super Lorg/minidns/edns/EdnsOption;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


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
    sget-object p0, Lorg/minidns/edns/Edns$OptionCode;->UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toStringInternal()Ljava/lang/CharSequence;
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
